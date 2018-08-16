H_GlobalRests = {                                                              %! extern
    {   % measure
        \time 1/1
        s1 * 1
    }   % measure
    {   % measure
        s1 * 1
    }   % measure
    {   % measure
        #(ly:expect-warning "strange time signature found")
        \time 4/3
        s1 * 4/3
    }   % measure
    {   % measure
        \time 1/1
        s1 * 1
    }   % measure
    {   % measure
        #(ly:expect-warning "strange time signature found")
        \time 8/5
        s1 * 8/5
    }   % measure
    {   % measure
        \time 1/1
        s1 * 1
    }   % measure
    {   % measure
        #(ly:expect-warning "strange time signature found")
        \time 4/3
        s1 * 4/3
    }   % measure
    {   % measure
        \time 1/1
        s1 * 1
    }   % measure
    {   % measure
        #(ly:expect-warning "strange time signature found")
        \time 8/5
        s1 * 8/5
    }   % measure
    {   % measure
        \time 1/1
        s1 * 1
    }   % measure
    {   % measure
        #(ly:expect-warning "strange time signature found")
        \time 4/3
        s1 * 4/3
    }   % measure
    {   % measure
        \time 1/1
        s1 * 1
    }   % measure
    {   % measure
        #(ly:expect-warning "strange time signature found")
        \time 8/5
        s1 * 8/5
    }   % measure
    {   % measure
        \time 1/1
        s1 * 1
    }   % measure
    {   % measure
        #(ly:expect-warning "strange time signature found")
        \time 4/3
        s1 * 4/3
    }   % measure
    {   % measure
        \time 1/1
        s1 * 1
    }   % measure
    {   % measure
        #(ly:expect-warning "strange time signature found")
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
}                                                                              %! extern


H_GlobalSkips = {                                                              %! extern
    {   % measure
        s1 * 1
    }   % measure
    {   % measure
        s1 * 1
    }   % measure
    {   % measure
        #(ly:expect-warning "strange time signature found")
        \time 4/3
        s1 * 4/3
    }   % measure
    {   % measure
        \time 1/1
        s1 * 1
    }   % measure
    {   % measure
        #(ly:expect-warning "strange time signature found")
        \time 8/5
        s1 * 8/5
    }   % measure
    {   % measure
        \time 1/1
        s1 * 1
    }   % measure
    {   % measure
        #(ly:expect-warning "strange time signature found")
        \time 4/3
        s1 * 4/3
    }   % measure
    {   % measure
        \time 1/1
        s1 * 1
    }   % measure
    {   % measure
        #(ly:expect-warning "strange time signature found")
        \time 8/5
        s1 * 8/5
    }   % measure
    {   % measure
        \time 1/1
        s1 * 1
    }   % measure
    {   % measure
        #(ly:expect-warning "strange time signature found")
        \time 4/3
        s1 * 4/3
    }   % measure
    {   % measure
        \time 1/1
        s1 * 1
    }   % measure
    {   % measure
        #(ly:expect-warning "strange time signature found")
        \time 8/5
        s1 * 8/5
    }   % measure
    {   % measure
        \time 1/1
        s1 * 1
    }   % measure
    {   % measure
        #(ly:expect-warning "strange time signature found")
        \time 4/3
        s1 * 4/3
    }   % measure
    {   % measure
        \time 1/1
        s1 * 1
    }   % measure
    {   % measure
        #(ly:expect-warning "strange time signature found")
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
}                                                                              %! extern


H_MetronomeMarkVoice = {                                                       %! extern
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


H_TremoloVoice = {                                                             %! extern
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


H_StringContactPointVoice = {                                                  %! extern
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


H_UnderlyingDynamicsVoice = {                                                  %! extern
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


H_BowStaff = <<                                                                %! extern
    \context MetronomeMarkVoice = "MetronomeMarkVoice"                         %! ScoreTemplate
    \H_MetronomeMarkVoice                                                      %! extern
    \context TremoloVoice = "TremoloVoice"                                     %! ScoreTemplate
    \H_TremoloVoice                                                            %! extern
    \context StringContactPointVoice = "StringContactPointVoice"               %! ScoreTemplate
    \H_StringContactPointVoice                                                 %! extern
    \context UnderlyingDynamicsVoice = "UnderlyingDynamicsVoice"               %! ScoreTemplate
    \H_UnderlyingDynamicsVoice                                                 %! extern
>>                                                                             %! extern


H_PitchVoice = {                                                               %! extern
    \clef "bass"
    s1 * 124/15
    \parenthesize
    a,,1 * 107/15
    \glissando
    bf,,1 * 2/5
    \glissando
    \once \override NoteHead.duration-log = #2
    \once \override NoteHead.no-ledgers = ##t
    \once \override NoteHead.style = #'do
    \clef "treble"
    c'''1 * 164/15
}                                                                              %! extern


H_PitchStaff = {                                                               %! extern
    \context PitchVoice = "PitchVoice"                                         %! ScoreTemplate
    \H_PitchVoice                                                              %! extern
}                                                                              %! extern
