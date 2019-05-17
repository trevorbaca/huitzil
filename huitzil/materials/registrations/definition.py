import abjad
import baca


registrations = abjad.OrderedDict(
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
