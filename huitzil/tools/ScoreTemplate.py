import abjad
import baca
import huitzil


class ScoreTemplate(baca.ScoreTemplate):
    r"""
    Score template.

    >>> import huitzil

    ..  container:: example

        >>> template = huitzil.ScoreTemplate()
        >>> path = abjad.Path('huitzil', 'stylesheets', 'contexts.ily')
        >>> lilypond_file = template.__illustrate__(
        ...     global_staff_size=15,
        ...     includes=[path],
        ...     )
        >>> abjad.show(lilypond_file) # doctest: +SKIP

        >>> abjad.f(lilypond_file[abjad.Score], strict=79)
        \context Score = "Score"                                                       %! ScoreTemplate
        <<                                                                             %! ScoreTemplate
            \context GlobalContext = "Global_Context"                                  %! _make_global_context
            <<                                                                         %! _make_global_context
                \context GlobalRests = "Global_Rests"                                  %! _make_global_context
                {                                                                      %! _make_global_context
                }                                                                      %! _make_global_context
                \context GlobalSkips = "Global_Skips"                                  %! _make_global_context
                {                                                                      %! _make_global_context
                }                                                                      %! _make_global_context
            >>                                                                         %! _make_global_context
            \context MusicContext = "Music_Context"                                    %! ScoreTemplate
            {                                                                          %! ScoreTemplate
                \context Staff = "Cello_Music_Staff"                                   %! ScoreTemplate
                {                                                                      %! ScoreTemplate
                    \context Voice = "Cello_Music_Voice"                               %! ScoreTemplate
                    {                                                                  %! ScoreTemplate
                        \clef "bass"                                                   %! attach_defaults
                        s1                                                             %! ScoreTemplate.__illustrate__
                    }                                                                  %! ScoreTemplate
                }                                                                      %! ScoreTemplate
            }                                                                          %! ScoreTemplate
        >>                                                                             %! ScoreTemplate

    """

    ### CLASS VARIABLES ###

    __documentation_section__ = None

    _always_make_global_rests = True

    _do_not_require_margin_markup = True

    _global_rests_in_topmost_staff = True

    ### INITIALIZER ###

    def __init__(self):
        super(ScoreTemplate, self).__init__()
        self.voice_abbreviations.update({
            'vc': 'Cello_Music_Voice',
            })

    ### SPECIAL METHODS ###

    def __call__(self) -> abjad.Score:
        """
        Calls score template.
        """
        tag = 'ScoreTemplate'

        # GLOBAL CONTEXT
        global_context = self._make_global_context()

        # cello
        cello_music_voice = abjad.Voice(
            name='Cello_Music_Voice',
            tag=tag,
            )
        cello_music_staff = abjad.Staff(
            [cello_music_voice],
            name='Cello_Music_Staff',
            tag=tag,
            )
        abjad.annotate(
            cello_music_staff,
            'default_instrument',
            huitzil.instruments['Cello'],
            )
        abjad.annotate(
            cello_music_staff,
            'default_clef',
            abjad.Clef('bass'),
            )

        # SCORE
        music_context = abjad.Context(
            [cello_music_staff],
            lilypond_type='MusicContext',
            name='Music_Context',
            tag=tag,
            )
        score = abjad.Score(
            [global_context, music_context],
            name='Score',
            tag=tag,
            )
        self._assert_lilypond_identifiers(score)
        self._assert_unique_context_names(score)
        self._assert_matching_custom_context_names(score)
        return score

    ### PUBLIC PROPERTIES ###

    @property
    def do_not_require_margin_markup(self):
        """
        Does not require margin markup.

        ..  container:: example

            >>> huitzil.ScoreTemplate().do_not_require_margin_markup
            True

        """
        return super(ScoreTemplate, self).do_not_require_margin_markup

    @property
    def voice_abbreviations(self):
        """
        Gets voice abbreviations.

        ..  container:: example

            >>> score_template = huitzil.ScoreTemplate()
            >>> abjad.f(score_template.voice_abbreviations)
            abjad.OrderedDict(
                [
                    ('vc', 'Cello_Music_Voice'),
                    ]
                )

        """
        return super(ScoreTemplate, self).voice_abbreviations
