B_GlobalRests = {                                                              %! extern
    R1 * 1                                                                     %! _make_global_rests
    R1 * 1                                                                     %! _make_global_rests
    R1 * 4/3                                                                   %! _make_global_rests
    R1 * 1                                                                     %! _make_global_rests
    R1 * 8/5                                                                   %! _make_global_rests
    R1 * 1                                                                     %! _make_global_rests
    R1 * 4/3                                                                   %! _make_global_rests
    R1 * 1                                                                     %! _make_global_rests
    R1 * 8/5                                                                   %! _make_global_rests
    R1 * 1                                                                     %! _make_global_rests
    R1 * 4/3                                                                   %! _make_global_rests
    R1 * 1                                                                     %! _make_global_rests
    R1 * 8/5                                                                   %! _make_global_rests
    R1 * 1                                                                     %! _make_global_rests
    R1 * 4/3                                                                   %! _make_global_rests
    R1 * 1                                                                     %! _make_global_rests
    R1 * 8/5                                                                   %! _make_global_rests
    R1 * 1                                                                     %! _make_global_rests
    R1 * 1                                                                     %! _make_global_rests
    R1 * 1                                                                     %! _make_global_rests
    R1 * 1                                                                     %! _make_global_rests
    R1 * 1                                                                     %! _make_global_rests
    R1 * 1                                                                     %! _make_global_rests
}                                                                              %! extern


