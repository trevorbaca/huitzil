# -*- coding: utf-8 -*-
import abjad


class DreamsScoreTemplate(abjad.abctools.AbjadValueObject):
    r'''Huitzil dreams score template.

    ::

        >>> import huitzil

    '''

    ### SPECIAL METHODS ###

    def __call__(self):
        r'''Calls Huitzil score template.

        >>> template = huitzil.tools.DreamsScoreTemplate()
        >>> score = template()
        
        >>> f(score)
        \context Score = "Score" <<
            \context TimeSignatureContext = "Time Signature Context" {
            }
            \context Staff = "Staff" <<
                \clef "bass"
                \context TextSpannerVoice = "Text Spanner Voice" {
                }
                \context Voice = "Music Voice" {
                }
            >>
        >>

        Returns score.
        '''

        # make time signature context
        time_signature_context = abjad.scoretools.Context(
            context_name='TimeSignatureContext',
            name='Time Signature Context',
            )

        # make staff
        staff = abjad.Staff(
            name='Staff',
            )
        staff.is_simultaneous = True
        abjad.attach(abjad.Clef('bass'), staff)

        # make text spanner voice
        text_spanner_voice = abjad.Voice(
            context_name='TextSpannerVoice', 
            name='Text Spanner Voice',
            )
        staff.append(text_spanner_voice)

        # make music voice
        music_voice = abjad.Voice(
            name='Music Voice',
            )
        staff.append(music_voice)

        # make score
        score = abjad.Score(
            [
            time_signature_context,
            staff,
            ],
            name='Score',
            )
        
        # return score
        return score
