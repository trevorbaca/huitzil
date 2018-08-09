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
    \startTextSpan
    s1 * 1
    s1 * 1
    s1 * 1
    s1 * 1
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
    \startTextSpan
    s1 * 1
    \stopTextSpan
}


D_TremoloVoice = {
    s1 * 1/4
    - \abjad_invisible_line
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
    - \abjad_dashed_line_with_arrow
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
    \startTextSpan
    s1 * 1
    \stopTextSpan
    - \abjad_invisible_line
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
    \context MetronomeMarkVoice = "MetronomeMarkVoice"                         %! ScoreTemplate
    \D_MetronomeMarkVoice                                                      %! extern
    \context TremoloVoice = "TremoloVoice"                                     %! ScoreTemplate
    \D_TremoloVoice                                                            %! extern
    \context StringContactPointVoice = "StringContactPointVoice"               %! ScoreTemplate
    \D_StringContactPointVoice                                                 %! extern
    \context UnderlyingDynamicsVoice = "UnderlyingDynamicsVoice"               %! ScoreTemplate
    \D_UnderlyingDynamicsVoice                                                 %! extern
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
    \context PitchVoice = "PitchVoice"                                         %! ScoreTemplate
    \D_PitchVoice                                                              %! extern
}
