G_Global_Rests = {                                                             %! extern
    R1 * 1                                                                     %! _make_global_rests
    R1 * 13/12                                                                 %! _make_global_rests
    R1 * 1                                                                     %! _make_global_rests
    R1 * 7/6                                                                   %! _make_global_rests
    R1 * 53/30                                                                 %! _make_global_rests
    R1 * 23/12                                                                 %! _make_global_rests
    R1 * 1                                                                     %! _make_global_rests
    R1 * 1                                                                     %! _make_global_rests
    R1 * 3/4                                                                   %! _make_global_rests
    R1 * 2/3                                                                   %! _make_global_rests
    R1 * 22/15                                                                 %! _make_global_rests
    R1 * 1                                                                     %! _make_global_rests
    R1 * 1                                                                     %! _make_global_rests
    R1 * 1                                                                     %! _make_global_rests
    R1 * 2                                                                     %! _make_global_rests
    R1 * 1/3                                                                   %! _make_global_rests
    R1 * 1                                                                     %! _make_global_rests
    R1 * 4/5                                                                   %! _make_global_rests
    R1 * 2                                                                     %! _make_global_rests
    R1 * 1                                                                     %! _make_global_rests
    R1 * 1                                                                     %! _make_global_rests
    R1 * 1                                                                     %! _make_global_rests
    R1 * 1                                                                     %! _make_global_rests
    R1 * 1                                                                     %! _make_global_rests
}                                                                              %! extern


