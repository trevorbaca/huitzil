E_Global_Rests = {                                                             %! extern
    R1 * 3/4                                                                   %! _make_global_rests
    R1 * 1/3                                                                   %! _make_global_rests
    R1 * 3/4                                                                   %! _make_global_rests
    R1 * 3/4                                                                   %! _make_global_rests
    R1 * 1/3                                                                   %! _make_global_rests
    R1 * 3/4                                                                   %! _make_global_rests
    R1 * 1/2                                                                   %! _make_global_rests
    R1 * 1/3                                                                   %! _make_global_rests
    R1 * 3/4                                                                   %! _make_global_rests
    R1 * 1/2                                                                   %! _make_global_rests
    R1 * 1/3                                                                   %! _make_global_rests
    R1 * 3/4                                                                   %! _make_global_rests
    R1 * 1                                                                     %! _make_global_rests
    R1 * 3/4                                                                   %! _make_global_rests
    R1 * 1/3                                                                   %! _make_global_rests
    R1 * 3/4                                                                   %! _make_global_rests
    R1 * 1/2                                                                   %! _make_global_rests
    R1 * 3/4                                                                   %! _make_global_rests
    R1 * 1/3                                                                   %! _make_global_rests
    R1 * 1                                                                     %! _make_global_rests
    R1 * 3/4                                                                   %! _make_global_rests
    R1 * 1/3                                                                   %! _make_global_rests
    R1 * 3/4                                                                   %! _make_global_rests
    R1 * 3/4                                                                   %! _make_global_rests
    R1 * 1/3                                                                   %! _make_global_rests
    R1 * 3/4                                                                   %! _make_global_rests
    R1 * 1/2                                                                   %! _make_global_rests
    R1 * 1/3                                                                   %! _make_global_rests
    R1 * 3/4                                                                   %! _make_global_rests
    R1 * 1/2                                                                   %! _make_global_rests
    R1 * 1/3                                                                   %! _make_global_rests
    R1 * 3/4                                                                   %! _make_global_rests
    R1 * 1                                                                     %! _make_global_rests
    R1 * 3/4                                                                   %! _make_global_rests
    R1 * 1/3                                                                   %! _make_global_rests
    R1 * 3/4                                                                   %! _make_global_rests
    R1 * 1/2                                                                   %! _make_global_rests
    R1 * 3/4                                                                   %! _make_global_rests
    R1 * 1/3                                                                   %! _make_global_rests
    R1 * 1                                                                     %! _make_global_rests
    R1 * 3/4                                                                   %! _make_global_rests
    R1 * 1/3                                                                   %! _make_global_rests
    R1 * 3/4                                                                   %! _make_global_rests
    R1 * 1/2                                                                   %! _make_global_rests
    R1 * 3/4                                                                   %! _make_global_rests
    R1 * 1/3                                                                   %! _make_global_rests
    R1 * 1                                                                     %! _make_global_rests
    R1 * 3/4                                                                   %! _make_global_rests
    R1 * 1/2                                                                   %! _make_global_rests
    R1 * 3/4                                                                   %! _make_global_rests
    R1 * 1/3                                                                   %! _make_global_rests
    R1 * 1                                                                     %! _make_global_rests
    R1 * 3/4                                                                   %! _make_global_rests
    R1 * 1/3                                                                   %! _make_global_rests
    R1 * 3/4                                                                   %! _make_global_rests
    R1 * 1/2                                                                   %! _make_global_rests
    R1 * 3/4                                                                   %! _make_global_rests
    R1 * 1/3                                                                   %! _make_global_rests
    R1 * 1                                                                     %! _make_global_rests
}                                                                              %! extern


