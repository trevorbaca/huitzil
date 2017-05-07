# -*- coding: utf-8 -*-
import abjad
import baca


class DreamsScoreTemplate(baca.ScoreTemplate):
    r'''Dreams score template.

    ::

        >>> import abjad
        >>> import baca
        >>> import huitzil

    '''

    ### SPECIAL METHODS ###

    def __call__(self):
        r'''Calls score template.

        ::

            >>> template = huitzil.tools.DreamsScoreTemplate()
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
                \context Staff = "Staff" <<
                    \clef "bass"
                    \context Voice = "Music Voice" {
                    }
                >>
            >>

        Returns score.
        '''
        time_signature_context = self._make_time_signature_context()
        staff = abjad.Staff(
            name='Staff',
            )
        staff.is_simultaneous = True
        abjad.attach(abjad.Clef('bass'), staff)
        music_voice = abjad.Voice(
            name='Music Voice',
            )
        staff.append(music_voice)
        score = abjad.Score(
            [
                time_signature_context,
                staff,
                ],
            name='Score',
            )
        return score
