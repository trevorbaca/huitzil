# -*- encoding: utf-8 -*-
from abjad import *


registration_inventory = pitchtools.RegistrationInventory(
    [
        pitchtools.Registration(
            [
                pitchtools.RegistrationComponent(
                    source_pitch_range=pitchtools.PitchRange(
                        range_string='[A0, C4)',
                        ),
                    target_octave_start_pitch=pitchtools.NumberedPitch(-13),
                    ),
                pitchtools.RegistrationComponent(
                    source_pitch_range=pitchtools.PitchRange(
                        range_string='[C4, A8]',
                        ),
                    target_octave_start_pitch=pitchtools.NumberedPitch(-10),
                    ),
                ]
            ),
        pitchtools.Registration(
            [
                pitchtools.RegistrationComponent(
                    source_pitch_range=pitchtools.PitchRange(
                        range_string='[A0, C4)',
                        ),
                    target_octave_start_pitch=pitchtools.NumberedPitch(-19),
                    ),
                pitchtools.RegistrationComponent(
                    source_pitch_range=pitchtools.PitchRange(
                        range_string='[C4, A8]',
                        ),
                    target_octave_start_pitch=pitchtools.NumberedPitch(-16),
                    ),
                ]
            ),
        pitchtools.Registration(
            [
                pitchtools.RegistrationComponent(
                    source_pitch_range=pitchtools.PitchRange(
                        range_string='[A0, C4)',
                        ),
                    target_octave_start_pitch=pitchtools.NumberedPitch(-25),
                    ),
                pitchtools.RegistrationComponent(
                    source_pitch_range=pitchtools.PitchRange(
                        range_string='[C4, A8]',
                        ),
                    target_octave_start_pitch=pitchtools.NumberedPitch(-22),
                    ),
                ]
            ),
        ]
    )