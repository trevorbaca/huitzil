# -*- coding: utf-8 -*-
from abjad import *


class FlightScoreTemplate(abctools.AbjadValueObject):
    r'''Huitzil flight score template.
    '''

    ### SPECIAL METHODS ###

    def __call__(self):
        r'''Calls Huitzil score template.

        >>> from huitzil import makers
        >>> template = makers.FlightScoreTemplate()
        >>> score = template()
        
        >>> f(score)
        \context Score = "Score" <<
            \context PianoStaff = "Piano Staff" <<
                \context BowStaff = "Bow Staff" <<
                    \context TimeSignatureVoice = "Time Signature Voice" {
                    }
                    \context TempoIndicatorVoice = "Tempo Indicator Voice" {
                    }
                    \context TremoloIndicatorVoice = "Tremolo Indicator Voice" {
                    }
                    \context BowLocationVoice = "Bow Location Voice" {
                    }
                    \context UnderlyingDynamicsVoice = "Underlying Dynamics Voice" {
                    }
                >>
                \context Staff = "Pitch Staff" {
                }
            >>
        >>

        Returns score.
        '''

        # make bow staff
        bow_staff = Staff(
            context_name='BowStaff',
            name='Bow Staff',
            )
        bow_staff.is_simultaneous = True

        # make time signature voice
        time_signature_voice = Voice(
            context_name='TimeSignatureVoice', 
            name='Time Signature Voice',
            )
        bow_staff.append(time_signature_voice)

        # make tempo indicator voice
        tempo_indicator_voice = Voice(
            context_name='TempoIndicatorVoice', 
            name='Tempo Indicator Voice',
            )
        bow_staff.append(tempo_indicator_voice)

        # make tremolo indicator voice
        tremolo_indicator_voice = Voice(
            context_name='TremoloIndicatorVoice', 
            name='Tremolo Indicator Voice',
            )
        bow_staff.append(tremolo_indicator_voice)

        # make bow location voice
        bow_location_voice = Voice(
            context_name='BowLocationVoice',
            name='Bow Location Voice',
            )
        bow_staff.append(bow_location_voice)

        # make underlying dynamics voice
        underlying_dynamics_voice = Voice(
            context_name='UnderlyingDynamicsVoice',
            name='Underlying Dynamics Voice',
            )
        bow_staff.append(underlying_dynamics_voice)

        # make pitch staff
        pitch_staff = Staff(
            name='Pitch Staff',
            )

        # make staff group
        staff_group = scoretools.StaffGroup(
            context_name='PianoStaff',
            name='Piano Staff',
            )
        staff_group.extend([
            bow_staff,
            pitch_staff,
            ])

        # make score
        score = Score(
            [
            staff_group,
            ],
            name='Score',
            )
        
        # return score
        return score