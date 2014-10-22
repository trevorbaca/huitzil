# -*- encoding: utf-8 -*-
from abjad import *


class DreamsMusicMaker(abctools.AbjadObject):
    r'''Huitzil dreams music-maker.

    All properties can be configured at or after initialization.
    '''

    ### CLASS ATTRIBUTES ###

    __slots__ = (
        '_pc_displacement',
        '_extra_counts_per_division',
        '_glissando_patterns',
        '_pc_operators',
        '_pitch_class_trees',
        '_start_tempo',
        '_stop_tempo',
        '_voice_map',
        )

    ### INITIALIZER ###    

    def __init__(
        self,
        pc_displacement=None,
        extra_counts_per_division=None,
        glissando_patterns=None,
        pc_operators=None,
        pitch_class_trees=None,
        start_tempo=None,
        stop_tempo=None,
        voice_map=None,
        ):
        self.pc_displacement = pc_displacement
        self.extra_counts_per_division = extra_counts_per_division
        self.glissando_patterns = glissando_patterns
        self.pc_operators = pc_operators
        self.pitch_class_trees = pitch_class_trees
        self.start_tempo = start_tempo
        self.stop_tempo = stop_tempo
        self.voice_map = voice_map

    ### SPECIAL METHODS ###

    def __call__(self):
        r'''Calls music-maker.

        Returns selection.
        '''
        music = self._make_rhythm()
        self._displace_pitch_classes(music)
        self._register_voices(music)
        self._apply_glissando_patterns(music)
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

    def _apply_glissando_patterns(self, music):
        if not self.glissando_patterns:
            return
        notes = list(iterate(music).by_class(Note))
        note_pairs = list(sequencetools.iterate_sequence_nwise(notes, n=2))
        total_note_pairs = len(note_pairs)
        for i, note_pair in enumerate(note_pairs):
            has_glissando = False
            for pattern in self.glissando_patterns:
                if pattern._matches_index(i, total_note_pairs):
                    has_glissando = True
                    break
            if has_glissando:
                attach(Glissando(), note_pair)

    def _attach_voice_numbers(self, note_lists):
        for component in self.voice_map:
            assert len(component) == 2
            voice_number = component[0]
            start_index, stop_index = component[1]
            for i, note_list in enumerate(note_lists):
                if start_index <= i < stop_index:
                    for note in note_list:
                        attach(voice_number, note)

    def _displace_pitch_classes(self, music):
        if not self.pc_displacement:
            return
        notes = list(iterate(music).by_class(Note))
        total_notes = len(notes)
        down_one_octave = pitchtools.Transposition(-12)
        for i, note in enumerate(notes):
            register = None
            for pattern in self.pc_displacement:
                if pattern._matches_index(i, total_notes):
                    register = 'high'
                    break
            else:
                register = 'low'
            if register == 'high':
                pass
            elif register == 'low':
                source_pitch = note.written_pitch
                transposed_pitch = down_one_octave(source_pitch)
                note.written_pitch = transposed_pitch
            else:
                raise ValueError(register)

    def _make_inner_tuplets(self, note_lists):
        extra_counts_per_division = self.extra_counts_per_division or [0]
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
            if 0 < start_duration + extra_duration:
                target_duration = start_duration + extra_duration
            else:
                target_duration = start_duration
            ratio = leaf_count * [1]
            ratio = mathtools.Ratio(ratio)
            if 0 <= extra_count:
                is_diminution = False
            else:
                is_diminution = True
            inner_tuplet = Tuplet.from_duration_and_ratio(
                target_duration,
                ratio,
                avoid_dots=True,
                is_diminution=is_diminution,
                )
            beam = spannertools.DuratedComplexBeam()
            attach(beam, inner_tuplet)
            for j, inner_tuplet_note in enumerate(inner_tuplet):
                source_note = note_list[j]
                inner_tuplet_note.written_pitch = source_note.written_pitch
                voice_number = inspect_(source_note).get_indicator(int)
                attach(voice_number, inner_tuplet_note)
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
                    for operator in self.pc_operators:
                        pitch_class = operator(pitch_class)
                    note = Note(pitch_class, Duration(1, 4))
                    note_list.append(note)
                note_lists.append(note_list)
        return note_lists

    def _make_rhythm(self):
        pitch_class_trees = self.pitch_class_trees
        assert isinstance(pitch_class_trees, tuple)
        note_lists = self._make_note_lists(pitch_class_trees)
        self._attach_voice_numbers(note_lists)
        self._set_written_durations(note_lists)
        inner_tuplets = self._make_inner_tuplets(note_lists)
        return inner_tuplets
    
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

    def _register_voices(self, music):
        from huitzil import materials
        voice_1_registration = materials.registration_inventory[0]
        voice_2_registration = materials.registration_inventory[1]
        voice_3_registration = materials.registration_inventory[2]
        for note in iterate(music).by_class(Note):
            voice_number = inspect_(note).get_indicator(int)
            if voice_number == 1:
                #override(note).note_head.color = 'red'
                registration = voice_1_registration
            elif voice_number == 2:
                #override(note).note_head.color = 'green'
                registration = voice_2_registration
            elif voice_number == 3:
                #override(note).note_head.color = 'blue'
                registration = voice_3_registration
            else:
                raise ValueError(voice_number)
            pitches = [note.written_pitch]
            transposed_pitches = registration(pitches)
            transposed_pitch = transposed_pitches[0]
            note.written_pitch = transposed_pitch

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
    def glissando_patterns(self):
        r'''Gets glissando patterns of music-maker.

        Set to list of boolean pattern objects or none.

        Returns list or none.
        '''
        return self._glissando_patterns

    @glissando_patterns.setter
    def glissando_patterns(self, expr):
        if expr is None:
            self._glissando_patterns = []
        elif isinstance(expr, list):
            self._glissando_patterns = expr
        else:
            message = 'must be list or none: {!r}.'
            message = message.format(expr)
            raise TypeError(message)
    
    @property
    def pc_operators(self):
        r'''Gets pc operators of music-maker.

        Returns list.
        '''
        return self._pc_operators

    @pc_operators.setter
    def pc_operators(self, expr):
        if expr is None:
            self._pc_operators = []
        elif isinstance(expr, list):
            self._pc_operators = expr
        else:
            message = 'must be list or none: {!r}.'
            message = message.format(expr)
            raise TypeError(message)

    @property
    def pc_displacement(self):
        r'''Gets displacement map of music-maker.

        Boolean pattern that specifies whether pitch-classes should be
        registered as high pitches or low pitches.

        Returns list.
        '''
        return self._pc_displacement

    @pc_displacement.setter
    def pc_displacement(self, expr):
        if expr is None:
            self._pc_displacement = []
        elif isinstance(expr, list):
            self._pc_displacement = expr
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