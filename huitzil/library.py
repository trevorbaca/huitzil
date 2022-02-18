import inspect
import typing

import abjad
import baca
from abjadext import rmakers

# instruments

instruments = dict(
    [("Cello", abjad.Cello(context="StaffGroup", pitch_range="[A1, +inf]"))]
)

# metronome marks

metronome_marks = dict(
    [
        ("44", abjad.MetronomeMark((1, 4), 44)),
        ("66", abjad.MetronomeMark((1, 4), 66)),
        ("78", abjad.MetronomeMark((1, 4), 78)),
        ("88", abjad.MetronomeMark((1, 4), 88)),
    ]
)

# pitch-classes

maker = baca.ZaggedPitchClassMaker(
    pc_cells=[[6, 4, 5, 7, 8], [9, 3, 2, 4, 5], [1, 10, 9, 11, 0]],
    division_ratios=[(1,), (2, 3), (1, 4), (1,), (2, 3)],
    grouping_counts=[4, 2, 2, 3, 1],
)
pitch_classes = maker()

# registrations

registrations = dict(
    [
        (
            "middle",
            baca.Registration(
                components=[
                    baca.RegistrationComponent(
                        source_pitch_range=abjad.PitchRange("[A0, C4)"),
                        target_octave_start_pitch=abjad.NumberedPitch(-13),
                    ),
                    baca.RegistrationComponent(
                        source_pitch_range=abjad.PitchRange("[C4, A8]"),
                        target_octave_start_pitch=abjad.NumberedPitch(-9),
                    ),
                ]
            ),
        ),
        (
            "low",
            baca.Registration(
                components=[
                    baca.RegistrationComponent(
                        source_pitch_range=abjad.PitchRange("[A0, C4)"),
                        target_octave_start_pitch=abjad.NumberedPitch(-19),
                    ),
                    baca.RegistrationComponent(
                        source_pitch_range=abjad.PitchRange("[C4, A8]"),
                        target_octave_start_pitch=abjad.NumberedPitch(-15),
                    ),
                ]
            ),
        ),
        (
            "lowest",
            baca.Registration(
                components=[
                    baca.RegistrationComponent(
                        source_pitch_range=abjad.PitchRange("[A0, C4)"),
                        target_octave_start_pitch=abjad.NumberedPitch(-25),
                    ),
                    baca.RegistrationComponent(
                        source_pitch_range=abjad.PitchRange("[C4, A8]"),
                        target_octave_start_pitch=abjad.NumberedPitch(-21),
                    ),
                ]
            ),
        ),
    ]
)

# music-maker


