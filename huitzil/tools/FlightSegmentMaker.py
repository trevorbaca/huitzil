# -*- coding: utf-8 -*-
import abjad
import baca
import copy
import huitzil
import os


class FlightSegmentMaker(abjad.AbjadObject):
    r'''Flight segment-maker.

    ::

        >>> import abjad
        >>> import baca
        >>> import huitzil

    '''

    ### CLASS ATTRIBUTES ###

    __frontiera_position_to_pitch_name = {
        7: 'A5',
        6: 'F5',
        5: 'D5',
        4: 'B4',
        3: 'G4',
        2: 'E4',
        1: 'C4',
        }

    __slots__ = (
        '_accent_dynamics',
        '_clef',
        '_durations',
        '_glissando_break_indices',
        '_lh_glissandi',
        '_lilypond_file',
        '_markup_leaves',
        '_name',
        '_pitches',
        '_score',
        '_notes',
        '_staff_line_count',
        '_staff_positions',
        '_tempo_map',
        '_tremolo_map',
        '_underlying_dynamics',
        )

    __tastiera_position_to_pitch_name = {
        1: 'E6',
        2: 'C6',
        3: 'A5',
        4: 'F5',
        5: 'D5',
        6: 'B4',
        7: 'G4',
        8: 'E4',
        9: 'C4',
        10: 'A3',
        11: 'F3',
        }

    ### INITIALIZER ###    

    def __init__(
        self,
        accent_dynamics=None,
        clef=None,
        durations=None,
        glissando_break_indices=None,
        lh_glissandi=None,
        markup_leaves=False,
        name=None,
        pitches=None,
        notes=None,
        staff_line_count=None,
        staff_positions=None,
        tempo_specifier=None,
        tremolo_map=None,
        underlying_dynamics=None,
        ):
        self.accent_dynamics = accent_dynamics
        self.clef = clef
        self.durations = durations
        self.glissando_break_indices = glissando_break_indices
        self.lh_glissandi = lh_glissandi
        self.markup_leaves = markup_leaves
        self.name = name
        self.pitches = pitches
        self.notes = notes
        self.staff_line_count = staff_line_count
        self.staff_positions = staff_positions
        self.tempo_specifier = tempo_specifier
        self.tremolo_map = tremolo_map
        self.underlying_dynamics = underlying_dynamics
        self._lilypond_file = None
        self._score = None

    ### SPECIAL METHODS ###

    def __call__(
        self,
        segment_metadata=None,
        previous_segment_metadata=None,
        ):
        r'''Calls segment-maker.

        Returns LilyPond file.
        '''
        self._make_score()
        self._configure_score()
        self._make_lilypond_file()
