# -*- encoding: utf-8 -*-
import copy
import os
from abjad import *
from experimental.tools import makertools


class DreamsSegmentMaker(makertools.SegmentMaker):
    r'''Dreams segment-maker.
    '''

    ### CLASS ATTRIBUTES ###

    __slots__ = (
        '_calculate_duration',
        '_final_markup',
        '_final_markup_extra_offset',
        '_music_handlers',
        '_music_makers',
        '_page_breaks',
        '_score',
        '_show_stage_annotations',
        'final_barline',
        'name',
        'tempo_map',
        )

    ### INITIALIZER ###

    def __init__(
        self,
        calculate_duration=False,
        final_barline=False,
        final_markup=None,
        final_markup_extra_offset=None,
        music_makers=None,
        name=None,
        page_breaks=None,
        show_stage_annotations=False,
        tempo_map=None,
        ):
        superclass = super(DreamsSegmentMaker, self)
        superclass.__init__(name=name)
        self._initialize_music_makers(music_makers)
        self._calculate_duration = calculate_duration
        self.final_barline = final_barline
        if final_markup is not None:
            assert isinstance(final_markup, markuptools.Markup)
        self._final_markup = final_markup
        if final_markup_extra_offset is not None:
            assert isinstance(final_markup_extra_offset, tuple)
        self._final_markup_extra_offset = final_markup_extra_offset
        self.name = name
        self._music_handlers = []
        page_breaks = page_breaks or []
        self._page_breaks = page_breaks
        assert isinstance(show_stage_annotations, bool)
        self._show_stage_annotations = show_stage_annotations
        self.tempo_map = tempo_map

    ### SPECIAL METHODS ###

    def __call__(self):
        r'''Calls segment-maker.

        Returns LilyPond file.
        '''
        self._make_score()
        self._make_lilypond_file()
        self._configure_lilypond_file()
        self._interpret_music_makers()
        self._populate_time_signature_context()
        self._attach_tempo_indicators()
        #self._attach_fermatas()
        self._add_manual_page_breaks()
        self._annotate_stages()
        self._interpret_music_handlers()
        self._add_final_barline()
        self._add_final_markup()
        self._raise_duration()
        score_block = self.lilypond_file['score']
        score = score_block['Score']
        if not inspect_(score).is_well_formed():
            string = inspect_(score).tabulate_well_formedness_violations()
            raise Exception(string)
        return self.lilypond_file

    ### PRIVATE METHODS ###

    def _add_manual_page_breaks(self):
        time_signature_context = self._score['Time Signature Context']
        measures = iterate(time_signature_context).by_class(Measure)
        for i, measure in enumerate(measures):
            measure_number = i + 1
            if measure_number in self.page_breaks:
                command = indicatortools.LilyPondCommand(
                    'pageBreak',
                    format_slot='after',
                    )
                attach(command, measure)

    def _add_final_barline(self):
        if not self.final_barline:
            return
        self._score.add_final_bar_line(to_each_voice=True)

    def _add_final_markup(self):
        if self.final_markup is None:
            return
        self._score.add_final_markup(
            self.final_markup,
            extra_offset=self.final_markup_extra_offset,
            )

    def _annotate_stages(self):
        if not self.show_stage_annotations:
            return
        context = self._score['Time Signature Context']
        for stage_index in range(self.stage_count):
            stage_number = stage_index + 1
            result = self._stage_number_to_measure_indices(stage_number)
            start_measure_index, stop_measure_index = result
            string = '[{}{}]'.format(self.name, stage_number)
            markup = Markup(string)
            markup = markup.with_color('blue')
            markup = markup.smaller()
            start_measure = context[start_measure_index]
            attach(markup, start_measure)

    def _attach_fermatas(self):
        if not self.tempo_map:
            return
        context = self._score['Time Signature Context']
        prototype = (
            indicatortools.Fermata,
            indicatortools.BreathMark,
            )
        for stage_number, directive in self.tempo_map:
            if not isinstance(directive, prototype):
                continue
            assert 0 < stage_number <= self.stage_count
            result = self._stage_number_to_measure_indices(stage_number)
            start_measure_index, stop_measure_index = result
            start_measure = context[start_measure_index]
            assert isinstance(start_measure, Measure), start_measure
            start_skip = start_measure[0]
            assert isinstance(start_skip, scoretools.Skip), start_skip
            directive = new(directive)
            attach(directive, start_skip)

    def _attach_tempo_indicators(self):
        if not self.tempo_map:
            return
        music_voice = self._score['Music Voice']
        logical_ties = iterate(music_voice).by_logical_tie()
        logical_ties = list(logical_ties)
        for logical_tie_index, directive in self.tempo_map:
            directive = copy.copy(directive)
            logical_tie = logical_ties[logical_tie_index]
            attach(directive, logical_tie.head)

    def _compound_scope_to_logical_ties(
        self, 
        compound_scope,
        include_rests=False,
        ):
        from huitzil import makers
        timespan_map, timespans = [], []
        for scope in compound_scope.simple_scopes:
            start_stage, stop_stage = scope.stages
            offsets = self._get_offsets(start_stage, stop_stage)
            timespan = timespantools.Timespan(*offsets)
            timespan_map.append((scope.context_name, timespan))
            timespans.append(timespan)
        compound_scope._timespan_map = timespan_map
        context_names = [_[0] for _ in timespan_map]
        compound_scope._context_names = tuple(context_names)
        logical_ties = []
        if include_rests:
            prototype = (scoretools.Note, scoretools.Chord, scoretools.Rest)
        else:
            prototype = (scoretools.Note, scoretools.Chord)
        for note in iterate(self._score).by_timeline(prototype):
            if note in compound_scope:
                logical_tie = inspect_(note).get_logical_tie()
                if logical_tie.head is note:
                    logical_ties.append(logical_tie)
        start_offset = min(_.start_offset for _ in timespans)
        stop_offset = max(_.stop_offset for _ in timespans)
        timespan = timespantools.Timespan(start_offset, stop_offset)
        return logical_ties, timespan

    def _configure_lilypond_file(self):
        lilypond_file = self._lilypond_file
        lilypond_file.use_relative_includes = True
        path = os.path.join(
            '..',
            '..',
            'stylesheets',
            'stylesheet.ily',
            )
        lilypond_file.file_initial_user_includes.append(path)
        if not self.name == 'dreams':
            lilypond_file.header_block.title = None
            lilypond_file.header_block.composer = None

    def _get_offsets(self, start_stage, stop_stage):
        context = self._score['Time Signature Context']
        result = self._stage_number_to_measure_indices(start_stage)
        start_measure_index, stop_measure_index = result
        start_measure = context[start_measure_index]
        assert isinstance(start_measure, Measure), start_measure
        start_offset = inspect_(start_measure).get_timespan().start_offset
        result = self._stage_number_to_measure_indices(stop_stage)
        start_measure_index, stop_measure_index = result
        stop_measure = context[stop_measure_index]
        assert isinstance(stop_measure, Measure), stop_measure
        stop_offset = inspect_(stop_measure).get_timespan().stop_offset
        return start_offset, stop_offset

    def _interpret_music_makers(self):
        music_voice = self._score['Music Voice']
        self._make_music_for_voice(music_voice)

    def _interpret_music_handler(self, music_handler):
        from huitzil import makers
        simple_scope = music_handler.scope
        assert isinstance(simple_scope, makers.SimpleScope), simple_scope
        compound_scope = makers.CompoundScope(simple_scope)
        result = self._compound_scope_to_logical_ties(compound_scope)
        logical_ties, timespan = result
        result = self._compound_scope_to_logical_ties(
            compound_scope,
            include_rests=True
            )
        logical_ties_with_rests, timespan = result
        if isinstance(music_handler.specifiers, (list, tuple)):
            specifiers = tuple(music_handler.specifiers)
        else:
            specifiers = (music_handler.specifiers,)
        note_indicators = (
            indicatortools.Dynamic,
            markuptools.Markup,
            )
        leaf_indicators = (
            indicatortools.Clef,
            instrumenttools.Instrument,
            )
        for specifier in specifiers:
            if isinstance(specifier, note_indicators):
                attach(specifier, logical_ties[0].head)
            elif isinstance(specifier, leaf_indicators):
                attach(specifier, logical_ties_with_rests[0].head)
            elif isinstance(specifier, spannertools.Spanner):
                spanner = specifier
                assert not len(spanner)
                spanner = copy.deepcopy(spanner)
                leaves = self._logical_ties_to_leaves(logical_ties)
                attach(spanner, leaves)
            elif isinstance(specifier, handlertools.OverrideHandler):
                specifier(logical_ties_with_rests)
            else:
                specifier(logical_ties, timespan)
            if getattr(specifier, '_mutates_score', False):
                result = self._compound_scope_to_logical_ties(compound_scope)
                logical_ties, timespan = result
                result = self._compound_scope_to_logical_ties(
                    compound_scope,
                    include_rests=True
                    )
                logical_ties_with_rests, timespan = result

    def _logical_ties_to_leaves(self, logical_ties):
        first_note = logical_ties[0].head
        last_note = logical_ties[-1][-1]
        leaves = []
        current_leaf = first_note
        while current_leaf is not last_note:
            leaves.append(current_leaf)
            current_leaf = inspect_(current_leaf).get_leaf(1)
        leaves.append(last_note)
        return leaves

    def _interpret_pitch_handler(self, pitch_handler):
        compound_scope = pitch_handler.scope
        result = self._compound_scope_to_logical_ties(compound_scope)
        logical_ties, timespan = result
        for specifier in pitch_handler.specifiers:
            specifier(logical_ties, timespan)

    def _interpret_music_handlers(self):
        from huitzil import makers
        for music_handler in self.music_handlers:
            if isinstance(music_handler, makers.PitchHandler):
                self._interpret_pitch_handler(music_handler)
            else:
                self._interpret_music_handler(music_handler)

    def _initialize_music_makers(self, music_makers):
        from huitzil import makers
        music_makers = music_makers or []
        music_makers = list(music_makers)
        for music_maker in music_makers:
            assert isinstance(music_maker, makers.MusicMaker)
        self._music_makers = music_makers

    def _label_instrument_changes(self):
        prototype = instrumenttools.Instrument
        switching_voices = (
            'Clarinet Music Voice',
            'Piano Music Voice',
            )
        for voice in iterate(self._score).by_class(scoretools.Voice):
            if voice.name not in switching_voices:
                continue
            for leaf in iterate(voice).by_class(scoretools.Leaf):
                instruments = inspect_(leaf).get_indicators(prototype)
                if not instruments:
                    continue
                assert len(instruments) == 1
                current_instrument = instruments[0]
                previous_leaf = inspect_(leaf).get_leaf(-1)
                if previous_leaf is None:
                    continue
                result = inspect_(previous_leaf).get_effective(prototype)
                previous_effective_instrument = result
                if not previous_effective_instrument == current_instrument:
                    markup = self._make_instrument_change_markup(
                        current_instrument)
                    attach(markup, leaf)

    def _make_instrument_change_markup(self, instrument):
        string = 'to {}'.format(instrument.instrument_name)
        markup = markuptools.Markup(string, direction=Up)
        markup = markup.box().override(('box-padding', 0.5))
        return markup

    def _make_lilypond_file(self):
        lilypond_file = lilypondfiletools.make_basic_lilypond_file(self._score)
        for item in lilypond_file.items[:]:
            if getattr(item, 'name', None) in ('layout', 'paper'):
                lilypond_file.items.remove(item)
        self._lilypond_file = lilypond_file
            
    def _make_music_for_voice(self, voice):
        assert not len(voice), repr(voice)
        for music_maker in self.music_makers:
            music = music_maker()
            voice.extend(music)

    def _make_score(self):
        from huitzil import makers
        template = makers.ScoreTemplate()
        score = template()
        self._score = score

    def _populate_time_signature_context(self):
        time_signature_context = self._score['Time Signature Context']
        music_voice = self._score['Music Voice']
        measure_durations = []
        current_duration = Duration(0)
        ideal_measure_duration = Duration(4, 4)
        for component in music_voice:
            component_duration = inspect_(component).get_duration()
            candidate_duration = current_duration + component_duration
            if ideal_measure_duration < candidate_duration:
                if 0 < current_duration:
                    measure_durations.append(current_duration)
                current_duration = component_duration
            else:
                current_duration = candidate_duration
        measure_durations.append(current_duration)
        measures = scoretools.make_spacer_skip_measures(measure_durations)
        time_signature_context.extend(measures)
        for measure in iterate(time_signature_context).by_class(Measure):
            time_signature = inspect_(measure).get_indicator(TimeSignature)
            if time_signature.denominator < 4:
                fraction = mathtools.NonreducedFraction(time_signature.pair)
                fraction = fraction.with_multiple_of_denominator(4)
                detach(time_signature, measure)
                new_time_signature = TimeSignature(fraction)
                attach(new_time_signature, measure)


    def _raise_duration(self):
        if not self.calculate_duration:
            return
        music_voice = self._score['Music Voice']
        duration = inspect_(music_voice).get_duration(in_seconds=True)
        string = '%.2f seconds' % float(duration)
        raise Exception(string)

    ### PUBLIC PROPERTIES ###

    @property
    def calculate_duration(self):
        r'''Is true when segment-maker should calculate and then raise duration
        of piece.

        Set to true or false.
        '''
        return self._calculate_duration

    @property
    def final_markup(self):
        r'''Gets final markup of segment.

        Set to markup or none.
        '''
        return self._final_markup

    @property
    def final_markup_extra_offset(self):
        r'''Gets extra offset of segment final markup.

        Set to pair or none.
        '''
        return self._final_markup_extra_offset

    @property
    def music_makers(self):
        r'''Gets segment-maker's music-makers.

        Returns tuple of music-makers.
        '''
        return self._music_makers
    
    @property
    def music_handlers(self):
        r'''Gets segment-maker's music-handlers.

        Returns tuples of music-handlers.
        '''
        return tuple(self._music_handlers)

    @property
    def page_breaks(self):
        r'''Gets measure numbers of page breaks.

        Returns list.
        '''
        return self._page_breaks
    
    @property
    def show_stage_annotations(self):
        r'''Is true when segment should annotate stages.

        Set to true or false.
        '''
        return self._show_stage_annotations

    ### PUBLIC METHODS ###

    def copy_music_maker(self, _context_name, _stage, **kwargs):
        r'''Gets music-maker with `_context_name` defined for `_stage`.
        Then makes new music-maker from this with optional `kwargs`.

        Short-cut for get-then-new.

        Uses private positional argument names `_context_name` and `_stage` 
        to avoid aliasing public keyword argument names `context_name`
        and `stage`.

        Returns music-maker.
        '''
        music_maker = self.get_music_maker(_context_name, _stage)
        music_maker = copy.deepcopy(music_maker)
        new_music_maker = new(music_maker, **kwargs)
        self.music_makers.append(new_music_maker)
        return new_music_maker

    def get_music_maker(self, context_name, stage):
        r'''Gets music-maker with `context_name` defined for `stage`.

        Returns music-maker.

        Raises key error when no such music-maker is found.
        '''
        music_makers = []
        for music_maker in self.music_makers:
            if music_maker.context_name == context_name:
                start = music_maker.start_stage
                stop = music_maker.stop_stage + 1
                if stage in range(start, stop):
                    return music_maker
        message = 'no music-maker for {!r} found for stage {}.'
        message = message.format(context_name, stage)
        raise KeyError(message)

    def make_music_handler(
        self, 
        scope, 
        specifiers,
        ):
        r'''Makes music-handler.

        Returns music-handler.
        '''
        from huitzil import makers
        parser = makers.ScopeTokenParser()
        scope_tokens = []
        if isinstance(scope, tuple):
            simple_scopes = parser._to_simple_scopes(scope)
            scope_tokens.extend(simple_scopes)
        elif isinstance(scope, list):
            for scope_token in scope:
                simple_scopes = parser._to_simple_scopes(scope_token)
                scope_tokens.extend(simple_scopes)
        else:
            raise TypeError(scope)
        music_handlers = []
        for scope_token in scope_tokens:
            music_handler = makers.MusicHandler(
                scope=scope_token,
                specifiers=specifiers,
                )
            self._music_handlers.append(music_handler)
            music_handlers.append(music_handler)
        if len(music_handlers) == 1:
            return music_handlers[0]
        else:
            return music_handlers

    def make_music_maker(self):
        r'''Makes music-maker and appends music-maker to segment-maker's list
        of music-makers.

        Returns music-maker.
        '''
        from huitzil import makers
        music_maker = makers.DreamsMusicMaker()
        self.music_makers.append(music_maker)
        return music_maker

    def make_pitch_handler(
        self,
        scope,
        specifiers,
        ):
        from huitzil import makers
        assert isinstance(specifiers, list), repr(specifiers)
        pitch_handler = makers.PitchHandler(
            scope=scope,
            specifiers=specifiers,
            )
        self._music_handlers.append(pitch_handler)
        return pitch_handler