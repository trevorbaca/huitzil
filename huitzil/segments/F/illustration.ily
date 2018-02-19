F_GlobalRests = {
    {   % measure
        \time 1/1
        s1 * 1
    }   % measure
    {   % measure
        \time 3/4
        s1 * 3/4
    }   % measure
    {   % measure
        s1 * 3/4
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
        s1 * 3/4
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
        s1 * 3/4
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
        s1 * 3/4
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
        s1 * 3/4
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
    {   % measure
        s1 * 1
    }   % measure
    {   % measure
        s1 * 1
    }   % measure
}


F_GlobalSkips = {
    {   % measure
        s1 * 1
    }   % measure
    {   % measure
        \time 3/4
        s1 * 3/4
    }   % measure
    {   % measure
        s1 * 3/4
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
        s1 * 3/4
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
        s1 * 3/4
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
        s1 * 3/4
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
        s1 * 3/4
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
    {   % measure
        s1 * 1
    }   % measure
    {   % measure
        s1 * 1
    }   % measure
}


F_MetronomeMarkVoice = {
    \once \override TextSpanner.Y-extent = ##f
    \once \override TextSpanner.arrow-width = 0.25
    \once \override TextSpanner.bound-details.left-broken.text =
    \markup {
        \null
        }
    \once \override TextSpanner.bound-details.left.stencil-align-dir-y = #center
    \once \override TextSpanner.bound-details.left.text =
    \markup {
        \large
            \upright
                accel.
        \hspace
            #1
        }
    \once \override TextSpanner.bound-details.right-broken.arrow = ##f
    \once \override TextSpanner.bound-details.right-broken.padding = 0
    \once \override TextSpanner.bound-details.right-broken.text = ##f
    \once \override TextSpanner.bound-details.right.arrow = ##t
    \once \override TextSpanner.bound-details.right.padding = 1
    \once \override TextSpanner.bound-details.right.stencil-align-dir-y = #center
    \once \override TextSpanner.dash-fraction = 0.25
    \once \override TextSpanner.dash-period = 1.5
    s1 * 1
    \startTextSpan
    s1 * 3/4
    s1 * 3/4
    \once \override TextSpanner.Y-extent = ##f
    \once \override TextSpanner.bound-details.left-broken.text =
    \markup {
        \null
        }
    \once \override TextSpanner.bound-details.left.stencil-align-dir-y = #center
    \once \override TextSpanner.bound-details.left.text =
    \markup {
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
            #1
        }
    \once \override TextSpanner.bound-details.right-broken.padding = 0
    \once \override TextSpanner.bound-details.right-broken.text = ##f
    \once \override TextSpanner.bound-details.right.padding = 1
    \once \override TextSpanner.bound-details.right.stencil-align-dir-y = #center
    \once \override TextSpanner.dash-period = 0
    s1 * 1
    \stopTextSpan
    \startTextSpan
    \once \override TextSpanner.Y-extent = ##f
    \once \override TextSpanner.arrow-width = 0.25
    \once \override TextSpanner.bound-details.left-broken.text =
    \markup {
        \null
        }
    \once \override TextSpanner.bound-details.left.stencil-align-dir-y = #center
    \once \override TextSpanner.bound-details.left.text =
    \markup {
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
        \hspace
            #1
        }
    \once \override TextSpanner.bound-details.right-broken.arrow = ##f
    \once \override TextSpanner.bound-details.right-broken.padding = 0
    \once \override TextSpanner.bound-details.right-broken.text = ##f
    \once \override TextSpanner.bound-details.right.arrow = ##t
    \once \override TextSpanner.bound-details.right.padding = 1
    \once \override TextSpanner.bound-details.right.stencil-align-dir-y = #center
    \once \override TextSpanner.dash-fraction = 0.25
    \once \override TextSpanner.dash-period = 1.5
    s1 * 1
    \stopTextSpan
    \startTextSpan
    s1 * 3/4
    s1 * 3/4
    \once \override TextSpanner.Y-extent = ##f
    \once \override TextSpanner.bound-details.left-broken.text =
    \markup {
        \null
        }
    \once \override TextSpanner.bound-details.left.stencil-align-dir-y = #center
    \once \override TextSpanner.bound-details.left.text =
    \markup {
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
            #1
        }
    \once \override TextSpanner.bound-details.right-broken.padding = 0
    \once \override TextSpanner.bound-details.right-broken.text = ##f
    \once \override TextSpanner.bound-details.right.padding = 1
    \once \override TextSpanner.bound-details.right.stencil-align-dir-y = #center
    \once \override TextSpanner.dash-period = 0
    s1 * 1
    \stopTextSpan
    \startTextSpan
    \once \override TextSpanner.Y-extent = ##f
    \once \override TextSpanner.arrow-width = 0.25
    \once \override TextSpanner.bound-details.left-broken.text =
    \markup {
        \null
        }
    \once \override TextSpanner.bound-details.left.stencil-align-dir-y = #center
    \once \override TextSpanner.bound-details.left.text =
    \markup {
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
        \hspace
            #1
        }
    \once \override TextSpanner.bound-details.right-broken.arrow = ##f
    \once \override TextSpanner.bound-details.right-broken.padding = 0
    \once \override TextSpanner.bound-details.right-broken.text = ##f
    \once \override TextSpanner.bound-details.right.arrow = ##t
    \once \override TextSpanner.bound-details.right.padding = 1
    \once \override TextSpanner.bound-details.right.stencil-align-dir-y = #center
    \once \override TextSpanner.dash-fraction = 0.25
    \once \override TextSpanner.dash-period = 1.5
    s1 * 1
    \stopTextSpan
    \startTextSpan
    s1 * 3/4
    s1 * 3/4
    \once \override TextSpanner.Y-extent = ##f
    \once \override TextSpanner.bound-details.left-broken.text =
    \markup {
        \null
        }
    \once \override TextSpanner.bound-details.left.stencil-align-dir-y = #center
    \once \override TextSpanner.bound-details.left.text =
    \markup {
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
            #1
        }
    \once \override TextSpanner.bound-details.right-broken.padding = 0
    \once \override TextSpanner.bound-details.right-broken.text = ##f
    \once \override TextSpanner.bound-details.right.padding = 1
    \once \override TextSpanner.bound-details.right.stencil-align-dir-y = #center
    \once \override TextSpanner.dash-period = 0
    s1 * 1
    \stopTextSpan
    \startTextSpan
    \once \override TextSpanner.Y-extent = ##f
    \once \override TextSpanner.arrow-width = 0.25
    \once \override TextSpanner.bound-details.left-broken.text =
    \markup {
        \null
        }
    \once \override TextSpanner.bound-details.left.stencil-align-dir-y = #center
    \once \override TextSpanner.bound-details.left.text =
    \markup {
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
        \hspace
            #1
        }
    \once \override TextSpanner.bound-details.right-broken.arrow = ##f
    \once \override TextSpanner.bound-details.right-broken.padding = 0
    \once \override TextSpanner.bound-details.right-broken.text = ##f
    \once \override TextSpanner.bound-details.right.arrow = ##t
    \once \override TextSpanner.bound-details.right.padding = 1
    \once \override TextSpanner.bound-details.right.stencil-align-dir-y = #center
    \once \override TextSpanner.dash-fraction = 0.25
    \once \override TextSpanner.dash-period = 1.5
    s1 * 1
    \stopTextSpan
    \startTextSpan
    s1 * 3/4
    s1 * 3/4
    \once \override TextSpanner.Y-extent = ##f
    \once \override TextSpanner.bound-details.left-broken.text =
    \markup {
        \null
        }
    \once \override TextSpanner.bound-details.left.stencil-align-dir-y = #center
    \once \override TextSpanner.bound-details.left.text =
    \markup {
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
            #1
        }
    \once \override TextSpanner.bound-details.right-broken.padding = 0
    \once \override TextSpanner.bound-details.right-broken.text = ##f
    \once \override TextSpanner.bound-details.right.padding = 1
    \once \override TextSpanner.bound-details.right.stencil-align-dir-y = #center
    \once \override TextSpanner.dash-period = 0
    s1 * 1
    \stopTextSpan
    \startTextSpan
    \once \override TextSpanner.Y-extent = ##f
    \once \override TextSpanner.arrow-width = 0.25
    \once \override TextSpanner.bound-details.left-broken.text =
    \markup {
        \null
        }
    \once \override TextSpanner.bound-details.left.stencil-align-dir-y = #center
    \once \override TextSpanner.bound-details.left.text =
    \markup {
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
        \hspace
            #1
        }
    \once \override TextSpanner.bound-details.right-broken.arrow = ##f
    \once \override TextSpanner.bound-details.right-broken.padding = 0
    \once \override TextSpanner.bound-details.right-broken.text = ##f
    \once \override TextSpanner.bound-details.right.arrow = ##t
    \once \override TextSpanner.bound-details.right.padding = 1
    \once \override TextSpanner.bound-details.right.stencil-align-dir-y = #center
    \once \override TextSpanner.dash-fraction = 0.25
    \once \override TextSpanner.dash-period = 1.5
    s1 * 1
    \stopTextSpan
    \startTextSpan
    s1 * 3/4
    s1 * 3/4
    \once \override TextSpanner.Y-extent = ##f
    \once \override TextSpanner.bound-details.left-broken.text =
    \markup {
        \null
        }
    \once \override TextSpanner.bound-details.left.stencil-align-dir-y = #center
    \once \override TextSpanner.bound-details.left.text =
    \markup {
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
            #1
        }
    \once \override TextSpanner.bound-details.right-broken.padding = 0
    \once \override TextSpanner.bound-details.right-broken.text = ##f
    \once \override TextSpanner.bound-details.right.padding = 1
    \once \override TextSpanner.bound-details.right.stencil-align-dir-y = #center
    \once \override TextSpanner.dash-period = 0
    s1 * 1
    \stopTextSpan
    \startTextSpan
    s1 * 1
    s1 * 1
    s1 * 1
    s1 * 1
    \once \override TextSpanner.Y-extent = ##f
    \once \override TextSpanner.arrow-width = 0.25
    \once \override TextSpanner.bound-details.left-broken.text =
    \markup {
        \null
        }
    \once \override TextSpanner.bound-details.left.stencil-align-dir-y = #center
    \once \override TextSpanner.bound-details.left.text =
    \markup {
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
        \hspace
            #1
        }
    \once \override TextSpanner.bound-details.right-broken.arrow = ##f
    \once \override TextSpanner.bound-details.right-broken.padding = 0
    \once \override TextSpanner.bound-details.right-broken.text = ##f
    \once \override TextSpanner.bound-details.right.arrow = ##t
    \once \override TextSpanner.bound-details.right.padding = 1
    \once \override TextSpanner.bound-details.right.stencil-align-dir-y = #center
    \once \override TextSpanner.dash-fraction = 0.25
    \once \override TextSpanner.dash-period = 1.5
    s1 * 1
    \stopTextSpan
    \startTextSpan
    s1 * 1
    s1 * 1
    \once \override TextSpanner.Y-extent = ##f
    \once \override TextSpanner.bound-details.left-broken.text =
    \markup {
        \null
        }
    \once \override TextSpanner.bound-details.left.stencil-align-dir-y = #center
    \once \override TextSpanner.bound-details.left.text =
    \markup {
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
            #1
        }
    \once \override TextSpanner.bound-details.right-broken.padding = 0
    \once \override TextSpanner.bound-details.right-broken.text = ##f
    \once \override TextSpanner.bound-details.right.padding = 1
    \once \override TextSpanner.bound-details.right.stencil-align-dir-y = #center
    \once \override TextSpanner.dash-period = 0
    s1 * 1
    \stopTextSpan
    \startTextSpan
    \once \override TextSpanner.Y-extent = ##f
    \once \override TextSpanner.arrow-width = 0.25
    \once \override TextSpanner.bound-details.left-broken.text =
    \markup {
        \null
        }
    \once \override TextSpanner.bound-details.left.stencil-align-dir-y = #center
    \once \override TextSpanner.bound-details.left.text =
    \markup {
        \large
            \upright
                rit.
        \hspace
            #1
        }
    \once \override TextSpanner.bound-details.right-broken.arrow = ##f
    \once \override TextSpanner.bound-details.right-broken.padding = 0
    \once \override TextSpanner.bound-details.right-broken.text = ##f
    \once \override TextSpanner.bound-details.right.arrow = ##t
    \once \override TextSpanner.bound-details.right.padding = 1
    \once \override TextSpanner.bound-details.right.stencil-align-dir-y = #center
    \once \override TextSpanner.bound-details.right.text =
    \markup {
        \concat
            {
                \hspace
                    #0.5
                \line
                    {
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
            }
        }
    \once \override TextSpanner.dash-fraction = 0.25
    \once \override TextSpanner.dash-period = 1.5
    s1 * 1
    \stopTextSpan
    \startTextSpan
    s1 * 1
    s1 * 1
    \once \override TextSpanner.bound-details.left-broken.text =
    \markup {
        \null
        }
    s1 * 1
    \stopTextSpan
}


F_TremoloVoice = {
    s1 * 1
    s1 * 3/4
    s1 * 3/4
    s1 * 1
    s1 * 1
    s1 * 3/4
    s1 * 3/4
    s1 * 1
    s1 * 1
    s1 * 3/4
    s1 * 3/4
    s1 * 1
    s1 * 1
    s1 * 3/4
    s1 * 3/4
    s1 * 1
    s1 * 1
    s1 * 3/4
    s1 * 3/4
    s1 * 1
    s1 * 1
    s1 * 1
    s1 * 1
    s1 * 1
    s1 * 1
    s1 * 1
    s1 * 1
    s1 * 1
    s1 * 1
    s1 * 1
    s1 * 1
    s1 * 1
}


F_StringContactPointVoice = {
    f1
    :16
    _ \markup {
        \dynamic
            fz
        }
    f2.
    :16
    \glissando
    a2.
    :16
    _ \markup {
        \dynamic
            fz
        }
    a1
    :16
    \glissando
    c'1
    :16
    _ \markup {
        \dynamic
            fz
        }
    c'2.
    :16
    \glissando
    e'2.
    :16
    _ \markup {
        \dynamic
            fz
        }
    e'1
    :16
    \glissando
    g'1
    :16
    _ \markup {
        \dynamic
            fz
        }
    g'2.
    :16
    \glissando
    b'2.
    :16
    _ \markup {
        \dynamic
            fz
        }
    b'1
    :16
    \glissando
    d''1
    :16
    _ \markup {
        \dynamic
            fz
        }
    d''2.
    :16
    \glissando
    f''2.
    :16
    _ \markup {
        \dynamic
            fz
        }
    f''1
    :16
    \glissando
    a''1
    :16
    _ \markup {
        \dynamic
            fz
        }
    a''2.
    :16
    \glissando
    c'''2.
    :16
    _ \markup {
        \dynamic
            fz
        }
    c'''1
    :16
    \glissando
    e'''1
    :16
    _ \markup {
        \dynamic
            fffz
        }
    e'''1
    :16
    _ \markup {
        \dynamic
            fffz
        }
    e'''1
    :16
    _ \markup {
        \dynamic
            fffz
        }
    e'''1
    :16
    _ \markup {
        \dynamic
            fffz
        }
    e'''1
    :16
    _ \markup {
        \dynamic
            fffz
        }
    e'''1
    :16
    e'''1
    :16
    e'''1
    :16
    e'''1
    :16
    _ \markup {
        \dynamic
            fffz
        }
    e'''1
    :16
    _ \markup {
        \dynamic
            fffz
        }
    e'''1
    :16
    _ \markup {
        \dynamic
            fffz
        }
    e'''1
    :16
    _ \markup {
        \dynamic
            fffz
        }
}


F_UnderlyingDynamicsVoice = {
    s1 * 1
    \p
    \<
    s1 * 3/4
    s1 * 3/4
    s1 * 1
    \mf
    \>
    s1 * 1
    \p
    \<
    s1 * 3/4
    s1 * 3/4
    s1 * 1
    \mf
    \>
    s1 * 1
    \p
    \<
    s1 * 3/4
    s1 * 3/4
    s1 * 1
    \mf
    \>
    s1 * 1
    \p
    \<
    s1 * 3/4
    s1 * 3/4
    s1 * 1
    \mf
    \>
    s1 * 1
    \p
    \<
    s1 * 3/4
    s1 * 3/4
    s1 * 1
    s1 * 1
    s1 * 1
    s1 * 1
    \ff
    s1 * 1
    s1 * 1
    \mf
    \<
    s1 * 1
    s1 * 1
    s1 * 1
    s1 * 1
    \ff
    \>
    s1 * 1
    s1 * 1
    s1 * 1
    \pp
}


F_BowStaff = <<
    \context MetronomeMarkVoice = "MetronomeMarkVoice"
    \with
    {
        \override TextScript.staff-padding = #5
        \override TextSpanner.staff-padding = #5.75
    }
    \F_MetronomeMarkVoice
    \context TremoloVoice = "TremoloVoice"
    \F_TremoloVoice
    \context StringContactPointVoice = "StringContactPointVoice"
    \F_StringContactPointVoice
    \context UnderlyingDynamicsVoice = "UnderlyingDynamicsVoice"
    \F_UnderlyingDynamicsVoice
>>


F_PitchVoice = {
    \clef "bass"
    a,1 * 35/2
    \glissando
    g,1 * 4
    \parenthesize
    g,1 * 4
    \glissando
    a,,1 * 4
}


F_PitchStaff = {
    \context PitchVoice = "PitchVoice"
    \F_PitchVoice
}