B_GlobalSkips = {                                                              %! extern
    {
        \time 1/1
        s1 * 1
    }
    {
        \time 1/1
        s1 * 1
    }
    {
        #(ly:expect-warning "strange time signature found")
        \time 4/3
        s1 * 4/3
    }
    {
        \time 1/1
        s1 * 1
    }
    {
        #(ly:expect-warning "strange time signature found")
        \time 8/5
        s1 * 8/5
    }
    {
        \time 1/1
        s1 * 1
    }
    {
        #(ly:expect-warning "strange time signature found")
        \time 4/3
        s1 * 4/3
    }
    {
        \time 1/1
        s1 * 1
    }
    {
        #(ly:expect-warning "strange time signature found")
        \time 8/5
        s1 * 8/5
    }
    {
        \time 1/1
        s1 * 1
    }
    {
        #(ly:expect-warning "strange time signature found")
        \time 4/3
        s1 * 4/3
    }
    {
        \time 1/1
        s1 * 1
    }
    {
        #(ly:expect-warning "strange time signature found")
        \time 8/5
        s1 * 8/5
    }
    {
        \time 1/1
        s1 * 1
    }
    {
        #(ly:expect-warning "strange time signature found")
        \time 4/3
        s1 * 4/3
    }
    {
        \time 1/1
        s1 * 1
    }
    {
        #(ly:expect-warning "strange time signature found")
        \time 8/5
        s1 * 8/5
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


B_Metronome_Mark_Voice = {                                                     %! extern
    s1 * 1/4
    s1 * 1/4
    s1 * 1/4
    s1 * 1/4
    s1 * 1
    s1 * 2/3
    s1 * 2/3
    s1 * 1
    s1 * 2/5
    s1 * 2/5
    s1 * 2/5
    s1 * 2/5
    s1 * 1
    s1 * 2/3
    s1 * 2/3
    s1 * 1
    s1 * 2/5
    s1 * 2/5
    s1 * 2/5
    s1 * 2/5
    s1 * 1
    s1 * 2/3
    s1 * 2/3
    s1 * 1
    s1 * 2/5
    s1 * 2/5
    s1 * 2/5
    s1 * 2/5
    s1 * 1
    s1 * 2/3
    s1 * 2/3
    s1 * 1
    s1 * 2/5
    s1 * 2/5
    s1 * 2/5
    s1 * 2/5
    s1 * 1
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
    \startTextSpan
    s1 * 1
    s1 * 1
    s1 * 1
    s1 * 1
    \stopTextSpan
    - \abjad-invisible-line
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
}                                                                              %! extern


B_Tremolo_Voice = {                                                            %! extern
    s1 * 1/4
    - \abjad-invisible-line
    - \tweak bound-details.left.text \markup {
        \concat
            {
                \upright
                    "trem. mod."
                \hspace
                    #0.5
            }
        }
    \startTextSpan
    s1 * 1/4
    s1 * 1/4
    s1 * 1/4
    s1 * 1
    s1 * 2/3
    s1 * 2/3
    s1 * 1
    s1 * 2/5
    s1 * 2/5
    s1 * 2/5
    s1 * 2/5
    s1 * 1
    s1 * 2/3
    s1 * 2/3
    s1 * 1
    s1 * 2/5
    s1 * 2/5
    s1 * 2/5
    s1 * 2/5
    s1 * 1
    s1 * 2/3
    s1 * 2/3
    s1 * 1
    s1 * 2/5
    s1 * 2/5
    s1 * 2/5
    s1 * 2/5
    s1 * 1
    s1 * 2/3
    s1 * 2/3
    s1 * 1
    s1 * 2/5
    s1 * 2/5
    s1 * 2/5
    s1 * 2/5
    s1 * 1
    \stopTextSpan
    - \abjad-dashed-line-with-arrow
    - \tweak bound-details.left.text \markup {
        \concat
            {
                \upright
                    "sub. trem. più stretto"
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
                \upright
                    "più largo"
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
                \upright
                    "più stretto"
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
                \upright
                    "più largo"
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
                \upright
                    "trem. mod."
                \hspace
                    #0.5
            }
        }
    \startTextSpan
    s1 * 1
    \stopTextSpan
}                                                                              %! extern


B_String_Contact_Point_Voice = {                                               %! extern
    c'4
    :16
    _ \markup {
        \dynamic
            ffz
        }
    \glissando
    e'4
    :16
    _ \markup {
        \dynamic
            ffz
        }
    \glissando
    g'4
    :16
    _ \markup {
        \dynamic
            ffz
        }
    \glissando
    b'4
    :16
    _ \markup {
        \dynamic
            ffz
        }
    b'1
    :16
    _ \markup {
        \dynamic
            ffz
        }
    \tweak edge-height #'(0.7 . 0)
    \times 2/3 {
        b'1
        :16
        _ \markup {
            \dynamic
                fz
            }
    }
    \tweak edge-height #'(0.7 . 0)
    \times 2/3 {
        b'1
        :16
        _ \markup {
            \dynamic
                fffz
            }
    }
    b'1
    :16
    _ \markup {
        \dynamic
            ffz
        }
    \tweak edge-height #'(0.7 . 0)
    \times 4/5 {
        b'2
        :16
        _ \markup {
            \dynamic
                mfz
            }
    }
    \tweak edge-height #'(0.7 . 0)
    \times 4/5 {
        b'2
        :16
        _ \markup {
            \dynamic
                fz
            }
    }
    \tweak edge-height #'(0.7 . 0)
    \times 4/5 {
        b'2
        :16
        _ \markup {
            \dynamic
                ffz
            }
    }
    \tweak edge-height #'(0.7 . 0)
    \times 4/5 {
        b'2
        :16
        _ \markup {
            \dynamic
                fffz
            }
    }
    b'1
    :16
    _ \markup {
        \dynamic
            ffz
        }
    \tweak edge-height #'(0.7 . 0)
    \times 2/3 {
        b'1
        :16
        _ \markup {
            \dynamic
                fz
            }
    }
    \tweak edge-height #'(0.7 . 0)
    \times 2/3 {
        b'1
        :16
        _ \markup {
            \dynamic
                fffz
            }
    }
    b'1
    :16
    _ \markup {
        \dynamic
            ffz
        }
    \tweak edge-height #'(0.7 . 0)
    \times 4/5 {
        b'2
        :16
        _ \markup {
            \dynamic
                mfz
            }
    }
    \tweak edge-height #'(0.7 . 0)
    \times 4/5 {
        b'2
        :16
        _ \markup {
            \dynamic
                fz
            }
    }
    \tweak edge-height #'(0.7 . 0)
    \times 4/5 {
        b'2
        :16
        _ \markup {
            \dynamic
                ffz
            }
    }
    \tweak edge-height #'(0.7 . 0)
    \times 4/5 {
        b'2
        :16
        _ \markup {
            \dynamic
                fffz
            }
    }
    b'1
    :16
    _ \markup {
        \dynamic
            ffz
        }
    \tweak edge-height #'(0.7 . 0)
    \times 2/3 {
        b'1
        :16
        _ \markup {
            \dynamic
                fz
            }
    }
    \tweak edge-height #'(0.7 . 0)
    \times 2/3 {
        b'1
        :16
        _ \markup {
            \dynamic
                fffz
            }
    }
    b'1
    :16
    _ \markup {
        \dynamic
            ffz
        }
    \tweak edge-height #'(0.7 . 0)
    \times 4/5 {
        b'2
        :16
        _ \markup {
            \dynamic
                mfz
            }
    }
    \tweak edge-height #'(0.7 . 0)
    \times 4/5 {
        b'2
        :16
        _ \markup {
            \dynamic
                fz
            }
    }
    \tweak edge-height #'(0.7 . 0)
    \times 4/5 {
        b'2
        :16
        _ \markup {
            \dynamic
                ffz
            }
    }
    \tweak edge-height #'(0.7 . 0)
    \times 4/5 {
        b'2
        :16
        _ \markup {
            \dynamic
                fffz
            }
        \glissando
    }
    a''1
    :16
    _ \markup {
        \dynamic
            ffz
        }
    \tweak edge-height #'(0.7 . 0)
    \times 2/3 {
        a''1
        :16
        _ \markup {
            \dynamic
                fz
            }
    }
    \tweak edge-height #'(0.7 . 0)
    \times 2/3 {
        a''1
        :16
        _ \markup {
            \dynamic
                fffz
            }
    }
    a''1
    :16
    _ \markup {
        \dynamic
            ffz
        }
    \tweak edge-height #'(0.7 . 0)
    \times 4/5 {
        a''2
        :16
        _ \markup {
            \dynamic
                mfz
            }
    }
    \tweak edge-height #'(0.7 . 0)
    \times 4/5 {
        a''2
        :16
        _ \markup {
            \dynamic
                fz
            }
    }
    \tweak edge-height #'(0.7 . 0)
    \times 4/5 {
        a''2
        :16
        _ \markup {
            \dynamic
                ffz
            }
    }
    \tweak edge-height #'(0.7 . 0)
    \times 4/5 {
        a''2
        :16
        _ \markup {
            \dynamic
                fffz
            }
    }
    a''1
    :16
    _ \markup {
        \dynamic
            ffz
        }
    a''1
    :16
    _ \markup {
        \dynamic
            fz
        }
    a''1
    :16
    _ \markup {
        \dynamic
            fz
        }
    a''1
    :16
    _ \markup {
        \dynamic
            mfz
        }
    a''1
    :16
    _ \markup {
        \dynamic
            mfz
        }
    a''1
    :16
    _ \markup {
        \dynamic
            mpz
        }
}                                                                              %! extern


B_Underlying_Dynamics_Voice = {                                                %! extern
    \once \override Hairpin.stencil = #constante-hairpin
    s1 * 1/4
    \f
    \<
    s1 * 1/4
    s1 * 1/4
    s1 * 1/4
    s1 * 1
    \mp
    \>
    s1 * 2/3
    s1 * 2/3
    \p
    \<
    s1 * 1
    \mp
    \>
    s1 * 2/5
    s1 * 2/5
    s1 * 2/5
    \p
    \<
    s1 * 2/5
    s1 * 1
    \mp
    \>
    s1 * 2/3
    s1 * 2/3
    \p
    \<
    s1 * 1
    \mp
    \>
    s1 * 2/5
    s1 * 2/5
    s1 * 2/5
    \p
    \<
    s1 * 2/5
    s1 * 1
    \mp
    \>
    s1 * 2/3
    s1 * 2/3
    \p
    \<
    s1 * 1
    \mp
    \>
    s1 * 2/5
    s1 * 2/5
    s1 * 2/5
    \p
    \<
    s1 * 2/5
    \once \override Hairpin.stencil = #constante-hairpin
    s1 * 1
    \mp
    \<
    s1 * 2/3
    s1 * 2/3
    \once \override Hairpin.stencil = #constante-hairpin
    s1 * 1
    \p
    \<
    s1 * 2/5
    s1 * 2/5
    s1 * 2/5
    s1 * 2/5
    \once \override Hairpin.stencil = #constante-hairpin
    s1 * 1
    \pp
    \<
    s1 * 1
    s1 * 1
    s1 * 1
    s1 * 1
    \p
    s1 * 1
    \!
}                                                                              %! extern


B_Bow_Staff = <<                                                               %! extern
    \context MetronomeMarkVoice = "Metronome_Mark_Voice"                       %! ScoreTemplate
    \B_Metronome_Mark_Voice                                                    %! extern
    \context TremoloVoice = "Tremolo_Voice"                                    %! ScoreTemplate
    \B_Tremolo_Voice                                                           %! extern
    \context StringContactPointVoice = "String_Contact_Point_Voice"            %! ScoreTemplate
    \B_String_Contact_Point_Voice                                              %! extern
    \context UnderlyingDynamicsVoice = "Underlying_Dynamics_Voice"             %! ScoreTemplate
    \B_Underlying_Dynamics_Voice                                               %! extern
>>                                                                             %! extern


B_Pitch_Voice = {                                                              %! extern
    \clef "bass"
    s1 * 124/15
    \parenthesize
    b,,1 * 107/15
    \glissando
    c,1 * 2/5
    \glissando
    \once \override NoteHead.duration-log = #2
    \once \override NoteHead.no-ledgers = ##t
    \once \override NoteHead.style = #'do
    \clef "treble"
    c'''1 * 164/15
}                                                                              %! extern


B_Pitch_Staff = {                                                              %! extern
    \context PitchVoice = "Pitch_Voice"                                        %! ScoreTemplate
    \B_Pitch_Voice                                                             %! extern
}                                                                              %! extern
