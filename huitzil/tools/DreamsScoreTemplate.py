import abjad
import baca
import huitzil


class DreamsScoreTemplate(baca.ScoreTemplate):
    r'''Dreams score template.

    ::

        >>> import huitzil

    ..  container:: example

        ::

            >>> template = huitzil.DreamsScoreTemplate()
            >>> path = abjad.Path('huitzil', 'stylesheets', 'contexts.ily')
            >>> lilypond_file = template.__illustrate__(
            ...     global_staff_size=15,
            ...     includes=[path],
            ...     )
            >>> show(lilypond_file) # doctest: +SKIP

        ::

            >>> f(lilypond_file[abjad.Score])
            \context Score = "Score" <<
                \context GlobalContext = "Global Context" <<
                    \context GlobalRests = "Global Rests" {
                    }
                    \context GlobalSkips = "Global Skips" {
                    }
                >>
                \context Staff = "Staff" <<
                    \context Voice = "Music Voice" {
                        \set Staff.instrumentName = \markup {
                            \hcenter-in
                                #16
                                Cello
                            }
                        \set Staff.shortInstrumentName = \markup {
                            \hcenter-in
                                #10
                                Vc.
                            }
                        \clef "bass"
                        s1
                    }
                >>
            >>

    '''

    ### SPECIAL METHODS ###

    def __call__(self):
        r'''Calls score template.

        Returns score.
        '''
        time_signature_context = self._make_time_signature_context()
        # CELLO
        staff = abjad.Staff(
            name='Staff',
            )
        staff.is_simultaneous = True
        abjad.annotate(
            staff,
            'default_instrument',
            huitzil.instruments['cello'],
            )
        music_voice = abjad.Voice(
            name='Music Voice',
            )
        staff.append(music_voice)
        # SCORE
        score = abjad.Score(
            [
                time_signature_context,
                staff,
                ],
            name='Score',
            )
        return score
