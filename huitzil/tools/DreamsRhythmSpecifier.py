import abjad
import baca
import collections


class DreamsRhythmSpecifier(abjad.AbjadObject):
    r'''Dreams rhythm specifier.
    '''

    ### CLASS ATTRIBUTES ###

    __slots__ = (
        '_extra_counts_per_division',
        '_glissando_patterns',
        '_index_logical_ties',
        '_pc_displacement',
        '_pc_operators',
        '_pitch_class_trees',
        '_start_tempo',
        '_stop_tempo',
        '_voice_map',
        )

    unit_duration = abjad.Duration(1, 16)

    ### INITIALIZER ###

    def __init__(
        self,
        extra_counts_per_division=None,
        glissando_patterns=None,
        index_logical_ties=None,
        pc_displacement=None,
        pc_operators=None,
        pitch_class_trees=None,
        start_tempo=None,
        stop_tempo=None,
        voice_map=None,
        ):
        self.pc_displacement = pc_displacement
        self.extra_counts_per_division = extra_counts_per_division
        self.glissando_patterns = glissando_patterns
        self.index_logical_ties = index_logical_ties
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
        self._respell_tuplets(music)
        self._displace_pitch_classes(music)
        self._register_voices(music)
        self._attach_beams(music)
        self._adjust_beams(music)
        self._apply_glissando_patterns(music)
        self._attach_leaf_index_markup(music)
        assert isinstance(music, (tuple, list, abjad.Voice)), repr(music)
        #first_item = music[0]
        return music

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

    def _adjust_beams(self, music):
        pass

    def _annotate_original_durations(self, note_lists):
        notes = baca.sequence(note_lists).flatten()
        for note in notes:
            abjad.attach(note.written_duration, note)

    def _apply_glissando_patterns(self, music):
        if not self.glissando_patterns:
            return
        notes = abjad.select(music).by_leaf(pitched=True)
        note_pairs = abjad.sequence(notes).nwise()
        total_note_pairs = len(note_pairs)
        for i, note_pair in enumerate(note_pairs):
            has_glissando = False
            for pattern in self.glissando_patterns:
                if pattern.matches_index(i, total_note_pairs):
                    has_glissando = True
                    break
            if has_glissando:
                abjad.attach(abjad.Glissando(), note_pair)

    def _attach_beams(self, music):
        bass_clef = abjad.Clef('bass')
        down_beam_positions = (-4.5, -4.5)
        up_beam_positions = (5.5, 5.5)
        tuplets = abjad.iterate(music).by_class(abjad.Tuplet)
        for tuplet in tuplets:
            voice_numbers = [
                abjad.inspect(_).get_indicator(int) for _ in tuplet]
            runs = baca.sequence(voice_numbers).group_by()
            counts = [len(_) for _ in runs]
            note_groups = baca.sequence(tuplet[:]).partition_by_counts(counts)
            for note_group in note_groups:
                beam = abjad.DuratedComplexBeam()
                note_group = abjad.select(note_group)
                abjad.attach(beam, note_group)
                first_note = note_group[0]
                if abjad.Duration(1, 4) <= first_note.written_duration:
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
                    abjad.override(first_note).beam.positions = up_beam_positions
                else:
                    abjad.override(first_note).beam.positions = down_beam_positions
                for note in note_group:
                    abjad.override(note).stem.direction = stem_direction

    def _attach_leaf_index_markup(self, music):
        if not self.index_logical_ties:
            return
        logical_ties = abjad.iterate(music).by_logical_tie()
        for i, logical_tie in enumerate(logical_ties):
            markup = abjad.Markup(i)
            abjad.attach(markup, logical_tie.head)

    def _attach_voice_numbers(self, note_lists):
        for component in self.voice_map:
            assert len(component) == 2
            voice_number = component[0]
            indices = component[1]
            notes = baca.sequence(note_lists).flatten()
            for i, note in enumerate(notes):
                if i in indices:
                    abjad.detach(int, note)
                    abjad.attach(voice_number, note)
        notes = baca.sequence(note_lists).flatten()
        for note in notes:
            assert abjad.inspect(note).has_indicator(int), repr(note)

    def _displace_pitch_classes(self, music):
        if not self.pc_displacement:
            return
        notes = abjad.select(music).by_leaf(pitched=True)
        total_notes = len(notes)
        down_one_octave = abjad.Transposition(-12)
        for i, note in enumerate(notes):
            register = None
            for pattern in self.pc_displacement:
                if pattern.matches_index(i, total_notes):
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
        extra_counts_per_division = abjad.CyclicTuple(
            extra_counts_per_division
            )
        inner_tuplets = []
        for i, note_list in enumerate(note_lists):
            #leaf_count = len(note_list)
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
                fraction = abjad.NonreducedFraction(duration)
                fraction = fraction.with_denominator(128)
                numerators.append(fraction.numerator)
            ratio = abjad.Ratio(numerators)
            if 0 <= extra_count:
                is_diminution = False
            else:
                is_diminution = True
            inner_tuplet = abjad.Tuplet.from_duration_and_ratio(
                target_duration,
                ratio,
                avoid_dots=True,
                is_diminution=is_diminution,
                )
            #beam = abjad.DuratedComplexBeam()
            #abjad.attach(beam, inner_tuplet)
            for j, inner_tuplet_note in enumerate(inner_tuplet):
                source_note = note_list[j]
                inner_tuplet_note.written_pitch = source_note.written_pitch
                voice_number = abjad.inspect(source_note).get_indicator(int)
                abjad.attach(voice_number, inner_tuplet_note)
            inner_tuplets.append(inner_tuplet)
        return inner_tuplets

    def _make_note_lists(self, pitch_class_trees):
        note_lists = []
        for pitch_class_tree in pitch_class_trees:
            assert pitch_class_tree._get_depth() == 3
            assert 0 < len(pitch_class_tree)
            for cell in pitch_class_tree.iterate(level=-2):
                note_list = []
                for pitch_class in cell.get_payload():
                    for operator in self.pc_operators:
                        pitch_class = operator(pitch_class)
                    note = abjad.Note(pitch_class, abjad.Duration(1, 4))
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
        voice_1_registration = materials.registrations['middle']
        voice_2_registration = materials.registrations['low']
        voice_3_registration = materials.registrations['lowest']
        for note in abjad.iterate(music).by_class(abjad.Note):
            voice_number = abjad.inspect(note).get_indicator(int)
            if voice_number == 1:
                color = 'red'
                abjad.override(note).accidental.color = color
                abjad.override(note).beam.color = color
                abjad.override(note).dots.color = color
                abjad.override(note).note_head.color = color
                abjad.override(note).slur.color = color
                abjad.override(note).stem.color = color
                registration = voice_1_registration
            elif voice_number == 2:
                #color = 'green'
                #abjad.override(note).accidental.color = color
                #abjad.override(note).beam.color = color
                #abjad.override(note).dots.color = color
                #abjad.override(note).note_head.color = color
                #abjad.override(note).slur.color = color
                #abjad.override(note).stem.color = color
                registration = voice_2_registration
            elif voice_number == 3:
                color = 'blue'
                abjad.override(note).accidental.color = color
                abjad.override(note).beam.color = color
                abjad.override(note).dots.color = color
                abjad.override(note).note_head.color = color
                abjad.override(note).slur.color = color
                abjad.override(note).stem.color = color
                registration = voice_3_registration
            else:
                raise ValueError(voice_number)
            pitches = [note.written_pitch]
            transposed_pitches = registration(pitches)
            transposed_pitch = transposed_pitches[0]
            note.written_pitch = transposed_pitch

    def _respell_tuplets(self, music):
        multiplier = abjad.Multiplier(3, 2)
        for tuplet in abjad.iterate(music).by_class(abjad.Tuplet):
            if tuplet.multiplier == multiplier:
                for note in tuplet:
                    new_written_duration = multiplier * note.written_duration
                    note.written_duration = new_written_duration

    def _set_written_durations(self, note_lists):
        #durations = []
        for note_list in note_lists:
            for note in note_list:
                voice_number = abjad.inspect(note).get_indicator(int)
                if voice_number == 1:
                    duration = abjad.Duration(1, 8)
                elif voice_number == 2:
                    duration = abjad.Duration(1, 16)
                elif voice_number == 3:
                    duration = abjad.Duration(1, 4)
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
    def extra_counts_per_division(self, argument):
        if argument is None:
            self._extra_counts_per_division = []
        elif isinstance(argument, list):
            self._extra_counts_per_division = argument
        else:
            message = 'must be list or none: {!r}.'
            message = message.format(argument)
            raise TypeError(message)

    @property
    def glissando_patterns(self):
        r'''Gets glissando patterns of music-maker.

        Set to list of boolean pattern objects or none.

        Returns list or none.
        '''
        return self._glissando_patterns

    @glissando_patterns.setter
    def glissando_patterns(self, argument):
        if argument is None:
            self._glissando_patterns = []
        elif isinstance(argument, list):
            self._glissando_patterns = argument
        else:
            message = 'must be list or none: {!r}.'
            message = message.format(argument)
            raise TypeError(message)

    @property
    def index_logical_ties(self):
        r'''Is true when leaf indices should appear in score as markup.
        Otherwise false.

        Set to true or false.
        '''
        return self._index_logical_ties

    @index_logical_ties.setter
    def index_logical_ties(self, argument):
        if argument is None:
            self._index_logical_ties = []
        elif isinstance(argument, type(True)):
            self._index_logical_ties = argument
        else:
            message = 'must be boolean or none: {!r}.'
            message = message.format(argument)
            raise TypeError(message)

    @property
    def pc_operators(self):
        r'''Gets pc operators of music-maker.

        Returns list.
        '''
        return self._pc_operators

    @pc_operators.setter
    def pc_operators(self, argument):
        if argument is None:
            self._pc_operators = []
        elif isinstance(argument, list):
            self._pc_operators = argument
        else:
            message = 'must be list or none: {!r}.'
            message = message.format(argument)
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
    def pc_displacement(self, argument):
        if argument is None:
            self._pc_displacement = []
        elif isinstance(argument, list):
            self._pc_displacement = argument
        else:
            message = 'must be list or none: {!r}.'
            message = message.format(argument)
            raise TypeError(message)

    @property
    def pitch_class_trees(self):
        r'''Gets pitch-class trees of music-maker.

        Returns tuple.
        '''
        return self._pitch_class_trees

    @pitch_class_trees.setter
    def pitch_class_trees(self, argument):
        if argument is None:
            self._pitch_class_trees = []
        elif isinstance(argument, collections.Iterable):
            self._pitch_class_trees = tuple(argument)
        else:
            message = 'must be collection of pitch-class trees or none: {!r}.'
            message = message.format(argument)
            raise TypeError(message)

    @property
    def start_tempo(self):
        r'''Gets start tempo of music-maker.

        Returns tempo or none.
        '''
        return self._start_tempo

    @start_tempo.setter
    def start_tempo(self, argument):
        if argument is None:
            self._start_tempo = argument
        elif isinstance(argument, abjad.MetronomeMark):
            self._start_tempo = argument
        else:
            message = 'must be tempo: {!r}.'
            message = message.format(argument)
            raise TypeError(message)

    @property
    def stop_tempo(self):
        r'''Gets stop tempo of music-maker.

        Returns tempo or none.
        '''
        return self._stop_tempo

    @stop_tempo.setter
    def stop_tempo(self, argument):
        if argument is None:
            self._stop_tempo = argument
        elif isinstance(argument, abjad.MetronomeMark):
            self._stop_tempo = argument
        else:
            message = 'must be tempo: {!r}.'
            message = message.format(argument)
            raise TypeError(message)

    @property
    def voice_map(self):
        r'''Gets voice map of music-maker.

        Returns list.
        '''
        return self._voice_map

    @voice_map.setter
    def voice_map(self, argument):
        if argument is None:
            self._voice_map = []
        elif isinstance(argument, list):
            self._voice_map = argument
        else:
            message = 'must be list or none: {!r}.'
            message = message.format(argument)
            raise TypeError(message)
