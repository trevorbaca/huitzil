\version "2.19.80"
\language "english"

#(ly:set-option 'relative-includes #t)

\include "../../stylesheets/flight-stylesheet.ily"

\score {
    \context Score = "Score" <<
        \context GlobalContext = "Global Context" <<
            \context GlobalRests = "GlobalRests" {
                { % measure
                    \time 3/4
                    s1 * 3/4
                } % measure
                { % measure
                    \time 1/3
                    s1 * 1/3
                } % measure
                { % measure
                    \time 3/4
                    s1 * 3/4
                } % measure
                { % measure
                    s1 * 3/4
                } % measure
                { % measure
                    \time 1/3
                    s1 * 1/3
                } % measure
                { % measure
                    \time 3/4
                    s1 * 3/4
                } % measure
                { % measure
                    \time 1/2
                    s1 * 1/2
                } % measure
                { % measure
                    \time 1/3
                    s1 * 1/3
                } % measure
                { % measure
                    \time 3/4
                    s1 * 3/4
                } % measure
                { % measure
                    \time 1/2
                    s1 * 1/2
                } % measure
                { % measure
                    \time 1/3
                    s1 * 1/3
                } % measure
                { % measure
                    \time 3/4
                    s1 * 3/4
                } % measure
                { % measure
                    \time 1/1
                    s1 * 1
                } % measure
                { % measure
                    \time 3/4
                    s1 * 3/4
                } % measure
                { % measure
                    \time 1/3
                    s1 * 1/3
                } % measure
                { % measure
                    \time 3/4
                    s1 * 3/4
                } % measure
                { % measure
                    \time 1/2
                    s1 * 1/2
                } % measure
                { % measure
                    \time 3/4
                    s1 * 3/4
                } % measure
                { % measure
                    \time 1/3
                    s1 * 1/3
                } % measure
                { % measure
                    \time 1/1
                    s1 * 1
                } % measure
                { % measure
                    \time 3/4
                    s1 * 3/4
                } % measure
                { % measure
                    \time 1/3
                    s1 * 1/3
                } % measure
                { % measure
                    \time 3/4
                    s1 * 3/4
                } % measure
                { % measure
                    s1 * 3/4
                } % measure
                { % measure
                    \time 1/3
                    s1 * 1/3
                } % measure
                { % measure
                    \time 3/4
                    s1 * 3/4
                } % measure
                { % measure
                    \time 1/2
                    s1 * 1/2
                } % measure
                { % measure
                    \time 1/3
                    s1 * 1/3
                } % measure
                { % measure
                    \time 3/4
                    s1 * 3/4
                } % measure
                { % measure
                    \time 1/2
                    s1 * 1/2
                } % measure
                { % measure
                    \time 1/3
                    s1 * 1/3
                } % measure
                { % measure
                    \time 3/4
                    s1 * 3/4
                } % measure
                { % measure
                    \time 1/1
                    s1 * 1
                } % measure
                { % measure
                    \time 3/4
                    s1 * 3/4
                } % measure
                { % measure
                    \time 1/3
                    s1 * 1/3
                } % measure
                { % measure
                    \time 3/4
                    s1 * 3/4
                } % measure
                { % measure
                    \time 1/2
                    s1 * 1/2
                } % measure
                { % measure
                    \time 3/4
                    s1 * 3/4
                } % measure
                { % measure
                    \time 1/3
                    s1 * 1/3
                } % measure
                { % measure
                    \time 1/1
                    s1 * 1
                } % measure
                { % measure
                    \time 3/4
                    s1 * 3/4
                } % measure
                { % measure
                    \time 1/3
                    s1 * 1/3
                } % measure
                { % measure
                    \time 3/4
                    s1 * 3/4
                } % measure
                { % measure
                    \time 1/2
                    s1 * 1/2
                } % measure
                { % measure
                    \time 3/4
                    s1 * 3/4
                } % measure
                { % measure
                    \time 1/3
                    s1 * 1/3
                } % measure
                { % measure
                    \time 1/1
                    s1 * 1
                } % measure
                { % measure
                    \time 3/4
                    s1 * 3/4
                } % measure
                { % measure
                    \time 1/2
                    s1 * 1/2
                } % measure
                { % measure
                    \time 3/4
                    s1 * 3/4
                } % measure
                { % measure
                    \time 1/3
                    s1 * 1/3
                } % measure
                { % measure
                    \time 1/1
                    s1 * 1
                } % measure
                { % measure
                    \time 3/4
                    s1 * 3/4
                } % measure
                { % measure
                    \time 1/3
                    s1 * 1/3
                } % measure
                { % measure
                    \time 3/4
                    s1 * 3/4
                } % measure
                { % measure
                    \time 1/2
                    s1 * 1/2
                } % measure
                { % measure
                    \time 3/4
                    s1 * 3/4
                } % measure
                { % measure
                    \time 1/3
                    s1 * 1/3
                } % measure
                { % measure
                    \time 1/1
                    s1 * 1
                } % measure
            }
            \context GlobalSkips = "GlobalSkips" {
                { % measure
                    \time 3/4
                    s1 * 3/4
                } % measure
                { % measure
                    \time 1/3
                    s1 * 1/3
                } % measure
                { % measure
                    \time 3/4
                    s1 * 3/4
                } % measure
                { % measure
                    s1 * 3/4
                } % measure
                { % measure
                    \time 1/3
                    s1 * 1/3
                } % measure
                { % measure
                    \time 3/4
                    s1 * 3/4
                } % measure
                { % measure
                    \time 1/2
                    s1 * 1/2
                } % measure
                { % measure
                    \time 1/3
                    s1 * 1/3
                } % measure
                { % measure
                    \time 3/4
                    s1 * 3/4
                } % measure
                { % measure
                    \time 1/2
                    s1 * 1/2
                } % measure
                { % measure
                    \time 1/3
                    s1 * 1/3
                } % measure
                { % measure
                    \time 3/4
                    s1 * 3/4
                } % measure
                { % measure
                    \time 1/1
                    s1 * 1
                } % measure
                { % measure
                    \time 3/4
                    s1 * 3/4
                } % measure
                { % measure
                    \time 1/3
                    s1 * 1/3
                } % measure
                { % measure
                    \time 3/4
                    s1 * 3/4
                } % measure
                { % measure
                    \time 1/2
                    s1 * 1/2
                } % measure
                { % measure
                    \time 3/4
                    s1 * 3/4
                } % measure
                { % measure
                    \time 1/3
                    s1 * 1/3
                } % measure
                { % measure
                    \time 1/1
                    s1 * 1
                } % measure
                { % measure
                    \time 3/4
                    s1 * 3/4
                } % measure
                { % measure
                    \time 1/3
                    s1 * 1/3
                } % measure
                { % measure
                    \time 3/4
                    s1 * 3/4
                } % measure
                { % measure
                    s1 * 3/4
                } % measure
                { % measure
                    \time 1/3
                    s1 * 1/3
                } % measure
                { % measure
                    \time 3/4
                    s1 * 3/4
                } % measure
                { % measure
                    \time 1/2
                    s1 * 1/2
                } % measure
                { % measure
                    \time 1/3
                    s1 * 1/3
                } % measure
                { % measure
                    \time 3/4
                    s1 * 3/4
                } % measure
                { % measure
                    \time 1/2
                    s1 * 1/2
                } % measure
                { % measure
                    \time 1/3
                    s1 * 1/3
                } % measure
                { % measure
                    \time 3/4
                    s1 * 3/4
                } % measure
                { % measure
                    \time 1/1
                    s1 * 1
                } % measure
                { % measure
                    \time 3/4
                    s1 * 3/4
                } % measure
                { % measure
                    \time 1/3
                    s1 * 1/3
                } % measure
                { % measure
                    \time 3/4
                    s1 * 3/4
                } % measure
                { % measure
                    \time 1/2
                    s1 * 1/2
                } % measure
                { % measure
                    \time 3/4
                    s1 * 3/4
                } % measure
                { % measure
                    \time 1/3
                    s1 * 1/3
                } % measure
                { % measure
                    \time 1/1
                    s1 * 1
                } % measure
                { % measure
                    \time 3/4
                    s1 * 3/4
                } % measure
                { % measure
                    \time 1/3
                    s1 * 1/3
                } % measure
                { % measure
                    \time 3/4
                    s1 * 3/4
                } % measure
                { % measure
                    \time 1/2
                    s1 * 1/2
                } % measure
                { % measure
                    \time 3/4
                    s1 * 3/4
                } % measure
                { % measure
                    \time 1/3
                    s1 * 1/3
                } % measure
                { % measure
                    \time 1/1
                    s1 * 1
                } % measure
                { % measure
                    \time 3/4
                    s1 * 3/4
                } % measure
                { % measure
                    \time 1/2
                    s1 * 1/2
                } % measure
                { % measure
                    \time 3/4
                    s1 * 3/4
                } % measure
                { % measure
                    \time 1/3
                    s1 * 1/3
                } % measure
                { % measure
                    \time 1/1
                    s1 * 1
                } % measure
                { % measure
                    \time 3/4
                    s1 * 3/4
                } % measure
                { % measure
                    \time 1/3
                    s1 * 1/3
                } % measure
                { % measure
                    \time 3/4
                    s1 * 3/4
                } % measure
                { % measure
                    \time 1/2
                    s1 * 1/2
                } % measure
                { % measure
                    \time 3/4
                    s1 * 3/4
                } % measure
                { % measure
                    \time 1/3
                    s1 * 1/3
                } % measure
                { % measure
                    \time 1/1
                    s1 * 1
                } % measure
            }
        >>
        \context PianoStaff = "Piano Staff" <<
            \context BowStaff = "Bow Staff" \with {
                \override StaffSymbol.line-count = #11
            } <<
                \context MetronomeMarkVoice = "MetronomeMarkVoice" \with {
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
                \context TremoloVoice = "TremoloVoice" {
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
                \context StringContactPointVoice = "StringContactPointVoice" {
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
                \context UnderlyingDynamicsVoice = "UnderlyingDynamicsVoice" {
                    s1 * 3/4 \p \<
                    s1 * 1/3
                    s1 * 3/4 \mp \>
                    s1 * 3/4 \p \<
                    s1 * 1/3
                    s1 * 3/4 \mp \>
                    s1 * 1/2
                    s1 * 1/3
                    s1 * 3/4 \p \<
                    s1 * 1/2 \mp \>
                    s1 * 1/3
                    s1 * 3/4 \p \<
                    s1 * 1 \mp \>
                    s1 * 3/4 \p \<
                    s1 * 1/3
                    s1 * 3/4 \mp \>
                    s1 * 1/2
                    s1 * 3/4 \p \<
                    s1 * 1/3
                    s1 * 1 \mp \>
                    s1 * 3/4 \p \<
                    s1 * 1/3
                    s1 * 3/4 \mp \>
                    s1 * 3/4 \p \<
                    s1 * 1/3
                    s1 * 3/4 \mp \>
                    s1 * 1/2
                    s1 * 1/3
                    s1 * 3/4 \p \<
                    s1 * 1/2 \mp \>
                    s1 * 1/3
                    s1 * 3/4 \p \<
                    s1 * 1 \mp \>
                    s1 * 3/4 \p \<
                    s1 * 1/3
                    s1 * 3/4 \mp \>
                    s1 * 1/2
                    s1 * 3/4 \p \<
                    s1 * 1/3
                    s1 * 1 \mp \>
                    s1 * 3/4 \p \<
                    s1 * 1/3
                    s1 * 3/4 \mp \>
                    s1 * 1/2
                    s1 * 3/4 \p \<
                    s1 * 1/3
                    s1 * 1 \mp \>
                    s1 * 3/4
                    s1 * 1/2
                    s1 * 3/4 \p \<
                    s1 * 1/3
                    s1 * 1 \mp \>
                    s1 * 3/4 \p \<
                    s1 * 1/3
                    s1 * 3/4 \mp \>
                    s1 * 1/2
                    s1 * 3/4 \p \<
                    s1 * 1/3
                    s1 * 1 \mp
                }
            >>
            \context PitchStaff = "PitchStaff" {
                \context PitchVoice = "PitchVoice" {
                    \clef "bass"
                    a,1 * 110/3
                }
            }
        >>
    >>
}