E_Global_Skips = {                                                             %! extern
    {
        \time 3/4
        s1 * 3/4
    }
    {
        #(ly:expect-warning "strange time signature found")
        \time 1/3
        s1 * 1/3
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
        #(ly:expect-warning "strange time signature found")
        \time 1/3
        s1 * 1/3
    }
    {
        \time 3/4
        s1 * 3/4
    }
    {
        \time 1/2
        s1 * 1/2
    }
    {
        #(ly:expect-warning "strange time signature found")
        \time 1/3
        s1 * 1/3
    }
    {
        \time 3/4
        s1 * 3/4
    }
    {
        \time 1/2
        s1 * 1/2
    }
    {
        #(ly:expect-warning "strange time signature found")
        \time 1/3
        s1 * 1/3
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
        \time 3/4
        s1 * 3/4
    }
    {
        #(ly:expect-warning "strange time signature found")
        \time 1/3
        s1 * 1/3
    }
    {
        \time 3/4
        s1 * 3/4
    }
    {
        \time 1/2
        s1 * 1/2
    }
    {
        \time 3/4
        s1 * 3/4
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
        \time 3/4
        s1 * 3/4
    }
    {
        #(ly:expect-warning "strange time signature found")
        \time 1/3
        s1 * 1/3
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
        #(ly:expect-warning "strange time signature found")
        \time 1/3
        s1 * 1/3
    }
    {
        \time 3/4
        s1 * 3/4
    }
    {
        \time 1/2
        s1 * 1/2
    }
    {
        #(ly:expect-warning "strange time signature found")
        \time 1/3
        s1 * 1/3
    }
    {
        \time 3/4
        s1 * 3/4
    }
    {
        \time 1/2
        s1 * 1/2
    }
    {
        #(ly:expect-warning "strange time signature found")
        \time 1/3
        s1 * 1/3
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
        \time 3/4
        s1 * 3/4
    }
    {
        #(ly:expect-warning "strange time signature found")
        \time 1/3
        s1 * 1/3
    }
    {
        \time 3/4
        s1 * 3/4
    }
    {
        \time 1/2
        s1 * 1/2
    }
    {
        \time 3/4
        s1 * 3/4
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
        \time 3/4
        s1 * 3/4
    }
    {
        #(ly:expect-warning "strange time signature found")
        \time 1/3
        s1 * 1/3
    }
    {
        \time 3/4
        s1 * 3/4
    }
    {
        \time 1/2
        s1 * 1/2
    }
    {
        \time 3/4
        s1 * 3/4
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
        \time 3/4
        s1 * 3/4
    }
    {
        \time 1/2
        s1 * 1/2
    }
    {
        \time 3/4
        s1 * 3/4
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
        \time 3/4
        s1 * 3/4
    }
    {
        #(ly:expect-warning "strange time signature found")
        \time 1/3
        s1 * 1/3
    }
    {
        \time 3/4
        s1 * 3/4
    }
    {
        \time 1/2
        s1 * 1/2
    }
    {
        \time 3/4
        s1 * 3/4
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
}                                                                              %! extern


E_Metronome_Mark_Voice = {                                                     %! extern
    s1 * 3/4
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
    s1 * 3/4
    s1 * 3/4
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
    s1 * 1/3
    s1 * 3/4
    s1 * 1/2
    s1 * 1/3
    s1 * 3/4
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
    s1 * 1/2
    s1 * 1/3
    s1 * 3/4
    s1 * 1
    s1 * 3/4
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
    s1 * 3/4
    s1 * 1/2
    s1 * 3/4
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
    s1 * 1/3
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
    s1 * 3/4
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
    s1 * 3/4
    s1 * 3/4
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
    s1 * 1/3
    s1 * 3/4
    s1 * 1/2
    s1 * 1/3
    s1 * 3/4
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
    s1 * 1/2
    s1 * 1/3
    s1 * 3/4
    s1 * 1
    s1 * 3/4
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
    s1 * 3/4
    s1 * 1/2
    s1 * 3/4
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
    s1 * 1/3
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
    s1 * 3/4
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
    s1 * 3/4
    s1 * 1/2
    s1 * 3/4
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
    s1 * 1/3
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
    s1 * 3/4
    s1 * 1/2
    s1 * 3/4
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
    s1 * 1
    s1 * 3/4
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
    s1 * 1/3
    s1 * 3/4
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
    s1 * 1/2
    s1 * 3/4
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
    s1 * 1
    \stopTextSpan
}                                                                              %! extern


E_Tremolo_Voice = {                                                            %! extern
    s1 * 3/4
    s1 * 1/3
    s1 * 3/4
    s1 * 3/4
    s1 * 1/3
    s1 * 3/4
    s1 * 1/2
    s1 * 1/3
    s1 * 3/4
    s1 * 1/2
    s1 * 1/3
    s1 * 3/4
    s1 * 1
    s1 * 3/4
    s1 * 1/3
    s1 * 3/4
    s1 * 1/2
    s1 * 3/4
    s1 * 1/3
    s1 * 1
    s1 * 3/4
    s1 * 1/3
    s1 * 3/4
    s1 * 3/4
    s1 * 1/3
    s1 * 3/4
    s1 * 1/2
    s1 * 1/3
    s1 * 3/4
    s1 * 1/2
    s1 * 1/3
    s1 * 3/4
    s1 * 1
    s1 * 3/4
    s1 * 1/3
    s1 * 3/4
    s1 * 1/2
    s1 * 3/4
    s1 * 1/3
    s1 * 1
    s1 * 3/4
    s1 * 1/3
    s1 * 3/4
    s1 * 1/2
    s1 * 3/4
    s1 * 1/3
    s1 * 1
    s1 * 3/4
    s1 * 1/2
    s1 * 3/4
    s1 * 1/3
    s1 * 1
    s1 * 3/4
    s1 * 1/3
    s1 * 3/4
    s1 * 1/2
    s1 * 3/4
    s1 * 1/3
    s1 * 1
}                                                                              %! extern


E_String_Contact_Point_Voice = {                                               %! extern
    e'''2.
    :16
    _ \markup {
        \dynamic
            fz
        }
    \tweak edge-height #'(0.7 . 0)
    \times 2/3 {
        e'''2
        :16
        _ \markup {
            \dynamic
                mfz
            }
    }
    e'''2.
    :16
    _ \markup {
        \dynamic
            mfz
        }
    \glissando
    c'''2.
    :16
    _ \markup {
        \dynamic
            fz
        }
    \tweak edge-height #'(0.7 . 0)
    \times 2/3 {
        c'''2
        :16
        _ \markup {
            \dynamic
                mfz
            }
    }
    c'''2.
    :16
    _ \markup {
        \dynamic
            mfz
        }
    \glissando
    a''2
    :16
    \glissando
    \tweak edge-height #'(0.7 . 0)
    \times 2/3 {
        c'''2
        :16
        \glissando
    }
    a''2.
    :16
    _ \markup {
        \dynamic
            fz
        }
    a''2
    :16
    _ \markup {
        \dynamic
            mfz
        }
    \glissando
    \tweak edge-height #'(0.7 . 0)
    \times 2/3 {
        c'''2
        :16
        \glissando
    }
    a''2.
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
    \glissando
    f''2.
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
                mfz
            }
    }
    f''2.
    :16
    _ \markup {
        \dynamic
            mfz
        }
    \glissando
    a''2
    :16
    \glissando
    f''2.
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
                mfz
            }
    }
    f''1
    :16
    _ \markup {
        \dynamic
            mfz
        }
    \glissando
    d''2.
    :16
    _ \markup {
        \dynamic
            fz
        }
    \tweak edge-height #'(0.7 . 0)
    \times 2/3 {
        d''2
        :16
        _ \markup {
            \dynamic
                mfz
            }
    }
    d''2.
    :16
    _ \markup {
        \dynamic
            fz
        }
    \glissando
    b'2.
    :16
    _ \markup {
        \dynamic
            mfz
        }
    \tweak edge-height #'(0.7 . 0)
    \times 2/3 {
        b'2
        :16
        _ \markup {
            \dynamic
                mfz
            }
    }
    b'2.
    :16
    _ \markup {
        \dynamic
            mfz
        }
    \glissando
    g'2
    :16
    \glissando
    \tweak edge-height #'(0.7 . 0)
    \times 2/3 {
        b'2
        :16
        \glissando
    }
    g'2.
    :16
    _ \markup {
        \dynamic
            mfz
        }
    g'2
    :16
    _ \markup {
        \dynamic
            mfz
        }
    \glissando
    \tweak edge-height #'(0.7 . 0)
    \times 2/3 {
        b'2
        :16
        \glissando
    }
    g'2.
    :16
    _ \markup {
        \dynamic
            fz
        }
    g'1
    :16
    _ \markup {
        \dynamic
            mfz
        }
    \glissando
    e'2.
    :16
    _ \markup {
        \dynamic
            fz
        }
    \tweak edge-height #'(0.7 . 0)
    \times 2/3 {
        e'2
        :16
        _ \markup {
            \dynamic
                mfz
            }
    }
    e'2.
    :16
    _ \markup {
        \dynamic
            mfz
        }
    \glissando
    g'2
    :16
    \glissando
    e'2.
    :16
    _ \markup {
        \dynamic
            fz
        }
    \tweak edge-height #'(0.7 . 0)
    \times 2/3 {
        e'2
        :16
        _ \markup {
            \dynamic
                mfz
            }
    }
    e'1
    :16
    _ \markup {
        \dynamic
            mfz
        }
    \glissando
    c'2.
    :16
    _ \markup {
        \dynamic
            fz
        }
    \tweak edge-height #'(0.7 . 0)
    \times 2/3 {
        c'2
        :16
        _ \markup {
            \dynamic
                mfz
            }
    }
    c'2.
    :16
    _ \markup {
        \dynamic
            mfz
        }
    \glissando
    e'2
    :16
    \glissando
    c'2.
    :16
    _ \markup {
        \dynamic
            fz
        }
    \tweak edge-height #'(0.7 . 0)
    \times 2/3 {
        c'2
        :16
        _ \markup {
            \dynamic
                mfz
            }
    }
    c'1
    :16
    _ \markup {
        \dynamic
            mfz
        }
    \glissando
    a2.
    :16
    \glissando
    c'2
    :16
    \glissando
    a2.
    :16
    _ \markup {
        \dynamic
            fz
        }
    \tweak edge-height #'(0.7 . 0)
    \times 2/3 {
        a2
        :16
        _ \markup {
            \dynamic
                mfz
            }
    }
    a1
    :16
    _ \markup {
        \dynamic
            mfz
        }
    \glissando
    f2.
    :16
    _ \markup {
        \dynamic
            fz
        }
    \tweak edge-height #'(0.7 . 0)
    \times 2/3 {
        f2
        :16
        _ \markup {
            \dynamic
                mfz
            }
    }
    f2.
    :16
    _ \markup {
        \dynamic
            mfz
        }
    \glissando
    a2
    :16
    \glissando
    f2.
    :16
    _ \markup {
        \dynamic
            fz
        }
    \tweak edge-height #'(0.7 . 0)
    \times 2/3 {
        f2
        :16
        _ \markup {
            \dynamic
                mfz
            }
    }
    f1
    :16
    _ \markup {
        \dynamic
            fz
        }
}                                                                              %! extern


