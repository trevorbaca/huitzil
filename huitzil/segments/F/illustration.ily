F_Global_Rests = {                                                             %! extern
    R1 * 1                                                                     %! _make_global_rests
    R1 * 3/4                                                                   %! _make_global_rests
    R1 * 3/4                                                                   %! _make_global_rests
    R1 * 1                                                                     %! _make_global_rests
    R1 * 1                                                                     %! _make_global_rests
    R1 * 3/4                                                                   %! _make_global_rests
    R1 * 3/4                                                                   %! _make_global_rests
    R1 * 1                                                                     %! _make_global_rests
    R1 * 1                                                                     %! _make_global_rests
    R1 * 3/4                                                                   %! _make_global_rests
    R1 * 3/4                                                                   %! _make_global_rests
    R1 * 1                                                                     %! _make_global_rests
    R1 * 1                                                                     %! _make_global_rests
    R1 * 3/4                                                                   %! _make_global_rests
    R1 * 3/4                                                                   %! _make_global_rests
    R1 * 1                                                                     %! _make_global_rests
    R1 * 1                                                                     %! _make_global_rests
    R1 * 3/4                                                                   %! _make_global_rests
    R1 * 3/4                                                                   %! _make_global_rests
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
    R1 * 1                                                                     %! _make_global_rests
}                                                                              %! extern


F_Global_Skips = {                                                             %! extern
    {
        \time 1/1
        s1 * 1
    }
    {
        \time 3/4
        s1 * 3/4
    }
    {
        \time 3/4
        s1 * 3/4
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
        \time 3/4
        s1 * 3/4
    }
    {
        \time 3/4
        s1 * 3/4
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
        \time 3/4
        s1 * 3/4
    }
    {
        \time 3/4
        s1 * 3/4
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
        \time 3/4
        s1 * 3/4
    }
    {
        \time 3/4
        s1 * 3/4
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
        \time 3/4
        s1 * 3/4
    }
    {
        \time 3/4
        s1 * 3/4
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
    {
        \time 1/1
        s1 * 1
    }
    {
        \time 1/1
        s1 * 1
    }
}                                                                              %! extern


F_Metronome_Mark_Voice = {                                                     %! extern
    s1 * 1
    - \abjad-dashed-line-with-arrow
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
    \stopTextSpan
    - \abjad-dashed-line-with-arrow
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
    \stopTextSpan
    - \abjad-dashed-line-with-arrow
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
    \stopTextSpan
    - \abjad-dashed-line-with-arrow
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
    \stopTextSpan
    - \abjad-dashed-line-with-arrow
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
    s1 * 1
    s1 * 1
    s1 * 1
    \stopTextSpan
    - \abjad-dashed-line-with-arrow
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
    \stopTextSpan
    - \abjad-dashed-line-with-arrow
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
}                                                                              %! extern


F_Tremolo_Voice = {                                                            %! extern
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
}                                                                              %! extern


F_String_Contact_Point_Voice = {                                               %! extern
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
}                                                                              %! extern


F_Underlying_Dynamics_Voice = {                                                %! extern
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
}                                                                              %! extern


F_Bow_Staff = <<                                                               %! extern
    \context MetronomeMarkVoice = "Metronome_Mark_Voice"                       %! ScoreTemplate
    \with                                                                      %! ScoreTemplate
    {                                                                          %! ScoreTemplate
        \override TextScript.staff-padding = #5                                %! ScoreTemplate
        \override TextSpanner.staff-padding = #5.75                            %! ScoreTemplate
    }                                                                          %! ScoreTemplate
    \F_Metronome_Mark_Voice                                                    %! extern
    \context TremoloVoice = "Tremolo_Voice"                                    %! ScoreTemplate
    \F_Tremolo_Voice                                                           %! extern
    \context StringContactPointVoice = "String_Contact_Point_Voice"            %! ScoreTemplate
    \F_String_Contact_Point_Voice                                              %! extern
    \context UnderlyingDynamicsVoice = "Underlying_Dynamics_Voice"             %! ScoreTemplate
    \F_Underlying_Dynamics_Voice                                               %! extern
>>                                                                             %! extern


F_Pitch_Voice = {                                                              %! extern
    \clef "bass"
    a,1 * 35/2
    \glissando
    g,1 * 4
    \parenthesize
    g,1 * 4
    \glissando
    a,,1 * 4
}                                                                              %! extern


F_Pitch_Staff = {                                                              %! extern
    \context PitchVoice = "Pitch_Voice"                                        %! ScoreTemplate
    \F_Pitch_Voice                                                             %! extern
}                                                                              %! extern
