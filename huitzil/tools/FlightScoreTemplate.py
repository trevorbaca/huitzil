import abjad
import baca


class FlightScoreTemplate(baca.ScoreTemplate):
    r'''Flight score template.

    ::

        >>> import huitzil
        >>> import pathlib


    ..  container:: example
    
        ::

            >>> template = huitzil.FlightScoreTemplate()
            >>> lilypond_file = template.__illustrate__()
            >>> path = pathlib.Path(huitzil.__path__[0], 'stylesheets')
            >>> path_1 = path.joinpath('context-definitions.ily')
            >>> path_2 = path.joinpath('flight-context-definitions.ily')
            >>> lilypond_file = abjad.new(
            ...     lilypond_file,
            ...     global_staff_size=16,
            ...     includes=[str(path_1), str(path_2)],
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
                \context PianoStaff = "Piano Staff" <<
                    \context BowStaff = "Bow Staff" <<
                        \context TempoIndicatorVoice = "MetronomeMark Indicator Voice" {
                            s1
                        }
                        \context TremoloIndicatorVoice = "Tremolo Indicator Voice" {
                            s1
                        }
                        \context BowLocationVoice = "Bow Location Voice" {
                            s1
                        }
                        \context UnderlyingDynamicsVoice = "Underlying Dynamics Voice" {
                            s1
                        }
                    >>
                    \context PitchStaff = "Pitch Staff" {
                        \context PitchVoice = "Pitch Voice" {
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
        time_signature_context = self._make_time_signature_context()
        bow_staff = abjad.Staff(
            context_name='BowStaff',
            name='Bow Staff',
            )
        bow_staff.is_simultaneous = True
        tempo_indicator_voice = abjad.Voice(
            context_name='TempoIndicatorVoice', 
            name='MetronomeMark Indicator Voice',
            )
        bow_staff.append(tempo_indicator_voice)
        tremolo_indicator_voice = abjad.Voice(
            context_name='TremoloIndicatorVoice', 
            name='Tremolo Indicator Voice',
            )
        bow_staff.append(tremolo_indicator_voice)
        bow_location_voice = abjad.Voice(
            context_name='BowLocationVoice',
            name='Bow Location Voice',
            )
        bow_staff.append(bow_location_voice)
        underlying_dynamics_voice = abjad.Voice(
            context_name='UnderlyingDynamicsVoice',
            name='Underlying Dynamics Voice',
            )
        bow_staff.append(underlying_dynamics_voice)
        pitch_staff = abjad.Staff(
            context_name='PitchStaff',
            name='Pitch Staff',
            )
        pitch_voice = abjad.Voice(
            context_name='PitchVoice',
            name='Pitch Voice',
            )
        pitch_staff.append(pitch_voice)
        staff_group = abjad.StaffGroup(
            context_name='PianoStaff',
            name='Piano Staff',
            )
        staff_group.extend([
            bow_staff,
            pitch_staff,
            ])
        score = abjad.Score([
            time_signature_context,
            staff_group,
            ],
            name='Score',
            )
        return score