E_Underlying_Dynamics_Voice = {                                                %! extern
    s1 * 3/4
    \p
    \<
    s1 * 1/3
    s1 * 3/4
    \mp
    \>
    s1 * 3/4
    \p
    \<
    s1 * 1/3
    s1 * 3/4
    \mp
    \>
    s1 * 1/2
    s1 * 1/3
    s1 * 3/4
    \p
    \<
    s1 * 1/2
    \mp
    \>
    s1 * 1/3
    s1 * 3/4
    \p
    \<
    s1 * 1
    \mp
    \>
    s1 * 3/4
    \p
    \<
    s1 * 1/3
    s1 * 3/4
    \mp
    \>
    s1 * 1/2
    s1 * 3/4
    \p
    \<
    s1 * 1/3
    s1 * 1
    \mp
    \>
    s1 * 3/4
    \p
    \<
    s1 * 1/3
    s1 * 3/4
    \mp
    \>
    s1 * 3/4
    \p
    \<
    s1 * 1/3
    s1 * 3/4
    \mp
    \>
    s1 * 1/2
    s1 * 1/3
    s1 * 3/4
    \p
    \<
    s1 * 1/2
    \mp
    \>
    s1 * 1/3
    s1 * 3/4
    \p
    \<
    s1 * 1
    \mp
    \>
    s1 * 3/4
    \p
    \<
    s1 * 1/3
    s1 * 3/4
    \mp
    \>
    s1 * 1/2
    s1 * 3/4
    \p
    \<
    s1 * 1/3
    s1 * 1
    \mp
    \>
    s1 * 3/4
    \p
    \<
    s1 * 1/3
    s1 * 3/4
    \mp
    \>
    s1 * 1/2
    s1 * 3/4
    \p
    \<
    s1 * 1/3
    s1 * 1
    \mp
    \>
    s1 * 3/4
    s1 * 1/2
    s1 * 3/4
    \p
    \<
    s1 * 1/3
    s1 * 1
    \mp
    \>
    s1 * 3/4
    \p
    \<
    s1 * 1/3
    s1 * 3/4
    \mp
    \>
    s1 * 1/2
    s1 * 3/4
    \p
    \<
    s1 * 1/3
    s1 * 1
    \mp
}                                                                              %! extern


