A_GlobalRests = {
    {   % measure
        \time 1/1
        s1 * 1
    }   % measure
    {   % measure
        \time 13/12
        s1 * 13/12
    }   % measure
    {   % measure
        \time 1/1
        s1 * 1
    }   % measure
    {   % measure
        \time 7/6
        s1 * 7/6
    }   % measure
    {   % measure
        \time 53/30
        s1 * 53/30
    }   % measure
    {   % measure
        \time 23/12
        s1 * 23/12
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
        \time 2/3
        s1 * 2/3
    }   % measure
    {   % measure
        \time 22/15
        s1 * 22/15
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
        \time 2/1
        s1 * 2
    }   % measure
    {   % measure
        \time 1/3
        s1 * 1/3
    }   % measure
    {   % measure
        \time 1/1
        s1 * 1
    }   % measure
    {   % measure
        \time 4/5
        s1 * 4/5
    }   % measure
    {   % measure
        \time 2/1
        s1 * 2
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
}


A_GlobalSkips = {
    {   % measure
        s1 * 1
    }   % measure
    {   % measure
        \time 13/12
        s1 * 13/12
    }   % measure
    {   % measure
        \time 1/1
        s1 * 1
    }   % measure
    {   % measure
        \time 7/6
        s1 * 7/6
    }   % measure
    {   % measure
        \time 53/30
        s1 * 53/30
    }   % measure
    {   % measure
        \time 23/12
        s1 * 23/12
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
        \time 2/3
        s1 * 2/3
    }   % measure
    {   % measure
        \time 22/15
        s1 * 22/15
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
        \time 2/1
        s1 * 2
    }   % measure
    {   % measure
        \time 1/3
        s1 * 1/3
    }   % measure
    {   % measure
        \time 1/1
        s1 * 1
    }   % measure
    {   % measure
        \time 4/5
        s1 * 4/5
    }   % measure
    {   % measure
        \time 2/1
        s1 * 2
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
}


A_MetronomeMarkVoice = {
    s1 * 1/2
    - \abjad_invisible_line
    - \tweak bound-details.left.text \markup {
        \concat
            {
                \abjad-metronome-mark-markup #2 #0 #1 #"44"
                \hspace
                    #0.5
            }
        }
    - \tweak bound-details.left-broken.text ##f
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
    - \tweak bound-details.left-broken.text ##f
    \startTextSpan
    s1 * 1
    s1 * 1
    s1 * 1
    \stopTextSpan
    - \abjad_invisible_line
    - \tweak bound-details.left.text \markup {
        \concat
            {
                \abjad-metronome-mark-markup #2 #0 #1 #"66"
                \hspace
                    #0.5
            }
        }
    - \tweak bound-details.left-broken.text ##f
    \startTextSpan
    s1 * 1/3
    \stopTextSpan
    - \abjad_invisible_line
    - \tweak bound-details.left.text \markup {
        \concat
            {
                \abjad-metronome-mark-markup #2 #0 #1 #"44"
                \hspace
                    #0.5
            }
        }
    - \tweak bound-details.left-broken.text ##f
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
    - \tweak bound-details.left-broken.text ##f
    \startTextSpan
    s1 * 1
    s1 * 1
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
    - \tweak bound-details.left-broken.text ##f
    \startTextSpan
}


A_TremoloVoice = {
    s1 * 1/2
    - \abjad_invisible_line
    - \tweak bound-details.left.text \markup {
        \concat
            {
                \upright
                    "trem. moderato"
                \hspace
                    #0.5
            }
        }
    - \tweak bound-details.left-broken.text ##f
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
    - \abjad_dashed_line_with_arrow
    - \tweak bound-details.left.text \markup {
        \concat
            {
                \upright
                    "trem. mod."
                \hspace
                    #0.5
            }
        }
    - \tweak bound-details.left-broken.text ##f
    \startTextSpan
    s1 * 1/3
    s1 * 1/3
    s1 * 1/3
    s1 * 1/5
    \stopTextSpan
    - \abjad_invisible_line
    - \tweak bound-details.left.text \markup {
        \concat
            {
                \upright
                    "trem. stretto"
                \hspace
                    #0.5
            }
        }
    - \tweak bound-details.left-broken.text ##f
    \startTextSpan
    s1 * 1/5
    s1 * 1/5
    s1 * 1/5
    s1 * 1
    s1 * 1
    \stopTextSpan
    - \abjad_dashed_line_with_arrow
    - \tweak bound-details.left.text \markup {
        \concat
            {
                \upright
                    "sub. trem. mod."
                \hspace
                    #0.5
            }
        }
    - \tweak bound-details.left-broken.text ##f
    \startTextSpan
    s1 * 1
    \stopTextSpan
    - \abjad_dashed_line_with_arrow
    - \tweak bound-details.left.text \markup {
        \concat
            {
                \upright
                    "più stretto"
                \hspace
                    #0.5
            }
        }
    - \tweak bound-details.left-broken.text ##f
    \startTextSpan
    s1 * 1
    \stopTextSpan
    - \abjad_dashed_line_with_arrow
    - \tweak bound-details.left.text \markup {
        \concat
            {
                \upright
                    "più largo"
                \hspace
                    #0.5
            }
        }
    - \tweak bound-details.left-broken.text ##f
    \startTextSpan
    s1 * 1
    \stopTextSpan
    - \abjad_invisible_line
    - \tweak bound-details.left.text \markup {
        \concat
            {
                \upright
                    "più stretto"
                \hspace
                    #0.5
            }
        }
    - \tweak bound-details.left-broken.text ##f
    \startTextSpan
    s1 * 1/3
    \stopTextSpan
    - \abjad_dashed_line_with_arrow
    - \tweak bound-details.left.text \markup {
        \concat
            {
                \upright
                    "sub. trem. mod."
                \hspace
                    #0.5
            }
        }
    - \tweak bound-details.left-broken.text ##f
    \startTextSpan
    s1 * 1/3
    s1 * 1/3
    s1 * 1/3
    s1 * 1/5
    \stopTextSpan
    - \abjad_invisible_line
    - \tweak bound-details.left.text \markup {
        \concat
            {
                \upright
                    "trem. stretto"
                \hspace
                    #0.5
            }
        }
    - \tweak bound-details.left-broken.text ##f
    \startTextSpan
    s1 * 1/5
    s1 * 1/5
    s1 * 1/5
    s1 * 1
    s1 * 1
    \stopTextSpan
    - \abjad_dashed_line_with_arrow
    - \tweak bound-details.left.text \markup {
        \concat
            {
                \upright
                    "sub. trem. mod."
                \hspace
                    #0.5
            }
        }
    - \tweak bound-details.left-broken.text ##f
    \startTextSpan
    s1 * 1
    \stopTextSpan
    - \abjad_dashed_line_with_arrow
    - \tweak bound-details.left.text \markup {
        \concat
            {
                \upright
                    "più stretto"
                \hspace
                    #0.5
            }
        }
    - \tweak bound-details.left-broken.text ##f
    \startTextSpan
    s1 * 1
    \stopTextSpan
    - \abjad_dashed_line_with_arrow
    - \tweak bound-details.left.text \markup {
        \concat
            {
                \upright
                    "più largo"
                \hspace
                    #0.5
            }
        }
    - \tweak bound-details.left-broken.text ##f
    \startTextSpan
    s1 * 1
    \stopTextSpan
    - \abjad_dashed_line_with_arrow
    - \tweak bound-details.left.text \markup {
        \concat
            {
                \upright
                    "più stretto"
                \hspace
                    #0.5
            }
        }
    - \tweak bound-details.left-broken.text ##f
    \startTextSpan
    s1 * 1
    \stopTextSpan
    - \abjad_dashed_line_with_arrow
    - \tweak bound-details.left.text \markup {
        \concat
            {
                \upright
                    "più largo"
                \hspace
                    #0.5
            }
        }
    - \tweak bound-details.left-broken.text ##f
    \startTextSpan
    s1 * 1
    \stopTextSpan
    - \abjad_invisible_line
    - \tweak bound-details.left.text \markup {
        \concat
            {
                \upright
                    "più stretto"
                \hspace
                    #0.5
            }
        }
    - \tweak bound-details.left-broken.text ##f
    \startTextSpan
}


A_StringContactPointVoice = {
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
}


A_UnderlyingDynamicsVoice = {
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
}


A_BowStaff = <<
    \context MetronomeMarkVoice = "MetronomeMarkVoice"
    \A_MetronomeMarkVoice
    \context TremoloVoice = "TremoloVoice"
    \A_TremoloVoice
    \context StringContactPointVoice = "StringContactPointVoice"
    \A_StringContactPointVoice
    \context UnderlyingDynamicsVoice = "UnderlyingDynamicsVoice"
    \A_UnderlyingDynamicsVoice
>>


A_PitchVoice = {
    \clef "bass"
    b,,1 * 539/20
}


A_PitchStaff = {
    \context PitchVoice = "PitchVoice"
    \A_PitchVoice
}
