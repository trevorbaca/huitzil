% 2017-04-05 19:39

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
                    \time 3/4
                    s1 * 3/4
                }
                {
                    \time 1/3
                    s1 * 1/3
                }
                {
                    \time 3/4
                    s1 * 3/4
                }
                {
                    s1 * 3/4
                }
                {
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
                    \time 1/3
                    s1 * 1/3
                }
                {
                    \time 3/4
                    s1 * 3/4
                }
                {
                    s1 * 3/4
                }
                {
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
                    \time 1/3
                    s1 * 1/3
                }
                {
                    \time 1/1
                    s1 * 1
                }
            }
            \context TimeSignatureContextSkips = "Time Signature Context Skips" {
                {
                    \time 3/4
                    s1 * 3/4
                }
                {
                    \time 1/3
                    s1 * 1/3
                }
                {
                    \time 3/4
                    s1 * 3/4
                }
                {
                    s1 * 3/4
                }
                {
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
                    \time 1/3
                    s1 * 1/3
                }
                {
                    \time 3/4
                    s1 * 3/4
                }
                {
                    s1 * 3/4
                }
                {
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
                    \time 1/3
                    s1 * 1/3
                }
                {
                    \time 1/1
                    s1 * 1
                }
            }
        >>
        \context PianoStaff = "Piano Staff" <<
            \context BowStaff = "Bow Staff" \with {
                \override StaffSymbol.line-count = #11
            } <<
                \context TempoIndicatorVoice = "Tempo Indicator Voice" \with {
                    \override TextScript.staff-padding = #5
                    \override TextSpanner.staff-padding = #5.75
                } {
                    s1 * 3/4 ^ \markup {
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
                    s1 * 1/3
                    s1 * 3/4
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
                    s1 * 3/4 \startTextSpan
                    s1 * 1/3
                    s1 * 3/4
                    s1 * 1/2
                    s1 * 1/3
                    \once \override TextSpanner.arrow-width = 0.25
                    \once \override TextSpanner.bound-details.left-broken.padding = 0
                    \once \override TextSpanner.bound-details.left-broken.text = \markup {
                        \null
                        }
                    \once \override TextSpanner.bound-details.left.stencil-align-dir-y = -0.5
                    \once \override TextSpanner.bound-details.left.text = \markup {
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
                    s1 * 3/4 \stopTextSpan \startTextSpan
                    s1 * 1/2
                    s1 * 1/3
                    s1 * 3/4
                    s1 * 1
                    s1 * 3/4 \stopTextSpan ^ \markup {
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
                    s1 * 1/3
                    s1 * 3/4
                    s1 * 1/2
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
                    s1 * 3/4 \startTextSpan
                    s1 * 1/3
                    \once \override TextSpanner.arrow-width = 0.25
                    \once \override TextSpanner.bound-details.left-broken.padding = 0
                    \once \override TextSpanner.bound-details.left-broken.text = \markup {
                        \null
                        }
                    \once \override TextSpanner.bound-details.left.stencil-align-dir-y = -0.5
                    \once \override TextSpanner.bound-details.left.text = \markup {
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
                    s1 * 1 \stopTextSpan \startTextSpan
                    s1 * 3/4 \stopTextSpan ^ \markup {
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
                    s1 * 1/3
                    s1 * 3/4
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
                    s1 * 3/4 \startTextSpan
                    s1 * 1/3
                    s1 * 3/4
                    s1 * 1/2
                    s1 * 1/3
                    \once \override TextSpanner.arrow-width = 0.25
                    \once \override TextSpanner.bound-details.left-broken.padding = 0
                    \once \override TextSpanner.bound-details.left-broken.text = \markup {
                        \null
                        }
                    \once \override TextSpanner.bound-details.left.stencil-align-dir-y = -0.5
                    \once \override TextSpanner.bound-details.left.text = \markup {
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
                    s1 * 3/4 \stopTextSpan \startTextSpan
                    s1 * 1/2
                    s1 * 1/3
                    s1 * 3/4
                    s1 * 1
                    s1 * 3/4 \stopTextSpan ^ \markup {
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
                    s1 * 1/3
                    s1 * 3/4
                    s1 * 1/2
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
                    s1 * 3/4 \startTextSpan
                    s1 * 1/3
                    \once \override TextSpanner.arrow-width = 0.25
                    \once \override TextSpanner.bound-details.left-broken.padding = 0
                    \once \override TextSpanner.bound-details.left-broken.text = \markup {
                        \null
                        }
                    \once \override TextSpanner.bound-details.left.stencil-align-dir-y = -0.5
                    \once \override TextSpanner.bound-details.left.text = \markup {
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
                    s1 * 1 \stopTextSpan \startTextSpan
                    s1 * 3/4 \stopTextSpan ^ \markup {
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
                    s1 * 1/3
                    s1 * 3/4
                    s1 * 1/2
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
                    s1 * 3/4 \startTextSpan
                    s1 * 1/3
                    \once \override TextSpanner.arrow-width = 0.25
                    \once \override TextSpanner.bound-details.left-broken.padding = 0
                    \once \override TextSpanner.bound-details.left-broken.text = \markup {
                        \null
                        }
                    \once \override TextSpanner.bound-details.left.stencil-align-dir-y = -0.5
                    \once \override TextSpanner.bound-details.left.text = \markup {
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
                    s1 * 1 \stopTextSpan \startTextSpan
                    s1 * 3/4
                    s1 * 1/2
                    s1 * 3/4 \stopTextSpan ^ \markup {
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
                    s1 * 1/3
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
                    s1 * 3/4 \startTextSpan
                    s1 * 1/3
                    \once \override TextSpanner.arrow-width = 0.25
                    \once \override TextSpanner.bound-details.left-broken.padding = 0
                    \once \override TextSpanner.bound-details.left-broken.text = \markup {
                        \null
                        }
                    \once \override TextSpanner.bound-details.left.stencil-align-dir-y = -0.5
                    \once \override TextSpanner.bound-details.left.text = \markup {
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
                    s1 * 3/4 \stopTextSpan \startTextSpan
                    s1 * 1/2
                    s1 * 3/4 \stopTextSpan ^ \markup {
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
                    s1 * 1/3
                    s1 * 1
                }
                \context TremoloIndicatorVoice = "Tremolo Indicator Voice" {
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
                }
                \context BowLocationVoice = "Bow Location Voice" {
                    e'''2. :16
                        _ \markup {
                            \dynamic
                                fz
                            }
                    \tweak edge-height #'(0.7 . 0)
                    \times 2/3 {
                        e'''2 :16
                            _ \markup {
                                \dynamic
                                    mfz
                                }
                    }
                    e'''2. :16 \glissando
                        _ \markup {
                            \dynamic
                                mfz
                            }
                    c'''2. :16
                        _ \markup {
                            \dynamic
                                fz
                            }
                    \tweak edge-height #'(0.7 . 0)
                    \times 2/3 {
                        c'''2 :16
                            _ \markup {
                                \dynamic
                                    mfz
                                }
                    }
                    c'''2. :16 \glissando
                        _ \markup {
                            \dynamic
                                mfz
                            }
                    a''2 :16 \glissando
                    \tweak edge-height #'(0.7 . 0)
                    \times 2/3 {
                        c'''2 :16 \glissando
                    }
                    a''2. :16
                        _ \markup {
                            \dynamic
                                fz
                            }
                    a''2 :16 \glissando
                        _ \markup {
                            \dynamic
                                mfz
                            }
                    \tweak edge-height #'(0.7 . 0)
                    \times 2/3 {
                        c'''2 :16 \glissando
                    }
                    a''2. :16
                        _ \markup {
                            \dynamic
                                fz
                            }
                    a''1 :16 \glissando
                        _ \markup {
                            \dynamic
                                mfz
                            }
                    f''2. :16
                        _ \markup {
                            \dynamic
                                fz
                            }
                    \tweak edge-height #'(0.7 . 0)
                    \times 2/3 {
                        f''2 :16
                            _ \markup {
                                \dynamic
                                    mfz
                                }
                    }
                    f''2. :16 \glissando
                        _ \markup {
                            \dynamic
                                mfz
                            }
                    a''2 :16 \glissando
                    f''2. :16
                        _ \markup {
                            \dynamic
                                fz
                            }
                    \tweak edge-height #'(0.7 . 0)
                    \times 2/3 {
                        f''2 :16
                            _ \markup {
                                \dynamic
                                    mfz
                                }
                    }
                    f''1 :16 \glissando
                        _ \markup {
                            \dynamic
                                mfz
                            }
                    d''2. :16
                        _ \markup {
                            \dynamic
                                fz
                            }
                    \tweak edge-height #'(0.7 . 0)
                    \times 2/3 {
                        d''2 :16
                            _ \markup {
                                \dynamic
                                    mfz
                                }
                    }
                    d''2. :16 \glissando
                        _ \markup {
                            \dynamic
                                fz
                            }
                    b'2. :16
                        _ \markup {
                            \dynamic
                                mfz
                            }
                    \tweak edge-height #'(0.7 . 0)
                    \times 2/3 {
                        b'2 :16
                            _ \markup {
                                \dynamic
                                    mfz
                                }
                    }
                    b'2. :16 \glissando
                        _ \markup {
                            \dynamic
                                mfz
                            }
                    g'2 :16 \glissando
                    \tweak edge-height #'(0.7 . 0)
                    \times 2/3 {
                        b'2 :16 \glissando
                    }
                    g'2. :16
                        _ \markup {
                            \dynamic
                                mfz
                            }
                    g'2 :16 \glissando
                        _ \markup {
                            \dynamic
                                mfz
                            }
                    \tweak edge-height #'(0.7 . 0)
                    \times 2/3 {
                        b'2 :16 \glissando
                    }
                    g'2. :16
                        _ \markup {
                            \dynamic
                                fz
                            }
                    g'1 :16 \glissando
                        _ \markup {
                            \dynamic
                                mfz
                            }
                    e'2. :16
                        _ \markup {
                            \dynamic
                                fz
                            }
                    \tweak edge-height #'(0.7 . 0)
                    \times 2/3 {
                        e'2 :16
                            _ \markup {
                                \dynamic
                                    mfz
                                }
                    }
                    e'2. :16 \glissando
                        _ \markup {
                            \dynamic
                                mfz
                            }
                    g'2 :16 \glissando
                    e'2. :16
                        _ \markup {
                            \dynamic
                                fz
                            }
                    \tweak edge-height #'(0.7 . 0)
                    \times 2/3 {
                        e'2 :16
                            _ \markup {
                                \dynamic
                                    mfz
                                }
                    }
                    e'1 :16 \glissando
                        _ \markup {
                            \dynamic
                                mfz
                            }
                    c'2. :16
                        _ \markup {
                            \dynamic
                                fz
                            }
                    \tweak edge-height #'(0.7 . 0)
                    \times 2/3 {
                        c'2 :16
                            _ \markup {
                                \dynamic
                                    mfz
                                }
                    }
                    c'2. :16 \glissando
                        _ \markup {
                            \dynamic
                                mfz
                            }
                    e'2 :16 \glissando
                    c'2. :16
                        _ \markup {
                            \dynamic
                                fz
                            }
                    \tweak edge-height #'(0.7 . 0)
                    \times 2/3 {
                        c'2 :16
                            _ \markup {
                                \dynamic
                                    mfz
                                }
                    }
                    c'1 :16 \glissando
                        _ \markup {
                            \dynamic
                                mfz
                            }
                    a2. :16 \glissando
                    c'2 :16 \glissando
                    a2. :16
                        _ \markup {
                            \dynamic
                                fz
                            }
                    \tweak edge-height #'(0.7 . 0)
                    \times 2/3 {
                        a2 :16
                            _ \markup {
                                \dynamic
                                    mfz
                                }
                    }
                    a1 :16 \glissando
                        _ \markup {
                            \dynamic
                                mfz
                            }
                    f2. :16
                        _ \markup {
                            \dynamic
                                fz
                            }
                    \tweak edge-height #'(0.7 . 0)
                    \times 2/3 {
                        f2 :16
                            _ \markup {
                                \dynamic
                                    mfz
                                }
                    }
                    f2. :16 \glissando
                        _ \markup {
                            \dynamic
                                mfz
                            }
                    a2 :16 \glissando
                    f2. :16
                        _ \markup {
                            \dynamic
                                fz
                            }
                    \tweak edge-height #'(0.7 . 0)
                    \times 2/3 {
                        f2 :16
                            _ \markup {
                                \dynamic
                                    mfz
                                }
                    }
                    f1 :16
                        _ \markup {
                            \dynamic
                                fz
                            }
                }
                \context UnderlyingDynamicsVoice = "Underlying Dynamics Voice" {
                    s1 * 3/4 \< \p
                    s1 * 1/3
                    s1 * 3/4 \> \mp
                    s1 * 3/4 \< \p
                    s1 * 1/3
                    s1 * 3/4 \> \mp
                    s1 * 1/2
                    s1 * 1/3
                    s1 * 3/4 \< \p
                    s1 * 1/2 \> \mp
                    s1 * 1/3
                    s1 * 3/4 \< \p
                    s1 * 1 \> \mp
                    s1 * 3/4 \< \p
                    s1 * 1/3
                    s1 * 3/4 \> \mp
                    s1 * 1/2
                    s1 * 3/4 \< \p
                    s1 * 1/3
                    s1 * 1 \> \mp
                    s1 * 3/4 \< \p
                    s1 * 1/3
                    s1 * 3/4 \> \mp
                    s1 * 3/4 \< \p
                    s1 * 1/3
                    s1 * 3/4 \> \mp
                    s1 * 1/2
                    s1 * 1/3
                    s1 * 3/4 \< \p
                    s1 * 1/2 \> \mp
                    s1 * 1/3
                    s1 * 3/4 \< \p
                    s1 * 1 \> \mp
                    s1 * 3/4 \< \p
                    s1 * 1/3
                    s1 * 3/4 \> \mp
                    s1 * 1/2
                    s1 * 3/4 \< \p
                    s1 * 1/3
                    s1 * 1 \> \mp
                    s1 * 3/4 \< \p
                    s1 * 1/3
                    s1 * 3/4 \> \mp
                    s1 * 1/2
                    s1 * 3/4 \< \p
                    s1 * 1/3
                    s1 * 1 \> \mp
                    s1 * 3/4
                    s1 * 1/2
                    s1 * 3/4 \< \p
                    s1 * 1/3
                    s1 * 1 \> \mp
                    s1 * 3/4 \< \p
                    s1 * 1/3
                    s1 * 3/4 \> \mp
                    s1 * 1/2
                    s1 * 3/4 \< \p
                    s1 * 1/3
                    s1 * 1 \mp
                }
            >>
            \context Staff = "Pitch Staff" {
                \clef "bass"
                a,1 * 110/3
            }
        >>
    >>
}