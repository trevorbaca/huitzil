# -*- coding: utf-8 -*-
import abjad
import baca


class FlightScoreTemplate(baca.ScoreTemplate):
    r'''Flight score template.

    ::

        >>> import abjad
        >>> import baca
        >>> import huitzil

    '''

    ### SPECIAL METHODS ###

    def __call__(self):
        r'''Calls score template.

        ::

            >>> template = huitzil.tools.FlightScoreTemplate()
            >>> score = template()

        ::
        
            >>> f(score)
            \context Score = "Score" <<
                \context TimeSignatureContext = "Time Signature Context" <<
                    \context TimeSignatureContextMultimeasureRests = "Time Signature Context Multimeasure Rests" {
                    }
                    \context TimeSignatureContextSkips = "Time Signature Context Skips" {
                    }
                >>
                \context PianoStaff = "Piano Staff" <<
                    \context BowStaff = "Bow Staff" <<
                        \context TempoIndicatorVoice = "MetronomeMark Indicator Voice" {
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
        time_signature_context = self._make_time_signature_context()
        bow_staff = abjad.Staff(
            context_name='BowStaff',
            name='Bow Staff',
            )
        bow_staff.is_simultaneous = True
        tempo_indicator_voice = abjad.Voice(
            context_name='TempoIndicatorVoice', 
            name='MetronomeMark Indicator Voice',
            )
        bow_staff.append(tempo_indicator_voice)
        tremolo_indicator_voice = abjad.Voice(
            context_name='TremoloIndicatorVoice', 
            name='Tremolo Indicator Voice',
            )
        bow_staff.append(tremolo_indicator_voice)
        bow_location_voice = abjad.Voice(
            context_name='BowLocationVoice',
            name='Bow Location Voice',
            )
        bow_staff.append(bow_location_voice)
        underlying_dynamics_voice = abjad.Voice(
            context_name='UnderlyingDynamicsVoice',
            name='Underlying Dynamics Voice',
            )
        bow_staff.append(underlying_dynamics_voice)
        pitch_staff = abjad.Staff(
            name='Pitch Staff',
            )
        staff_group = abjad.StaffGroup(
            context_name='PianoStaff',
            name='Piano Staff',
            )
        staff_group.extend([
            bow_staff,
            pitch_staff,
            ])
        score = abjad.Score([
            time_signature_context,
            staff_group,
            ],
            name='Score',
            )
        return score