#        self._configure_lilypond_file()
        self._populate_bow_location_voice()
        self._populate_time_signature_voice()
        self._populate_tempo_indicator_voice()
        self._populate_tremolo_indicator_voice()
        self._populate_underlying_dynamics_voice()
        self._populate_pitch_voice()
        self._attach_clefs()
        self._format_altissimi_pitches()
        self._attach_lh_glissandi()
        self._attach_final_bar_line()
        self._attach_leaf_index_markup()
        score_block = self.lilypond_file['score']
        score = score_block['Score']
        try:
            duration = abjad.inspect(score).get_duration(in_seconds=True)
        except MissingMetronomeMarkError:
            duration = abjad.Duration(0)
        #raise Exception(float(duration))
        if not abjad.inspect(score).is_well_formed():
            string = \
                abjad.inspect(score).tabulate_well_formedness_violations()
            string = '\n' + string
            raise Exception(string)
        segment_metadata = None
        return self.lilypond_file, segment_metadata

    ### PRIVATE PROPERTIES ###

    @property
    def _storage_format_specification(self):
        manager = abjad.StorageFormatManager
        keyword_argument_names = \
            manager.get_signature_keyword_argument_names(self)
        if not self.rhythm_overwrites:
            keyword_argument_names = list(keyword_argument_names)
            keyword_argument_names.remove('rhythm_overwrites')
        return abjad.StorageFormatSpecification(
            self,
            keyword_argument_names=keyword_argument_names,
            )

    ### PRIVATE METHODS ###

    def _attach_final_bar_line(self):
        if not self.name == 'flight I':
            return
        self._score.add_final_bar_line()
        pitch_voice = self._score['Pitch Voice']
        last_leaf = abjad.inspect(pitch_voice).get_leaf(-1)
        string = r'override Score.BarLine.transparent = ##f'
        command = abjad.LilyPondCommand(string, format_slot='after')
        abjad.attach(command, last_leaf)
        string = r'override Score.SpanBar.transparent = ##f'
        command = abjad.LilyPondCommand(string, format_slot='after')
        abjad.attach(command, last_leaf)

    def _attach_clefs(self):
        pitch_voice = self._score['Pitch Voice']
        notes = abjad.iterate(pitch_voice).by_class(abjad.Note)
        for left_note, right_note in abjad.sequence(notes).nwise(n=2):
            left_clef = abjad.Clef.from_selection(left_note) 
            right_clef = abjad.Clef.from_selection(right_note)
            if left_clef != right_clef:
                abjad.attach(right_clef, right_note)

    def _attach_lh_glissandi(self):
        if not self.notes:
            return
        if not self.lh_glissandi:
            return
        pitch_voice = self._score['Pitch Voice']
        for start_index, stop_index in self.lh_glissandi:
            leaves = abjad.select(pitch_voice).by_leaf()
            spanner_leaves = leaves[start_index:stop_index+1]
            glissando = abjad.Glissando()
            abjad.attach(glissando, spanner_leaves)

    def _attach_leaf_index_markup(self):
        if not self.markup_leaves:
            return
        voice = self._score['Bow Location Voice']
        logical_ties = abjad.iterate(voice).by_logical_tie()
        for i, logical_tie in enumerate(logical_ties):
            markup = abjad.Markup(i)
            abjad.attach(markup, logical_tie.head)

