import abjad
import baca
import huitzil


class ScoreTemplate(baca.ScoreTemplate):
    """
    Score template.

    >>> import huitzil

    ..  container:: example

        >>> huitzil.ScoreTemplate()
        ScoreTemplate()

    """

    ### CLASS VARIABLES ###

    _always_make_global_rests = True

    _do_not_require_margin_markup = True

    ### INITIALIZER ###

    def __init__(self):
        super(ScoreTemplate, self).__init__()
        self.voice_abbreviations.update(
            {
                "rh": "RH_Music_Voice",
                "vc": "Cello_Music_Voice",
                "vcr": "Cello_Rest_Voice",
            }
        )

    ### SPECIAL METHODS ###

    def __call__(self) -> abjad.Score:
        """
        Calls score template.
        """
        site = "huitzil.ScoreTemplate.__call__()"
        tag = abjad.Tag(site)

        # GLOBAL CONTEXT
        global_context = self._make_global_context()

        # CELLO
        rh_music_voice = abjad.Voice(name="RH_Music_Voice", tag=tag)
        rh_music_staff = abjad.Staff(
            [rh_music_voice],
            lilypond_type="RHStaff",
            name="RH_Music_Staff",
            tag=tag,
        )
        abjad.annotate(rh_music_staff, "default_clef", abjad.Clef("percussion"))
        abjad.annotate(rh_music_staff, baca.const.REMOVE_ALL_EMPTY_STAVES, True)
        cello_music_voice = abjad.Voice(name="Cello_Music_Voice", tag=tag)
        cello_music_staff = abjad.Staff(
            [cello_music_voice], name="Cello_Music_Staff", tag=tag
        )
        abjad.annotate(cello_music_staff, "default_clef", abjad.Clef("bass"))
        cello_staff_group = abjad.StaffGroup(
            [rh_music_staff, cello_music_staff],
            lilypond_type="PianoStaff",
            name="Cello_Staff_Group",
            tag=tag,
        )
        abjad.annotate(
            cello_staff_group,
            "default_instrument",
            huitzil.instruments["Cello"],
        )

        # SCORE
        music_context = abjad.Context(
            [cello_staff_group],
            lilypond_type="MusicContext",
            name="Music_Context",
            tag=tag,
        )
        score = abjad.Score([global_context, music_context], name="Score", tag=tag)
        self._assert_lilypond_identifiers(score)
        self._assert_unique_context_names(score)
        # self._assert_matching_custom_context_names(score)
        return score