class DreamsMusicMaker:
    """
    Dreams music-maker.
    """

    ### CLASS ATTRIBUTES ###

    __slots__ = (
        "_extra_counts",
        "_pc_displacement",
        "_pc_operators",
        "_pitch_class_trees",
        "_voice_map",
    )

    ### INITIALIZER ###

    def __init__(
        self,
        extra_counts,
        pitch_class_trees,
        voice_map,
        pc_displacement=(),
        pc_operators=(),
    ):
        self._extra_counts = extra_counts
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
        assert all(isinstance(_, abjad.Tuplet) for _ in tuplets)
        return tuplets

    ### PRIVATE METHODS ###

    def _attach_beams(self, music):
        tuplets = abjad.iterate.components(music, abjad.Tuplet)
        for tuplet in tuplets:
            voice_numbers = [abjad.get.indicator(_, int) for _ in tuplet]
            runs = baca.Sequence(voice_numbers).group_by()
            counts = [len(_) for _ in runs]
            note_groups = baca.Sequence(tuplet[:]).partition_by_counts(counts)
            for note_group in note_groups:
                note_group = abjad.Selection(note_group)
                abjad.beam(note_group)

    def _attach_voice_numbers(self, note_lists):
        for component in self.voice_map:
            assert len(component) == 2
            voice_number = component[0]
            indices = component[1]
            notes = baca.Sequence(note_lists).flatten()
            for i, note in enumerate(notes):
                if i in indices:
                    abjad.detach(int, note)
                    abjad.attach(voice_number, note)
        notes = baca.Sequence(note_lists).flatten()
        for note in notes:
            assert abjad.get.has_indicator(note, int), repr(note)

    def _displace_pitch_classes(self, music):
        if not self.pc_displacement:
            return
        notes = abjad.Selection(music).leaves(pitched=True)
        total_notes = len(notes)
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
                transposed_pitch = source_pitch.transpose(n=-12)
                note.written_pitch = transposed_pitch
            else:
                raise ValueError(register)

    def _make_inner_tuplets(self, note_lists):
        extra_counts = self.extra_counts or [0]
        extra_counts = abjad.CyclicTuple(extra_counts)
        inner_tuplets = []
        for i, note_list in enumerate(note_lists):
            start_duration = sum(_.written_duration for _ in note_list)
            extra_count = extra_counts[i]
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
            maker = rmakers.stack(
                rmakers.tuplet([ratio]),
                rmakers.rewrite_dots(),
                rmakers.rewrite_sustained(),
                rmakers.force_diminution(),
            )
            selection = maker([target_duration])
            assert isinstance(selection, list)
            inner_tuplet = selection[0]
            if inner_tuplet.multiplier == 1:
                inner_tuplet.hide = True
            plts = baca.Selection(inner_tuplet).plts()
            for j, plt in enumerate(plts):
                source_note = note_list[j]
                for pleaf in plt:
                    pleaf.written_pitch = source_note.written_pitch
                    voice_number = abjad.get.indicator(source_note, int)
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
        voice_1_registration = registrations["middle"]
        voice_2_registration = registrations["low"]
        voice_3_registration = registrations["lowest"]
        for note in abjad.iterate.components(music, abjad.Note):
            voice_number = abjad.get.indicator(note, int)
            if voice_number == 1:
                color = "#red"
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
                color = "#blue"
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
                voice_number = abjad.get.indicator(note, int)
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
    def extra_counts(self) -> typing.List[int]:
        """
        Gets extra counts per division of music-maker.
        """
        return self._extra_counts

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
    def pc_operators(self):
        """
        Gets pc operators of music-maker.

        Returns list.
        """
        return self._pc_operators

    @property
    def pitch_class_trees(self):
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


voice_abbreviations = {
    "rh": "RH_Music_Voice",
    "vc": "Cello_Music_Voice",
    "vcr": "Cello_Rest_Voice",
}


def make_empty_score():
    tag = baca.site(inspect.currentframe())
    global_context = baca.score.make_global_context()
    rh_music_voice = abjad.Voice(name="RH_Music_Voice", tag=tag)
    rh_music_staff = abjad.Staff(
        [rh_music_voice],
        lilypond_type="RHStaff",
        name="RH_Music_Staff",
        tag=tag,
    )
    abjad.annotate(rh_music_staff, "default_clef", abjad.Clef("percussion"))
    abjad.annotate(rh_music_staff, baca.const.REMOVE_ALL_EMPTY_STAVES, True)
    cello_music_voice = abjad.Voice(name="Cello_Music_Voice", tag=tag)
    cello_music_staff = abjad.Staff(
        [cello_music_voice], name="Cello_Music_Staff", tag=tag
    )
    abjad.annotate(cello_music_staff, "default_clef", abjad.Clef("bass"))
    cello_staff_group = abjad.StaffGroup(
        [rh_music_staff, cello_music_staff],
        lilypond_type="PianoStaff",
        name="Cello_Staff_Group",
        tag=tag,
    )
    abjad.annotate(
        cello_staff_group,
        "default_instrument",
        instruments["Cello"],
    )
    music_context = abjad.Context(
        [cello_staff_group],
        lilypond_type="MusicContext",
        name="Music_Context",
        tag=tag,
    )
    score = abjad.Score([global_context, music_context], name="Score", tag=tag)
    baca.score.assert_lilypond_identifiers(score)
    baca.score.assert_unique_context_names(score)
    # baca.score.assert_matching_custom_context_names(score)
    return score
