# -*- encoding: utf-8 -*-
import os
from abjad import *


class FlightSegmentMaker(abctools.AbjadObject):
    r'''Flight segment-maker.
    '''

    ### CLASS ATTRIBUTES ###

    __slots__ = (
        '_accent_dynamics',
        '_durations',
        '_lilypond_file',
        '_markup_leaves',
        '_name',
        '_pitches',
        '_score',
        '_notes',
        '_staff_line_count',
        '_staff_positions',
        '_tempo_map',
        '_tremolo_rate_map',
        '_underlying_dynamics',
        )

    __staff_position_to_pitch_name = {
        6: 'A5',
        5: 'F5',
        4: 'D5',
        3: 'B4',
        2: 'G4',
        1: 'E4',
        0: 'C4',
        -1: 'A3',
        -2: 'F3',
        -3: 'D3',
        -4: 'B2',
        -5: 'G2',
        -6: 'E2',
        -7: 'C2',
        -8: 'A1',
        -9: 'F1',
        }

    ### INITIALIZER ###    

    def __init__(
        self,
        accent_dynamics=None,
        durations=None,
        markup_leaves=False,
        name=None,
        pitches=None,
        notes=None,
        staff_line_count=None,
        staff_positions=None,
        tempo_map=None,
        tremolo_rate_map=None,
        underlying_dynamics=None,
        ):
        self.accent_dynamics = accent_dynamics
        self.durations = durations
        self.markup_leaves = markup_leaves
        self.name = name
        self.pitches = pitches
        self.notes = notes
        self.staff_line_count = staff_line_count
        self.staff_positions = staff_positions
        self.tempo_map = tempo_map
        self.tremolo_rate_map = tremolo_rate_map
        self.underlying_dynamics = underlying_dynamics
        self._lilypond_file = None
        self._score = None

    ### SPECIAL METHODS ###

    def __call__(self):
        r'''Calls segment-maker.

        Returns LilyPond file.
        '''
        self._make_score()
        self._make_lilypond_file()
        self._configure_lilypond_file()
        self._make_notes()
        self._populate_time_signature_voice()
        self._attach_leaf_index_markup()
        score_block = self.lilypond_file['score']
        score = score_block['Score']
        if not inspect_(score).is_well_formed():
            string = inspect_(score).tabulate_well_formedness_violations()
            raise Exception(string)
        return self.lilypond_file

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

    def _attach_leaf_index_markup(self):
        if not self.markup_leaves:
            return
        voice = self._score['Music Voice']
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
        else:
            message = 'unrecognized indication: {!r}.'
            message = message.format(indication)
            raise ValueError(message)
        for leaf in iterate(leaves).by_class(scoretools.Leaf):
            if Duration(1, 16) < leaf.written_duration:
                tremolo = indicatortools.StemTremolo(16)
                attach(tremolo, leaf)
        return leaves

    def _make_notes(self):
        notes = []
        for expression in self.notes:
            if expression == '|':
                continue
            staff_position, duration_string, indication = expression
            pitch = self._staff_position_to_pitch(staff_position)
            components = self._make_leaf(pitch, duration_string, indication)
            notes.extend(components)
        music_voice = self._score['Music Voice']
        music_voice.extend(notes)

    def _make_score(self):
        from huitzil import makers
        template = makers.FlightScoreTemplate()
        score = template()
        self._score = score

    def _populate_time_signature_voice(self):
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

    def _staff_position_to_pitch(self, staff_position):
        pitch_string = self.__staff_position_to_pitch_name[staff_position]
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
    def tremolo_rate_map(self):
        r'''Gets tremolo rate indications of segment-maker.

        Returns list of pairs or none.
        '''
        return self._tremolo_rate_map

    @tremolo_rate_map.setter
    def tremolo_rate_map(self, expr):
        if expr is None:
            self._tremolo_rate_map = expr
        elif isinstance(expr, list):
            self._tremolo_rate_map = expr
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