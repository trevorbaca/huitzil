% 2014-12-17 13:29

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
                        \time 3/2
                        s1 * 3/2
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
                        \time 5/4
                        s1 * 5/4
                    }
                    {
                        \time 1/1
                        s1 * 1
                    }
                    {
                        \time 7/4
                        s1 * 7/4
                    }
                    {
                        \time 1/1
                        s1 * 1
                    }
                    {
                        \time 5/4
                        s1 * 5/4
                    }
                    {
                        s1 * 5/4
                    }
                    {
                        \time 1/1
                        s1 * 1
                    }
                    {
                        \time 3/2
                        s1 * 3/2
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
                        \time 5/4
                        s1 * 5/4
                    }
                    {
                        \time 1/1
                        s1 * 1
                    }
                    {
                        \time 7/4
                        s1 * 7/4
                    }
                    {
                        \time 1/1
                        s1 * 1
                    }
                    {
                        \time 5/4
                        s1 * 5/4
                    }
                    {
                        \time 9/4
                        s1 * 9/4
                    }
                    {
                        \time 5/4
                        s1 * 5/4
                    }
                    {
                        \time 2/1
                        s1 * 2
                    }
                    {
                        \time 5/4
                        s1 * 5/4
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
                        \time 5/4
                        s1 * 5/4
                    }
                    {
                        \time 2/1
                        s1 * 2
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
                    s1 * 1/4
                    s1 * 3/4
                    s1 * 3/4
                    s1 * 1/4
                    s1 * 3/4
                    s1 * 1/2
                    s1 * 1/4
                    s1 * 3/4
                    s1 * 1/2
                    s1 * 1/4
                    s1 * 3/4
                    s1 * 1
                    s1 * 3/4
                    s1 * 1/4
                    s1 * 3/4
                    s1 * 1/2
                    s1 * 3/4
                    s1 * 1/4
                    s1 * 1
                    s1 * 3/4
                    s1 * 1/4
                    s1 * 3/4
                    s1 * 3/4
                    s1 * 1/4
                    s1 * 3/4
                    s1 * 1/2
                    s1 * 1/4
                    s1 * 3/4
                    s1 * 1/2
                    s1 * 1/4
                    s1 * 3/4
                    s1 * 1
                    s1 * 3/4
                    s1 * 1/4
                    s1 * 3/4
                    s1 * 1/2
                    s1 * 3/4
                    s1 * 1/4
                    s1 * 1
                    s1 * 3/4
                    s1 * 1/4
                    s1 * 3/4
                    s1 * 1/2
                    s1 * 3/4
                    s1 * 1/4
                    s1 * 1
                    s1 * 3/4
                    s1 * 1/2
                    s1 * 3/4
                    s1 * 1/4
                    s1 * 1
                    s1 * 3/4
                    s1 * 1/4
                    s1 * 3/4
                    s1 * 1/2
                    s1 * 3/4
                    s1 * 1/4
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
                    e'''4 :16
                        _ \markup {
                            \dynamic
                                mfz
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
                    c'''4 :16
                        _ \markup {
                            \dynamic
                                mfz
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
                    c'''4 :16 \glissando
                        _ \markup {
                            \dynamic
                                mfz
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
                    c'''4 :16 \glissando
                        _ \markup {
                            \dynamic
                                mfz
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
                    f''4 :16
                        _ \markup {
                            \dynamic
                                mfz
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
                    f''4 :16
                        _ \markup {
                            \dynamic
                                mfz
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
                    d''4 :16
                        _ \markup {
                            \dynamic
                                mfz
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
                    b'4 :16
                        _ \markup {
                            \dynamic
                                mfz
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
                    b'4 :16 \glissando
                        _ \markup {
                            \dynamic
                                mfz
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
                    b'4 :16 \glissando
                        _ \markup {
                            \dynamic
                                mfz
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
                    e'4 :16
                        _ \markup {
                            \dynamic
                                mfz
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
                    e'4 :16
                        _ \markup {
                            \dynamic
                                mfz
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
                    c'4 :16
                        _ \markup {
                            \dynamic
                                mfz
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
                    c'4 :16
                        _ \markup {
                            \dynamic
                                mfz
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
                    a4 :16
                        _ \markup {
                            \dynamic
                                mfz
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
                    f4 :16
                        _ \markup {
                            \dynamic
                                mfz
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
                    f4 :16
                        _ \markup {
                            \dynamic
                                mfz
                            }
                    f1 :16
                        _ \markup {
                            \dynamic
                                mfz
                            }
                }
                \context UnderlyingDynamicsVoice = "Underlying Dynamics Voice" {
                    s1 * 3/4 \mp
                    s1 * 1/4
                    s1 * 3/4
                    s1 * 3/4
                    s1 * 1/4
                    s1 * 3/4
                    s1 * 1/2
                    s1 * 1/4
                    s1 * 3/4
                    s1 * 1/2
                    s1 * 1/4
                    s1 * 3/4
                    s1 * 1
                    s1 * 3/4
                    s1 * 1/4
                    s1 * 3/4
                    s1 * 1/2
                    s1 * 3/4
                    s1 * 1/4
                    s1 * 1
                    s1 * 3/4
                    s1 * 1/4
                    s1 * 3/4
                    s1 * 3/4
                    s1 * 1/4
                    s1 * 3/4
                    s1 * 1/2
                    s1 * 1/4
                    s1 * 3/4
                    s1 * 1/2
                    s1 * 1/4
                    s1 * 3/4
                    s1 * 1
                    s1 * 3/4
                    s1 * 1/4
                    s1 * 3/4
                    s1 * 1/2
                    s1 * 3/4
                    s1 * 1/4
                    s1 * 1
                    s1 * 3/4
                    s1 * 1/4
                    s1 * 3/4
                    s1 * 1/2
                    s1 * 3/4
                    s1 * 1/4
                    s1 * 1
                    s1 * 3/4
                    s1 * 1/2
                    s1 * 3/4
                    s1 * 1/4
                    s1 * 1
                    s1 * 3/4
                    s1 * 1/4
                    s1 * 3/4
                    s1 * 1/2
                    s1 * 3/4
                    s1 * 1/4
                    s1 * 1 \!
                }
            >>
            \context Staff = "Pitch Staff" {
                \clef "bass"
                a,1 * 141/4
            }
        >>
    >>
}