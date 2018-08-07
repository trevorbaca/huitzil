import abjad
import baca


class FlightScoreTemplate(baca.ScoreTemplate):
    r"""
    Flight score template.

    >>> import huitzil

    ..  container:: example

        >>> template = huitzil.FlightScoreTemplate()
        >>> path_1 = abjad.Path('huitzil', 'stylesheets', 'contexts.ily')
        >>> path_2 = path_1.with_name('flight-contexts.ily')
        >>> lilypond_file = template.__illustrate__(
        ...     global_staff_size=16,
        ...     includes=[path_1, path_2],
        ...     )
        >>> abjad.show(lilypond_file) # doctest: +SKIP

        >>> abjad.f(lilypond_file[abjad.Score])
        \context Score = "Score"
        <<
            \context GlobalContext = "GlobalContext" %! _make_global_context
            <<                                       %! _make_global_context
                \context GlobalRests = "GlobalRests" %! _make_global_context
                {                                    %! _make_global_context
                } %! _make_global_context
                \context GlobalSkips = "GlobalSkips" %! _make_global_context
                {                                    %! _make_global_context
                } %! _make_global_context
            >> %! _make_global_context
            \context PianoStaff = "PianoStaff"
            <<
                \context BowStaff = "BowStaff"
                <<
                    \context MetronomeMarkVoice = "MetronomeMarkVoice"
                    {
                        s1 %! ScoreTemplate.__illustrate__
                    }
                    \context TremoloVoice = "TremoloVoice"
                    {
                        s1 %! ScoreTemplate.__illustrate__
                    }
                    \context StringContactPointVoice = "StringContactPointVoice"
                    {
                        s1 %! ScoreTemplate.__illustrate__
                    }
                    \context UnderlyingDynamicsVoice = "UnderlyingDynamicsVoice"
                    {
                        s1 %! ScoreTemplate.__illustrate__
                    }
                >>
                \context PitchStaff = "PitchStaff"
                {
                    \context PitchVoice = "PitchVoice"
                    {
                        s1 %! ScoreTemplate.__illustrate__
                    }
                }
            >>
        >>

    """

    ### CLASS VARIABLES ###

    __documentation_section__ = None

    ### SPECIAL METHODS ###

    def __call__(self) -> abjad.Score:
        """
        Calls score template.
        """
        # GLOBAL CONTEXT
        global_context = self._make_global_context()

        # BOW STAFF
        bow_staff = abjad.Staff(
            lilypond_type='BowStaff',
            is_simultaneous=True,
            name='BowStaff',
            )
        tempo_indicator_voice = abjad.Voice(
            lilypond_type='MetronomeMarkVoice',
            name='MetronomeMarkVoice',
            )
        bow_staff.append(tempo_indicator_voice)
        tremolo_indicator_voice = abjad.Voice(
            lilypond_type='TremoloVoice',
            name='TremoloVoice',
            )
        bow_staff.append(tremolo_indicator_voice)
        bow_location_voice = abjad.Voice(
            lilypond_type='StringContactPointVoice',
            name='StringContactPointVoice',
            )
        bow_staff.append(bow_location_voice)
        underlying_dynamics_voice = abjad.Voice(
            lilypond_type='UnderlyingDynamicsVoice',
            name='UnderlyingDynamicsVoice',
            )
        bow_staff.append(underlying_dynamics_voice)

        # PITCH STAFF
        pitch_staff = abjad.Staff(
            lilypond_type='PitchStaff',
            name='PitchStaff',
            )
        pitch_voice = abjad.Voice(
            lilypond_type='PitchVoice',
            name='PitchVoice',
            )
        pitch_staff.append(pitch_voice)

        # SCORE
        staff_group = abjad.StaffGroup(
            [
                bow_staff,
                pitch_staff,
                ],
            lilypond_type='PianoStaff',
            name='PianoStaff',
            )
        score = abjad.Score(
            [global_context, staff_group],
            name='Score',
            )
        self._assert_lilypond_identifiers(score)
        self._assert_unique_context_names(score)
        self._assert_matching_custom_context_names(score)
        return score
