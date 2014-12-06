# -*- encoding: utf-8 -*-
from abjad import *


class FlightMusicMaker(abctools.AbjadObject):
    r'''Flight music-maker.

    All properties can be configured at or after initialization.
    '''

    ### CLASS ATTRIBUTES ###

    __slots__ = (
        '_accent_dynamics',
        '_durations',
        '_name',
        '_pitches',
        '_sforzandi',
        '_staff_line_count',
        '_staff_positions',
        '_tempo_map',
        '_tremolo_rate_map',
        '_underlying_dynamics',
        )

    ### INITIALIZER ###    

    def __init__(
        self,
        accent_dynamics=None,
        durations=None,
        name=None,
        pitches=None,
        sforzandi=None,
        staff_line_count=None,
        staff_positions=None,
        tempo_map=None,
        tremolo_rate_map=None,
        underlying_dynamics=None,
        ):
        self.accent_dynamics = accent_dynamics
        self.durations = durations
        self.name = name
        self.pitches = pitches
        self.sforzandi = sforzandi
        self.staff_line_count = staff_line_count
        self.staff_positions = staff_positions
        self.tempo_map = tempo_map
        self.tremolo_rate_map = tremolo_rate_map
        self.underlying_dynamics = underlying_dynamics

    ### SPECIAL METHODS ###

    def __call__(self):
        r'''Calls music-maker.

        Returns selection.
        '''
        music = self._make_rhythm()
        self._respell_tuplets(music)
        self._displace_pitch_classes(music)
        self._register_voices(music)
        self._attach_beams(music)
        self._adjust_beams(music)
        self._apply_glissando_patterns(music)
        self._attach_leaf_index_markup(music)
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

    def _adjust_beams(self, music):
        pass

    def _annotate_original_durations(self, note_lists):
        notes = sequencetools.flatten_sequence(note_lists)
        for note in notes:
            attach(note.written_duration, note)

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

    def _attach_beams(self, music):
        bass_clef = Clef('bass')
        down_beam_positions = (-4.5, -4.5)
        up_beam_positions = (5.5, 5.5)
        tuplets = iterate(music).by_class(Tuplet)
        for tuplet in tuplets:
            voice_numbers = [inspect_(_).get_indicator(int) for _ in tuplet]
            runs = sequencetools.partition_sequence_by_value_of_elements(
                voice_numbers)
            counts = [len(_) for _ in runs]
            note_groups = sequencetools.partition_sequence_by_counts(
                tuplet[:],
                counts,
                )
            for note_group in note_groups:
                beam = spannertools.DuratedComplexBeam()
                attach(beam, note_group)
                first_note = note_group[0]
                if Duration(1, 4) <= first_note.written_duration:
                    continue
                staff_positions = [
                    _.written_pitch.to_staff_position(clef=bass_clef).number
                    for _ in note_group
                    ]
                highest_staff_position = max(staff_positions)
                lowest_staff_position = min(staff_positions)
                if 0 <= lowest_staff_position:
                    stem_direction = Down
                elif highest_staff_position <= 0:
                    stem_direction = Up
                elif abs(lowest_staff_position) < abs(highest_staff_position):
                    stem_direction = Down
                elif abs(highest_staff_position) < abs(lowest_staff_position):
                    stem_direction = Up
                else:
                    stem_direction = Up
                if stem_direction == Up:
                    override(first_note).beam.positions = up_beam_positions
                else:
                    override(first_note).beam.positions = down_beam_positions
                for note in note_group:
                    override(note).stem.direction = stem_direction

    def _attach_leaf_index_markup(self, music):
        if not self.index_logical_ties:
            return
        logical_ties = iterate(music).by_logical_tie()
        for i, logical_tie in enumerate(logical_ties):
            markup = Markup(i)
            attach(markup, logical_tie.head)

    def _attach_voice_numbers(self, note_lists):
        for component in self.voice_map:
            assert len(component) == 2
            voice_number = component[0]
            indices = component[1]
            notes = sequencetools.flatten_sequence(note_lists)
            for i, note in enumerate(notes):
                if i in indices:
                    detach(int, note)
                    attach(voice_number, note)
        notes = sequencetools.flatten_sequence(note_lists)
        for note in notes:
            assert inspect_(note).has_indicator(int), repr(note)

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
            extra_duration = extra_count * self.unit_duration
            if 0 < start_duration + extra_duration:
                target_duration = start_duration + extra_duration
            else:
                target_duration = start_duration
            numerators = []
            for note in note_list:
                duration = note.written_duration
                fraction = mathtools.NonreducedFraction(duration)
                fraction = fraction.with_denominator(128)
                numerators.append(fraction.numerator)
            ratio = mathtools.Ratio(numerators)
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
            #beam = spannertools.DuratedComplexBeam()
            #attach(beam, inner_tuplet)
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
        self._annotate_original_durations(note_lists)
        self._attach_voice_numbers(note_lists)
        self._set_written_durations(note_lists)
        inner_tuplets = self._make_inner_tuplets(note_lists)
        return inner_tuplets
    
    def _register_voices(self, music):
        from huitzil import materials
        voice_1_registration = materials.registration_inventory[0]
        voice_2_registration = materials.registration_inventory[1]
        voice_3_registration = materials.registration_inventory[2]
        for note in iterate(music).by_class(Note):
            voice_number = inspect_(note).get_indicator(int)
            if voice_number == 1:
                color = 'red'
                override(note).accidental.color = color
                override(note).beam.color = color
                override(note).dots.color = color
                override(note).note_head.color = color
                override(note).slur.color = color
                override(note).stem.color = color
                registration = voice_1_registration
            elif voice_number == 2:
                #color = 'green'
                #override(note).accidental.color = color
                #override(note).beam.color = color
                #override(note).dots.color = color
                #override(note).note_head.color = color
                #override(note).slur.color = color
                #override(note).stem.color = color
                registration = voice_2_registration
            elif voice_number == 3:
                color = 'blue'
                override(note).accidental.color = color
                override(note).beam.color = color
                override(note).dots.color = color
                override(note).note_head.color = color
                override(note).slur.color = color
                override(note).stem.color = color
                registration = voice_3_registration
            else:
                raise ValueError(voice_number)
            pitches = [note.written_pitch]
            transposed_pitches = registration(pitches)
            transposed_pitch = transposed_pitches[0]
            note.written_pitch = transposed_pitch

    def _respell_tuplets(self, music):
        multiplier = durationtools.Multiplier(3, 2)
        for tuplet in iterate(music).by_class(Tuplet):
            if tuplet.multiplier == multiplier:
                for note in tuplet:
                    new_written_duration = multiplier * note.written_duration
                    note.written_duration = new_written_duration

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
    def accent_dynamics(self):
        r'''Gets accent dynamics of music-maker.

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
        r'''Gets durations of music-maker.

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
    def name(self):
        r'''Gets name of music-maker.

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
    def pitches(self):
        r'''Gets pitches of music-maker.

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
    def sforzandi(self):
        r'''Gets sforzandi of music-maker.

        Returns list of pairs or none.
        '''
        return self._sforzandi

    @sforzandi.setter
    def sforzandi(self, expr):
        if expr is None:
            self._sforzandi = expr
        elif isinstance(expr, list):
            self._sforzandi = expr
        else:
            message = 'must be list of pairs: {!r}.'
            message = message.format(expr)
            raise TypeError(message)

    @property
    def staff_line_count(self):
        r'''Gets staff line count of music-maker.

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
        r'''Gets staff positions of music-maker.

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
        r'''Gets tempo indications of music-maker.

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
        r'''Gets tremolo rate indications of music-maker.

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
        r'''Gets underlying dynamics of music-maker.

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