\version "2.19.65"
\language "english"

#(ly:set-option 'relative-includes #t)

\include "../../stylesheets/flight-stylesheet.ily"

\score {
    \context Score = "Score" <<
        \context GlobalContext = "Global Context" <<
            \context GlobalRests = "Global Rests" {
                {
                    \time 1/1
                    s1 * 1
                }
                {
                    \time 13/12
                    s1 * 13/12
                }
                {
                    \time 1/1
                    s1 * 1
                }
                {
                    \time 7/6
                    s1 * 7/6
                }
                {
                    \time 53/30
                    s1 * 53/30
                }
                {
                    \time 23/12
                    s1 * 23/12
                }
                {
                    \time 1/1
                    s1 * 1
                }
                {
                    s1 * 1
                }
                {
                    \time 3/4
                    s1 * 3/4
                }
                {
                    \time 2/3
                    s1 * 2/3
                }
                {
                    \time 22/15
                    s1 * 22/15
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
                    \time 2/1
                    s1 * 2
                }
                {
                    \time 1/3
                    s1 * 1/3
                }
                {
                    \time 1/1
                    s1 * 1
                }
                {
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
            \context GlobalSkips = "Global Skips" {
                {
                    s1 * 1
                }
                {
                    \time 13/12
                    s1 * 13/12
                }
                {
                    \time 1/1
                    s1 * 1
                }
                {
                    \time 7/6
                    s1 * 7/6
                }
                {
                    \time 53/30
                    s1 * 53/30
                }
                {
                    \time 23/12
                    s1 * 23/12
                }
                {
                    \time 1/1
                    s1 * 1
                }
                {
                    s1 * 1
                }
                {
                    \time 3/4
                    s1 * 3/4
                }
                {
                    \time 2/3
                    s1 * 2/3
                }
                {
                    \time 22/15
                    s1 * 22/15
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
                    \time 2/1
                    s1 * 2
                }
                {
                    \time 1/3
                    s1 * 1/3
                }
                {
                    \time 1/1
                    s1 * 1
                }
                {
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
                \context TempoIndicatorVoice = "MetronomeMark Indicator Voice" {
                    s1 * 1/2 ^ \markup {
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
                    \once \override TextSpanner.arrow-width = 0.25
                    \once \override TextSpanner.bound-details.left-broken.padding = 0
                    \once \override TextSpanner.bound-details.left-broken.text = \markup {
                        \null
                        }
                    \once \override TextSpanner.bound-details.left.stencil-align-dir-y = -0.5
                    \once \override TextSpanner.bound-details.left.text = \markup {
                        \large
                            \upright
                                accel.
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
                                66
                            }
                        }
                    s1 * 1/3 ^ \markup {
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
                    s1 * 1/3
                    s1 * 1/3
                    s1 * 1/3
                    s1 * 1/5
                    s1 * 1/5
                    s1 * 1/5
                    s1 * 1/5
                    s1 * 1
                    \once \override TextSpanner.arrow-width = 0.25
                    \once \override TextSpanner.bound-details.left-broken.padding = 0
                    \once \override TextSpanner.bound-details.left-broken.text = \markup {
                        \null
                        }
                    \once \override TextSpanner.bound-details.left.stencil-align-dir-y = -0.5
                    \once \override TextSpanner.bound-details.left.text = \markup {
                        \large
                            \upright
                                accel.
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
                                88
                            }
                        }
                }
                \context TremoloIndicatorVoice = "Tremolo Indicator Voice" {
                    s1 * 1/2 ^ \markup {
                        \upright
                            "trem. moderato"
                        }
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
                    \once \override TextSpanner.arrow-width = 0.25
                    \once \override TextSpanner.bound-details.left-broken.text = ##f
                    \once \override TextSpanner.bound-details.left.stencil-align-dir-y = #center
                    \once \override TextSpanner.bound-details.left.text = \markup {
                        \concat
                            {
                                \upright
                                    "trem. mod."
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
                    s1 * 1/3 \startTextSpan
                    s1 * 1/3
                    s1 * 1/3
                    s1 * 1/3
                    s1 * 1/5 \stopTextSpan ^ \markup {
                        \upright
                            "trem. stretto"
                        }
                    s1 * 1/5
                    s1 * 1/5
                    s1 * 1/5
                    s1 * 1
                    \once \override TextSpanner.arrow-width = 0.25
                    \once \override TextSpanner.bound-details.left-broken.text = ##f
                    \once \override TextSpanner.bound-details.left.stencil-align-dir-y = #center
                    \once \override TextSpanner.bound-details.left.text = \markup {
                        \concat
                            {
                                \upright
                                    "sub. trem. mod."
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
                            "più stretto"
                        }
                    \once \override TextSpanner.arrow-width = 0.25
                    \once \override TextSpanner.bound-details.left-broken.text = ##f
                    \once \override TextSpanner.bound-details.left.stencil-align-dir-y = #center
                    \once \override TextSpanner.bound-details.left.text = \markup {
                        \concat
                            {
                                \upright
                                    "sub. trem. mod."
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
                    s1 * 1/3 \startTextSpan
                    s1 * 1/3
                    s1 * 1/3
                    s1 * 1/3
                    s1 * 1/5 \stopTextSpan ^ \markup {
                        \upright
                            "trem. stretto"
                        }
                    s1 * 1/5
                    s1 * 1/5
                    s1 * 1/5
                    s1 * 1
                    \once \override TextSpanner.arrow-width = 0.25
                    \once \override TextSpanner.bound-details.left-broken.text = ##f
                    \once \override TextSpanner.bound-details.left.stencil-align-dir-y = #center
                    \once \override TextSpanner.bound-details.left.text = \markup {
                        \concat
                            {
                                \upright
                                    "sub. trem. mod."
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
                            "più stretto"
                        }
                }
                \context BowLocationVoice = "Bow Location Voice" {
                    a''2 :16
                        _ \markup {
                            \dynamic
                                mfz
                            }
                    a''4 :16 \glissando
                        _ \markup {
                            \dynamic
                                mfz
                            }
                    f''4 :16 \glissando
                        _ \markup {
                            \dynamic
                                mfz
                            }
                    a''2 :16
                        _ \markup {
                            \dynamic
                                mfz
                            }
                    a''4 :16 \glissando
                        _ \markup {
                            \dynamic
                                mfz
                            }
                    \tweak edge-height #'(0.7 . 0)
                    \times 2/3 {
                        f''2 :16 \glissando
                            _ \markup {
                                \dynamic
                                    mfz
                                }
                    }
                    a''2 :16
                        _ \markup {
                            \dynamic
                                mfz
                            }
                    a''4 :16 \glissando
                        _ \markup {
                            \dynamic
                                mfz
                            }
                    f''4 :16
                        _ \markup {
                            \dynamic
                                mfz
                            }
                    \tweak edge-height #'(0.7 . 0)
                    \times 2/3 {
                        f''1 :16
                            _ \markup {
                                \dynamic
                                    fz
                                }
                    }
                    f''4 :16 \glissando
                        _ \markup {
                            \dynamic
                                mpz
                            }
                    d''4 :16 \glissando
                        _ \markup {
                            \dynamic
                                mpz
                            }
                    f''2 :16
                        _ \markup {
                            \dynamic
                                mpz
                            }
                    \tweak edge-height #'(0.7 . 0)
                    \times 2/3 {
                        f''2 :16 \glissando
                            _ \markup {
                                \dynamic
                                    mpz
                                }
                    }
                    \tweak edge-height #'(0.7 . 0)
                    \times 2/3 {
                        d''2 :16 \glissando
                            _ \markup {
                                \dynamic
                                    mpz
                                }
                    }
                    \tweak edge-height #'(0.7 . 0)
                    \times 4/5 {
                        a''4 :16 \glissando
                            _ \markup {
                                \dynamic
                                    mfz
                                }
                    }
                    \tweak edge-height #'(0.7 . 0)
                    \times 4/5 {
                        f''4 :16 \glissando
                            _ \markup {
                                \dynamic
                                    mfz
                                }
                    }
                    \tweak edge-height #'(0.7 . 0)
                    \times 4/5 {
                        d''4 :16 \glissando
                            _ \markup {
                                \dynamic
                                    mfz
                                }
                    }
                    f''2 :16
                        _ \markup {
                            \dynamic
                                fz
                            }
                    \tweak edge-height #'(0.7 . 0)
                    \times 2/3 {
                        f''2 :16 \glissando
                            _ \markup {
                                \dynamic
                                    mpz
                                }
                    }
                    \tweak edge-height #'(0.7 . 0)
                    \times 2/3 {
                        d''2 :16 \glissando
                            _ \markup {
                                \dynamic
                                    mpz
                                }
                    }
                    a''4 :16 \glissando
                        _ \markup {
                            \dynamic
                                mpz
                            }
                    f''4 :16 \glissando
                        _ \markup {
                            \dynamic
                                mpz
                            }
                    d''4 :16
                        _ \markup {
                            \dynamic
                                mpz
                            }
                    d''1 :16
                        _ \markup {
                            \dynamic
                                fz
                            }
                    d''2 :16
                        _ \markup {
                            \dynamic
                                fz
                            }
                    d''4 :16 \glissando
                        _ \markup {
                            \dynamic
                                fz
                            }
                    b'4 :16 \glissando
                        _ \markup {
                            \dynamic
                                fz
                            }
                    d''2 :16
                        _ \markup {
                            \dynamic
                                fz
                            }
                    d''4 :16 \glissando
                        _ \markup {
                            \dynamic
                                fz
                            }
                    \tweak edge-height #'(0.7 . 0)
                    \times 2/3 {
                        b'2 :16 \glissando
                            _ \markup {
                                \dynamic
                                    mfz
                                }
                    }
                    \tweak edge-height #'(0.7 . 0)
                    \times 2/3 {
                        a''2 :16 \glissando
                            _ \markup {
                                \dynamic
                                    mfz
                                }
                    }
                    \tweak edge-height #'(0.7 . 0)
                    \times 2/3 {
                        f''2 :16 \glissando
                            _ \markup {
                                \dynamic
                                    mfz
                                }
                    }
                    \tweak edge-height #'(0.7 . 0)
                    \times 2/3 {
                        d''2 :16 \glissando
                            _ \markup {
                                \dynamic
                                    mfz
                                }
                    }
                    \tweak edge-height #'(0.7 . 0)
                    \times 4/5 {
                        a''4 :16 \glissando
                            _ \markup {
                                \dynamic
                                    mpz
                                }
                    }
                    \tweak edge-height #'(0.7 . 0)
                    \times 4/5 {
                        f''4 :16 \glissando
                            _ \markup {
                                \dynamic
                                    mpz
                                }
                    }
                    \tweak edge-height #'(0.7 . 0)
                    \times 4/5 {
                        d''4 :16 \glissando
                            _ \markup {
                                \dynamic
                                    mpz
                                }
                    }
                    \tweak edge-height #'(0.7 . 0)
                    \times 4/5 {
                        b'4 :16
                            _ \markup {
                                \dynamic
                                    mpz
                                }
                    }
                    b'1 :16
                        _ \markup {
                            \dynamic
                                ffz
                            }
                    b'1 :16 \glissando
                        _ \markup {
                            \dynamic
                                ffz
                            }
                    g'1 :16
                        _ \markup {
                            \dynamic
                                ffz
                            }
                    g'1 :16 \glissando
                        _ \markup {
                            \dynamic
                                ffz
                            }
                    e'1 :16
                        _ \markup {
                            \dynamic
                                ffz
                            }
                    \tweak edge-height #'(0.7 . 0)
                    \times 2/3 {
                        b'2 :16 \glissando
                            _ \markup {
                                \dynamic
                                    fz
                                }
                    }
                    \tweak edge-height #'(0.7 . 0)
                    \times 2/3 {
                        a''2 :16 \glissando
                            _ \markup {
                                \dynamic
                                    mfz
                                }
                    }
                    \tweak edge-height #'(0.7 . 0)
                    \times 2/3 {
                        f''2 :16 \glissando
                            _ \markup {
                                \dynamic
                                    mfz
                                }
                    }
                    \tweak edge-height #'(0.7 . 0)
                    \times 2/3 {
                        d''2 :16 \glissando
                            _ \markup {
                                \dynamic
                                    mfz
                                }
                    }
                    \tweak edge-height #'(0.7 . 0)
                    \times 4/5 {
                        a''4 :16 \glissando
                            _ \markup {
                                \dynamic
                                    mpz
                                }
                    }
                    \tweak edge-height #'(0.7 . 0)
                    \times 4/5 {
                        f''4 :16 \glissando
                            _ \markup {
                                \dynamic
                                    mpz
                                }
                    }
                    \tweak edge-height #'(0.7 . 0)
                    \times 4/5 {
                        d''4 :16 \glissando
                            _ \markup {
                                \dynamic
                                    mpz
                                }
                    }
                    \tweak edge-height #'(0.7 . 0)
                    \times 4/5 {
                        b'4 :16
                            _ \markup {
                                \dynamic
                                    mpz
                                }
                    }
                    b'1 :16
                        _ \markup {
                            \dynamic
                                ffz
                            }
                    b'1 :16 \glissando
                        _ \markup {
                            \dynamic
                                ffz
                            }
                    g'1 :16
                        _ \markup {
                            \dynamic
                                ffz
                            }
                    g'1 :16 \glissando
                        _ \markup {
                            \dynamic
                                ffz
                            }
                    e'1 :16
                        _ \markup {
                            \dynamic
                                ffz
                            }
                    e'1 :16 \glissando
                        _ \markup {
                            \dynamic
                                ffz
                            }
                    c'1 :16
                        _ \markup {
                            \dynamic
                                ffz
                            }
                }
                \context UnderlyingDynamicsVoice = "Underlying Dynamics Voice" {
                    \once \override Hairpin.stencil = #constante-hairpin
                    s1 * 1/2 \mp \<
                    s1 * 1/4
                    s1 * 1/4
                    s1 * 1/2
                    s1 * 1/4
                    s1 * 1/3
                    s1 * 1/2
                    s1 * 1/4
                    s1 * 1/4
                    \once \override Hairpin.stencil = #constante-hairpin
                    s1 * 2/3 \p \<
                    s1 * 1/4
                    s1 * 1/4
                    s1 * 1/2
                    s1 * 1/3 \pp \<
                    s1 * 1/3
                    s1 * 1/5
                    s1 * 1/5
                    s1 * 1/5 \mf
                    \once \override Hairpin.stencil = #constante-hairpin
                    s1 * 1/2 \p \<
                    s1 * 1/3
                    s1 * 1/3
                    s1 * 1/4
                    s1 * 1/4
                    s1 * 1/4
                    \once \override Hairpin.stencil = #constante-hairpin
                    s1 * 1 \mf \<
                    s1 * 1/2
                    s1 * 1/4
                    s1 * 1/4
                    s1 * 1/2
                    s1 * 1/4
                    s1 * 1/3 \mp \>
                    s1 * 1/3
                    s1 * 1/3
                    s1 * 1/3
                    \once \override Hairpin.stencil = #constante-hairpin
                    s1 * 1/5 \ppp \<
                    s1 * 1/5
                    s1 * 1/5
                    s1 * 1/5
                    s1 * 1
                    s1 * 1 \p \<
                    s1 * 1
                    s1 * 1
                    s1 * 1 \mf
                    s1 * 1/3 \mp \>
                    s1 * 1/3
                    s1 * 1/3
                    s1 * 1/3
                    \once \override Hairpin.stencil = #constante-hairpin
                    s1 * 1/5 \ppp \<
                    s1 * 1/5
                    s1 * 1/5
                    s1 * 1/5
                    s1 * 1
                    s1 * 1 \p \<
                    s1 * 1
                    s1 * 1
                    s1 * 1
                    s1 * 1
                    s1 * 1 \f
                }
            >>
            \context PitchStaff = "Pitch Staff" {
                \context PitchVoice = "Pitch Voice" {
                    \clef "bass"
                    s1 * 539/20
                }
            }
        >>
    >>
}