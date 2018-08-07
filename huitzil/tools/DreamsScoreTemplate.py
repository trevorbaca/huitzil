import abjad
import baca
import huitzil


class DreamsScoreTemplate(baca.ScoreTemplate):
    r"""
    Dreams score template.

    >>> import huitzil

    ..  container:: example

        >>> template = huitzil.DreamsScoreTemplate()
        >>> path = abjad.Path('huitzil', 'stylesheets', 'contexts.ily')
        >>> lilypond_file = template.__illustrate__(
        ...     global_staff_size=15,
        ...     includes=[path],
        ...     )
        >>> abjad.show(lilypond_file) # doctest: +SKIP

        >>> abjad.f(lilypond_file[abjad.Score], strict=89)
        \context Score = "Score"                                                                 %! ScoreTemplate
        <<                                                                                       %! ScoreTemplate
            \context GlobalContext = "GlobalContext"                                             %! _make_global_context
            <<                                                                                   %! _make_global_context
                \context GlobalRests = "GlobalRests"                                             %! _make_global_context
                {                                                                                %! _make_global_context
                }                                                                                %! _make_global_context
                \context GlobalSkips = "GlobalSkips"                                             %! _make_global_context
                {                                                                                %! _make_global_context
                }                                                                                %! _make_global_context
            >>                                                                                   %! _make_global_context
            \context Staff = "Staff"                                                             %! ScoreTemplate
            <<                                                                                   %! ScoreTemplate
                \context Voice = "MusicVoice"                                                    %! ScoreTemplate
                {                                                                                %! ScoreTemplate
                    \clef "bass"                                                                 %! attach_defaults
                    s1                                                                           %! ScoreTemplate.__illustrate__
                }                                                                                %! ScoreTemplate
            >>                                                                                   %! ScoreTemplate
        >>                                                                                       %! ScoreTemplate

    """

    ### CLASS VARIABLES ###

    __documentation_section__ = None

    ### SPECIAL METHODS ###

    def __call__(self) -> abjad.Score:
        """
        Calls score template.
        """
        # GLOBAL CONTEXT
        tag = 'ScoreTemplate'
        global_context = self._make_global_context()

        # CELLO
        music_voice = abjad.Voice(name='MusicVoice', tag=tag)
        staff = abjad.Staff(
            [music_voice],
            is_simultaneous=True,
            name='Staff',
            tag=tag,
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
            tag=tag,
            )
        self._assert_lilypond_identifiers(score)
        self._assert_unique_context_names(score)
        self._assert_matching_custom_context_names(score)
        return score
