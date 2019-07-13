import abjad
import baca
import collections
import huitzil
import typing
from abjadext import rmakers


class DreamsMusicMaker(object):
    r"""
    Dreams music-maker.

    >>> import huitzil

    ..  container:: example

        >>> maker = huitzil.DreamsMusicMaker(
        ...     [1, 2, 0, -1, 5],
        ...     huitzil.pitch_classes[:6],
        ...     [[2, range(0, 99)]],
        ... )
        >>> abjad.f(maker)
        huitzil.DreamsMusicMaker(
            [1, 2, 0, -1, 5],
            (
                baca.PitchTree(
                    items=[
                        baca.PitchTree(
                            items=[
                                baca.PitchTree(
                                    items=abjad.NumberedPitchClass(6),
                                    item_class=abjad.NumberedPitchClass,
                                    ),
                                baca.PitchTree(
                                    items=abjad.NumberedPitchClass(4),
                                    item_class=abjad.NumberedPitchClass,
                                    ),
                                baca.PitchTree(
                                    items=abjad.NumberedPitchClass(5),
                                    item_class=abjad.NumberedPitchClass,
                                    ),
                                baca.PitchTree(
                                    items=abjad.NumberedPitchClass(7),
                                    item_class=abjad.NumberedPitchClass,
                                    ),
                                baca.PitchTree(
                                    items=abjad.NumberedPitchClass(8),
                                    item_class=abjad.NumberedPitchClass,
                                    ),
                                ],
                            item_class=abjad.NumberedPitchClass,
                            ),
                        baca.PitchTree(
                            items=[
                                baca.PitchTree(
                                    items=abjad.NumberedPitchClass(9),
                                    item_class=abjad.NumberedPitchClass,
                                    ),
                                baca.PitchTree(
                                    items=abjad.NumberedPitchClass(3),
                                    item_class=abjad.NumberedPitchClass,
                                    ),
                                ],
                            item_class=abjad.NumberedPitchClass,
                            ),
                        baca.PitchTree(
                            items=[
                                baca.PitchTree(
                                    items=abjad.NumberedPitchClass(2),
                                    item_class=abjad.NumberedPitchClass,
                                    ),
                                baca.PitchTree(
                                    items=abjad.NumberedPitchClass(4),
                                    item_class=abjad.NumberedPitchClass,
                                    ),
                                baca.PitchTree(
                                    items=abjad.NumberedPitchClass(5),
                                    item_class=abjad.NumberedPitchClass,
                                    ),
                                ],
                            item_class=abjad.NumberedPitchClass,
                            ),
                        baca.PitchTree(
                            items=[
                                baca.PitchTree(
                                    items=abjad.NumberedPitchClass(1),
                                    item_class=abjad.NumberedPitchClass,
                                    ),
                                ],
                            item_class=abjad.NumberedPitchClass,
                            ),
                        ],
                    item_class=abjad.NumberedPitchClass,
                    ),
                baca.PitchTree(
                    items=[
                        baca.PitchTree(
                            items=[
                                baca.PitchTree(
                                    items=abjad.NumberedPitchClass(10),
                                    item_class=abjad.NumberedPitchClass,
                                    ),
                                baca.PitchTree(
                                    items=abjad.NumberedPitchClass(9),
                                    item_class=abjad.NumberedPitchClass,
                                    ),
                                baca.PitchTree(
                                    items=abjad.NumberedPitchClass(11),
                                    item_class=abjad.NumberedPitchClass,
                                    ),
                                baca.PitchTree(
                                    items=abjad.NumberedPitchClass(0),
                                    item_class=abjad.NumberedPitchClass,
                                    ),
                                ],
                            item_class=abjad.NumberedPitchClass,
                            ),
                        baca.PitchTree(
                            items=[
                                baca.PitchTree(
                                    items=abjad.NumberedPitchClass(5),
                                    item_class=abjad.NumberedPitchClass,
                                    ),
                                baca.PitchTree(
                                    items=abjad.NumberedPitchClass(9),
                                    item_class=abjad.NumberedPitchClass,
                                    ),
                                baca.PitchTree(
                                    items=abjad.NumberedPitchClass(3),
                                    item_class=abjad.NumberedPitchClass,
                                    ),
                                baca.PitchTree(
                                    items=abjad.NumberedPitchClass(2),
                                    item_class=abjad.NumberedPitchClass,
                                    ),
                                baca.PitchTree(
                                    items=abjad.NumberedPitchClass(4),
                                    item_class=abjad.NumberedPitchClass,
                                    ),
                                ],
                            item_class=abjad.NumberedPitchClass,
                            ),
                        ],
                    item_class=abjad.NumberedPitchClass,
                    ),
                baca.PitchTree(
                    items=[
                        baca.PitchTree(
                            items=[
                                baca.PitchTree(
                                    items=abjad.NumberedPitchClass(0),
                                    item_class=abjad.NumberedPitchClass,
                                    ),
                                baca.PitchTree(
                                    items=abjad.NumberedPitchClass(1),
                                    item_class=abjad.NumberedPitchClass,
                                    ),
                                ],
                            item_class=abjad.NumberedPitchClass,
                            ),
                        baca.PitchTree(
                            items=[
                                baca.PitchTree(
                                    items=abjad.NumberedPitchClass(10),
                                    item_class=abjad.NumberedPitchClass,
                                    ),
                                baca.PitchTree(
                                    items=abjad.NumberedPitchClass(9),
                                    item_class=abjad.NumberedPitchClass,
                                    ),
                                baca.PitchTree(
                                    items=abjad.NumberedPitchClass(11),
                                    item_class=abjad.NumberedPitchClass,
                                    ),
                                ],
                            item_class=abjad.NumberedPitchClass,
                            ),
                        ],
                    item_class=abjad.NumberedPitchClass,
                    ),
                baca.PitchTree(
                    items=[
                        baca.PitchTree(
                            items=[
                                baca.PitchTree(
                                    items=abjad.NumberedPitchClass(8),
                                    item_class=abjad.NumberedPitchClass,
                                    ),
                                baca.PitchTree(
                                    items=abjad.NumberedPitchClass(6),
                                    item_class=abjad.NumberedPitchClass,
                                    ),
                                baca.PitchTree(
                                    items=abjad.NumberedPitchClass(4),
                                    item_class=abjad.NumberedPitchClass,
                                    ),
                                baca.PitchTree(
                                    items=abjad.NumberedPitchClass(5),
                                    item_class=abjad.NumberedPitchClass,
                                    ),
                                baca.PitchTree(
                                    items=abjad.NumberedPitchClass(7),
                                    item_class=abjad.NumberedPitchClass,
                                    ),
                                ],
                            item_class=abjad.NumberedPitchClass,
                            ),
                        baca.PitchTree(
                            items=[
                                baca.PitchTree(
                                    items=abjad.NumberedPitchClass(11),
                                    item_class=abjad.NumberedPitchClass,
                                    ),
                                baca.PitchTree(
                                    items=abjad.NumberedPitchClass(0),
                                    item_class=abjad.NumberedPitchClass,
                                    ),
                                ],
                            item_class=abjad.NumberedPitchClass,
                            ),
                        baca.PitchTree(
                            items=[
                                baca.PitchTree(
                                    items=abjad.NumberedPitchClass(1),
                                    item_class=abjad.NumberedPitchClass,
                                    ),
                                baca.PitchTree(
                                    items=abjad.NumberedPitchClass(10),
                                    item_class=abjad.NumberedPitchClass,
                                    ),
                                baca.PitchTree(
                                    items=abjad.NumberedPitchClass(9),
                                    item_class=abjad.NumberedPitchClass,
                                    ),
                                ],
                            item_class=abjad.NumberedPitchClass,
                            ),
                        ],
                    item_class=abjad.NumberedPitchClass,
                    ),
                baca.PitchTree(
                    items=[
                        baca.PitchTree(
                            items=[
                                baca.PitchTree(
                                    items=abjad.NumberedPitchClass(7),
                                    item_class=abjad.NumberedPitchClass,
                                    ),
                                ],
                            item_class=abjad.NumberedPitchClass,
                            ),
                        ],
                    item_class=abjad.NumberedPitchClass,
                    ),
                baca.PitchTree(
                    items=[
                        baca.PitchTree(
                            items=[
                                baca.PitchTree(
                                    items=abjad.NumberedPitchClass(8),
                                    item_class=abjad.NumberedPitchClass,
                                    ),
                                baca.PitchTree(
                                    items=abjad.NumberedPitchClass(6),
                                    item_class=abjad.NumberedPitchClass,
                                    ),
                                baca.PitchTree(
                                    items=abjad.NumberedPitchClass(4),
                                    item_class=abjad.NumberedPitchClass,
                                    ),
                                baca.PitchTree(
                                    items=abjad.NumberedPitchClass(5),
                                    item_class=abjad.NumberedPitchClass,
                                    ),
                                ],
                            item_class=abjad.NumberedPitchClass,
                            ),
                        baca.PitchTree(
                            items=[
                                baca.PitchTree(
                                    items=abjad.NumberedPitchClass(4),
                                    item_class=abjad.NumberedPitchClass,
                                    ),
                                baca.PitchTree(
                                    items=abjad.NumberedPitchClass(5),
                                    item_class=abjad.NumberedPitchClass,
                                    ),
                                baca.PitchTree(
                                    items=abjad.NumberedPitchClass(9),
                                    item_class=abjad.NumberedPitchClass,
                                    ),
                                baca.PitchTree(
                                    items=abjad.NumberedPitchClass(3),
                                    item_class=abjad.NumberedPitchClass,
                                    ),
                                baca.PitchTree(
                                    items=abjad.NumberedPitchClass(2),
                                    item_class=abjad.NumberedPitchClass,
                                    ),
                                ],
                            item_class=abjad.NumberedPitchClass,
                            ),
                        baca.PitchTree(
                            items=[
                                baca.PitchTree(
                                    items=abjad.NumberedPitchClass(5),
                                    item_class=abjad.NumberedPitchClass,
                                    ),
                                baca.PitchTree(
                                    items=abjad.NumberedPitchClass(7),
                                    item_class=abjad.NumberedPitchClass,
                                    ),
                                ],
                            item_class=abjad.NumberedPitchClass,
                            ),
                        baca.PitchTree(
                            items=[
                                baca.PitchTree(
                                    items=abjad.NumberedPitchClass(8),
                                    item_class=abjad.NumberedPitchClass,
                                    ),
                                baca.PitchTree(
                                    items=abjad.NumberedPitchClass(6),
                                    item_class=abjad.NumberedPitchClass,
                                    ),
                                baca.PitchTree(
                                    items=abjad.NumberedPitchClass(4),
                                    item_class=abjad.NumberedPitchClass,
                                    ),
                                ],
                            item_class=abjad.NumberedPitchClass,
                            ),
                        ],
                    item_class=abjad.NumberedPitchClass,
                    ),
                ),
            [
                [
                    2,
                    range(0, 99),
                    ],
                ],
            pc_displacement=[],
            pc_operators=[],
            )

    """

    ### CLASS ATTRIBUTES ###

    __slots__ = (
        "_extra_counts_per_division",
        "_pc_displacement",
        "_pc_operators",
        "_pitch_class_trees",
        "_voice_map",
    )

    _publish_storage_format = True

    ### INITIALIZER ###

    def __init__(
        self,
        extra_counts_per_division: typing.List[int],
        pitch_class_trees: typing.Tuple[baca.PitchTree],
        voice_map: typing.List[typing.List],
        pc_displacement: typing.List[int] = None,
        pc_operators: typing.List = None,
    ) -> None:
        self._extra_counts_per_division = extra_counts_per_division
        self._pitch_class_trees = tuple(pitch_class_trees)
        self._voice_map = voice_map
        self._pc_displacement = pc_displacement or []
        self._pc_operators = pc_operators or []

    ### SPECIAL METHODS ###

    def __call__(self) -> abjad.Selection:
        """
        Calls music-maker.
        """
        tuplets = self._make_rhythm()
        assert all(isinstance(_, abjad.Tuplet) for _ in tuplets)
        self._displace_pitch_classes(tuplets)
        self._register_voices(tuplets)
        self._attach_beams(tuplets)
        selection = abjad.select(tuplets)
        assert all(isinstance(_, abjad.Tuplet) for _ in tuplets)
        return tuplets

    def __repr__(self) -> str:
        """
        Gets interpreter representation.
        """
        return abjad.StorageFormatManager(self).get_repr_format()

    ### PRIVATE METHODS ###

    def _attach_beams(self, music):
        tuplets = abjad.iterate(music).components(abjad.Tuplet)
        for tuplet in tuplets:
            voice_numbers = [abjad.inspect(_).indicator(int) for _ in tuplet]
            runs = baca.sequence(voice_numbers).group_by()
            counts = [len(_) for _ in runs]
            note_groups = baca.sequence(tuplet[:]).partition_by_counts(counts)
            for note_group in note_groups:
                note_group = abjad.select(note_group)
                abjad.beam(note_group)

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
        notes = abjad.select(music).leaves(pitched=True)
        total_notes = len(notes)
        down_one_octave = abjad.Transposition(n=-12)
        for i, note in enumerate(notes):
            register = None
            for pattern in self.pc_displacement:
                if pattern.matches_index(i, total_notes):
                    register = "high"
                    break
            else:
                register = "low"
            if register == "high":
                pass
            elif register == "low":
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
            start_duration = sum(_.written_duration for _ in note_list)
            extra_count = extra_counts_per_division[i]
            extra_duration = extra_count * abjad.Duration(1, 16)
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
            maker = rmakers.TupletRhythmMaker(
                rmakers.TupletSpecifier(
                    diminution=True, rewrite_dots=True, rewrite_sustained=True
                ),
                tuplet_ratios=[ratio],
            )
            selection = maker([target_duration])
            assert isinstance(selection, abjad.Selection)
            inner_tuplet = selection[0]
            if inner_tuplet.multiplier == 1:
                inner_tuplet.hide = True
            plts = baca.select(inner_tuplet).plts()
            for j, plt in enumerate(plts):
                source_note = note_list[j]
                for pleaf in plt:
                    pleaf.written_pitch = source_note.written_pitch
                    voice_number = abjad.inspect(source_note).indicator(int)
                    abjad.attach(voice_number, pleaf)
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
        self._attach_voice_numbers(note_lists)
        self._set_written_durations(note_lists)
        inner_tuplets = self._make_inner_tuplets(note_lists)
        return inner_tuplets

    def _register_voices(self, music):
        voice_1_registration = huitzil.registrations["middle"]
        voice_2_registration = huitzil.registrations["low"]
        voice_3_registration = huitzil.registrations["lowest"]
        for note in abjad.iterate(music).components(abjad.Note):
            voice_number = abjad.inspect(note).indicator(int)
            if voice_number == 1:
                color = "red"
                abjad.override(note).accidental.color = color
                abjad.override(note).beam.color = color
                abjad.override(note).dots.color = color
                abjad.override(note).note_head.color = color
                abjad.override(note).repeat_tie.color = color
                abjad.override(note).slur.color = color
                abjad.override(note).stem.color = color
                abjad.override(note).tie.color = color
                registration = voice_1_registration
            elif voice_number == 2:
                registration = voice_2_registration
            elif voice_number == 3:
                color = "blue"
                abjad.override(note).accidental.color = color
                abjad.override(note).beam.color = color
                abjad.override(note).dots.color = color
                abjad.override(note).note_head.color = color
                abjad.override(note).repeat_tie.color = color
                abjad.override(note).slur.color = color
                abjad.override(note).stem.color = color
                abjad.override(note).tie.color = color
                registration = voice_3_registration
            else:
                raise ValueError(voice_number)
            pitches = [note.written_pitch]
            transposed_pitches = registration(pitches)
            transposed_pitch = transposed_pitches[0]
            note.written_pitch = transposed_pitch

    def _set_written_durations(self, note_lists):
        for note_list in note_lists:
            for note in note_list:
                voice_number = abjad.inspect(note).indicator(int)
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
    def extra_counts_per_division(self) -> typing.List[int]:
        """
        Gets extra counts per division of music-maker.
        """
        return self._extra_counts_per_division

    @property
    def pc_displacement(self) -> typing.List[int]:
        """
        Gets displacement map of music-maker.

        Boolean pattern that specifies whether pitch-classes should be
        registered as high pitches or low pitches.

        Returns list.
        """
        return self._pc_displacement

    @property
    def pc_operators(
        self
    ) -> typing.List[typing.Union[abjad.Inversion, abjad.Transposition]]:
        """
        Gets pc operators of music-maker.

        Returns list.
        """
        return self._pc_operators

    @property
    def pitch_class_trees(self) -> typing.Tuple[baca.PitchTree, ...]:
        """
        Gets pitch-class trees of music-maker.

        Returns tuple.
        """
        return self._pitch_class_trees

    @property
    def voice_map(self) -> typing.List[typing.List]:
        """
        Gets voice map of music-maker.

        Returns list.
        """
        return self._voice_map
