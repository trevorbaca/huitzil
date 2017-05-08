# -*- coding: utf-8 -*-
import abjad


registration_inventory = abjad.RegistrationList(
    [
        abjad.Registration(
            [
                abjad.RegistrationComponent(
                    source_pitch_range=abjad.PitchRange(
                        range_string='[A0, C4)',
                        ),
                    target_octave_start_pitch=abjad.NumberedPitch(-13),
                    ),
                abjad.RegistrationComponent(
                    source_pitch_range=abjad.PitchRange(
                        range_string='[C4, A8]',
                        ),
                    target_octave_start_pitch=abjad.NumberedPitch(-9),
                    ),
                ]
            ),
        abjad.Registration(
            [
                abjad.RegistrationComponent(
                    source_pitch_range=abjad.PitchRange(
                        range_string='[A0, C4)',
                        ),
                    target_octave_start_pitch=abjad.NumberedPitch(-19),
                    ),
                abjad.RegistrationComponent(
                    source_pitch_range=abjad.PitchRange(
                        range_string='[C4, A8]',
                        ),
                    target_octave_start_pitch=abjad.NumberedPitch(-15),
                    ),
                ]
            ),
        abjad.Registration(
            [
                abjad.RegistrationComponent(
                    source_pitch_range=abjad.PitchRange(
                        range_string='[A0, C4)',
                        ),
                    target_octave_start_pitch=abjad.NumberedPitch(-25),
                    ),
                abjad.RegistrationComponent(
                    source_pitch_range=abjad.PitchRange(
                        range_string='[C4, A8]',
                        ),
                    target_octave_start_pitch=abjad.NumberedPitch(-21),
                    ),
                ]
            ),
        ]
    )
