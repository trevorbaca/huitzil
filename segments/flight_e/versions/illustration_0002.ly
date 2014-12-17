% 2014-12-17 13:35

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
                        \time 13/12
                        s1 * 13/12
                    }
                    {
                        \time 3/2
                        s1 * 3/2
                    }
                    {
                        \time 13/12
                        s1 * 13/12
                    }
                    {
                        \time 5/6
                        s1 * 5/6
                    }
                    {
                        \time 5/4
                        s1 * 5/4
                    }
                    {
                        \time 13/12
                        s1 * 13/12
                    }
                    {
                        \time 7/4
                        s1 * 7/4
                    }
                    {
                        \time 13/12
                        s1 * 13/12
                    }
                    {
                        \time 5/4
                        s1 * 5/4
                    }
                    {
                        \time 4/3
                        s1 * 4/3
                    }
                    {
                        \time 13/12
                        s1 * 13/12
                    }
                    {
                        \time 3/2
                        s1 * 3/2
                    }
                    {
                        \time 13/12
                        s1 * 13/12
                    }
                    {
                        \time 5/6
                        s1 * 5/6
                    }
                    {
                        \time 5/4
                        s1 * 5/4
                    }
                    {
                        \time 13/12
                        s1 * 13/12
                    }
                    {
                        \time 7/4
                        s1 * 7/4
                    }
                    {
                        \time 13/12
                        s1 * 13/12
                    }
                    {
                        \time 5/4
                        s1 * 5/4
                    }
                    {
                        \time 29/12
                        s1 * 29/12
                    }
                    {
                        \time 5/4
                        s1 * 5/4
                    }
                    {
                        \time 25/12
                        s1 * 25/12
                    }
                    {
                        \time 5/4
                        s1 * 5/4
                    }
                    {
                        \time 25/12
                        s1 * 25/12
                    }
                    {
                        \time 13/12
                        s1 * 13/12
                    }
                    {
                        \time 5/4
                        s1 * 5/4
                    }
                    {
                        \time 25/12
                        s1 * 25/12
                    }
                }
                \context TempoIndicatorVoice = "Tempo Indicator Voice" {
                    s1 * 3/4 ^ \markup {
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
                \context TremoloIndicatorVoice = "Tremolo Indicator Voice" {
                }
                \context BowLocationVoice = "Bow Location Voice" {
                    e'''2. :16
                        _ \markup {
                            \dynamic
                                mfz
                            }
                    \tweak #'edge-height #'(0.7 . 0)
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
                                mfz
                            }
                    \tweak #'edge-height #'(0.7 . 0)
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
                        _ \markup {
                            \dynamic
                                mfz
                            }
                    \tweak #'edge-height #'(0.7 . 0)
                    \times 2/3 {
                        c'''2 :16 \glissando
                            _ \markup {
                                \dynamic
                                    mfz
                                }
                    }
                    a''2. :16
                        _ \markup {
                            \dynamic
                                mfz
                            }
                    a''2 :16 \glissando
                        _ \markup {
                            \dynamic
                                mfz
                            }
                    \tweak #'edge-height #'(0.7 . 0)
                    \times 2/3 {
                        c'''2 :16 \glissando
                            _ \markup {
                                \dynamic
                                    mfz
                                }
                    }
                    a''2. :16
                        _ \markup {
                            \dynamic
                                mfz
                            }
                    a''1 :16 \glissando
                        _ \markup {
                            \dynamic
                                mfz
                            }
                    f''2. :16
                        _ \markup {
                            \dynamic
                                mfz
                            }
                    \tweak #'edge-height #'(0.7 . 0)
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
                        _ \markup {
                            \dynamic
                                mfz
                            }
                    f''2. :16
                        _ \markup {
                            \dynamic
                                mfz
                            }
                    \tweak #'edge-height #'(0.7 . 0)
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
                                mfz
                            }
                    \tweak #'edge-height #'(0.7 . 0)
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
                                mfz
                            }
                    b'2. :16
                        _ \markup {
                            \dynamic
                                mfz
                            }
                    \tweak #'edge-height #'(0.7 . 0)
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
                        _ \markup {
                            \dynamic
                                mfz
                            }
                    \tweak #'edge-height #'(0.7 . 0)
                    \times 2/3 {
                        b'2 :16 \glissando
                            _ \markup {
                                \dynamic
                                    mfz
                                }
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
                    \tweak #'edge-height #'(0.7 . 0)
                    \times 2/3 {
                        b'2 :16 \glissando
                            _ \markup {
                                \dynamic
                                    mfz
                                }
                    }
                    g'2. :16
                        _ \markup {
                            \dynamic
                                mfz
                            }
                    g'1 :16 \glissando
                        _ \markup {
                            \dynamic
                                mfz
                            }
                    e'2. :16
                        _ \markup {
                            \dynamic
                                mfz
                            }
                    \tweak #'edge-height #'(0.7 . 0)
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
                        _ \markup {
                            \dynamic
                                mfz
                            }
                    e'2. :16
                        _ \markup {
                            \dynamic
                                mfz
                            }
                    \tweak #'edge-height #'(0.7 . 0)
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
                                mfz
                            }
                    \tweak #'edge-height #'(0.7 . 0)
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
                        _ \markup {
                            \dynamic
                                mfz
                            }
                    c'2. :16
                        _ \markup {
                            \dynamic
                                mfz
                            }
                    \tweak #'edge-height #'(0.7 . 0)
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
                        _ \markup {
                            \dynamic
                                mfz
                            }
                    c'2 :16 \glissando
                        _ \markup {
                            \dynamic
                                mfz
                            }
                    a2. :16
                        _ \markup {
                            \dynamic
                                mfz
                            }
                    \tweak #'edge-height #'(0.7 . 0)
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
                                mfz
                            }
                    \tweak #'edge-height #'(0.7 . 0)
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
                        _ \markup {
                            \dynamic
                                mfz
                            }
                    f2. :16
                        _ \markup {
                            \dynamic
                                mfz
                            }
                    \tweak #'edge-height #'(0.7 . 0)
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
                                mfz
                            }
                }
                \context UnderlyingDynamicsVoice = "Underlying Dynamics Voice" {
                    s1 * 3/4 \mp
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
                    s1 * 1 \!
                }
            >>
            \context Staff = "Pitch Staff" {
                \clef "bass"
                a,1 * 110/3
            }
        >>
    >>
}