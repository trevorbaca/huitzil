I_Global_Rests = {                                                             %! extern
    R1 * 1                                                                     %! _make_global_rests
    R1 * 1                                                                     %! _make_global_rests
    R1 * 1                                                                     %! _make_global_rests
    R1 * 1                                                                     %! _make_global_rests
    R1 * 1                                                                     %! _make_global_rests
    R1 * 1                                                                     %! _make_global_rests
    R1 * 1                                                                     %! _make_global_rests
    R1 * 1                                                                     %! _make_global_rests
    R1 * 1                                                                     %! _make_global_rests
    R1 * 1                                                                     %! _make_global_rests
    R1 * 1                                                                     %! _make_global_rests
    R1 * 1                                                                     %! _make_global_rests
}                                                                              %! extern


I_Global_Skips = {                                                             %! extern
    {
        \time 1/1
        s1 * 1
    }
    {
        \time 1/1
        s1 * 1
    }
    {
        \time 1/1
        s1 * 1
    }
    {
        \time 1/1
        s1 * 1
    }
    {
        \time 1/1
        s1 * 1
    }
    {
        \time 1/1
        s1 * 1
    }
    {
        \time 1/1
        s1 * 1
    }
    {
        \time 1/1
        s1 * 1
    }
    {
        \time 1/1
        s1 * 1
    }
    {
        \time 1/1
        s1 * 1
    }
    {
        \time 1/1
        s1 * 1
    }
    {
        \time 1/1
        s1 * 1
    }
}                                                                              %! extern


I_Metronome_Mark_Voice = {                                                     %! extern
    s1 * 1
    - \abjad-dashed-line-with-arrow
    - \tweak bound-details.left.text \markup {
        \concat
            {
                \abjad-metronome-mark-markup #2 #0 #1 #"44"
                \hspace
                    #0.5
            }
        }
    \startTextSpan
    s1 * 1
    \stopTextSpan
    - \abjad-dashed-line-with-arrow
    - \tweak bound-details.left.text \markup {
        \concat
            {
                \abjad-metronome-mark-markup #2 #0 #1 #"88"
                \hspace
                    #0.5
            }
        }
    \startTextSpan
    s1 * 1
    \stopTextSpan
    - \abjad-dashed-line-with-arrow
    - \tweak bound-details.left.text \markup {
        \concat
            {
                \abjad-metronome-mark-markup #2 #0 #1 #"44"
                \hspace
                    #0.5
            }
        }
    \startTextSpan
    s1 * 1
    \stopTextSpan
    - \abjad-dashed-line-with-arrow
    - \tweak bound-details.left.text \markup {
        \concat
            {
                \abjad-metronome-mark-markup #2 #0 #1 #"88"
                \hspace
                    #0.5
            }
        }
    \startTextSpan
    s1 * 1
    \stopTextSpan
    - \abjad-dashed-line-with-arrow
    - \tweak bound-details.left.text \markup {
        \concat
            {
                \abjad-metronome-mark-markup #2 #0 #1 #"44"
                \hspace
                    #0.5
            }
        }
    \startTextSpan
    s1 * 1
    \stopTextSpan
    - \abjad-dashed-line-with-arrow
    - \tweak bound-details.left.text \markup {
        \concat
            {
                \abjad-metronome-mark-markup #2 #0 #1 #"88"
                \hspace
                    #0.5
            }
        }
    \startTextSpan
    s1 * 1
    \stopTextSpan
    - \abjad-dashed-line-with-arrow
    - \tweak bound-details.left.text \markup {
        \concat
            {
                \abjad-metronome-mark-markup #2 #0 #1 #"44"
                \hspace
                    #0.5
            }
        }
    \startTextSpan
    s1 * 1
    \stopTextSpan
    - \abjad-dashed-line-with-arrow
    - \tweak bound-details.left.text \markup {
        \concat
            {
                \abjad-metronome-mark-markup #2 #0 #1 #"88"
                \hspace
                    #0.5
            }
        }
    \startTextSpan
    s1 * 1
    \stopTextSpan
    - \abjad-dashed-line-with-arrow
    - \tweak bound-details.left.text \markup {
        \concat
            {
                \abjad-metronome-mark-markup #2 #0 #1 #"44"
                \hspace
                    #0.5
            }
        }
    \startTextSpan
    s1 * 1
    \stopTextSpan
    - \abjad-invisible-line
    - \tweak bound-details.left.text \markup {
        \concat
            {
                \abjad-metronome-mark-markup #2 #0 #1 #"88"
                \hspace
                    #0.5
            }
        }
    \startTextSpan
    s1 * 1
    s1 * 1
    \stopTextSpan
}                                                                              %! extern


I_Tremolo_Voice = {                                                            %! extern
    s1 * 1
    s1 * 1
    s1 * 1
    s1 * 1
    s1 * 1
    s1 * 1
    s1 * 1
    s1 * 1
    s1 * 1
    s1 * 1
    s1 * 1
    s1 * 1
}                                                                              %! extern


I_String_Contact_Point_Voice = {                                               %! extern
    a''1
    :16
    a''1
    :16
    a''1
    :16
    a''1
    :16
    a''1
    :16
    a''1
    :16
    a''1
    :16
    a''1
    :16
    a''1
    :16
    a''1
    :16
    a''1
    :16
    a''1
    :16
}                                                                              %! extern


I_Underlying_Dynamics_Voice = {                                                %! extern
    s1 * 1
    \mp
    \>
    s1 * 1
    \pp
    \<
    s1 * 1
    \mp
    \>
    s1 * 1
    \pp
    \<
    s1 * 1
    \mp
    \>
    s1 * 1
    \pp
    \<
    s1 * 1
    \mp
    \>
    s1 * 1
    \pp
    \<
    s1 * 1
    \mp
    \>
    s1 * 1
    \pp
    s1 * 1
    s1 * 1
    \!
}                                                                              %! extern


I_Bow_Staff = <<                                                               %! extern
    \context MetronomeMarkVoice = "Metronome_Mark_Voice"                       %! ScoreTemplate
    \with                                                                      %! ScoreTemplate
    {                                                                          %! ScoreTemplate
        \override TextScript.staff-padding = #5                                %! ScoreTemplate
        \override TextSpanner.staff-padding = #5.75                            %! ScoreTemplate
    }                                                                          %! ScoreTemplate
    \I_Metronome_Mark_Voice                                                    %! extern
    \context TremoloVoice = "Tremolo_Voice"                                    %! ScoreTemplate
    \I_Tremolo_Voice                                                           %! extern
    \context StringContactPointVoice = "String_Contact_Point_Voice"            %! ScoreTemplate
    \I_String_Contact_Point_Voice                                              %! extern
    \context UnderlyingDynamicsVoice = "Underlying_Dynamics_Voice"             %! ScoreTemplate
    \I_Underlying_Dynamics_Voice                                               %! extern
>>                                                                             %! extern


I_Pitch_Voice = {                                                              %! extern
    \clef "bass"
    s1 * 12
    \bar "|."                                                                  %! SCORE_1
    \override Score.BarLine.transparent = ##f
    \override Score.SpanBar.transparent = ##f
}                                                                              %! extern


I_Pitch_Staff = {                                                              %! extern
    \context PitchVoice = "Pitch_Voice"                                        %! ScoreTemplate
    \I_Pitch_Voice                                                             %! extern
}                                                                              %! extern
