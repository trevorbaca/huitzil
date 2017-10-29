import abjad
import baca
import copy
import huitzil


class DreamsSegmentMaker(abjad.SegmentMaker):
    r'''Dreams segment-maker.

    ::

        >>> import huitzil

    '''

    ### CLASS ATTRIBUTES ###

    __slots__ = (
        '_calculate_duration',
        '_final_markup',
        '_final_markup_extra_offset',
        '_music_specifiers',
        '_music_makers',
        '_score',
        '_show_leaf_indices',
        '_label_stage_numbers',
        '_slurs',
        '_tuplet_bracket_tweaks',
        'final_bar_line',
        'name',
        'metronome_mark_measure_map',
        )

    ### INITIALIZER ###

    def __init__(
        self,
        calculate_duration=False,
        final_bar_line=False,
        final_markup=None,
        final_markup_extra_offset=None,
        music_makers=None,
        name=None,
        show_leaf_indices=None,
        label_stages=False,
        slurs=None,
        metronome_mark_measure_map=None,
        tuplet_bracket_tweaks=None,
        ):
        superclass = super(DreamsSegmentMaker, self)
        superclass.__init__()
        self._initialize_music_makers(music_makers)
        self._calculate_duration = calculate_duration
        self.final_bar_line = final_bar_line
        if final_markup is not None:
            assert isinstance(final_markup, abjad.Markup)
        self._final_markup = final_markup
        if final_markup_extra_offset is not None:
            assert isinstance(final_markup_extra_offset, tuple)
        self._final_markup_extra_offset = final_markup_extra_offset
        self.name = name
        self._music_specifiers = []
        assert isinstance(show_leaf_indices, bool)
        self._show_leaf_indices = show_leaf_indices
        assert isinstance(label_stages, bool)
        self._label_stage_numbers = label_stages
        self._slurs = slurs or []
        self.metronome_mark_measure_map = metronome_mark_measure_map
        tuplet_bracket_tweaks = tuplet_bracket_tweaks or []
        self._tuplet_bracket_tweaks = tuplet_bracket_tweaks

    ### PRIVATE METHODS ###

    def _add_final_bar_line(self):
        if not self.final_bar_line:
            return
        self._score.add_final_bar_line(to_each_voice=True)

    def _add_final_markup(self):
        if self.final_markup is None:
            return
        self._score.add_final_markup(
            self.final_markup,
            extra_offset=self.final_markup_extra_offset,
            )

    def _adjust_stems(self):
        measures = self._partition_music_into_measures()
        down_beam_positions = (-4.5, -4.5)
        up_beam_positions = (5.5, 5.5)
        for measure in measures:
            voice_numbers = []
            for component in measure:
                for note in component:
                    assert isinstance(note, abjad.Note), repr(note)
                    voice_number = abjad.inspect(note).get_indicator(int)
                    voice_numbers.append(voice_number)
            if len(set(voice_numbers)) == 1:
                continue
            for component in measure:
                for note in component:
                    voice_number = abjad.inspect(note).get_indicator(int)
                    if voice_number == 1:
                        abjad.override(note).stem.direction = Up
                        abjad.override(note).beam.positions = up_beam_positions
                    elif voice_number == 2:
                        abjad.override(note).stem.direction = Up
                        abjad.override(note).beam.positions = up_beam_positions
                    elif voice_number == 3:
                        abjad.override(note).stem.direction = Down
                        abjad.override(note).beam.positions = \
                            down_beam_positions
                    else:
                        raise ValueError(voice_number)

    def _annotate_leaf_indices(self):
        if not self.show_leaf_indices:
            return
        voice = self._score['Music Voice']
        for i, leaf in enumerate(abjad.iterate(voice).leaves()):
            markup = abjad.Markup(i)
            abjad.attach(markup, leaf)

    def _annotate_stages(self):
        if not self.label_stages:
            return
        context = self._score['Global Skips']
        for stage_index in range(self.stage_count):
            stage_number = stage_index + 1
            result = self._stage_number_to_measure_indices(stage_number)
            start_measure_index, stop_measure_index = result
            string = f'[{self.name}{stage_number}]'
            markup = abjad.Markup(string)
            markup = markup.with_color('blue')
            markup = markup.smaller()
            start_measure = context[start_measure_index]
            abjad.attach(markup, start_measure)

    def _attach_fermatas(self):
        if not self.metronome_mark_measure_map:
            return
        context = self._score['Global Rests']
        prototype = (
            abjad.Fermata,
            abjad.BreathMark,
            )
        for stage_number, directive in self.metronome_mark_measure_map:
            if not isinstance(directive, prototype):
                continue
            assert 0 < stage_number <= self.stage_count
            result = self._stage_number_to_measure_indices(stage_number)
            start_measure_index, stop_measure_index = result
            start_measure = context[start_measure_index]
            assert isinstance(start_measure, abjad.Measure), start_measure
            start_skip = start_measure[0]
            assert isinstance(start_skip, abjad.Skip), start_skip
            directive = abjad.new(directive)
            abjad.attach(directive, start_skip)

    def _attach_slurs(self):
        voice = self._score['Music Voice']
        leaves = abjad.iterate(voice).leaves()
        leaves = list(leaves)
        for slur in self.slurs:
            start_index, stop_number = slur
            stop_index = stop_number + 1
            slur_leaves = leaves[start_index:stop_index]
            slur = abjad.Slur()
            abjad.attach(slur, slur_leaves)

    def _attach_tempo_indicators(self):
        if not self.metronome_mark_measure_map:
            return
        music_voice = self._score['Music Voice']
        logical_ties = abjad.iterate(music_voice).logical_ties()
        logical_ties = list(logical_ties)
        for logical_tie_index, directive in self.metronome_mark_measure_map:
            directive = copy.copy(directive)
            logical_tie = logical_ties[logical_tie_index]
            abjad.attach(directive, logical_tie.head)

    def _compound_scope_to_logical_ties(
        self,
        compound_scope,
        include_rests=False,
        ):
        timespan_map, timespans = [], []
        for scope in compound_scope.simple_scopes:
            start_stage, stop_stage = scope.stages
            offsets = self._get_offsets(start_stage, stop_stage)
            timespan = abjad.Timespan(*offsets)
            timespan_map.append((scope.voice_name, timespan))
            timespans.append(timespan)
        compound_scope._timespan_map = timespan_map
        voice_names = [_[0] for _ in timespan_map]
        compound_scope._voice_names = tuple(voice_names)
        logical_ties = []
        if include_rests:
            prototype = (abjad.Note, abjad.Chord, abjad.Rest)
        else:
            prototype = (abjad.Note, abjad.Chord)
        for note in abjad.iterate(self._score).timeline(prototype):
            if note in compound_scope:
                logical_tie = abjad.inspect(note).get_logical_tie()
                if logical_tie.head is note:
                    logical_ties.append(logical_tie)
        start_offset = min(_.start_offset for _ in timespans)
        stop_offset = max(_.stop_offset for _ in timespans)
        timespan = abjad.Timespan(start_offset, stop_offset)
        return logical_ties, timespan

    def _configure_lilypond_file(self):
        lilypond_file = self._lilypond_file
        if not self.name == 'dreams':
            lilypond_file.header_block.title = None
            lilypond_file.header_block.composer = None

    def _configure_score(self):
        leaf = abjad.inspect(self._score['Music Voice']).get_leaf(0)
        abjad.attach(abjad.Clef('bass'), leaf)

    def _get_offsets(self, start_stage, stop_stage):
        context = self._score['Global Skips']
        result = self._stage_number_to_measure_indices(start_stage)
        start_measure_index, stop_measure_index = result
        start_measure = context[start_measure_index]
        assert isinstance(start_measure, abjad.Measure), start_measure
        start_offset = abjad.inspect(start_measure).get_timespan().start_offset
        result = self._stage_number_to_measure_indices(stop_stage)
        start_measure_index, stop_measure_index = result
        stop_measure = context[stop_measure_index]
        assert isinstance(stop_measure, abjad.Measure), stop_measure
        stop_offset = abjad.inspect(stop_measure).get_timespan().stop_offset
        return start_offset, stop_offset

    def _get_rhythm_specifier(self, voice_name, stage):
        #music_makers = []
        for music_maker in self.music_makers:
            if music_maker.voice_name == voice_name:
                start = music_maker.start_stage
                stop = music_maker.stop_stage + 1
                if stage in range(start, stop):
                    return music_maker
        raise KeyError(f'no {voice_name!r} maker for stage {stage}.')

    def _initialize_music_makers(self, music_makers):
        music_makers = music_makers or []
        music_makers = list(music_makers)
        for music_maker in music_makers:
            assert isinstance(music_maker, huitzil.RhythmMaker)
        self._music_makers = music_makers

    def _interpret_music_makers(self):
        music_voice = self._score['Music Voice']
        self._make_music_for_voice(music_voice)

    def _interpret_pitch_specifier(self, pitch_specifier):
        compound_scope = pitch_specifier.scope
        result = self._compound_scope_to_logical_ties(compound_scope)
        logical_ties, timespan = result
        for specifier in pitch_specifier.specifiers:
            specifier(logical_ties, timespan)

    def _logical_ties_to_leaves(self, logical_ties):
        first_note = logical_ties[0].head
        last_note = logical_ties[-1][-1]
        leaves = []
        current_leaf = first_note
        while current_leaf is not last_note:
            leaves.append(current_leaf)
            current_leaf = abjad.inspect(current_leaf).get_leaf(1)
        leaves.append(last_note)
        return leaves

    def _make_lilypond_file(self):
        path = '../../stylesheets/stylesheet.ily'
        lilypond_file = abjad.LilyPondFile.new(
            music=self._score,
            includes=[path],
            use_relative_includes=True,
            )
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
        self._score = huitzil.DreamsScoreTemplate()()

    def _partition_music_into_measures(self):
        context = self._score['Global Skips']
        measure_durations = [abjad.inspect(_).get_duration() for _ in context]
        music_voice = self._score['Music Voice']
        component_durations = [
            abjad.inspect(_).get_duration() for _ in music_voice]
        measure_parts = baca.sequence(component_durations)
        measure_parts = measure_parts.partition_by_weights(measure_durations)
        measure_counts = [len(_) for _ in measure_parts]
        parts = baca.sequence(music_voice[:]).partition_by_counts(
            measure_counts,
            )
        return parts

    def _populate_time_signature_context(self):
        music_voice = self._score['Music Voice']
        measure_durations = []
        current_duration = abjad.Duration(0)
        ideal_measure_duration = abjad.Duration(4, 4)
        for component in music_voice:
            component_duration = abjad.inspect(component).get_duration()
            candidate_duration = current_duration + component_duration
            if ideal_measure_duration < candidate_duration:
                if 0 < current_duration:
                    measure_durations.append(current_duration)
                current_duration = component_duration
            else:
                current_duration = candidate_duration
        measure_durations.append(current_duration)
        maker = abjad.MeasureMaker()
        measures = maker(measure_durations)
        context = self._score['Global Skips']
        context.extend(measures)
        for measure in abjad.iterate(context).components(abjad.Measure):
            agent = abjad.inspect(measure)
            time_signature = agent.get_indicator(abjad.TimeSignature)
            if time_signature.denominator < 4:
                fraction = abjad.NonreducedFraction(
                    time_signature.pair)
                fraction = fraction.with_multiple_of_denominator(4)
                abjad.detach(time_signature, measure)
                new_time_signature = abjad.TimeSignature(fraction)
                abjad.attach(new_time_signature, measure)
        maker = abjad.MeasureMaker()
        measures = maker(measure_durations)
        context = self._score['Global Rests']
        context.extend(measures)

    def _tweak_tuplet_brackets(self):
        measures = self._partition_music_into_measures()
        for pair in self.tuplet_bracket_tweaks:
            measure_number, staff_padding = pair
            measure_index = measure_number - 1
            measure = measures[measure_index]
            leaves = abjad.iterate(measure).leaves()
            for leaf in leaves:
                abjad.override(leaf).tuplet_bracket.staff_padding = \
                    staff_padding

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
    def label_stages(self):
        r'''Is true when segment should annotate stages.

        Set to true or false.
        '''
        return self._label_stage_numbers

    @property
    def lilypond_file(self):
        r'''Gets LilyPond file.

        Returns LilyPond file.
        '''
        return self._lilypond_file

    @property
    def music_makers(self):
        r'''Gets segment-maker's music-makers.

        Returns tuple of music-makers.
        '''
        return self._music_makers

    @property
    def music_specifiers(self):
        r'''Gets segment-maker's music-specifiers.

        Returns tuples of music-specifiers.
        '''
        return tuple(self._music_specifiers)

    @property
    def show_leaf_indices(self):
        r'''Is true when segment should annotate leaf indices.

        Set to true or false.
        '''
        return self._show_leaf_indices

    @property
    def slurs(self):
        r'''Gets slur pairs.

        Returns list of pairs.
        '''
        return self._slurs

    @property
    def tuplet_bracket_tweaks(self):
        r'''Gets list of tuplet bracket tweaks.

        Returns list of pairs.
        '''
        return self._tuplet_bracket_tweaks

    ### PUBLIC METHODS ###

    def make_rhythm_specifier(self):
        r'''Makes rhythm specifier.

        Appends rhythm specifier to segment-maker.

        Returns rhythm specifier.
        '''
        rhythm_specifier = huitzil.DreamsRhythmSpecifier()
        self.music_makers.append(rhythm_specifier)
        return rhythm_specifier

    def run(
        self,
        metadata=None,
        previous_metadata=None,
        ):
        r'''Runs segment-maker.

        Returns LilyPond file.
        '''
        self._make_score()
        self._make_lilypond_file()
        self._configure_lilypond_file()
        self._interpret_music_makers()
        self._configure_score()
        self._populate_time_signature_context()
        self._adjust_stems()
        self._attach_tempo_indicators()
        #self._attach_fermatas()
        self._annotate_stages()
        self._annotate_leaf_indices()
        self._attach_slurs()
        self._tweak_tuplet_brackets()
        self._add_final_bar_line()
        self._add_final_markup()
        score_block = self.lilypond_file['score']
        score = score_block['Score']
        if not abjad.inspect(score).is_well_formed():
            for container in abjad.iterate(score).components(abjad.Container):
                if len(container) == 0:
                    print(container)
                    abjad.f(container)
            string = \
                abjad.inspect(score).tabulate_wellformedness()
            string = '\n' + string
            raise Exception(string)
        metadata = None
        return self.lilypond_file, metadata
