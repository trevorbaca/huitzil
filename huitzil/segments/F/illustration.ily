F_GlobalRests = {
    {   % measure
        \time 1/1
        s1 * 1
    }   % measure
    {   % measure
        \time 3/4
        s1 * 3/4
    }   % measure
    {   % measure
        s1 * 3/4
    }   % measure
    {   % measure
        \time 1/1
        s1 * 1
    }   % measure
    {   % measure
        s1 * 1
    }   % measure
    {   % measure
        \time 3/4
        s1 * 3/4
    }   % measure
    {   % measure
        s1 * 3/4
    }   % measure
    {   % measure
        \time 1/1
        s1 * 1
    }   % measure
    {   % measure
        s1 * 1
    }   % measure
    {   % measure
        \time 3/4
        s1 * 3/4
    }   % measure
    {   % measure
        s1 * 3/4
    }   % measure
    {   % measure
        \time 1/1
        s1 * 1
    }   % measure
    {   % measure
        s1 * 1
    }   % measure
    {   % measure
        \time 3/4
        s1 * 3/4
    }   % measure
    {   % measure
        s1 * 3/4
    }   % measure
    {   % measure
        \time 1/1
        s1 * 1
    }   % measure
    {   % measure
        s1 * 1
    }   % measure
    {   % measure
        \time 3/4
        s1 * 3/4
    }   % measure
    {   % measure
        s1 * 3/4
    }   % measure
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
    {   % measure
        s1 * 1
    }   % measure
}


F_GlobalSkips = {
    {   % measure
        s1 * 1
    }   % measure
    {   % measure
        \time 3/4
        s1 * 3/4
    }   % measure
    {   % measure
        s1 * 3/4
    }   % measure
    {   % measure
        \time 1/1
        s1 * 1
    }   % measure
    {   % measure
        s1 * 1
    }   % measure
    {   % measure
        \time 3/4
        s1 * 3/4
    }   % measure
    {   % measure
        s1 * 3/4
    }   % measure
    {   % measure
        \time 1/1
        s1 * 1
    }   % measure
    {   % measure
        s1 * 1
    }   % measure
    {   % measure
        \time 3/4
        s1 * 3/4
    }   % measure
    {   % measure
        s1 * 3/4
    }   % measure
    {   % measure
        \time 1/1
        s1 * 1
    }   % measure
    {   % measure
        s1 * 1
    }   % measure
    {   % measure
        \time 3/4
        s1 * 3/4
    }   % measure
    {   % measure
        s1 * 3/4
    }   % measure
    {   % measure
        \time 1/1
        s1 * 1
    }   % measure
    {   % measure
        s1 * 1
    }   % measure
    {   % measure
        \time 3/4
        s1 * 3/4
    }   % measure
    {   % measure
        s1 * 3/4
    }   % measure
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
    {   % measure
        s1 * 1
    }   % measure
}


F_MetronomeMarkVoice = {
    s1 * 1
    - \abjad_dashed_line_with_arrow
    - \tweak bound-details.left.text \markup {
        \concat
            {
                \large
                    \upright
                        accel.
                \hspace
                    #0.5
            }
        }
    \startTextSpan
    s1 * 3/4
    s1 * 3/4
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
    \stopTextSpan
    - \abjad_dashed_line_with_arrow
    - \tweak bound-details.left.text \markup {
        \concat
            {
                \abjad-metronome-mark-markup #2 #0 #1 #"66"
                \hspace
                    #0.5
            }
        }
    \startTextSpan
    s1 * 3/4
    s1 * 3/4
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
    \stopTextSpan
    - \abjad_dashed_line_with_arrow
    - \tweak bound-details.left.text \markup {
        \concat
            {
                \abjad-metronome-mark-markup #2 #0 #1 #"66"
                \hspace
                    #0.5
            }
        }
    \startTextSpan
    s1 * 3/4
    s1 * 3/4
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
    \stopTextSpan
    - \abjad_dashed_line_with_arrow
    - \tweak bound-details.left.text \markup {
        \concat
            {
                \abjad-metronome-mark-markup #2 #0 #1 #"66"
                \hspace
                    #0.5
            }
        }
    \startTextSpan
    s1 * 3/4
    s1 * 3/4
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
    \stopTextSpan
    - \abjad_dashed_line_with_arrow
    - \tweak bound-details.left.text \markup {
        \concat
            {
                \abjad-metronome-mark-markup #2 #0 #1 #"66"
                \hspace
                    #0.5
            }
        }
    \startTextSpan
    s1 * 3/4
    s1 * 3/4
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
    s1 * 1
    s1 * 1
    s1 * 1
    \stopTextSpan
    - \abjad_dashed_line_with_arrow
    - \tweak bound-details.left.text \markup {
        \concat
            {
                \abjad-metronome-mark-markup #2 #0 #1 #"66"
                \hspace
                    #0.5
            }
        }
    \startTextSpan
    s1 * 1
    s1 * 1
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
    \stopTextSpan
    - \abjad_dashed_line_with_arrow
    - \tweak bound-details.left.text \markup {
        \concat
            {
                \large
                    \upright
                        rit.
                \hspace
                    #0.5
            }
        }
    - \tweak bound-details.right.text \markup {
        \abjad-metronome-mark-markup #2 #0 #1 #"66"
        }
    \startTextSpan
    s1 * 1
    s1 * 1
    s1 * 1
    \stopTextSpan
}


