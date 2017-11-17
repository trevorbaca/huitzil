import abjad
import baca


class FlightScoreTemplate(baca.ScoreTemplate):
    r'''Flight score template.

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
        \context Score = "Score" <<
            \context GlobalContext = "Global Context" <<
                \context GlobalRests = "Global Rests" {
                }
                \context GlobalSkips = "Global Skips" {
                }
            >>
            \context PianoStaff = "Piano Staff" <<
                \context BowStaff = "Bow Staff" <<
                    \context MetronomeMarkVoice = "MetronomeMarkVoice" {
                        s1
                    }
                    \context TremoloVoice = "TremoloVoice" {
                        s1
                    }
                    \context StringContactPointVoice = "StringContactPointVoice" {
                        s1
                    }
                    \context UnderlyingDynamicsVoice = "UnderlyingDynamicsVoice" {
                        s1
                    }
                >>
                \context PitchStaff = "PitchStaff" {
                    \context PitchVoice = "PitchVoice" {
                        s1
                    }
                }
            >>
        >>

    '''

    ### SPECIAL METHODS ###

    def __call__(self):
        r'''Calls score template.

        Returns score.
        '''
        global_context = self._make_global_context()
        # BOW STAFF
        bow_staff = abjad.Staff(
            context_name='BowStaff',
            name='Bow Staff',
            )
        bow_staff.is_simultaneous = True
        tempo_indicator_voice = abjad.Voice(
            context_name='MetronomeMarkVoice',
            name='MetronomeMarkVoice',
            )
        bow_staff.append(tempo_indicator_voice)
        tremolo_indicator_voice = abjad.Voice(
            context_name='TremoloVoice',
            name='TremoloVoice',
            )
        bow_staff.append(tremolo_indicator_voice)
        bow_location_voice = abjad.Voice(
            context_name='StringContactPointVoice',
            name='StringContactPointVoice',
            )
        bow_staff.append(bow_location_voice)
        underlying_dynamics_voice = abjad.Voice(
            context_name='UnderlyingDynamicsVoice',
            name='UnderlyingDynamicsVoice',
            )
        bow_staff.append(underlying_dynamics_voice)
        # PITCH STAFF
        pitch_staff = abjad.Staff(
            context_name='PitchStaff',
            name='PitchStaff',
            )
        pitch_voice = abjad.Voice(
            context_name='PitchVoice',
            name='PitchVoice',
            )
        pitch_staff.append(pitch_voice)
        # SCORE
        staff_group = abjad.StaffGroup(
            context_name='PianoStaff',
            name='Piano Staff',
            )
        staff_group.extend([
            bow_staff,
            pitch_staff,
            ])
        score = abjad.Score([
            global_context,
            staff_group,
            ],
            name='Score',
            )
        return score