E_Bow_Staff = <<                                                               %! extern
    \context MetronomeMarkVoice = "Metronome_Mark_Voice"                       %! ScoreTemplate
    \with                                                                      %! ScoreTemplate
    {                                                                          %! ScoreTemplate
        \override TextScript.staff-padding = #5                                %! ScoreTemplate
        \override TextSpanner.staff-padding = #5.75                            %! ScoreTemplate
    }                                                                          %! ScoreTemplate
    \E_Metronome_Mark_Voice                                                    %! extern
    \context TremoloVoice = "Tremolo_Voice"                                    %! ScoreTemplate
    \E_Tremolo_Voice                                                           %! extern
    \context StringContactPointVoice = "String_Contact_Point_Voice"            %! ScoreTemplate
    \E_String_Contact_Point_Voice                                              %! extern
    \context UnderlyingDynamicsVoice = "Underlying_Dynamics_Voice"             %! ScoreTemplate
    \E_Underlying_Dynamics_Voice                                               %! extern
>>                                                                             %! extern


E_Pitch_Voice = {                                                              %! extern
    \clef "bass"
    a,1 * 110/3
}                                                                              %! extern


E_Pitch_Staff = {                                                              %! extern
    \context PitchVoice = "Pitch_Voice"                                        %! ScoreTemplate
    \E_Pitch_Voice                                                             %! extern
}                                                                              %! extern