#    def _configure_lilypond_file(self):
#        lilypond_file = self._lilypond_file
#        lilypond_file.header_block.title = None
#        lilypond_file.header_block.composer = None

    def _configure_score(self):
        bow_staff = self._score['Bow Staff']
        abjad.override(bow_staff).staff_symbol.line_count = self.staff_line_count
        if self.name in ('flight E', 'flight F', 'flight I'):
            voice = self._score['MetronomeMark Indicator Voice']
            abjad.override(voice).text_script.staff_padding = 5
            abjad.override(voice).text_spanner.staff_padding = 5.75

    def _format_altissimi_pitches(self):
        pitch_voice = self._score['Pitch Voice']
        for note in abjad.iterate(pitch_voice).by_class(abjad.Note):
            if note.written_pitch == abjad.NamedPitch('C6'):
                abjad.override(note).note_head.no_ledgers = True
                style = abjad.SchemeSymbol('do')
                abjad.override(note).note_head.style = style
                abjad.override(note).note_head.duration_log = 2

    def _get_bow_location_durations(self):
        bow_location_voice = self._score['Bow Location Voice']
        durations = []
        for logical_tie in abjad.iterate(bow_location_voice).by_logical_tie():
            duration = logical_tie.get_duration()
            durations.append(duration)
        return durations

    def _make_lilypond_file(self):
        path = os.path.join(
            '..',
            '..',
            'stylesheets',
            'flight-stylesheet.ily',
            )
        lilypond_file = abjad.LilyPondFile.new(
            music=self._score,
            date_time_token=False,
            includes=[path],
            use_relative_includes=True,
            )
        for item in lilypond_file.items[:]:
            if getattr(item, 'name', None) in ('header', 'layout', 'paper'):
                lilypond_file.items.remove(item)
        self._lilypond_file = lilypond_file

    def _make_leaf(self, pitch, duration_string, indication):
        duration = abjad.Duration(duration_string)
        maker = abjad.LeafMaker()
        leaves = maker([pitch], [duration])
        if indication in ('-', '>'):
            indication = Articulation(indication)
            first_component = leaves[0]
            first_leaf = abjad.inspect(first_component).get_leaf(0)
            abjad.attach(indication, first_leaf)
        elif indication is None:
            pass
        elif indication.endswith('z'):
            markup = abjad.Markup(indication, direction=Down)
            markup = markup.dynamic()
            first_component = leaves[0]
            first_leaf = abjad.inspect(first_component).get_leaf(0)
            abjad.attach(markup, first_leaf)
        else:
            message = 'unrecognized indication: {!r}.'
            message = message.format(indication)
            raise ValueError(message)
        for leaf in abjad.iterate(leaves).by_leaf():
            if abjad.Duration(1, 16) < leaf.written_duration:
                tremolo = abjad.StemTremolo(16)
                abjad.attach(tremolo, leaf)
        return leaves

    def _make_score(self):
        template = huitzil.FlightScoreTemplate()
        score = template()
        self._score = score

    def _populate_bow_location_voice(self):
        if not self.notes:
            return
        notes = []
        for expression in self.notes:
            if expression == '|':
                continue
            staff_position, duration_string, indication = expression
            pitch = self._staff_position_to_pitch(staff_position)
            components = self._make_leaf(pitch, duration_string, indication)
            notes.extend(components)
        bow_location_voice = self._score['Bow Location Voice']
        bow_location_voice.extend(notes)
        indices = list(range(len(notes)))
        if self.glissando_break_indices is not None:
            for index in self.glissando_break_indices:
                indices.remove(index)
        glissando_break_indices = self.glissando_break_indices or []
        notes = abjad.iterate(bow_location_voice).by_class(abjad.Note)
        notes_in_spanner = []
        for i, note in enumerate(notes):
            notes_in_spanner.append(note)
            if i in glissando_break_indices:
                notes_in_spanner = abjad.select(notes_in_spanner)
                abjad.attach(abjad.Glissando(), notes_in_spanner)
                notes_in_spanner = []
        if notes_in_spanner:
            notes_in_spanner = abjad.select(notes_in_spanner)
            abjad.attach(abjad.Glissando(), notes_in_spanner)

    def _populate_pitch_voice(self):
        pitch_voice = self._score['Pitch Voice']
        if not self.notes:
            return
        if not self.pitches:
            bow_location_voice = self._score['Bow Location Voice']
            total_duration = abjad.inspect(bow_location_voice).get_duration()
            skip = abjad.Skip(1)
            multiplier = abjad.Multiplier(total_duration)
            abjad.attach(multiplier, skip)
            pitch_voice.append(skip)
        else:
            durations = []
            current_duration = abjad.Duration(0)
            leaf_indices = [_[0] for _ in self.pitches]
            leaf_index = -1
            for expression in self.notes:
                if expression == '|':
                    continue
                leaf_index += 1
                staff_position, duration, articulation = expression
                duration = abjad.Duration(duration)
                if leaf_index in leaf_indices and abjad.Duration(0) < current_duration:
                    durations.append(current_duration)
                    current_duration = duration
                else:
                    current_duration += duration
            if abjad.Duration(0) < current_duration:
                durations.append(current_duration)
            assert len(durations) == len(self.pitches)
            notes = []
            for leaf_index, pitch in self.pitches:
                if pitch == 'skip':
                    skip = abjad.Skip(abjad.Duration(1))
                    notes.append(skip)
                    continue
                parenthesize = False
                if pitch.endswith('()'):
                    parenthesize = True
                    pitch = pitch.strip('()')
                pitch = abjad.NamedPitch(pitch)
                note = abjad.Note(pitch, abjad.Duration(1))
                if parenthesize:
                    note.note_head.is_parenthesized = True
                notes.append(note)
            for note, duration in zip(notes, durations):
                multiplier = abjad.Multiplier(duration)
                abjad.attach(multiplier, note)
            pitch_voice.extend(notes)
        leaf = abjad.inspect(pitch_voice).get_leaf(0)
        clef = abjad.Clef('bass')
        if (isinstance(leaf, abjad.Note) and
            abjad.NamedPitch('C4') < leaf.written_pitch):
            clef = abjad.Clef('treble')
        abjad.attach(clef, leaf)

    def _populate_tempo_indicator_voice(self):
        if not self.notes:
            return
        if not self.tempo_specifier:
            return
        tempo_indicator_voice = self._score['MetronomeMark Indicator Voice']
        durations = self._get_bow_location_durations()
        maker = abjad.rhythmmakertools.SkipRhythmMaker()
        selections = maker(durations)
        tempo_indicator_voice.extend(selections)
        skips = abjad.select(tempo_indicator_voice).by_leaf()
        tempo_spanner = abjad.MetronomeMarkSpanner(
            left_broken_padding=0,
            left_broken_text=abjad.Markup.null(direction=None),
            start_with_parenthesized_tempo=False,
            )
        abjad.attach(tempo_spanner, skips)
        for index, indicator in self.tempo_specifier:
            skip = tempo_indicator_voice[index]
            indicator = copy.copy(indicator)
            tempo_spanner.attach(indicator, skip)

    def _populate_time_signature_voice(self):
        if not self.notes:
            return
        context = self._score['Time Signature Context Skips']
        measure_durations = []
        current_measure_duration = abjad.Duration(0)
        for expression in self.notes:
            if expression == '|':
                measure_durations.append(current_measure_duration)
                current_measure_duration = abjad.Duration(0)
                continue
            staff_position, duration_string, articulation = expression
            duration_string = duration_string.strip('+-')
            duration = abjad.Duration(duration_string)
            current_measure_duration += duration
        if 0 < current_measure_duration:
            measure_durations.append(current_measure_duration)
        maker = abjad.MeasureMaker()
        measures = maker(measure_durations)
        context.extend(measures)
        measures = maker(measure_durations)
        context = self._score['Time Signature Context Multimeasure Rests']
        context.extend(measures)

    def _populate_tremolo_indicator_voice(self):
        tremolo_indicator_voice = self._score['Tremolo Indicator Voice']
        durations = self._get_bow_location_durations()
        maker = abjad.rhythmmakertools.SkipRhythmMaker()
        skips = maker(durations)
        tremolo_indicator_voice.extend(skips)
        if not self.notes:
            return
        if not self.tremolo_map:
            return
        text_spanner = abjad.TextSpanner()
        skips = abjad.select(tremolo_indicator_voice).by_leaf()
        abjad.attach(text_spanner, skips)
        for index, indicator in self.tremolo_map:
            skip = tremolo_indicator_voice[index]
            indicator = copy.copy(indicator)
            if isinstance(indicator, abjad.ArrowLineSegment):
                pass
            else:
                assert isinstance(indicator, baca.AttachCommand)
                assert len(indicator.arguments) == 1
                markup = indicator.arguments[0]
                assert isinstance(markup, abjad.Markup), repr(markup)
                indicator = markup
            text_spanner.attach(indicator, skip)

    def _populate_underlying_dynamics_voice(self):
        if not self.notes:  
            return
        underlying_dynamics_voice = self._score['Underlying Dynamics Voice']
        durations = self._get_bow_location_durations()
        maker = abjad.rhythmmakertools.SkipRhythmMaker()
        selections = maker(durations)
        underlying_dynamics_voice.extend(selections)
        skips = abjad.select(underlying_dynamics_voice).by_leaf()
        if not self.underlying_dynamics:
            return
        for index, string in self.underlying_dynamics:
            skip = underlying_dynamics_voice[index]
            if string in ('<', '>'):
                indicator = abjad.LilyPondCommand(
                    string, 
                    format_slot='right',
                    )
            elif string == '-|':
                indicator = abjad.LilyPondCommand(
                    '<', 
                    format_slot='right',
                    )
                stencil = abjad.Scheme('constante-hairpin')
                abjad.override(skip).hairpin.stencil = stencil
            elif string == '<!':
                indicator = abjad.LilyPondCommand(
                    '<', 
                    format_slot='right',
                    )
                stencil = abjad.Scheme('flared-hairpin')
                abjad.override(skip).hairpin.stencil = stencil
            elif string == '!>':
                indicator = abjad.LilyPondCommand(
                    '>', 
                    format_slot='right',
                    )
                stencil = abjad.Scheme('flared-hairpin')
                abjad.override(skip).hairpin.stencil = stencil
            else:
                indicator = abjad.Dynamic(string)
            abjad.attach(indicator, skip)
        last_skip = skips[-1]
        prototype = abjad.LilyPondCommand
        if not abjad.inspect(last_skip).has_indicator(prototype):
            if not abjad.inspect(last_skip).has_indicator(abjad.Dynamic):
                indicator = abjad.LilyPondCommand(
                    '!', 
                    format_slot='right',
                    )
                abjad.attach(indicator, last_skip)

    def _staff_position_to_pitch(self, staff_position):
        if self.staff_line_count == 7:
            pitch_string = self.__frontiera_position_to_pitch_name[
                staff_position]
        elif self.staff_line_count == 11:
            pitch_string = self.__tastiera_position_to_pitch_name[
                staff_position]
        pitch = abjad.NamedPitch(pitch_string)
        return pitch

    ### PUBLIC PROPERTIES ###

    @property
    def accent_dynamics(self):
        r'''Gets accent dynamics of segment-maker.

        Returns list of strings or none.
        '''
        return self._accent_dynamics

    @accent_dynamics.setter
    def accent_dynamics(self, argument):
        if argument is None:
            self._accent_dynamics = argument
        elif isinstance(argument, list):
            self._accent_dynamics = argument
        else:
            message = 'must be list of strings: {!r}.'
            message = message.format(argument)
            raise TypeError(message)

    @property
    def clef(self):
        r'''Gets clef of segment-maker.

        Returns string or none.
        '''
        return self._clef

    @clef.setter
    def clef(self, argument):
        if argument is None:
            self._clef = argument
        elif isinstance(argument, str):
            self._clef = argument
        else:
            message = 'must be string: {!r}.'
            message = message.format(argument)
            raise TypeError(message)

    @property
    def durations(self):
        r'''Gets durations of segment-maker.

        Returns list of durations or none.
        '''
        return self._durations

    @durations.setter
    def durations(self, argument):
        if argument is None:
            self._durations = argument
        elif isinstance(argument, list):
            self._durations = argument
        else:
            message = 'must be list of pairs: {!r}.'
            message = message.format(argument)
            raise TypeError(message)

    @property
    def glissando_break_indices(self):
        r'''Gets glissando break indices of segment-maker.

        Returns list of integers or none.
        '''
        return self._glissando_break_indices

    @glissando_break_indices.setter
    def glissando_break_indices(self, argument):
        if argument is None:
            self._glissando_break_indices = argument
        elif isinstance(argument, list):
            self._glissando_break_indices = argument
        else:
            message = 'must be list of integers: {!r}.'
            message = message.format(argument)
            raise TypeError(message)

    @property
    def lh_glissandi(self):
        r'''Gets LH glissandi of segment-maker.

        Returns list of pairs or none.
        '''
        return self._lh_glissandi

    @lh_glissandi.setter
    def lh_glissandi(self, argument):
        if argument is None:
            self._lh_glissandi = argument
        elif isinstance(argument, list):
            self._lh_glissandi = argument
        else:
            message = 'must be list of pairs: {!r}.'
            message = message.format(argument)
            raise TypeError(message)

    @property
    def lilypond_file(self):
        r'''Gets LilyPond file.

        Returns LilyPond file.
        '''
        return self._lilypond_file

    @property
    def markup_leaves(self):
        r'''Is true when leaf index markup should attach to leaves.

        Returns string or none.
        '''
        return self._markup_leaves

    @markup_leaves.setter
    def markup_leaves(self, argument):
        if argument is None:
            self._markup_leaves = argument
        elif isinstance(argument, type(True)):
            self._markup_leaves = argument
        else:
            message = 'must be boolean: {!r}.'
            message = message.format(argument)
            raise TypeError(message)

    @property
    def name(self):
        r'''Gets name of segment-maker.

        Returns string or none.
        '''
        return self._name

    @name.setter
    def name(self, argument):
        if argument is None:
            self._name = argument
        elif isinstance(argument, str):
            self._name = argument
        else:
            message = 'must be string: {!r}.'
            message = message.format(argument)
            raise TypeError(message)

    @property
    def notes(self):
        r'''Gets notes of segment-maker.

        Returns list of pairs or none.
        '''
        return self._notes

    @notes.setter
    def notes(self, argument):
        if argument is None:
            self._notes = argument
        elif isinstance(argument, list):
            self._notes = argument
        else:
            message = 'must be list of pairs: {!r}.'
            message = message.format(argument)
            raise TypeError(message)

    @property
    def pitches(self):
        r'''Gets pitches of segment-maker.

        Returns list of pairs or none.
        '''
        return self._pitches

    @pitches.setter
    def pitches(self, argument):
        if argument is None:
            self._pitches = argument
        elif isinstance(argument, list):
            self._pitches = argument
        else:
            message = 'must be list of pairs: {!r}.'
            message = message.format(argument)
            raise TypeError(message)

    @property
    def staff_line_count(self):
        r'''Gets staff line count of segment-maker.

        Returns positive integer or none.
        '''
        return self._staff_line_count

    @staff_line_count.setter
    def staff_line_count(self, argument):
        if argument is None:
            self._staff_line_count = argument
        elif abjad.mathtools.is_positive_integer(argument):
            self._staff_line_count = argument
        else:
            message = 'must be positive integer: {!r}.'
            message = message.format(argument)
            raise TypeError(message)

    @property
    def staff_positions(self):
        r'''Gets staff positions of segment-maker.

        Returns positive integer or none.
        '''
        return self._staff_positions

    @staff_positions.setter
    def staff_positions(self, argument):
        if argument is None:
            self._staff_positions = argument
        elif abjad.mathtools.all_are_positive_integers(argument):
            self._staff_positions = argument
        else:
            message = 'must be list of positive integers: {!r}'
            message = message.format(argument)
            raise TypeError(message)

    @property
    def tempo_specifier(self):
        r'''Gets tempo indications of segment-maker.

        Returns list of pairs or none.
        '''
        return self._tempo_map

    @tempo_specifier.setter
    def tempo_specifier(self, argument):
        if argument is None:
            self._tempo_map = argument
        elif isinstance(argument, list):
            self._tempo_map = argument
        else:
            message = 'must be list of pairs: {!r}.'
            message = message.format(argument)
            raise TypeError(message)

    @property
    def tremolo_map(self):
        r'''Gets tremolo rate indications of segment-maker.

        Returns list of pairs or none.
        '''
        return self._tremolo_map

    @tremolo_map.setter
    def tremolo_map(self, argument):
        if argument is None:
            self._tremolo_map = argument
        elif isinstance(argument, list):
            self._tremolo_map = argument
        else:
            message = 'must be list of pairs: {!r}.'
            message = message.format(argument)
            raise TypeError(message)

    @property
    def underlying_dynamics(self):
        r'''Gets underlying dynamics of segment-maker.

        Returns list of pairs or none.
        '''
        return self._underlying_dynamics

    @underlying_dynamics.setter
    def underlying_dynamics(self, argument):
        if argument is None:
            self._underlying_dynamics = argument
        elif isinstance(argument, list):
            self._underlying_dynamics = argument
        else:
            message = 'must be list of pairs: {!r}.'
            message = message.format(argument)
            raise TypeError(message)
