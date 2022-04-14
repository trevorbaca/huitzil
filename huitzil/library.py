import inspect

import abjad
import baca

instruments = dict(
    [("Cello", abjad.Cello(context="StaffGroup", pitch_range="[A1, +inf]"))]
)

metronome_marks = dict(
    [
        ("44", abjad.MetronomeMark((1, 4), 44)),
        ("66", abjad.MetronomeMark((1, 4), 66)),
        ("78", abjad.MetronomeMark((1, 4), 78)),
        ("88", abjad.MetronomeMark((1, 4), 88)),
    ]
)

pitch_classes = baca.pcollections.accumulate_and_repartition(
    segments=[[6, 4, 5, 7, 8], [9, 3, 2, 4, 5], [1, 10, 9, 11, 0]],
    ratios=[(1,), (2, 3), (1, 4), (1,), (2, 3)],
    counts=[4, 2, 2, 3, 1],
)

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


voice_abbreviations = {
    "rh": "RH_Music_Voice",
    "vc": "Cello_Music_Voice",
    "vcr": "Cello_Rest_Voice",
}


def make_empty_score():
    tag = baca.tags.function_name(inspect.currentframe())
    global_context = baca.score.make_global_context()
    rh_music_voice = abjad.Voice(name="RH_Music_Voice", tag=tag)
    rh_music_staff = abjad.Staff(
        [rh_music_voice],
        lilypond_type="RHStaff",
        name="RH_Music_Staff",
        tag=tag,
    )
    abjad.annotate(rh_music_staff, "default_clef", abjad.Clef("percussion"))
    abjad.annotate(rh_music_staff, baca.enums.REMOVE_ALL_EMPTY_STAVES, True)
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
    return score