F_TremoloVoice = {
    s1 * 1
    s1 * 3/4
    s1 * 3/4
    s1 * 1
    s1 * 1
    s1 * 3/4
    s1 * 3/4
    s1 * 1
    s1 * 1
    s1 * 3/4
    s1 * 3/4
    s1 * 1
    s1 * 1
    s1 * 3/4
    s1 * 3/4
    s1 * 1
    s1 * 1
    s1 * 3/4
    s1 * 3/4
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
    s1 * 1
}


F_StringContactPointVoice = {
    f1
    :16
    _ \markup {
        \dynamic
            fz
        }
    f2.
    :16
    \glissando
    a2.
    :16
    _ \markup {
        \dynamic
            fz
        }
    a1
    :16
    \glissando
    c'1
    :16
    _ \markup {
        \dynamic
            fz
        }
    c'2.
    :16
    \glissando
    e'2.
    :16
    _ \markup {
        \dynamic
            fz
        }
    e'1
    :16
    \glissando
    g'1
    :16
    _ \markup {
        \dynamic
            fz
        }
    g'2.
    :16
    \glissando
    b'2.
    :16
    _ \markup {
        \dynamic
            fz
        }
    b'1
    :16
    \glissando
    d''1
    :16
    _ \markup {
        \dynamic
            fz
        }
    d''2.
    :16
    \glissando
    f''2.
    :16
    _ \markup {
        \dynamic
            fz
        }
    f''1
    :16
    \glissando
    a''1
    :16
    _ \markup {
        \dynamic
            fz
        }
    a''2.
    :16
    \glissando
    c'''2.
    :16
    _ \markup {
        \dynamic
            fz
        }
    c'''1
    :16
    \glissando
    e'''1
    :16
    _ \markup {
        \dynamic
            fffz
        }
    e'''1
    :16
    _ \markup {
        \dynamic
            fffz
        }
    e'''1
    :16
    _ \markup {
        \dynamic
            fffz
        }
    e'''1
    :16
    _ \markup {
        \dynamic
            fffz
        }
    e'''1
    :16
    _ \markup {
        \dynamic
            fffz
        }
    e'''1
    :16
    e'''1
    :16
    e'''1
    :16
    e'''1
    :16
    _ \markup {
        \dynamic
            fffz
        }
    e'''1
    :16
    _ \markup {
        \dynamic
            fffz
        }
    e'''1
    :16
    _ \markup {
        \dynamic
            fffz
        }
    e'''1
    :16
    _ \markup {
        \dynamic
            fffz
        }
}


F_UnderlyingDynamicsVoice = {
    s1 * 1
    \p
    \<
    s1 * 3/4
    s1 * 3/4
    s1 * 1
    \mf
    \>
    s1 * 1
    \p
    \<
    s1 * 3/4
    s1 * 3/4
    s1 * 1
    \mf
    \>
    s1 * 1
    \p
    \<
    s1 * 3/4
    s1 * 3/4
    s1 * 1
    \mf
    \>
    s1 * 1
    \p
    \<
    s1 * 3/4
    s1 * 3/4
    s1 * 1
    \mf
    \>
    s1 * 1
    \p
    \<
    s1 * 3/4
    s1 * 3/4
    s1 * 1
    s1 * 1
    s1 * 1
    s1 * 1
    \ff
    s1 * 1
    s1 * 1
    \mf
    \<
    s1 * 1
    s1 * 1
    s1 * 1
    s1 * 1
    \ff
    \>
    s1 * 1
    s1 * 1
    s1 * 1
    \pp
}


F_BowStaff = <<
    \context MetronomeMarkVoice = "MetronomeMarkVoice"                         %! ScoreTemplate
    \with                                                                      %! ScoreTemplate
    {                                                                          %! ScoreTemplate
        \override TextScript.staff-padding = #5                                %! ScoreTemplate
        \override TextSpanner.staff-padding = #5.75                            %! ScoreTemplate
    }                                                                          %! ScoreTemplate
    \F_MetronomeMarkVoice                                                      %! extern
    \context TremoloVoice = "TremoloVoice"                                     %! ScoreTemplate
    \F_TremoloVoice                                                            %! extern
    \context StringContactPointVoice = "StringContactPointVoice"               %! ScoreTemplate
    \F_StringContactPointVoice                                                 %! extern
    \context UnderlyingDynamicsVoice = "UnderlyingDynamicsVoice"               %! ScoreTemplate
    \F_UnderlyingDynamicsVoice                                                 %! extern
>>


F_PitchVoice = {
    \clef "bass"
    a,1 * 35/2
    \glissando
    g,1 * 4
    \parenthesize
    g,1 * 4
    \glissando
    a,,1 * 4
}


F_PitchStaff = {
    \context PitchVoice = "PitchVoice"                                         %! ScoreTemplate
    \F_PitchVoice                                                              %! extern
}
