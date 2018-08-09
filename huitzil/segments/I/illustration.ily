I_GlobalRests = {
    {   % measure
        \time 1/1
        s1 * 1
    }   % measure
    {   % measure
        s1 * 1
    }   % measure
    {   % measure
        s1 * 1
    }   % measure
    {   % measure
        s1 * 1
    }   % measure
    {   % measure
        s1 * 1
    }   % measure
    {   % measure
        s1 * 1
    }   % measure
    {   % measure
        s1 * 1
    }   % measure
    {   % measure
        s1 * 1
    }   % measure
    {   % measure
        s1 * 1
    }   % measure
    {   % measure
        s1 * 1
    }   % measure
    {   % measure
        s1 * 1
    }   % measure
    {   % measure
        s1 * 1
    }   % measure
}


I_GlobalSkips = {
    {   % measure
        s1 * 1
    }   % measure
    {   % measure
        s1 * 1
    }   % measure
    {   % measure
        s1 * 1
    }   % measure
    {   % measure
        s1 * 1
    }   % measure
    {   % measure
        s1 * 1
    }   % measure
    {   % measure
        s1 * 1
    }   % measure
    {   % measure
        s1 * 1
    }   % measure
    {   % measure
        s1 * 1
    }   % measure
    {   % measure
        s1 * 1
    }   % measure
    {   % measure
        s1 * 1
    }   % measure
    {   % measure
        s1 * 1
    }   % measure
    {   % measure
        s1 * 1
    }   % measure
}


I_MetronomeMarkVoice = {
    s1 * 1
    - \abjad_dashed_line_with_arrow
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
    - \abjad_dashed_line_with_arrow
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
    - \abjad_dashed_line_with_arrow
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
    - \abjad_dashed_line_with_arrow
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
    - \abjad_dashed_line_with_arrow
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
    - \abjad_dashed_line_with_arrow
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
    - \abjad_dashed_line_with_arrow
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
    - \abjad_dashed_line_with_arrow
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
    - \abjad_dashed_line_with_arrow
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
    - \abjad_invisible_line
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
}


I_TremoloVoice = {
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
}


I_StringContactPointVoice = {
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
}


I_UnderlyingDynamicsVoice = {
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
}


I_BowStaff = <<
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
>>


I_PitchVoice = {
    \clef "bass"
    s1 * 12
    \bar "|."                                                                  %! SCORE_1
    \override Score.BarLine.transparent = ##f
    \override Score.SpanBar.transparent = ##f
}


I_PitchStaff = {
    \context PitchVoice = "PitchVoice"                                         %! ScoreTemplate
    \I_PitchVoice                                                              %! extern
}
