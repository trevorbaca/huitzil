I_GlobalRests = {                                                              %! extern
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


I_GlobalSkips = {                                                              %! extern
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


I_MetronomeMarkVoice = {                                                       %! extern
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


I_TremoloVoice = {                                                             %! extern
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


I_StringContactPointVoice = {                                                  %! extern
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


I_UnderlyingDynamicsVoice = {                                                  %! extern
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


I_BowStaff = <<                                                                %! extern
    \context MetronomeMarkVoice = "MetronomeMarkVoice"                         %! ScoreTemplate
    \with                                                                      %! ScoreTemplate
    {                                                                          %! ScoreTemplate
        \override TextScript.staff-padding = #5                                %! ScoreTemplate
        \override TextSpanner.staff-padding = #5.75                            %! ScoreTemplate
    }                                                                          %! ScoreTemplate
    \I_MetronomeMarkVoice                                                      %! extern
    \context TremoloVoice = "TremoloVoice"                                     %! ScoreTemplate
    \I_TremoloVoice                                                            %! extern
    \context StringContactPointVoice = "StringContactPointVoice"               %! ScoreTemplate
    \I_StringContactPointVoice                                                 %! extern
    \context UnderlyingDynamicsVoice = "UnderlyingDynamicsVoice"               %! ScoreTemplate
    \I_UnderlyingDynamicsVoice                                                 %! extern
>>                                                                             %! extern


I_PitchVoice = {                                                               %! extern
    \clef "bass"
    s1 * 12
    \bar "|."                                                                  %! SCORE_1
    \override Score.BarLine.transparent = ##f
    \override Score.SpanBar.transparent = ##f
}                                                                              %! extern


I_PitchStaff = {                                                               %! extern
    \context PitchVoice = "PitchVoice"                                         %! ScoreTemplate
    \I_PitchVoice                                                              %! extern
}                                                                              %! extern
