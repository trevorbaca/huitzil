% 2017-04-04 13:52

\version "2.19.58"
\language "english"

#(ly:set-option 'relative-includes #t)

\include "../../stylesheets/flight-stylesheet.ily"

\header {
    composer = ##f
    title = ##f
}

\score {
    \context Score = "Score" <<
        \context TimeSignatureContext = "Time Signature Context" <<
            \context TimeSignatureContextMultimeasureRests = "Time Signature Context Multimeasure Rests" {
                {
                    \time 1/1
                    s1 * 1
                }
                {
                    s1 * 1
                }
                {
                    \time 4/3
                    s1 * 4/3
                }
                {
                    \time 1/1
                    s1 * 1
                }
                {
                    \time 8/5
                    s1 * 8/5
                }
                {
                    \time 1/1
                    s1 * 1
                }
                {
                    \time 4/3
                    s1 * 4/3
                }
                {
                    \time 1/1
                    s1 * 1
                }
                {
                    \time 8/5
                    s1 * 8/5
                }
                {
                    \time 1/1
                    s1 * 1
                }
                {
                    \time 4/3
                    s1 * 4/3
                }
                {
                    \time 1/1
                    s1 * 1
                }
                {
                    \time 8/5
                    s1 * 8/5
                }
                {
                    \time 1/1
                    s1 * 1
                }
                {
                    \time 4/3
                    s1 * 4/3
                }
                {
                    \time 1/1
                    s1 * 1
                }
                {
                    \time 8/5
                    s1 * 8/5
                }
                {
                    \time 1/1
                    s1 * 1
                }
                {
                    s1 * 1
                }
                {
                    s1 * 1
                }
                {
                    s1 * 1
                }
                {
                    s1 * 1
                }
                {
                    s1 * 1
                }
            }
            \context TimeSignatureContextSkips = "Time Signature Context Skips" {
                {
                    s1 * 1
                }
                {
                    s1 * 1
                }
                {
                    \time 4/3
                    s1 * 4/3
                }
                {
                    \time 1/1
                    s1 * 1
                }
                {
                    \time 8/5
                    s1 * 8/5
                }
                {
                    \time 1/1
                    s1 * 1
                }
                {
                    \time 4/3
                    s1 * 4/3
                }
                {
                    \time 1/1
                    s1 * 1
                }
                {
                    \time 8/5
                    s1 * 8/5
                }
                {
                    \time 1/1
                    s1 * 1
                }
                {
                    \time 4/3
                    s1 * 4/3
                }
                {
                    \time 1/1
                    s1 * 1
                }
                {
                    \time 8/5
                    s1 * 8/5
                }
                {
                    \time 1/1
                    s1 * 1
                }
                {
                    \time 4/3
                    s1 * 4/3
                }
                {
                    \time 1/1
                    s1 * 1
                }
                {
                    \time 8/5
                    s1 * 8/5
                }
                {
                    \time 1/1
                    s1 * 1
                }
                {
                    s1 * 1
                }
                {
                    s1 * 1
                }
                {
                    s1 * 1
                }
                {
                    s1 * 1
                }
                {
                    s1 * 1
                }
            }
        >>
        \context PianoStaff = "Piano Staff" <<
            \context BowStaff = "Bow Staff" \with {
                \override StaffSymbol.line-count = #7
            } <<
                \context TempoIndicatorVoice = "Tempo Indicator Voice" {
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
                    \once \override TextSpanner.arrow-width = 0.25
                    \once \override TextSpanner.bound-details.left-broken.padding = 0
                    \once \override TextSpanner.bound-details.left-broken.text = \markup {
                        \null
                        }
                    \once \override TextSpanner.bound-details.left.stencil-align-dir-y = -0.5
                    \once \override TextSpanner.bound-details.left.text = \markup {
                        \large
                            \upright
                                rit.
                        \hspace
                            #0.75
                        }
                    \once \override TextSpanner.bound-details.right-broken.arrow = ##f
                    \once \override TextSpanner.bound-details.right-broken.padding = 0
                    \once \override TextSpanner.bound-details.right-broken.text = ##f
                    \once \override TextSpanner.bound-details.right.arrow = ##t
                    \once \override TextSpanner.bound-details.right.padding = 2
                    \once \override TextSpanner.bound-details.right.text = ##f
                    \once \override TextSpanner.dash-fraction = 0.25
                    \once \override TextSpanner.dash-period = 1.5
                    s1 * 1 \startTextSpan
                    s1 * 1
                    s1 * 1
                    s1 * 1
                    s1 * 1 \stopTextSpan ^ \markup {
                        \fontsize
                            #-6
                            \general-align
                                #Y
                                #DOWN
                                \note-by-number
                                    #2
                                    #0
                                    #1
                        \upright
                            {
                                =
                                44
                            }
                        }
                    s1 * 1
                }
                \context TremoloIndicatorVoice = "Tremolo Indicator Voice" {
                    s1 * 1/4 ^ \markup {
                        \upright
                            "trem. mod."
                        }
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
                    \once \override TextSpanner.arrow-width = 0.25
                    \once \override TextSpanner.bound-details.left-broken.text = ##f
                    \once \override TextSpanner.bound-details.left.stencil-align-dir-y = #center
                    \once \override TextSpanner.bound-details.left.text = \markup {
                        \concat
                            {
                                \upright
                                    "sub. trem. più stretto"
                                \hspace
                                    #0.5
                            }
                        }
                    \once \override TextSpanner.bound-details.right-broken.arrow = ##f
                    \once \override TextSpanner.bound-details.right-broken.padding = 0
                    \once \override TextSpanner.bound-details.right.arrow = ##t
                    \once \override TextSpanner.bound-details.right.padding = 1.75
                    \once \override TextSpanner.bound-details.right.stencil-align-dir-y = #center
                    \once \override TextSpanner.dash-fraction = 0.25
                    \once \override TextSpanner.dash-period = 1.5
                    s1 * 1 \startTextSpan
                    \once \override TextSpanner.arrow-width = 0.25
                    \once \override TextSpanner.bound-details.left-broken.text = ##f
                    \once \override TextSpanner.bound-details.left.stencil-align-dir-y = #center
                    \once \override TextSpanner.bound-details.left.text = \markup {
                        \concat
                            {
                                \upright
                                    "più largo"
                                \hspace
                                    #0.5
                            }
                        }
                    \once \override TextSpanner.bound-details.right-broken.arrow = ##f
                    \once \override TextSpanner.bound-details.right-broken.padding = 0
                    \once \override TextSpanner.bound-details.right.arrow = ##t
                    \once \override TextSpanner.bound-details.right.padding = 1.75
                    \once \override TextSpanner.bound-details.right.stencil-align-dir-y = #center
                    \once \override TextSpanner.dash-fraction = 0.25
                    \once \override TextSpanner.dash-period = 1.5
                    s1 * 1 \stopTextSpan \startTextSpan
                    \once \override TextSpanner.arrow-width = 0.25
                    \once \override TextSpanner.bound-details.left-broken.text = ##f
                    \once \override TextSpanner.bound-details.left.stencil-align-dir-y = #center
                    \once \override TextSpanner.bound-details.left.text = \markup {
                        \concat
                            {
                                \upright
                                    "più stretto"
                                \hspace
                                    #0.5
                            }
                        }
                    \once \override TextSpanner.bound-details.right-broken.arrow = ##f
                    \once \override TextSpanner.bound-details.right-broken.padding = 0
                    \once \override TextSpanner.bound-details.right.arrow = ##t
                    \once \override TextSpanner.bound-details.right.padding = 1.75
                    \once \override TextSpanner.bound-details.right.stencil-align-dir-y = #center
                    \once \override TextSpanner.dash-fraction = 0.25
                    \once \override TextSpanner.dash-period = 1.5
                    s1 * 1 \stopTextSpan \startTextSpan
                    \once \override TextSpanner.arrow-width = 0.25
                    \once \override TextSpanner.bound-details.left-broken.text = ##f
                    \once \override TextSpanner.bound-details.left.stencil-align-dir-y = #center
                    \once \override TextSpanner.bound-details.left.text = \markup {
                        \concat
                            {
                                \upright
                                    "più largo"
                                \hspace
                                    #0.5
                            }
                        }
                    \once \override TextSpanner.bound-details.right-broken.arrow = ##f
                    \once \override TextSpanner.bound-details.right-broken.padding = 0
                    \once \override TextSpanner.bound-details.right.arrow = ##t
                    \once \override TextSpanner.bound-details.right.padding = 1.75
                    \once \override TextSpanner.bound-details.right.stencil-align-dir-y = #center
                    \once \override TextSpanner.dash-fraction = 0.25
                    \once \override TextSpanner.dash-period = 1.5
                    s1 * 1 \stopTextSpan \startTextSpan
                    s1 * 1 \stopTextSpan ^ \markup {
                        \upright
                            "trem. mod."
                        }
                    s1 * 1
                }
                \context BowLocationVoice = "Bow Location Voice" {
                    c'4 :16 \glissando
                        _ \markup {
                            \dynamic
                                ffz
                            }
                    e'4 :16 \glissando
                        _ \markup {
                            \dynamic
                                ffz
                            }
                    g'4 :16 \glissando
                        _ \markup {
                            \dynamic
                                ffz
                            }
                    b'4 :16
                        _ \markup {
                            \dynamic
                                ffz
                            }
                    b'1 :16
                        _ \markup {
                            \dynamic
                                ffz
                            }
                    \tweak edge-height #'(0.7 . 0)
                    \times 2/3 {
                        b'1 :16
                            _ \markup {
                                \dynamic
                                    fz
                                }
                    }
                    \tweak edge-height #'(0.7 . 0)
                    \times 2/3 {
                        b'1 :16
                            _ \markup {
                                \dynamic
                                    fffz
                                }
                    }
                    b'1 :16
                        _ \markup {
                            \dynamic
                                ffz
                            }
                    \tweak edge-height #'(0.7 . 0)
                    \times 4/5 {
                        b'2 :16
                            _ \markup {
                                \dynamic
                                    mfz
                                }
                    }
                    \tweak edge-height #'(0.7 . 0)
                    \times 4/5 {
                        b'2 :16
                            _ \markup {
                                \dynamic
                                    fz
                                }
                    }
                    \tweak edge-height #'(0.7 . 0)
                    \times 4/5 {
                        b'2 :16
                            _ \markup {
                                \dynamic
                                    ffz
                                }
                    }
                    \tweak edge-height #'(0.7 . 0)
                    \times 4/5 {
                        b'2 :16
                            _ \markup {
                                \dynamic
                                    fffz
                                }
                    }
                    b'1 :16
                        _ \markup {
                            \dynamic
                                ffz
                            }
                    \tweak edge-height #'(0.7 . 0)
                    \times 2/3 {
                        b'1 :16
                            _ \markup {
                                \dynamic
                                    fz
                                }
                    }
                    \tweak edge-height #'(0.7 . 0)
                    \times 2/3 {
                        b'1 :16
                            _ \markup {
                                \dynamic
                                    fffz
                                }
                    }
                    b'1 :16
                        _ \markup {
                            \dynamic
                                ffz
                            }
                    \tweak edge-height #'(0.7 . 0)
                    \times 4/5 {
                        b'2 :16
                            _ \markup {
                                \dynamic
                                    mfz
                                }
                    }
                    \tweak edge-height #'(0.7 . 0)
                    \times 4/5 {
                        b'2 :16
                            _ \markup {
                                \dynamic
                                    fz
                                }
                    }
                    \tweak edge-height #'(0.7 . 0)
                    \times 4/5 {
                        b'2 :16
                            _ \markup {
                                \dynamic
                                    ffz
                                }
                    }
                    \tweak edge-height #'(0.7 . 0)
                    \times 4/5 {
                        b'2 :16
                            _ \markup {
                                \dynamic
                                    fffz
                                }
                    }
                    b'1 :16
                        _ \markup {
                            \dynamic
                                ffz
                            }
                    \tweak edge-height #'(0.7 . 0)
                    \times 2/3 {
                        b'1 :16
                            _ \markup {
                                \dynamic
                                    fz
                                }
                    }
                    \tweak edge-height #'(0.7 . 0)
                    \times 2/3 {
                        b'1 :16
                            _ \markup {
                                \dynamic
                                    fffz
                                }
                    }
                    b'1 :16
                        _ \markup {
                            \dynamic
                                ffz
                            }
                    \tweak edge-height #'(0.7 . 0)
                    \times 4/5 {
                        b'2 :16
                            _ \markup {
                                \dynamic
                                    mfz
                                }
                    }
                    \tweak edge-height #'(0.7 . 0)
                    \times 4/5 {
                        b'2 :16
                            _ \markup {
                                \dynamic
                                    fz
                                }
                    }
                    \tweak edge-height #'(0.7 . 0)
                    \times 4/5 {
                        b'2 :16
                            _ \markup {
                                \dynamic
                                    ffz
                                }
                    }
                    \tweak edge-height #'(0.7 . 0)
                    \times 4/5 {
                        b'2 :16 \glissando
                            _ \markup {
                                \dynamic
                                    fffz
                                }
                    }
                    a''1 :16
                        _ \markup {
                            \dynamic
                                ffz
                            }
                    \tweak edge-height #'(0.7 . 0)
                    \times 2/3 {
                        a''1 :16
                            _ \markup {
                                \dynamic
                                    fz
                                }
                    }
                    \tweak edge-height #'(0.7 . 0)
                    \times 2/3 {
                        a''1 :16
                            _ \markup {
                                \dynamic
                                    fffz
                                }
                    }
                    a''1 :16
                        _ \markup {
                            \dynamic
                                ffz
                            }
                    \tweak edge-height #'(0.7 . 0)
                    \times 4/5 {
                        a''2 :16
                            _ \markup {
                                \dynamic
                                    mfz
                                }
                    }
                    \tweak edge-height #'(0.7 . 0)
                    \times 4/5 {
                        a''2 :16
                            _ \markup {
                                \dynamic
                                    fz
                                }
                    }
                    \tweak edge-height #'(0.7 . 0)
                    \times 4/5 {
                        a''2 :16
                            _ \markup {
                                \dynamic
                                    ffz
                                }
                    }
                    \tweak edge-height #'(0.7 . 0)
                    \times 4/5 {
                        a''2 :16
                            _ \markup {
                                \dynamic
                                    fffz
                                }
                    }
                    a''1 :16
                        _ \markup {
                            \dynamic
                                ffz
                            }
                    a''1 :16
                        _ \markup {
                            \dynamic
                                fz
                            }
                    a''1 :16
                        _ \markup {
                            \dynamic
                                fz
                            }
                    a''1 :16
                        _ \markup {
                            \dynamic
                                mfz
                            }
                    a''1 :16
                        _ \markup {
                            \dynamic
                                mfz
                            }
                    a''1 :16
                        _ \markup {
                            \dynamic
                                mpz
                            }
                }
                \context UnderlyingDynamicsVoice = "Underlying Dynamics Voice" {
                    \once \override Hairpin.stencil = #constante-hairpin
                    s1 * 1/4 \< \f
                    s1 * 1/4
                    s1 * 1/4
                    s1 * 1/4
                    s1 * 1 \> \mp
                    s1 * 2/3
                    s1 * 2/3 \< \p
                    s1 * 1 \> \mp
                    s1 * 2/5
                    s1 * 2/5
                    s1 * 2/5 \< \p
                    s1 * 2/5
                    s1 * 1 \> \mp
                    s1 * 2/3
                    s1 * 2/3 \< \p
                    s1 * 1 \> \mp
                    s1 * 2/5
                    s1 * 2/5
                    s1 * 2/5 \< \p
                    s1 * 2/5
                    s1 * 1 \> \mp
                    s1 * 2/3
                    s1 * 2/3 \< \p
                    s1 * 1 \> \mp
                    s1 * 2/5
                    s1 * 2/5
                    s1 * 2/5 \< \p
                    s1 * 2/5
                    \once \override Hairpin.stencil = #constante-hairpin
                    s1 * 1 \< \mp
                    s1 * 2/3
                    s1 * 2/3
                    \once \override Hairpin.stencil = #constante-hairpin
                    s1 * 1 \< \p
                    s1 * 2/5
                    s1 * 2/5
                    s1 * 2/5
                    s1 * 2/5
                    \once \override Hairpin.stencil = #constante-hairpin
                    s1 * 1 \< \pp
                    s1 * 1
                    s1 * 1
                    s1 * 1
                    s1 * 1 \p
                    s1 * 1 \!
                }
            >>
            \context Staff = "Pitch Staff" {
                \clef "bass"
                s1 * 124/15
                \parenthesize
                bf,,1 * 107/15 \glissando
                cf,1 * 2/5 \glissando
                \once \override NoteHead.duration-log = #2
                \once \override NoteHead.no-ledgers = ##t
                \once \override NoteHead.style = #'do
                \clef "treble"
                c'''1 * 164/15
            }
        >>
    >>
}