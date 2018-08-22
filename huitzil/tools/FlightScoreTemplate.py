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

        >>> abjad.f(lilypond_file[abjad.Score], strict=89)
        \context Score = "Score"                                                                 %! ScoreTemplate
        <<                                                                                       %! ScoreTemplate
            \context GlobalContext = "Global_Context"                                            %! _make_global_context
            <<                                                                                   %! _make_global_context
                \context GlobalRests = "Global_Rests"                                            %! _make_global_context
                {                                                                                %! _make_global_context
                }                                                                                %! _make_global_context
                \context GlobalSkips = "Global_Skips"                                            %! _make_global_context
                {                                                                                %! _make_global_context
                }                                                                                %! _make_global_context
            >>                                                                                   %! _make_global_context
            \context PianoStaff = "Piano_Staff"                                                  %! ScoreTemplate
            <<                                                                                   %! ScoreTemplate
                \context BowStaff = "Bow_Staff"                                                  %! ScoreTemplate
                <<                                                                               %! ScoreTemplate
                    \context MetronomeMarkVoice = "Metronome_Mark_Voice"                         %! ScoreTemplate
                    {                                                                            %! ScoreTemplate
                        s1                                                                       %! ScoreTemplate.__illustrate__
                    }                                                                            %! ScoreTemplate
                    \context TremoloVoice = "Tremolo_Voice"                                      %! ScoreTemplate
                    {                                                                            %! ScoreTemplate
                        s1                                                                       %! ScoreTemplate.__illustrate__
                    }                                                                            %! ScoreTemplate
                    \context StringContactPointVoice = "String_Contact_Point_Voice"              %! ScoreTemplate
                    {                                                                            %! ScoreTemplate
                        s1                                                                       %! ScoreTemplate.__illustrate__
                    }                                                                            %! ScoreTemplate
                    \context UnderlyingDynamicsVoice = "Underlying_Dynamics_Voice"               %! ScoreTemplate
                    {                                                                            %! ScoreTemplate
                        s1                                                                       %! ScoreTemplate.__illustrate__
                    }                                                                            %! ScoreTemplate
                >>                                                                               %! ScoreTemplate
                \context PitchStaff = "Pitch_Staff"                                              %! ScoreTemplate
                {                                                                                %! ScoreTemplate
                    \context PitchVoice = "Pitch_Voice"                                          %! ScoreTemplate
                    {                                                                            %! ScoreTemplate
                        s1                                                                       %! ScoreTemplate.__illustrate__
                    }                                                                            %! ScoreTemplate
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
        tag = 'ScoreTemplate'
        # GLOBAL CONTEXT
        global_context = self._make_global_context()

        # BOW STAFF
        bow_staff = abjad.Staff(
            lilypond_type='BowStaff',
            is_simultaneous=True,
            name='Bow_Staff',
            tag=tag,
            )
        tempo_indicator_voice = abjad.Voice(
            lilypond_type='MetronomeMarkVoice',
            name='Metronome_Mark_Voice',
            tag=tag,
            )
        bow_staff.append(tempo_indicator_voice)
        tremolo_indicator_voice = abjad.Voice(
            lilypond_type='TremoloVoice',
            name='Tremolo_Voice',
            tag=tag,
            )
        bow_staff.append(tremolo_indicator_voice)
        bow_location_voice = abjad.Voice(
            lilypond_type='StringContactPointVoice',
            name='String_Contact_Point_Voice',
            tag=tag,
            )
        bow_staff.append(bow_location_voice)
        underlying_dynamics_voice = abjad.Voice(
            lilypond_type='UnderlyingDynamicsVoice',
            name='Underlying_Dynamics_Voice',
            tag=tag,
            )
        bow_staff.append(underlying_dynamics_voice)

        # PITCH STAFF
        pitch_staff = abjad.Staff(
            lilypond_type='PitchStaff',
            name='Pitch_Staff',
            tag=tag,
            )
        pitch_voice = abjad.Voice(
            lilypond_type='PitchVoice',
            name='Pitch_Voice',
            tag=tag,
            )
        pitch_staff.append(pitch_voice)

        # SCORE
        staff_group = abjad.StaffGroup(
            [
                bow_staff,
                pitch_staff,
                ],
            lilypond_type='PianoStaff',
            name='Piano_Staff',
            tag=tag,
            )
        score = abjad.Score(
            [global_context, staff_group],
            name='Score',
            tag=tag,
            )
        self._assert_lilypond_identifiers(score)
        self._assert_unique_context_names(score)
        self._assert_matching_custom_context_names(score)
        return score
