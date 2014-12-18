% 2014-12-18 13:05

\version "2.19.15"
\language "english"

#(ly:set-option 'relative-includes #t)

\include "../../stylesheets/flight-stylesheet.ily"

\header {
    composer = ##f
    title = ##f
}

\score {
    \context Score = "Score" <<
        \new PianoStaff <<
            \context BowStaff = "Bow Staff" \with {
                \override StaffSymbol #'line-count = #11
            } <<
                \context TimeSignatureVoice = "Time Signature Voice" {
                    {
                        \time 1/1
                        s1 * 1
                    }
                    {
                        \time 3/4
                        s1 * 3/4
                    }
                    {
                        s1 * 3/4
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
                        s1 * 3/4
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
                        s1 * 3/4
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
                        s1 * 3/4
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
                        s1 * 3/4
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
                    {
                        s1 * 1
                    }
                    {
                        s1 * 1
                    }
                }
                \context TempoIndicatorVoice = "Tempo Indicator Voice" \with {
                    \override TextScript #'staff-padding = #5
                    \override TextSpanner #'staff-padding = #5.75
                } {
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
                    s1 * 3/4
                    s1 * 3/4
                    s1 * 1 \stopTextSpan ^ \markup {
                        \smaller
                            \general-align
                                #Y
                                #DOWN
                                \note-by-number
                                    #2
                                    #0
                                    #1
                        \upright
                            " = 88"
                        }
                    \once \override TextSpanner.arrow-width = 0.25
                    \once \override TextSpanner.bound-details.left-broken.padding = 0
                    \once \override TextSpanner.bound-details.left-broken.text = \markup {
                        \null
                        }
                    \once \override TextSpanner.bound-details.left.stencil-align-dir-y = -0.5
                    \once \override TextSpanner.bound-details.left.text = \markup {
                        \smaller
                            \general-align
                                #Y
                                #DOWN
                                \note-by-number
                                    #2
                                    #0
                                    #1
                        \upright
                            " = 66"
                        \hspace
                            #1.25
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
                    s1 * 3/4
                    s1 * 3/4
                    s1 * 1 \stopTextSpan ^ \markup {
                        \smaller
                            \general-align
                                #Y
                                #DOWN
                                \note-by-number
                                    #2
                                    #0
                                    #1
                        \upright
                            " = 88"
                        }
                    \once \override TextSpanner.arrow-width = 0.25
                    \once \override TextSpanner.bound-details.left-broken.padding = 0
                    \once \override TextSpanner.bound-details.left-broken.text = \markup {
                        \null
                        }
                    \once \override TextSpanner.bound-details.left.stencil-align-dir-y = -0.5
                    \once \override TextSpanner.bound-details.left.text = \markup {
                        \smaller
                            \general-align
                                #Y
                                #DOWN
                                \note-by-number
                                    #2
                                    #0
                                    #1
                        \upright
                            " = 66"
                        \hspace
                            #1.25
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
                    s1 * 3/4
                    s1 * 3/4
                    s1 * 1 \stopTextSpan ^ \markup {
                        \smaller
                            \general-align
                                #Y
                                #DOWN
                                \note-by-number
                                    #2
                                    #0
                                    #1
                        \upright
                            " = 88"
                        }
                    \once \override TextSpanner.arrow-width = 0.25
                    \once \override TextSpanner.bound-details.left-broken.padding = 0
                    \once \override TextSpanner.bound-details.left-broken.text = \markup {
                        \null
                        }
                    \once \override TextSpanner.bound-details.left.stencil-align-dir-y = -0.5
                    \once \override TextSpanner.bound-details.left.text = \markup {
                        \smaller
                            \general-align
                                #Y
                                #DOWN
                                \note-by-number
                                    #2
                                    #0
                                    #1
                        \upright
                            " = 66"
                        \hspace
                            #1.25
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
                    s1 * 3/4
                    s1 * 3/4
                    s1 * 1 \stopTextSpan ^ \markup {
                        \smaller
                            \general-align
                                #Y
                                #DOWN
                                \note-by-number
                                    #2
                                    #0
                                    #1
                        \upright
                            " = 88"
                        }
                    \once \override TextSpanner.arrow-width = 0.25
                    \once \override TextSpanner.bound-details.left-broken.padding = 0
                    \once \override TextSpanner.bound-details.left-broken.text = \markup {
                        \null
                        }
                    \once \override TextSpanner.bound-details.left.stencil-align-dir-y = -0.5
                    \once \override TextSpanner.bound-details.left.text = \markup {
                        \smaller
                            \general-align
                                #Y
                                #DOWN
                                \note-by-number
                                    #2
                                    #0
                                    #1
                        \upright
                            " = 66"
                        \hspace
                            #1.25
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
                    s1 * 3/4
                    s1 * 3/4
                    s1 * 1 \stopTextSpan ^ \markup {
                        \smaller
                            \general-align
                                #Y
                                #DOWN
                                \note-by-number
                                    #2
                                    #0
                                    #1
                        \upright
                            " = 88"
                        }
                    s1 * 1
                    s1 * 1
                    s1 * 1
                    s1 * 1
                    \once \override TextSpanner.arrow-width = 0.25
                    \once \override TextSpanner.bound-details.left-broken.padding = 0
                    \once \override TextSpanner.bound-details.left-broken.text = \markup {
                        \null
                        }
                    \once \override TextSpanner.bound-details.left.stencil-align-dir-y = -0.5
                    \once \override TextSpanner.bound-details.left.text = \markup {
                        \smaller
                            \general-align
                                #Y
                                #DOWN
                                \note-by-number
                                    #2
                                    #0
                                    #1
                        \upright
                            " = 66"
                        \hspace
                            #1.25
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
                        \smaller
                            \general-align
                                #Y
                                #DOWN
                                \note-by-number
                                    #2
                                    #0
                                    #1
                        \upright
                            " = 88"
                        }
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
                    s1 * 1 \stopTextSpan ^ \markup {
                        \smaller
                            \general-align
                                #Y
                                #DOWN
                                \note-by-number
                                    #2
                                    #0
                                    #1
                        \upright
                            " = 66"
                        }
                }
                \context TremoloIndicatorVoice = "Tremolo Indicator Voice" {
                }
                \context BowLocationVoice = "Bow Location Voice" {
                    f1 :16
                        _ \markup {
                            \dynamic
                                fz
                            }
                    f2. :16 \glissando
                    a2. :16
                        _ \markup {
                            \dynamic
                                fz
                            }
                    a1 :16 \glissando
                    c'1 :16
                        _ \markup {
                            \dynamic
                                fz
                            }
                    c'2. :16 \glissando
                    e'2. :16
                        _ \markup {
                            \dynamic
                                fz
                            }
                    e'1 :16 \glissando
                    g'1 :16
                        _ \markup {
                            \dynamic
                                fz
                            }
                    g'2. :16 \glissando
                    b'2. :16
                        _ \markup {
                            \dynamic
                                fz
                            }
                    b'1 :16 \glissando
                    d''1 :16
                        _ \markup {
                            \dynamic
                                fz
                            }
                    d''2. :16 \glissando
                    f''2. :16
                        _ \markup {
                            \dynamic
                                fz
                            }
                    f''1 :16 \glissando
                    a''1 :16
                        _ \markup {
                            \dynamic
                                fz
                            }
                    a''2. :16 \glissando
                    c'''2. :16
                        _ \markup {
                            \dynamic
                                fz
                            }
                    c'''1 :16 \glissando
                    e'''1 :16
                        _ \markup {
                            \dynamic
                                fffz
                            }
                    e'''1 :16
                        _ \markup {
                            \dynamic
                                fffz
                            }
                    e'''1 :16
                        _ \markup {
                            \dynamic
                                fffz
                            }
                    e'''1 :16
                        _ \markup {
                            \dynamic
                                fffz
                            }
                    e'''1 :16
                        _ \markup {
                            \dynamic
                                fffz
                            }
                    e'''1 :16
                    e'''1 :16
                    e'''1 :16
                    e'''1 :16
                        _ \markup {
                            \dynamic
                                fffz
                            }
                    e'''1 :16
                        _ \markup {
                            \dynamic
                                fffz
                            }
                    e'''1 :16
                        _ \markup {
                            \dynamic
                                fffz
                            }
                    e'''1 :16
                        _ \markup {
                            \dynamic
                                fffz
                            }
                }
                \context UnderlyingDynamicsVoice = "Underlying Dynamics Voice" {
                    s1 * 1 \< \p
                    s1 * 3/4
                    s1 * 3/4
                    s1 * 1 \> \mf
                    s1 * 1 \< \p
                    s1 * 3/4
                    s1 * 3/4
                    s1 * 1 \> \mf
                    s1 * 1 \< \p
                    s1 * 3/4
                    s1 * 3/4
                    s1 * 1 \> \mf
                    s1 * 1 \< \p
                    s1 * 3/4
                    s1 * 3/4
                    s1 * 1 \> \mf
                    s1 * 1 \< \p
                    s1 * 3/4
                    s1 * 3/4
                    s1 * 1
                    s1 * 1
                    s1 * 1
                    s1 * 1 \ff
                    s1 * 1
                    s1 * 1 \< \mf
                    s1 * 1
                    s1 * 1
                    s1 * 1
                    s1 * 1 \> \ff
                    s1 * 1
                    s1 * 1
                    s1 * 1 \pp
                }
            >>
            \context Staff = "Pitch Staff" {
                \clef "bass"
                a,1 * 35/2 \glissando
                g,1 * 4
                \parenthesize
                g,1 * 4 \glissando
                a,,1 * 4
            }
        >>
    >>
}