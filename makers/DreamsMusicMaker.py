# -*- encoding: utf-8 -*-
from abjad import *


class DreamsMusicMaker(abctools.AbjadObject):
    r'''Huitzil dreams music-maker.

    All properties can be configured at or after initialization.
    '''

    ### CLASS ATTRIBUTES ###

    __slots__ = (
        '_extra_counts_per_division',
        '_operator_map',
        '_pitch_class_trees',
        '_stages',
        '_start_tempo',
        '_stop_tempo',
        '_voice_map',
        )

    ### INITIALIZER ###    

    def __init__(
        self,
        extra_counts_per_division=None,
        operator_map=None,
        pitch_class_trees=None,
        stages=None,
        start_tempo=None,
        stop_tempo=None,
        voice_map=None,
        ):
        self.extra_counts_per_division = extra_counts_per_division
        self.operator_map = operator_map
        self.pitch_class_trees = pitch_class_trees
        self.stages = stages
        self.start_tempo = start_tempo
        self.stop_tempo = stop_tempo
        self.voice_map = voice_map

    ### SPECIAL METHODS ###

    def __call__(self, time_signatures=None):
        r'''Calls music-maker.

        Returns selection.
        '''
        for time_signature in time_signatures:
            assert isinstance(time_signature, indicatortools.TimeSignature)
        music = self._make_rhythm(time_signatures)
        assert isinstance(music, (tuple, list, Voice)), repr(music)
        first_item = music[0]
        return music

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

    def _attach_voice_numbers(self, note_lists):
        for component in self.voice_map:
            assert len(component) == 2
            voice_number = component[0]
            start_index, stop_index = component[1]
            for i, note_list in enumerate(note_lists):
                if start_index <= i < stop_index:
                    for note in note_list:
                        attach(voice_number, note)

    def _get_rhythm_maker(self):
        return self.rhythm_maker

    def _make_inner_tuplets(self, note_lists):
        extra_counts_per_division = self.extra_counts_per_division
        extra_counts_per_division = datastructuretools.CyclicTuple(
            extra_counts_per_division
            )
        inner_tuplets = []
        for i, note_list in enumerate(note_lists):
            leaf_count = len(note_list)
            start_duration = sum(_.written_duration for _ in note_list)
            extra_count = extra_counts_per_division[i]
            unit_duration = note_list[0].written_duration
            extra_duration = extra_count * unit_duration
            target_duration = start_duration + extra_duration
            ratio = leaf_count * [1]
            ratio = mathtools.Ratio(ratio)
            inner_tuplet = Tuplet.from_duration_and_ratio(
                target_duration,
                ratio,
                avoid_dots=True,
                is_diminution=False,
                )
            for j, inner_tuplet_note in enumerate(inner_tuplet):
                source_note = note_list[j]
                inner_tuplet_note.written_pitch = source_note.written_pitch
            inner_tuplets.append(inner_tuplet)
        return inner_tuplets

    def _make_note_lists(self, pitch_class_trees):
        note_lists = []
        for pitch_class_tree in pitch_class_trees:
            assert pitch_class_tree.depth == 3
            assert 0 < len(pitch_class_tree)
            for cell in pitch_class_tree.iterate_at_level(-2):
                note_list = []
                for pitch_class in cell.manifest_payload:
                    note = Note(pitch_class, Duration(1, 4))
                    note_list.append(note)
                note_lists.append(note_list)
        return note_lists

    def _make_outer_tuplets(self, inner_tuplets, time_signatures):
        current_inner_tuplet = 0
        outer_tuplets = []
        for time_signature in time_signatures:
            if len(inner_tuplets) <= current_inner_tuplet:
                notes = scoretools.make_notes([0], [time_signature.duration])
                for note in iterate(notes).by_class(Note):
                    override(note).note_head.color = 'red'
                outer_tuplets.append(notes)
                continue
            my_inner_tuplets = []
            my_inner_tuplets.append(inner_tuplets[current_inner_tuplet])
            current_inner_tuplet += 1
            target_duration = time_signature.duration
            while (sum(inspect_(_).get_duration() for _ in my_inner_tuplets) <
                target_duration):
                if current_inner_tuplet <= len(inner_tuplets) - 1:
                    my_inner_tuplets.append(
                        inner_tuplets[current_inner_tuplet]
                        )
                    current_inner_tuplet += 1
                else:
                    current_duration = sum(
                        inspect_(_).get_duration()
                        for _ in my_inner_tuplets
                        )
                    missing_duration = target_duration - current_duration
                    missing_notes = scoretools.make_notes(
                        [0],
                        [missing_duration],
                        )
                    for note in iterate(missing_notes).by_class(Note):
                        override(note).note_head.color = 'red'
                    my_inner_tuplets.extend(missing_notes)
            outer_tuplet = scoretools.FixedDurationTuplet(
                target_duration,
                my_inner_tuplets,
                )
            outer_tuplets.append(outer_tuplet)
        return outer_tuplets

    def _make_rhythm(self, time_signatures):
        pitch_class_trees = self.pitch_class_trees
        assert isinstance(pitch_class_trees, tuple)
        note_lists = self._make_note_lists(pitch_class_trees)
        self._attach_voice_numbers(note_lists)
        self._set_written_durations(note_lists)
        inner_tuplets = self._make_inner_tuplets(note_lists)
        outer_tuplets = self._make_outer_tuplets(
            inner_tuplets, 
            time_signatures,
            )
        return outer_tuplets
    
    def _make_selections(self, time_signatures, note_lists):
        selections = []
        total_note_lists = len(note_lists)
        current_note_list_index = 0
        extra_counts_per_division = datastructuretools.CyclicTuple(
            self.extra_counts_per_division
            )
        for i, time_signature in enumerate(time_signatures):
            if current_note_list_index <= total_note_lists - 1:
                note_list = note_lists[current_note_list_index]
                current_note_list_index += 1
                tuplet = scoretools.FixedDurationTuplet(
                    time_signature.duration,
                    note_list,
                    )
                selections.append(tuplet)
            else:
                selection = scoretools.make_rests([time_signature.duration])
                selections.append(selection)
        return selections

    def _set_written_durations(self, note_lists):
        durations = []
        for note_list in note_lists:
            for note in note_list:
                voice_number = inspect_(note).get_indicator(int)
                if voice_number == 1:
                    duration = Duration(1, 8)
                elif voice_number == 2:
                    duration = Duration(1, 16)
                elif voice_number == 3:
                    duration = Duration(1, 4)
                else:
                    raise ValueError(voice_number)
                note.written_duration = duration

    ### PUBLIC PROPERTIES ###

    @property
    def extra_counts_per_division(self):
        r'''Gets extra counts per division of music-maker.

        Returns list.
        '''
        return self._extra_counts_per_division

    @extra_counts_per_division.setter
    def extra_counts_per_division(self, expr):
        if expr is None:
            self._extra_counts_per_division = []
        elif isinstance(expr, list):
            self._extra_counts_per_division = expr
        else:
            message = 'must be list or none: {!r}.'
            message = message.format(expr)
            raise TypeError(message)

    @property
    def operator_map(self):
        r'''Gets operator map of music-maker.

        Returns list.
        '''
        return self._operator_map

    @operator_map.setter
    def operator_map(self, expr):
        if expr is None:
            self._operator_map = []
        elif isinstance(expr, list):
            self._operator_map = expr
        else:
            message = 'must be list or none: {!r}.'
            message = message.format(expr)
            raise TypeError(message)

    @property
    def pitch_class_trees(self):
        r'''Gets pitch-class trees of music-maker.

        Returns tuple.
        '''
        return self._pitch_class_trees

    @pitch_class_trees.setter
    def pitch_class_trees(self, expr):
        if expr is None:
            self._pitch_class_trees = []
        elif isinstance(expr, tuple):
            self._pitch_class_trees = expr
        else:
            message = 'must be tuple of pitch-class trees or none: {!r}.'
            message = message.format(expr)
            raise TypeError(message)

    @property
    def stages(self):
        r'''Gets stages of music-maker.

        Returns pair of positive integers.
        '''
        return self._stages

    @stages.setter
    def stages(self, expr):
        if expr is None:
            self._stages = expr
        elif mathtools.is_positive_integer(expr):
            self._stages = (expr, expr)
        elif (mathtools.all_are_positive_integers(expr)
            and len(expr) == 2):
            self._stages = tuple(expr)
        else:
            message = 'positive integer or pair of positive integers: {!r}.'
            message = message.format(expr)
            raise TypeError(message)

    @property
    def start_stage(self):
        r'''Gets start stage of music-maker.

        Returns positive integer.
        '''
        return self.stages[0]

    @property
    def start_tempo(self):
        r'''Gets start tempo of music-maker.

        Returns tempo or none.
        '''
        return self._start_tempo

    @start_tempo.setter
    def start_tempo(self, expr):
        if expr is None:
            self._start_tempo = expr
        elif isinstance(expr, Tempo):
            self._start_tempo = expr
        else:
            message = 'must be tempo: {!r}.'
            message = message.format(expr)
            raise TypeError(message)

    @property
    def stop_stage(self):
        r'''Gets stop stage of music-maker.

        Returns positive integer.
        '''
        return self.stages[-1]

    @property
    def stop_tempo(self):
        r'''Gets stop tempo of music-maker.

        Returns tempo or none.
        '''
        return self._stop_tempo

    @stop_tempo.setter
    def stop_tempo(self, expr):
        if expr is None:
            self._stop_tempo = expr
        elif isinstance(expr, Tempo):
            self._stop_tempo = expr
        else:
            message = 'must be tempo: {!r}.'
            message = message.format(expr)
            raise TypeError(message)

    @property
    def voice_map(self):
        r'''Gets voice map of music-maker.

        Returns list.
        '''
        return self._voice_map

    @voice_map.setter
    def voice_map(self, expr):
        if expr is None:
            self._voice_map = []
        elif isinstance(expr, list):
            self._voice_map = expr
        else:
            message = 'must be list or none: {!r}.'
            message = message.format(expr)
            raise TypeError(message)