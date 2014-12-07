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
            \context Staff = "Staff" <<
                \context TempoIndicatorVoice = "Tempo Indicator Voice" {
                }
                \context TremoloIndicatorVoice = "Tremolo Indicator Voice" {
                }
                \context Voice = "Music Voice" {
                }
            >>
        >>

        Returns score.
        '''

        # make staff
        staff = Staff(
            name='Staff',
            )
        staff.is_simultaneous = True

        # make time signature voice
        time_signature_voice = Voice(
            context_name='TimeSignatureVoice', 
            name='Time Signature Voice',
            )
        staff.append(time_signature_voice)

        # make tempo indicator voice
        tempo_indicator_voice = Voice(
            context_name='TempoIndicatorVoice', 
            name='Tempo Indicator Voice',
            )
        staff.append(tempo_indicator_voice)

        # make tremolo indicator voice
        tremolo_indicator_voice = Voice(
            context_name='TremoloIndicatorVoice', 
            name='Tremolo Indicator Voice',
            )
        staff.append(tremolo_indicator_voice)

        # make music voice
        music_voice = Voice(
            name='Music Voice',
            )
        staff.append(music_voice)

        # make score
        score = Score(
            [
            staff,
            ],
            name='Score',
            )
        
        # return score
        return score