import inspect

import abjad
import baca


def make_empty_score():
    tag = baca.helpers.function_name(inspect.currentframe())
    global_context = baca.score.make_global_context(make_time_signatures_context=True)
    rh_music_voice = abjad.Voice(name="RH.Music", tag=tag)
    rh_music_staff = abjad.Staff(
        [rh_music_voice],
        lilypond_type="RHStaff",
        name="RH.Staff",
        tag=tag,
    )
    cello_music_voice = abjad.Voice(name="Cello.Music", tag=tag)
    cello_music_staff = abjad.Staff([cello_music_voice], name="Cello.Staff", tag=tag)
    cello_staff_group = abjad.StaffGroup(
        [rh_music_staff, cello_music_staff],
        lilypond_type="PianoStaff",
        name="PianoStaff",
        tag=tag,
    )
    music_context = abjad.Context(
        [cello_staff_group],
        lilypond_type="MusicContext",
        name="MusicContext",
        tag=tag,
    )
    score = abjad.Score([global_context, music_context], name="Score", tag=tag)
    baca.score.assert_lilypond_identifiers(score)
    baca.score.assert_unique_context_names(score)
    return score


def pitch_classes():
    return baca.pcollections.accumulate_and_repartition(
        segments=[[6, 4, 5, 7, 8], [9, 3, 2, 4, 5], [1, 10, 9, 11, 0]],
        ratios=[(1,), (2, 3), (1, 4), (1,), (2, 3)],
        counts=[4, 2, 2, 3, 1],
    )


def registrations():
    return {
        "middle": baca.Registration(
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
        "low": baca.Registration(
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
        "lowest": baca.Registration(
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
    }


def sforzando(argument, string):
    baca.markup(argument, string, direction=abjad.DOWN)


instruments = {
    "Cello": abjad.Cello(
        context="StaffGroup", pitch_range=abjad.PitchRange("[A1, +inf]")
    )
}


metronome_marks = {
    "44": abjad.MetronomeMark(abjad.Duration(1, 4), 44),
    "66": abjad.MetronomeMark(abjad.Duration(1, 4), 66),
    "78": abjad.MetronomeMark(abjad.Duration(1, 4), 78),
    "88": abjad.MetronomeMark(abjad.Duration(1, 4), 88),
}


manifests = {
    "abjad.Instrument": instruments,
    "abjad.MetronomeMark": metronome_marks,
}


voice_abbreviations = {
    "rh": "RH.Music",
    "vc": "Cello.Music",
}
