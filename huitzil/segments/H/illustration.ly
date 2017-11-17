\version "2.19.80"
\language "english"

#(ly:set-option 'relative-includes #t)

\include "../../stylesheets/flight-stylesheet.ily"

\score {
    \context Score = "Score" <<
        \context GlobalContext = "Global Context" <<
            \context GlobalRests = "GlobalRests" {
                { % measure
                    \time 1/1
                    s1 * 1
                } % measure
                { % measure
                    s1 * 1
                } % measure
                { % measure
                    \time 4/3
                    s1 * 4/3
                } % measure
                { % measure
                    \time 1/1
                    s1 * 1
                } % measure
                { % measure
                    \time 8/5
                    s1 * 8/5
                } % measure
                { % measure
                    \time 1/1
                    s1 * 1
                } % measure
                { % measure
                    \time 4/3
                    s1 * 4/3
                } % measure
                { % measure
                    \time 1/1
                    s1 * 1
                } % measure
                { % measure
                    \time 8/5
                    s1 * 8/5
                } % measure
                { % measure
                    \time 1/1
                    s1 * 1
                } % measure
                { % measure
                    \time 4/3
                    s1 * 4/3
                } % measure
                { % measure
                    \time 1/1
                    s1 * 1
                } % measure
                { % measure
                    \time 8/5
                    s1 * 8/5
                } % measure
                { % measure
                    \time 1/1
                    s1 * 1
                } % measure
                { % measure
                    \time 4/3
                    s1 * 4/3
                } % measure
                { % measure
                    \time 1/1
                    s1 * 1
                } % measure
                { % measure
                    \time 8/5
                    s1 * 8/5
                } % measure
                { % measure
                    \time 1/1
                    s1 * 1
                } % measure
                { % measure
                    s1 * 1
                } % measure
                { % measure
                    s1 * 1
                } % measure
                { % measure
                    s1 * 1
                } % measure
                { % measure
                    s1 * 1
                } % measure
                { % measure
                    s1 * 1
                } % measure
            }
            \context GlobalSkips = "GlobalSkips" {
                { % measure
                    s1 * 1
                } % measure
                { % measure
                    s1 * 1
                } % measure
                { % measure
                    \time 4/3
                    s1 * 4/3
                } % measure
                { % measure
                    \time 1/1
                    s1 * 1
                } % measure
                { % measure
                    \time 8/5
                    s1 * 8/5
                } % measure
                { % measure
                    \time 1/1
                    s1 * 1
                } % measure
                { % measure
                    \time 4/3
                    s1 * 4/3
                } % measure
                { % measure
                    \time 1/1
                    s1 * 1
                } % measure
                { % measure
                    \time 8/5
                    s1 * 8/5
                } % measure
                { % measure
                    \time 1/1
                    s1 * 1
                } % measure
                { % measure
                    \time 4/3
                    s1 * 4/3
                } % measure
                { % measure
                    \time 1/1
                    s1 * 1
                } % measure
                { % measure
                    \time 8/5
                    s1 * 8/5
                } % measure
                { % measure
                    \time 1/1
                    s1 * 1
                } % measure
                { % measure
                    \time 4/3
                    s1 * 4/3
                } % measure
                { % measure
                    \time 1/1
                    s1 * 1
                } % measure
                { % measure
                    \time 8/5
                    s1 * 8/5
                } % measure
                { % measure
                    \time 1/1
                    s1 * 1
                } % measure
                { % measure
                    s1 * 1
                } % measure
                { % measure
                    s1 * 1
                } % measure
                { % measure
                    s1 * 1
                } % measure
                { % measure
                    s1 * 1
                } % measure
                { % measure
                    s1 * 1
                } % measure
            }
        >>
        \context PianoStaff = "Piano Staff" <<
            \context BowStaff = "Bow Staff" \with {
                \override StaffSymbol.line-count = #7
            } <<
                \context MetronomeMarkVoice = "MetronomeMarkVoice" {
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
                \context TremoloVoice = "TremoloVoice" {
                    s1 * 1/4 ^ \markup {
                        \whiteout
                            \upright
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
                                \whiteout
                                    \upright
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
                                \whiteout
                                    \upright
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
                                \whiteout
                                    \upright
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
                                \whiteout
                                    \upright
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
                        \whiteout
                            \upright
                                \upright
                                    "trem. mod."
                        }
                    s1 * 1
                }
                \context StringContactPointVoice = "StringContactPointVoice" {
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
                \context UnderlyingDynamicsVoice = "UnderlyingDynamicsVoice" {
                    \once \override Hairpin.stencil = #constante-hairpin
                    s1 * 1/4 \f \<
                    s1 * 1/4
                    s1 * 1/4
                    s1 * 1/4
                    s1 * 1 \mp \>
                    s1 * 2/3
                    s1 * 2/3 \p \<
                    s1 * 1 \mp \>
                    s1 * 2/5
                    s1 * 2/5
                    s1 * 2/5 \p \<
                    s1 * 2/5
                    s1 * 1 \mp \>
                    s1 * 2/3
                    s1 * 2/3 \p \<
                    s1 * 1 \mp \>
                    s1 * 2/5
                    s1 * 2/5
                    s1 * 2/5 \p \<
                    s1 * 2/5
                    s1 * 1 \mp \>
                    s1 * 2/3
                    s1 * 2/3 \p \<
                    s1 * 1 \mp \>
                    s1 * 2/5
                    s1 * 2/5
                    s1 * 2/5 \p \<
                    s1 * 2/5
                    \once \override Hairpin.stencil = #constante-hairpin
                    s1 * 1 \mp \<
                    s1 * 2/3
                    s1 * 2/3
                    \once \override Hairpin.stencil = #constante-hairpin
                    s1 * 1 \p \<
                    s1 * 2/5
                    s1 * 2/5
                    s1 * 2/5
                    s1 * 2/5
                    \once \override Hairpin.stencil = #constante-hairpin
                    s1 * 1 \pp \<
                    s1 * 1
                    s1 * 1
                    s1 * 1
                    s1 * 1 \p
                    s1 * 1 \!
                }
            >>
            \context PitchStaff = "PitchStaff" {
                \context PitchVoice = "PitchVoice" {
                    \clef "bass"
                    s1 * 124/15
                    \parenthesize
                    a,,1 * 107/15 \glissando
                    bf,,1 * 2/5 \glissando
                    \once \override NoteHead.duration-log = #2
                    \once \override NoteHead.no-ledgers = ##t
                    \once \override NoteHead.style = #'do
                    \clef "treble"
                    c'''1 * 164/15
                }
            }
        >>
    >>
}