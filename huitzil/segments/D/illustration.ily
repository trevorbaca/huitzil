D_GlobalRests = {
    {   % measure
        \time 1/1
        s1 * 1
    }   % measure
    {   % measure
        s1 * 1
    }   % measure
    {   % measure
        \time 4/3
        s1 * 4/3
    }   % measure
    {   % measure
        \time 1/1
        s1 * 1
    }   % measure
    {   % measure
        \time 8/5
        s1 * 8/5
    }   % measure
    {   % measure
        \time 1/1
        s1 * 1
    }   % measure
    {   % measure
        \time 4/3
        s1 * 4/3
    }   % measure
    {   % measure
        \time 1/1
        s1 * 1
    }   % measure
    {   % measure
        \time 8/5
        s1 * 8/5
    }   % measure
    {   % measure
        \time 1/1
        s1 * 1
    }   % measure
    {   % measure
        \time 4/3
        s1 * 4/3
    }   % measure
    {   % measure
        \time 1/1
        s1 * 1
    }   % measure
    {   % measure
        \time 8/5
        s1 * 8/5
    }   % measure
    {   % measure
        \time 1/1
        s1 * 1
    }   % measure
    {   % measure
        \time 4/3
        s1 * 4/3
    }   % measure
    {   % measure
        \time 1/1
        s1 * 1
    }   % measure
    {   % measure
        \time 8/5
        s1 * 8/5
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
}


D_GlobalSkips = {
    {   % measure
        s1 * 1
    }   % measure
    {   % measure
        s1 * 1
    }   % measure
    {   % measure
        \time 4/3
        s1 * 4/3
    }   % measure
    {   % measure
        \time 1/1
        s1 * 1
    }   % measure
    {   % measure
        \time 8/5
        s1 * 8/5
    }   % measure
    {   % measure
        \time 1/1
        s1 * 1
    }   % measure
    {   % measure
        \time 4/3
        s1 * 4/3
    }   % measure
    {   % measure
        \time 1/1
        s1 * 1
    }   % measure
    {   % measure
        \time 8/5
        s1 * 8/5
    }   % measure
    {   % measure
        \time 1/1
        s1 * 1
    }   % measure
    {   % measure
        \time 4/3
        s1 * 4/3
    }   % measure
    {   % measure
        \time 1/1
        s1 * 1
    }   % measure
    {   % measure
        \time 8/5
        s1 * 8/5
    }   % measure
    {   % measure
        \time 1/1
        s1 * 1
    }   % measure
    {   % measure
        \time 4/3
        s1 * 4/3
    }   % measure
    {   % measure
        \time 1/1
        s1 * 1
    }   % measure
    {   % measure
        \time 8/5
        s1 * 8/5
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
}


D_MetronomeMarkVoice = {
    s1 * 1/4
    - \tweak Y-extent ##f
    - \baca_invisible_line_segment
    - \tweak bound-details.right.padding 1
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
    - \tweak Y-extent ##f
    - \tweak bound-details.left.text \markup {
        \large
            \upright
                rit.
        \hspace
            #1
        }
    - \baca_dashed_arrow
    - \tweak bound-details.right.padding 1
    - \tweak bound-details.left-broken.text \markup {
        \null
        }
    \startTextSpan
    s1 * 1
    s1 * 1
    s1 * 1
    s1 * 1
    \stopTextSpan
    - \tweak Y-extent ##f
    - \tweak bound-details.left.text \markup {
        \abjad-metronome-mark-markup #2 #0 #1 #"44"
        \hspace
            #1
        }
    - \baca_invisible_line_segment
    - \tweak bound-details.right.padding 1
    - \tweak bound-details.left-broken.text \markup {
        \null
        }
    \startTextSpan
    s1 * 1
    \stopTextSpan
}


D_TremoloVoice = {
    s1 * 1/4
    - \tweak Y-extent ##f
    - \tweak bound-details.left.text \markup {
        \concat
            {
                \upright
                    "trem. mod."
                \hspace
                    #0.25
            }
        }
    - \abjad_start_text_span_invisible
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
    - \tweak Y-extent ##f
    - \tweak bound-details.left.text \markup {
        \concat
            {
                \upright
                    "sub. trem. più stretto"
                \hspace
                    #0.5
            }
        }
    - \tweak arrow-width 0.25
    - \tweak dash-fraction 0.25
    - \tweak dash-period 1.5
    - \tweak bound-details.left-broken.text ##f
    - \tweak bound-details.left.stencil-align-dir-y #center
    - \tweak bound-details.right.arrow ##t
    - \tweak bound-details.right-broken.arrow ##f
    - \tweak bound-details.right-broken.padding 0
    - \tweak bound-details.right-broken.text ##f
    - \tweak bound-details.right.padding 1.75
    - \tweak bound-details.right.stencil-align-dir-y #center
    \startTextSpan
    s1 * 1
    \stopTextSpan
    - \tweak Y-extent ##f
    - \tweak bound-details.left.text \markup {
        \concat
            {
                \upright
                    "più largo"
                \hspace
                    #0.5
            }
        }
    - \tweak arrow-width 0.25
    - \tweak dash-fraction 0.25
    - \tweak dash-period 1.5
    - \tweak bound-details.left-broken.text ##f
    - \tweak bound-details.left.stencil-align-dir-y #center
    - \tweak bound-details.right.arrow ##t
    - \tweak bound-details.right-broken.arrow ##f
    - \tweak bound-details.right-broken.padding 0
    - \tweak bound-details.right-broken.text ##f
    - \tweak bound-details.right.padding 1.75
    - \tweak bound-details.right.stencil-align-dir-y #center
    \startTextSpan
    s1 * 1
    \stopTextSpan
    - \tweak Y-extent ##f
    - \tweak bound-details.left.text \markup {
        \concat
            {
                \upright
                    "più stretto"
                \hspace
                    #0.5
            }
        }
    - \tweak arrow-width 0.25
    - \tweak dash-fraction 0.25
    - \tweak dash-period 1.5
    - \tweak bound-details.left-broken.text ##f
    - \tweak bound-details.left.stencil-align-dir-y #center
    - \tweak bound-details.right.arrow ##t
    - \tweak bound-details.right-broken.arrow ##f
    - \tweak bound-details.right-broken.padding 0
    - \tweak bound-details.right-broken.text ##f
    - \tweak bound-details.right.padding 1.75
    - \tweak bound-details.right.stencil-align-dir-y #center
    \startTextSpan
    s1 * 1
    \stopTextSpan
    - \tweak Y-extent ##f
    - \tweak bound-details.left.text \markup {
        \concat
            {
                \upright
                    "più largo"
                \hspace
                    #0.5
            }
        }
    - \tweak arrow-width 0.25
    - \tweak dash-fraction 0.25
    - \tweak dash-period 1.5
    - \tweak bound-details.left-broken.text ##f
    - \tweak bound-details.left.stencil-align-dir-y #center
    - \tweak bound-details.right.arrow ##t
    - \tweak bound-details.right-broken.arrow ##f
    - \tweak bound-details.right-broken.padding 0
    - \tweak bound-details.right-broken.text ##f
    - \tweak bound-details.right.padding 1.75
    - \tweak bound-details.right.stencil-align-dir-y #center
    \startTextSpan
    s1 * 1
    \stopTextSpan
    - \tweak Y-extent ##f
    - \tweak bound-details.left.text \markup {
        \concat
            {
                \upright
                    "trem. mod."
                \hspace
                    #0.25
            }
        }
    - \abjad_start_text_span_invisible
    \startTextSpan
    s1 * 1
    \stopTextSpan
}


D_StringContactPointVoice = {
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
}


D_UnderlyingDynamicsVoice = {
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
}


D_BowStaff = <<
    \context MetronomeMarkVoice = "MetronomeMarkVoice"
    \D_MetronomeMarkVoice
    \context TremoloVoice = "TremoloVoice"
    \D_TremoloVoice
    \context StringContactPointVoice = "StringContactPointVoice"
    \D_StringContactPointVoice
    \context UnderlyingDynamicsVoice = "UnderlyingDynamicsVoice"
    \D_UnderlyingDynamicsVoice
>>


D_PitchVoice = {
    \clef "bass"
    s1 * 124/15
    \parenthesize
    bf,,1 * 107/15
    \glissando
    cf,1 * 2/5
    \glissando
    \once \override NoteHead.duration-log = #2
    \once \override NoteHead.no-ledgers = ##t
    \once \override NoteHead.style = #'do
    \clef "treble"
    c'''1 * 164/15
}


D_PitchStaff = {
    \context PitchVoice = "PitchVoice"
    \D_PitchVoice
}
