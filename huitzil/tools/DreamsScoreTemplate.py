# -*- coding: utf-8 -*-
import abjad
import baca
import huitzil


class DreamsScoreTemplate(baca.ScoreTemplate):
    r'''Dreams score template.

    ::

        >>> import huitzil
        >>> import pathlib

    ..  container:: example

        ::

            >>> template = huitzil.DreamsScoreTemplate()
            >>> lilypond_file = template.__illustrate__()
            >>> path = pathlib.Path(huitzil.__path__[0], 'stylesheets')
            >>> path = path.joinpath('context-definitions.ily')
            >>> lilypond_file = abjad.new(
            ...     lilypond_file,
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
        staff = abjad.Staff(
            name='Staff',
            )
        staff.is_simultaneous = True
        abjad.annotate(
            staff,
            'default_instrument',
            huitzil.materials.instruments['cello'],
            )
        abjad.annotate(
            staff,
            'default_clef',
            abjad.Clef('bass'),
            )
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