G_Global_Skips = {                                                             %! extern
    {
        \time 1/1
        s1 * 1
    }
    {
        #(ly:expect-warning "strange time signature found")
        \time 13/12
        s1 * 13/12
    }
    {
        \time 1/1
        s1 * 1
    }
    {
        #(ly:expect-warning "strange time signature found")
        \time 7/6
        s1 * 7/6
    }
    {
        #(ly:expect-warning "strange time signature found")
        \time 53/30
        s1 * 53/30
    }
    {
        #(ly:expect-warning "strange time signature found")
        \time 23/12
        s1 * 23/12
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
        #(ly:expect-warning "strange time signature found")
        \time 2/3
        s1 * 2/3
    }
    {
        #(ly:expect-warning "strange time signature found")
        \time 22/15
        s1 * 22/15
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
        \time 2/1
        s1 * 2
    }
    {
        #(ly:expect-warning "strange time signature found")
        \time 1/3
        s1 * 1/3
    }
    {
        \time 1/1
        s1 * 1
    }
    {
        #(ly:expect-warning "strange time signature found")
        \time 4/5
        s1 * 4/5
    }
    {
        \time 2/1
        s1 * 2
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


G_Metronome_Mark_Voice = {                                                     %! extern
    s1 * 1/2
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
    s1 * 1/4
    s1 * 1/4
    s1 * 1/2
    s1 * 1/4
    s1 * 1/3
    s1 * 1/2
    s1 * 1/4
    s1 * 1/4
    s1 * 2/3
    s1 * 1/4
    s1 * 1/4
    s1 * 1/2
    s1 * 1/3
    s1 * 1/3
    s1 * 1/5
    s1 * 1/5
    s1 * 1/5
    s1 * 1/2
    s1 * 1/3
    s1 * 1/3
    s1 * 1/4
    s1 * 1/4
    s1 * 1/4
    s1 * 1
    s1 * 1/2
    s1 * 1/4
    s1 * 1/4
    s1 * 1/2
    s1 * 1/4
    s1 * 1/3
    s1 * 1/3
    s1 * 1/3
    s1 * 1/3
    s1 * 1/5
    s1 * 1/5
    s1 * 1/5
    s1 * 1/5
    s1 * 1
    s1 * 1
    \stopTextSpan
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
    s1 * 1
    s1 * 1
    s1 * 1
    \stopTextSpan
    - \abjad-invisible-line
    - \tweak bound-details.left.text \markup {
        \concat
            {
                \abjad-metronome-mark-markup #2 #0 #1 #"66"
                \hspace
                    #0.5
            }
        }
    \startTextSpan
    s1 * 1/3
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
    s1 * 1/3
    s1 * 1/3
    s1 * 1/3
    s1 * 1/5
    s1 * 1/5
    s1 * 1/5
    s1 * 1/5
    s1 * 1
    s1 * 1
    \stopTextSpan
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
    - \tweak bound-details.right.text \markup {
        \abjad-metronome-mark-markup #2 #0 #1 #"88"
        }
    \startTextSpan
    s1 * 1
    s1 * 1
    s1 * 1
    s1 * 1
    s1 * 1
    \stopTextSpan
}                                                                              %! extern


G_Tremolo_Voice = {                                                            %! extern
    s1 * 1/2
    - \abjad-invisible-line
    - \tweak bound-details.left.text \markup {
        \concat
            {
                \upright
                    "trem. moderato"
                \hspace
                    #0.5
            }
        }
    \startTextSpan
    s1 * 1/4
    s1 * 1/4
    s1 * 1/2
    s1 * 1/4
    s1 * 1/3
    s1 * 1/2
    s1 * 1/4
    s1 * 1/4
    s1 * 2/3
    s1 * 1/4
    s1 * 1/4
    s1 * 1/2
    s1 * 1/3
    s1 * 1/3
    s1 * 1/5
    s1 * 1/5
    s1 * 1/5
    s1 * 1/2
    s1 * 1/3
    s1 * 1/3
    s1 * 1/4
    s1 * 1/4
    s1 * 1/4
    s1 * 1
    s1 * 1/2
    s1 * 1/4
    s1 * 1/4
    s1 * 1/2
    s1 * 1/4
    s1 * 1/3
    \stopTextSpan
    - \abjad-dashed-line-with-arrow
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
    s1 * 1/3
    s1 * 1/3
    s1 * 1/3
    s1 * 1/5
    \stopTextSpan
    - \abjad-invisible-line
    - \tweak bound-details.left.text \markup {
        \concat
            {
                \upright
                    "trem. stretto"
                \hspace
                    #0.5
            }
        }
    \startTextSpan
    s1 * 1/5
    s1 * 1/5
    s1 * 1/5
    s1 * 1
    s1 * 1
    \stopTextSpan
    - \abjad-dashed-line-with-arrow
    - \tweak bound-details.left.text \markup {
        \concat
            {
                \upright
                    "sub. trem. mod."
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
                    "più stretto"
                \hspace
                    #0.5
            }
        }
    \startTextSpan
    s1 * 1/3
    \stopTextSpan
    - \abjad-dashed-line-with-arrow
    - \tweak bound-details.left.text \markup {
        \concat
            {
                \upright
                    "sub. trem. mod."
                \hspace
                    #0.5
            }
        }
    \startTextSpan
    s1 * 1/3
    s1 * 1/3
    s1 * 1/3
    s1 * 1/5
    \stopTextSpan
    - \abjad-invisible-line
    - \tweak bound-details.left.text \markup {
        \concat
            {
                \upright
                    "trem. stretto"
                \hspace
                    #0.5
            }
        }
    \startTextSpan
    s1 * 1/5
    s1 * 1/5
    s1 * 1/5
    s1 * 1
    s1 * 1
    \stopTextSpan
    - \abjad-dashed-line-with-arrow
    - \tweak bound-details.left.text \markup {
        \concat
            {
                \upright
                    "sub. trem. mod."
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
    - \tweak bound-details.right.text \markup {
        \upright
            "più stretto"
        }
    \startTextSpan
    s1 * 1
    \stopTextSpan
}                                                                              %! extern


G_String_Contact_Point_Voice = {                                               %! extern
    a''2
    :16
    _ \markup {
        \dynamic
            mfz
        }
    a''4
    :16
    _ \markup {
        \dynamic
            mfz
        }
    \glissando
    f''4
    :16
    _ \markup {
        \dynamic
            mfz
        }
    \glissando
    a''2
    :16
    _ \markup {
        \dynamic
            mfz
        }
    a''4
    :16
    _ \markup {
        \dynamic
            mfz
        }
    \glissando
    \tweak edge-height #'(0.7 . 0)
    \times 2/3 {
        f''2
        :16
        _ \markup {
            \dynamic
                mfz
            }
        \glissando
    }
    a''2
    :16
    _ \markup {
        \dynamic
            mfz
        }
    a''4
    :16
    _ \markup {
        \dynamic
            mfz
        }
    \glissando
    f''4
    :16
    _ \markup {
        \dynamic
            mfz
        }
    \tweak edge-height #'(0.7 . 0)
    \times 2/3 {
        f''1
        :16
        _ \markup {
            \dynamic
                fz
            }
    }
    f''4
    :16
    _ \markup {
        \dynamic
            mpz
        }
    \glissando
    d''4
    :16
    _ \markup {
        \dynamic
            mpz
        }
    \glissando
    f''2
    :16
    _ \markup {
        \dynamic
            mpz
        }
    \tweak edge-height #'(0.7 . 0)
    \times 2/3 {
        f''2
        :16
        _ \markup {
            \dynamic
                mpz
            }
        \glissando
    }
    \tweak edge-height #'(0.7 . 0)
    \times 2/3 {
        d''2
        :16
        _ \markup {
            \dynamic
                mpz
            }
        \glissando
    }
    \tweak edge-height #'(0.7 . 0)
    \times 4/5 {
        a''4
        :16
        _ \markup {
            \dynamic
                mfz
            }
        \glissando
    }
    \tweak edge-height #'(0.7 . 0)
    \times 4/5 {
        f''4
        :16
        _ \markup {
            \dynamic
                mfz
            }
        \glissando
    }
    \tweak edge-height #'(0.7 . 0)
    \times 4/5 {
        d''4
        :16
        _ \markup {
            \dynamic
                mfz
            }
        \glissando
    }
    f''2
    :16
    _ \markup {
        \dynamic
            fz
        }
    \tweak edge-height #'(0.7 . 0)
    \times 2/3 {
        f''2
        :16
        _ \markup {
            \dynamic
                mpz
            }
        \glissando
    }
    \tweak edge-height #'(0.7 . 0)
    \times 2/3 {
        d''2
        :16
        _ \markup {
            \dynamic
                mpz
            }
        \glissando
    }
    a''4
    :16
    _ \markup {
        \dynamic
            mpz
        }
    \glissando
    f''4
    :16
    _ \markup {
        \dynamic
            mpz
        }
    \glissando
    d''4
    :16
    _ \markup {
        \dynamic
            mpz
        }
    d''1
    :16
    _ \markup {
        \dynamic
            fz
        }
    d''2
    :16
    _ \markup {
        \dynamic
            fz
        }
    d''4
    :16
    _ \markup {
        \dynamic
            fz
        }
    \glissando
    b'4
    :16
    _ \markup {
        \dynamic
            fz
        }
    \glissando
    d''2
    :16
    _ \markup {
        \dynamic
            fz
        }
    d''4
    :16
    _ \markup {
        \dynamic
            fz
        }
    \glissando
    \tweak edge-height #'(0.7 . 0)
    \times 2/3 {
        b'2
        :16
        _ \markup {
            \dynamic
                mfz
            }
        \glissando
    }
    \tweak edge-height #'(0.7 . 0)
    \times 2/3 {
        a''2
        :16
        _ \markup {
            \dynamic
                mfz
            }
        \glissando
    }
    \tweak edge-height #'(0.7 . 0)
    \times 2/3 {
        f''2
        :16
        _ \markup {
            \dynamic
                mfz
            }
        \glissando
    }
    \tweak edge-height #'(0.7 . 0)
    \times 2/3 {
        d''2
        :16
        _ \markup {
            \dynamic
                mfz
            }
        \glissando
    }
    \tweak edge-height #'(0.7 . 0)
    \times 4/5 {
        a''4
        :16
        _ \markup {
            \dynamic
                mpz
            }
        \glissando
    }
    \tweak edge-height #'(0.7 . 0)
    \times 4/5 {
        f''4
        :16
        _ \markup {
            \dynamic
                mpz
            }
        \glissando
    }
    \tweak edge-height #'(0.7 . 0)
    \times 4/5 {
        d''4
        :16
        _ \markup {
            \dynamic
                mpz
            }
        \glissando
    }
    \tweak edge-height #'(0.7 . 0)
    \times 4/5 {
        b'4
        :16
        _ \markup {
            \dynamic
                mpz
            }
    }
    b'1
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
    \glissando
    g'1
    :16
    _ \markup {
        \dynamic
            ffz
        }
    g'1
    :16
    _ \markup {
        \dynamic
            ffz
        }
    \glissando
    e'1
    :16
    _ \markup {
        \dynamic
            ffz
        }
    \tweak edge-height #'(0.7 . 0)
    \times 2/3 {
        b'2
        :16
        _ \markup {
            \dynamic
                fz
            }
        \glissando
    }
    \tweak edge-height #'(0.7 . 0)
    \times 2/3 {
        a''2
        :16
        _ \markup {
            \dynamic
                mfz
            }
        \glissando
    }
    \tweak edge-height #'(0.7 . 0)
    \times 2/3 {
        f''2
        :16
        _ \markup {
            \dynamic
                mfz
            }
        \glissando
    }
    \tweak edge-height #'(0.7 . 0)
    \times 2/3 {
        d''2
        :16
        _ \markup {
            \dynamic
                mfz
            }
        \glissando
    }
    \tweak edge-height #'(0.7 . 0)
    \times 4/5 {
        a''4
        :16
        _ \markup {
            \dynamic
                mpz
            }
        \glissando
    }
    \tweak edge-height #'(0.7 . 0)
    \times 4/5 {
        f''4
        :16
        _ \markup {
            \dynamic
                mpz
            }
        \glissando
    }
    \tweak edge-height #'(0.7 . 0)
    \times 4/5 {
        d''4
        :16
        _ \markup {
            \dynamic
                mpz
            }
        \glissando
    }
    \tweak edge-height #'(0.7 . 0)
    \times 4/5 {
        b'4
        :16
        _ \markup {
            \dynamic
                mpz
            }
    }
    b'1
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
    \glissando
    g'1
    :16
    _ \markup {
        \dynamic
            ffz
        }
    g'1
    :16
    _ \markup {
        \dynamic
            ffz
        }
    \glissando
    e'1
    :16
    _ \markup {
        \dynamic
            ffz
        }
    e'1
    :16
    _ \markup {
        \dynamic
            ffz
        }
    \glissando
    c'1
    :16
    _ \markup {
        \dynamic
            ffz
        }
}                                                                              %! extern


G_Underlying_Dynamics_Voice = {                                                %! extern
    \once \override Hairpin.stencil = #constante-hairpin
    s1 * 1/2
    \mp
    \<
    s1 * 1/4
    s1 * 1/4
    s1 * 1/2
    s1 * 1/4
    s1 * 1/3
    s1 * 1/2
    s1 * 1/4
    s1 * 1/4
    \once \override Hairpin.stencil = #constante-hairpin
    s1 * 2/3
    \p
    \<
    s1 * 1/4
    s1 * 1/4
    s1 * 1/2
    s1 * 1/3
    \pp
    \<
    s1 * 1/3
    s1 * 1/5
    s1 * 1/5
    s1 * 1/5
    \mf
    \once \override Hairpin.stencil = #constante-hairpin
    s1 * 1/2
    \p
    \<
    s1 * 1/3
    s1 * 1/3
    s1 * 1/4
    s1 * 1/4
    s1 * 1/4
    \once \override Hairpin.stencil = #constante-hairpin
    s1 * 1
    \mf
    \<
    s1 * 1/2
    s1 * 1/4
    s1 * 1/4
    s1 * 1/2
    s1 * 1/4
    s1 * 1/3
    \mp
    \>
    s1 * 1/3
    s1 * 1/3
    s1 * 1/3
    \once \override Hairpin.stencil = #constante-hairpin
    s1 * 1/5
    \ppp
    \<
    s1 * 1/5
    s1 * 1/5
    s1 * 1/5
    s1 * 1
    s1 * 1
    \p
    \<
    s1 * 1
    s1 * 1
    s1 * 1
    \mf
    s1 * 1/3
    \mp
    \>
    s1 * 1/3
    s1 * 1/3
    s1 * 1/3
    \once \override Hairpin.stencil = #constante-hairpin
    s1 * 1/5
    \ppp
    \<
    s1 * 1/5
    s1 * 1/5
    s1 * 1/5
    s1 * 1
    s1 * 1
    \p
    \<
    s1 * 1
    s1 * 1
    s1 * 1
    s1 * 1
    s1 * 1
    \f
}                                                                              %! extern


G_Bow_Staff = <<                                                               %! extern
    \context MetronomeMarkVoice = "Metronome_Mark_Voice"                       %! ScoreTemplate
    \G_Metronome_Mark_Voice                                                    %! extern
    \context TremoloVoice = "Tremolo_Voice"                                    %! ScoreTemplate
    \G_Tremolo_Voice                                                           %! extern
    \context StringContactPointVoice = "String_Contact_Point_Voice"            %! ScoreTemplate
    \G_String_Contact_Point_Voice                                              %! extern
    \context UnderlyingDynamicsVoice = "Underlying_Dynamics_Voice"             %! ScoreTemplate
    \G_Underlying_Dynamics_Voice                                               %! extern
>>                                                                             %! extern


G_Pitch_Voice = {                                                              %! extern
    \clef "bass"
    s1 * 539/20
}                                                                              %! extern


G_Pitch_Staff = {                                                              %! extern
    \context PitchVoice = "Pitch_Voice"                                        %! ScoreTemplate
    \G_Pitch_Voice                                                             %! extern
}                                                                              %! extern
