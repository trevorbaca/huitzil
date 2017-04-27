# -*- coding: utf-8 -*-
import abjad


registration_inventory = abjad.pitchtools.RegistrationList(
    [
        abjad.Registration(
            [
                abjad.pitchtools.RegistrationComponent(
                    source_pitch_range=abjad.PitchRange(
                        range_string='[A0, C4)',
                        ),
                    target_octave_start_pitch=abjad.NumberedPitch(-13),
                    ),
                abjad.pitchtools.RegistrationComponent(
                    source_pitch_range=abjad.PitchRange(
                        range_string='[C4, A8]',
                        ),
                    target_octave_start_pitch=abjad.NumberedPitch(-9),
                    ),
                ]
            ),
        abjad.Registration(
            [
                abjad.pitchtools.RegistrationComponent(
                    source_pitch_range=abjad.PitchRange(
                        range_string='[A0, C4)',
                        ),
                    target_octave_start_pitch=abjad.NumberedPitch(-19),
                    ),
                abjad.pitchtools.RegistrationComponent(
                    source_pitch_range=abjad.PitchRange(
                        range_string='[C4, A8]',
                        ),
                    target_octave_start_pitch=abjad.NumberedPitch(-15),
                    ),
                ]
            ),
        abjad.Registration(
            [
                abjad.pitchtools.RegistrationComponent(
                    source_pitch_range=abjad.PitchRange(
                        range_string='[A0, C4)',
                        ),
                    target_octave_start_pitch=abjad.NumberedPitch(-25),
                    ),
                abjad.pitchtools.RegistrationComponent(
                    source_pitch_range=abjad.PitchRange(
                        range_string='[C4, A8]',
                        ),
                    target_octave_start_pitch=abjad.NumberedPitch(-21),
                    ),
                ]
            ),
        ]
    )
