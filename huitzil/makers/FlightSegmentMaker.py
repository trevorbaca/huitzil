# -*- coding: utf-8 -*-
import copy
import os
from abjad import *


class FlightSegmentMaker(abctools.AbjadObject):
    r'''Flight segment-maker.
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
        tempo_map=None,
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
        self.tempo_map = tempo_map
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
        self._configure_lilypond_file()
        self._populate_bow_location_voice()
        self._populate_time_signature_voice()
        self._populate_tempo_indicator_voice()
        self._populate_tremolo_indicator_voice()
        self._populate_underlying_dynamics_voice()
        self._populate_pitch_staff()
        self._attach_clefs()
        self._format_altissimi_pitches()
        self._attach_lh_glissandi()
        self._attach_final_bar_line()
        self._attach_leaf_index_markup()
        score_block = self.lilypond_file['score']
        score = score_block['Score']
        try:
            duration = inspect_(score).get_duration(in_seconds=True)
        except MissingTempoError:
            duration = Duration(0)
        #raise Exception(float(duration))
        if not inspect_(score).is_well_formed():
            string = inspect_(score).tabulate_well_formedness_violations()
            raise Exception(string)
        segment_metadata = None
        return self.lilypond_file, segment_metadata

    ### PRIVATE PROPERTIES ###

    @property
    def _storage_format_specification(self):
        from abjad.tools import systemtools
        manager = systemtools.StorageFormatManager
        keyword_argument_names = \
            manager.get_signature_keyword_argument_names(self)
        if not self.rhythm_overwrites:
            keyword_argument_names = list(keyword_argument_names)
            keyword_argument_names.remove('rhythm_overwrites')
        return systemtools.StorageFormatSpecification(
            self,
            keyword_argument_names=keyword_argument_names,
            )

    ### PRIVATE METHODS ###

    def _attach_final_bar_line(self):
        if not self.name == 'flight I':
            return
        self._score.add_final_bar_line()
        pitch_staff = self._score['Pitch Staff']
        last_leaf = inspect_(pitch_staff).get_leaf(-1)
        string = r'override Score.BarLine.transparent = ##f'
        command = indicatortools.LilyPondCommand(string, format_slot='after')
        attach(command, last_leaf)
        string = r'override Score.SpanBar.transparent = ##f'
        command = indicatortools.LilyPondCommand(string, format_slot='after')
        attach(command, last_leaf)

    def _attach_clefs(self):
        pitch_staff = self._score['Pitch Staff']
        notes = iterate(pitch_staff).by_class(Note)
        pairs = sequencetools.iterate_sequence_nwise(notes, n=2)
        for left_note, right_note in pairs:
            left_clef = Clef.from_selection(left_note) 
            right_clef = Clef.from_selection(right_note)
            if left_clef != right_clef:
                attach(right_clef, right_note)

    def _attach_lh_glissandi(self):
        if not self.notes:
            return
        if not self.lh_glissandi:
            return
        pitch_staff = self._score['Pitch Staff']
        for start_index, stop_index in self.lh_glissandi:
            leaves = iterate(pitch_staff).by_class(scoretools.Leaf)
            leaves = list(leaves)
            spanner_leaves = leaves[start_index:stop_index+1]
            glissando = Glissando()
            attach(glissando, spanner_leaves)

    def _attach_leaf_index_markup(self):
        if not self.markup_leaves:
            return
        voice = self._score['Bow Location Voice']
        logical_ties = iterate(voice).by_logical_tie()
        for i, logical_tie in enumerate(logical_ties):
            markup = Markup(i)
            attach(markup, logical_tie.head)

    def _configure_lilypond_file(self):
        lilypond_file = self._lilypond_file
        lilypond_file.use_relative_includes = True
        path = os.path.join(
            '..',
            '..',
            'stylesheets',
            'flight-stylesheet.ily',
            )
        lilypond_file.file_initial_user_includes.append(path)
        lilypond_file.header_block.title = None
        lilypond_file.header_block.composer = None

    def _configure_score(self):
        bow_staff = self._score['Bow Staff']
        override(bow_staff).staff_symbol.line_count = self.staff_line_count
        if self.name in ('flight E', 'flight F', 'flight I'):
            voice = self._score['Tempo Indicator Voice']
            override(voice).text_script.staff_padding = 5
            override(voice).text_spanner.staff_padding = 5.75

    def _format_altissimi_pitches(self):
        pitch_staff = self._score['Pitch Staff']
        for note in iterate(pitch_staff).by_class(Note):
            if note.written_pitch == NamedPitch('C6'):
                override(note).note_head.no_ledgers = True
                style = schemetools.SchemeSymbol('do')
                override(note).note_head.style = style
                override(note).note_head.duration_log = 2

    def _get_bow_location_durations(self):
        bow_location_voice = self._score['Bow Location Voice']
        durations = []
        for logical_tie in iterate(bow_location_voice).by_logical_tie():
            duration = logical_tie.get_duration()
            durations.append(duration)
        return durations

    def _make_lilypond_file(self):
        lilypond_file = lilypondfiletools.make_basic_lilypond_file(self._score)
        for item in lilypond_file.items[:]:
            if getattr(item, 'name', None) in ('layout', 'paper'):
                lilypond_file.items.remove(item)
        self._lilypond_file = lilypond_file

    def _make_leaf(self, pitch, duration_string, indication):
        duration = Duration(duration_string)
        leaves = scoretools.make_leaves(
            [pitch], 
            [duration],
            )
        if indication in ('-', '>'):
            indication = Articulation(indication)
            first_component = leaves[0]
            first_leaf = inspect_(first_component).get_leaf(0)
            attach(indication, first_leaf)
        elif indication is None:
            pass
        elif indication.endswith('z'):
            markup = Markup(indication, direction=Down)
            markup = markup.dynamic()
            first_component = leaves[0]
            first_leaf = inspect_(first_component).get_leaf(0)
            attach(markup, first_leaf)
        else:
            message = 'unrecognized indication: {!r}.'
            message = message.format(indication)
            raise ValueError(message)
        for leaf in iterate(leaves).by_class(scoretools.Leaf):
            if Duration(1, 16) < leaf.written_duration:
                tremolo = indicatortools.StemTremolo(16)
                attach(tremolo, leaf)
        return leaves

    def _make_score(self):
        from huitzil import makers
        template = makers.FlightScoreTemplate()
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
        indices = range(len(notes))
        if self.glissando_break_indices is not None:
            for index in self.glissando_break_indices:
                indices.remove(index)
        glissando_break_indices = self.glissando_break_indices or []
        notes = iterate(bow_location_voice).by_class(Note)
        notes_in_spanner = []
        for i, note in enumerate(notes):
            notes_in_spanner.append(note)
            if i in glissando_break_indices:
                attach(Glissando(), notes_in_spanner)
                notes_in_spanner = []
        if notes_in_spanner:
            attach(Glissando(), notes_in_spanner)

    def _populate_pitch_staff(self):
        pitch_staff = self._score['Pitch Staff']
        if self.clef is not None:
            clef = Clef(self.clef)
            attach(clef, pitch_staff)
        if not self.notes:
            return
        if not self.pitches:
            bow_location_voice = self._score['Bow Location Voice']
            total_duration = inspect_(bow_location_voice).get_duration()
            skip = scoretools.Skip(1)
            multiplier = durationtools.Multiplier(total_duration)
            attach(multiplier, skip)
            pitch_staff.append(skip)
        else:
            durations = []
            current_duration = Duration(0)
            leaf_indices = [_[0] for _ in self.pitches]
            leaf_index = -1
            for expression in self.notes:
                if expression == '|':
                    continue
                leaf_index += 1
                staff_position, duration, articulation = expression
                duration = Duration(duration)
                if leaf_index in leaf_indices and Duration(0) < current_duration:
                    durations.append(current_duration)
                    current_duration = duration
                else:
                    current_duration += duration
            if Duration(0) < current_duration:
                durations.append(current_duration)
            assert len(durations) == len(self.pitches)
            notes = []
            for leaf_index, pitch in self.pitches:
                if pitch == 'skip':
                    skip = scoretools.Skip(Duration(1))
                    notes.append(skip)
                    continue
                parenthesize = False
                if pitch.endswith('()'):
                    parenthesize = True
                    pitch = pitch.strip('()')
                pitch = NamedPitch(pitch)
                note = Note(pitch, Duration(1))
                if parenthesize:
                    note.note_head.is_parenthesized = True
                notes.append(note)
            for note, duration in zip(notes, durations):
                multiplier = durationtools.Multiplier(duration)
                attach(multiplier, note)
            pitch_staff.extend(notes)
        first_leaf = inspect_(pitch_staff).get_leaf(n=0)
        clef = Clef('bass')
        if isinstance(first_leaf, Note):
            if NamedPitch('C4') < first_leaf.written_pitch:
                clef = Clef('treble')
            attach(clef, pitch_staff)

    def _populate_tempo_indicator_voice(self):
        if not self.notes:
            return
        if not self.tempo_map:
            return
        tempo_indicator_voice = self._score['Tempo Indicator Voice']
        durations = self._get_bow_location_durations()
        skips = scoretools.make_skips(Duration(1), durations)
        tempo_indicator_voice.extend(skips)
        for index, indicator in self.tempo_map:
            skip = tempo_indicator_voice[index]
            indicator = copy.copy(indicator)
            attach(indicator, skip, is_annotation=True)
        tempo_spanner = spannertools.TempoSpanner(
            left_broken_padding=0,
            left_broken_text=Markup.null(direction=None),
            start_with_parenthesized_tempo=False,
            )
        attach(tempo_spanner, tempo_indicator_voice[:])

    def _populate_time_signature_voice(self):
        if not self.notes:
            return
        voice = self._score['Time Signature Voice']
        measure_durations = []
        current_measure_duration = Duration(0)
        for expression in self.notes:
            if expression == '|':
                measure_durations.append(current_measure_duration)
                current_measure_duration = Duration(0)
                continue
            staff_position, duration_string, articulation = expression
            duration_string = duration_string.strip('+-')
            duration = Duration(duration_string)
            current_measure_duration += duration
        if 0 < current_measure_duration:
            measure_durations.append(current_measure_duration)
        measures = scoretools.make_spacer_skip_measures(measure_durations)
        voice.extend(measures)

    def _populate_tremolo_indicator_voice(self):
        if not self.notes:
            return
        if not self.tremolo_map:
            return
        tremolo_indicator_voice = self._score['Tremolo Indicator Voice']
        durations = self._get_bow_location_durations()
        skips = scoretools.make_skips(Duration(1), durations)
        tremolo_indicator_voice.extend(skips)
        for index, indicator in self.tremolo_map:
            skip = tremolo_indicator_voice[index]
            indicator = copy.copy(indicator)
            attach(indicator, skip, is_annotation=True)
        attach(spannertools.TextSpanner(), tremolo_indicator_voice[:])

    def _populate_underlying_dynamics_voice(self):
        if not self.notes:  
            return
        underlying_dynamics_voice = self._score['Underlying Dynamics Voice']
        durations = self._get_bow_location_durations()
        skips = scoretools.make_skips(Duration(1), durations)
        underlying_dynamics_voice.extend(skips)
        if not self.underlying_dynamics:
            return
        for index, string in self.underlying_dynamics:
            skip = underlying_dynamics_voice[index]
            if string in ('<', '>'):
                indicator = indicatortools.LilyPondCommand(
                    string, 
                    format_slot='right',
                    )
            elif string == '-|':
                indicator = indicatortools.LilyPondCommand(
                    '<', 
                    format_slot='right',
                    )
                stencil = schemetools.Scheme('constante-hairpin')
                override(skip).hairpin.stencil = stencil
            elif string == '<!':
                indicator = indicatortools.LilyPondCommand(
                    '<', 
                    format_slot='right',
                    )
                stencil = schemetools.Scheme('flared-hairpin')
                override(skip).hairpin.stencil = stencil
            elif string == '!>':
                indicator = indicatortools.LilyPondCommand(
                    '>', 
                    format_slot='right',
                    )
                stencil = schemetools.Scheme('flared-hairpin')
                override(skip).hairpin.stencil = stencil
            else:
                indicator = Dynamic(string)
            attach(indicator, skip)
        last_skip = skips[-1]
        prototype = indicatortools.LilyPondCommand
        if not inspect_(last_skip).has_indicator(prototype):
            if not inspect_(last_skip).has_indicator(Dynamic):
                indicator = indicatortools.LilyPondCommand(
                    '!', 
                    format_slot='right',
                    )
                attach(indicator, last_skip)

    def _staff_position_to_pitch(self, staff_position):
        if self.staff_line_count == 7:
            pitch_string = self.__frontiera_position_to_pitch_name[
                staff_position]
        elif self.staff_line_count == 11:
            pitch_string = self.__tastiera_position_to_pitch_name[
                staff_position]
        pitch = NamedPitch(pitch_string)
        return pitch

    ### PUBLIC PROPERTIES ###

    @property
    def accent_dynamics(self):
        r'''Gets accent dynamics of segment-maker.

        Returns list of strings or none.
        '''
        return self._accent_dynamics

    @accent_dynamics.setter
    def accent_dynamics(self, expr):
        if expr is None:
            self._accent_dynamics = expr
        elif isinstance(expr, list):
            self._accent_dynamics = expr
        else:
            message = 'must be list of strings: {!r}.'
            message = message.format(expr)
            raise TypeError(message)

    @property
    def clef(self):
        r'''Gets clef of segment-maker.

        Returns string or none.
        '''
        return self._clef

    @clef.setter
    def clef(self, expr):
        if expr is None:
            self._clef = expr
        elif isinstance(expr, str):
            self._clef = expr
        else:
            message = 'must be string: {!r}.'
            message = message.format(expr)
            raise TypeError(message)

    @property
    def durations(self):
        r'''Gets durations of segment-maker.

        Returns list of durations or none.
        '''
        return self._durations

    @durations.setter
    def durations(self, expr):
        if expr is None:
            self._durations = expr
        elif isinstance(expr, list):
            self._durations = expr
        else:
            message = 'must be list of pairs: {!r}.'
            message = message.format(expr)
            raise TypeError(message)

    @property
    def glissando_break_indices(self):
        r'''Gets glissando break indices of segment-maker.

        Returns list of integers or none.
        '''
        return self._glissando_break_indices

    @glissando_break_indices.setter
    def glissando_break_indices(self, expr):
        if expr is None:
            self._glissando_break_indices = expr
        elif isinstance(expr, list):
            self._glissando_break_indices = expr
        else:
            message = 'must be list of integers: {!r}.'
            message = message.format(expr)
            raise TypeError(message)

    @property
    def lh_glissandi(self):
        r'''Gets LH glissandi of segment-maker.

        Returns list of pairs or none.
        '''
        return self._lh_glissandi

    @lh_glissandi.setter
    def lh_glissandi(self, expr):
        if expr is None:
            self._lh_glissandi = expr
        elif isinstance(expr, list):
            self._lh_glissandi = expr
        else:
            message = 'must be list of pairs: {!r}.'
            message = message.format(expr)
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
    def markup_leaves(self, expr):
        if expr is None:
            self._markup_leaves = expr
        elif isinstance(expr, type(True)):
            self._markup_leaves = expr
        else:
            message = 'must be boolean: {!r}.'
            message = message.format(expr)
            raise TypeError(message)

    @property
    def name(self):
        r'''Gets name of segment-maker.

        Returns string or none.
        '''
        return self._name

    @name.setter
    def name(self, expr):
        if expr is None:
            self._name = expr
        elif isinstance(expr, str):
            self._name = expr
        else:
            message = 'must be string: {!r}.'
            message = message.format(expr)
            raise TypeError(message)

    @property
    def notes(self):
        r'''Gets notes of segment-maker.

        Returns list of pairs or none.
        '''
        return self._notes

    @notes.setter
    def notes(self, expr):
        if expr is None:
            self._notes = expr
        elif isinstance(expr, list):
            self._notes = expr
        else:
            message = 'must be list of pairs: {!r}.'
            message = message.format(expr)
            raise TypeError(message)

    @property
    def pitches(self):
        r'''Gets pitches of segment-maker.

        Returns list of pairs or none.
        '''
        return self._pitches

    @pitches.setter
    def pitches(self, expr):
        if expr is None:
            self._pitches = expr
        elif isinstance(expr, list):
            self._pitches = expr
        else:
            message = 'must be list of pairs: {!r}.'
            message = message.format(expr)
            raise TypeError(message)

    @property
    def staff_line_count(self):
        r'''Gets staff line count of segment-maker.

        Returns positive integer or none.
        '''
        return self._staff_line_count

    @staff_line_count.setter
    def staff_line_count(self, expr):
        if expr is None:
            self._staff_line_count = expr
        elif mathtools.is_positive_integer(expr):
            self._staff_line_count = expr
        else:
            message = 'must be positive integer: {!r}.'
            message = message.format(expr)
            raise TypeError(message)

    @property
    def staff_positions(self):
        r'''Gets staff positions of segment-maker.

        Returns positive integer or none.
        '''
        return self._staff_positions

    @staff_positions.setter
    def staff_positions(self, expr):
        if expr is None:
            self._staff_positions = expr
        elif mathtools.all_are_positive_integers(expr):
            self._staff_positions = expr
        else:
            message = 'must be list of positive integers: {!r}'
            message = message.format(expr)
            raise TypeError(message)

    @property
    def tempo_map(self):
        r'''Gets tempo indications of segment-maker.

        Returns list of pairs or none.
        '''
        return self._tempo_map

    @tempo_map.setter
    def tempo_map(self, expr):
        if expr is None:
            self._tempo_map = expr
        elif isinstance(expr, list):
            self._tempo_map = expr
        else:
            message = 'must be list of pairs: {!r}.'
            message = message.format(expr)
            raise TypeError(message)

    @property
    def tremolo_map(self):
        r'''Gets tremolo rate indications of segment-maker.

        Returns list of pairs or none.
        '''
        return self._tremolo_map

    @tremolo_map.setter
    def tremolo_map(self, expr):
        if expr is None:
            self._tremolo_map = expr
        elif isinstance(expr, list):
            self._tremolo_map = expr
        else:
            message = 'must be list of pairs: {!r}.'
            message = message.format(expr)
            raise TypeError(message)

    @property
    def underlying_dynamics(self):
        r'''Gets underlying dynamics of segment-maker.

        Returns list of pairs or none.
        '''
        return self._underlying_dynamics

    @underlying_dynamics.setter
    def underlying_dynamics(self, expr):
        if expr is None:
            self._underlying_dynamics = expr
        elif isinstance(expr, list):
            self._underlying_dynamics = expr
        else:
            message = 'must be list of pairs: {!r}.'
            message = message.format(expr)
            raise TypeError(message)