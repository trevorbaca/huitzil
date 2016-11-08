# -*- coding: utf-8 -*-
import abjad


registration_inventory = abjad.pitchtools.RegistrationInventory(
    [
        abjad.pitchtools.Registration(
            [
                abjad.pitchtools.RegistrationComponent(
                    source_pitch_range=abjad.pitchtools.PitchRange(
                        range_string='[A0, C4)',
                        ),
                    target_octave_start_pitch=abjad.pitchtools.NumberedPitch(-13),
                    ),
                abjad.pitchtools.RegistrationComponent(
                    source_pitch_range=abjad.pitchtools.PitchRange(
                        range_string='[C4, A8]',
                        ),
                    target_octave_start_pitch=abjad.pitchtools.NumberedPitch(-9),
                    ),
                ]
            ),
        abjad.pitchtools.Registration(
            [
                abjad.pitchtools.RegistrationComponent(
                    source_pitch_range=abjad.pitchtools.PitchRange(
                        range_string='[A0, C4)',
                        ),
                    target_octave_start_pitch=abjad.pitchtools.NumberedPitch(-19),
                    ),
                abjad.pitchtools.RegistrationComponent(
                    source_pitch_range=abjad.pitchtools.PitchRange(
                        range_string='[C4, A8]',
                        ),
                    target_octave_start_pitch=abjad.pitchtools.NumberedPitch(-15),
                    ),
                ]
            ),
        abjad.pitchtools.Registration(
            [
                abjad.pitchtools.RegistrationComponent(
                    source_pitch_range=abjad.pitchtools.PitchRange(
                        range_string='[A0, C4)',
                        ),
                    target_octave_start_pitch=abjad.pitchtools.NumberedPitch(-25),
                    ),
                abjad.pitchtools.RegistrationComponent(
                    source_pitch_range=abjad.pitchtools.PitchRange(
                        range_string='[C4, A8]',
                        ),
                    target_octave_start_pitch=abjad.pitchtools.NumberedPitch(-21),
                    ),
                ]
            ),
        ]
    )
