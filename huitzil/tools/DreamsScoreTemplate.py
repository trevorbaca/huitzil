import abjad
import baca
import huitzil


class DreamsScoreTemplate(baca.ScoreTemplate):
    r'''Dreams score template.

    >>> import huitzil

    ..  container:: example

        >>> template = huitzil.DreamsScoreTemplate()
        >>> path = abjad.Path('huitzil', 'stylesheets', 'contexts.ily')
        >>> lilypond_file = template.__illustrate__(
        ...     global_staff_size=15,
        ...     includes=[path],
        ...     )
        >>> abjad.show(lilypond_file) # doctest: +SKIP

        >>> abjad.f(lilypond_file[abjad.Score])
        \context Score = "Score" <<
            \context GlobalContext = "GlobalContext" <<
                \context GlobalRests = "GlobalRests" {
                }
                \context GlobalSkips = "GlobalSkips" {
                }
            >>
            \context Staff = "Staff" <<
                \context Voice = "Voice" {
                    \set Staff.instrumentName = \markup {      %! ST1
                        \hcenter-in                            %! ST1
                            #16                                %! ST1
                            Cello                              %! ST1
                        }                                      %! ST1
                    \set Staff.shortInstrumentName = \markup { %! ST1
                        \hcenter-in                            %! ST1
                            #10                                %! ST1
                            Vc.                                %! ST1
                        }                                      %! ST1
                    \clef "bass" %! ST3
                    s1
                }
            >>
        >>

    '''

    ### CLASS VARIABLES ###

    __documentation_section__ = None

    ### SPECIAL METHODS ###

    def __call__(self):
        r'''Calls score template.

        Returns score.
        '''
        # GLOBAL CONTEXT
        global_context = self._make_global_context()

        # CELLO
        music_voice = abjad.Voice(name='MusicVoice')
        staff = abjad.Staff(
            [music_voice],
            is_simultaneous=True,
            name='Staff',
            )
        abjad.annotate(
            staff,
            'default_instrument',
            huitzil.instruments['Cello'],
            )
        abjad.annotate(
            staff,
            'default_clef',
            abjad.Clef('bass'),
            )

        # SCORE
        score = abjad.Score(
            [global_context, staff],
            name='Score',
            )
        self._assert_lilypond_identifiers(score)
        self._assert_unique_context_names(score)
        self._assert_matching_custom_context_names(score)
        return score
