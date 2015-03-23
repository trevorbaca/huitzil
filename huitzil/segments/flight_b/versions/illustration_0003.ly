% 2014-12-15 12:27

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
            \context BowStaff = "Bow Staff" <<
                \context TimeSignatureVoice = "Time Signature Voice" {
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
                }
                \context TempoIndicatorVoice = "Tempo Indicator Voice" {
                }
                \context TremoloIndicatorVoice = "Tremolo Indicator Voice" {
                }
                \context BowLocationVoice = "Bow Location Voice" {
                    a''4 :16 \glissando
                        _ \markup {
                            \dynamic
                                ffz
                            }
                        - \markup { 0 }
                    f''4 :16 \glissando
                        _ \markup {
                            \dynamic
                                ffz
                            }
                        - \markup { 1 }
                    d''4 :16 \glissando
                        _ \markup {
                            \dynamic
                                ffz
                            }
                        - \markup { 2 }
                    b'4 :16
                        _ \markup {
                            \dynamic
                                ffz
                            }
                        - \markup { 3 }
                    b'1 :16
                        _ \markup {
                            \dynamic
                                ffz
                            }
                        - \markup { 4 }
                    \tweak #'edge-height #'(0.7 . 0)
                    \times 2/3 {
                        b'1 :16
                            _ \markup {
                                \dynamic
                                    ffz
                                }
                            - \markup { 5 }
                    }
                    \tweak #'edge-height #'(0.7 . 0)
                    \times 2/3 {
                        b'1 :16
                            _ \markup {
                                \dynamic
                                    ffz
                                }
                            - \markup { 6 }
                    }
                    b'1 :16
                        _ \markup {
                            \dynamic
                                ffz
                            }
                        - \markup { 7 }
                    \tweak #'edge-height #'(0.7 . 0)
                    \times 4/5 {
                        b'2 :16
                            _ \markup {
                                \dynamic
                                    ffz
                                }
                            - \markup { 8 }
                    }
                    \tweak #'edge-height #'(0.7 . 0)
                    \times 4/5 {
                        b'2 :16
                            _ \markup {
                                \dynamic
                                    ffz
                                }
                            - \markup { 9 }
                    }
                    \tweak #'edge-height #'(0.7 . 0)
                    \times 4/5 {
                        b'2 :16
                            _ \markup {
                                \dynamic
                                    ffz
                                }
                            - \markup { 10 }
                    }
                    \tweak #'edge-height #'(0.7 . 0)
                    \times 4/5 {
                        b'2 :16
                            _ \markup {
                                \dynamic
                                    ffz
                                }
                            - \markup { 11 }
                    }
                    b'1 :16
                        _ \markup {
                            \dynamic
                                ffz
                            }
                        - \markup { 12 }
                    \tweak #'edge-height #'(0.7 . 0)
                    \times 2/3 {
                        b'1 :16
                            _ \markup {
                                \dynamic
                                    ffz
                                }
                            - \markup { 13 }
                    }
                    \tweak #'edge-height #'(0.7 . 0)
                    \times 2/3 {
                        b'1 :16
                            _ \markup {
                                \dynamic
                                    ffz
                                }
                            - \markup { 14 }
                    }
                    b'1 :16
                        _ \markup {
                            \dynamic
                                ffz
                            }
                        - \markup { 15 }
                    \tweak #'edge-height #'(0.7 . 0)
                    \times 4/5 {
                        b'2 :16
                            _ \markup {
                                \dynamic
                                    ffz
                                }
                            - \markup { 16 }
                    }
                    \tweak #'edge-height #'(0.7 . 0)
                    \times 4/5 {
                        b'2 :16
                            _ \markup {
                                \dynamic
                                    ffz
                                }
                            - \markup { 17 }
                    }
                    \tweak #'edge-height #'(0.7 . 0)
                    \times 4/5 {
                        b'2 :16
                            _ \markup {
                                \dynamic
                                    ffz
                                }
                            - \markup { 18 }
                    }
                    \tweak #'edge-height #'(0.7 . 0)
                    \times 4/5 {
                        b'2 :16
                            _ \markup {
                                \dynamic
                                    ffz
                                }
                            - \markup { 19 }
                    }
                    b'1 :16
                        _ \markup {
                            \dynamic
                                ffz
                            }
                        - \markup { 20 }
                    \tweak #'edge-height #'(0.7 . 0)
                    \times 2/3 {
                        b'1 :16
                            _ \markup {
                                \dynamic
                                    ffz
                                }
                            - \markup { 21 }
                    }
                    \tweak #'edge-height #'(0.7 . 0)
                    \times 2/3 {
                        b'1 :16
                            _ \markup {
                                \dynamic
                                    ffz
                                }
                            - \markup { 22 }
                    }
                    b'1 :16
                        _ \markup {
                            \dynamic
                                ffz
                            }
                        - \markup { 23 }
                    \tweak #'edge-height #'(0.7 . 0)
                    \times 4/5 {
                        b'2 :16
                            _ \markup {
                                \dynamic
                                    ffz
                                }
                            - \markup { 24 }
                    }
                    \tweak #'edge-height #'(0.7 . 0)
                    \times 4/5 {
                        b'2 :16
                            _ \markup {
                                \dynamic
                                    ffz
                                }
                            - \markup { 25 }
                    }
                    \tweak #'edge-height #'(0.7 . 0)
                    \times 4/5 {
                        b'2 :16
                            _ \markup {
                                \dynamic
                                    ffz
                                }
                            - \markup { 26 }
                    }
                    \tweak #'edge-height #'(0.7 . 0)
                    \times 4/5 {
                        b'2 :16 \glissando
                            _ \markup {
                                \dynamic
                                    ffz
                                }
                            - \markup { 27 }
                    }
                    a''1 :16
                        _ \markup {
                            \dynamic
                                ffz
                            }
                        - \markup { 28 }
                    \tweak #'edge-height #'(0.7 . 0)
                    \times 2/3 {
                        a''1 :16
                            _ \markup {
                                \dynamic
                                    ffz
                                }
                            - \markup { 29 }
                    }
                    \tweak #'edge-height #'(0.7 . 0)
                    \times 2/3 {
                        a''1 :16
                            _ \markup {
                                \dynamic
                                    ffz
                                }
                            - \markup { 30 }
                    }
                    a''1 :16
                        _ \markup {
                            \dynamic
                                ffz
                            }
                        - \markup { 31 }
                    \tweak #'edge-height #'(0.7 . 0)
                    \times 4/5 {
                        a''2 :16
                            _ \markup {
                                \dynamic
                                    ffz
                                }
                            - \markup { 32 }
                    }
                    \tweak #'edge-height #'(0.7 . 0)
                    \times 4/5 {
                        a''2 :16
                            _ \markup {
                                \dynamic
                                    ffz
                                }
                            - \markup { 33 }
                    }
                    \tweak #'edge-height #'(0.7 . 0)
                    \times 4/5 {
                        a''2 :16
                            _ \markup {
                                \dynamic
                                    ffz
                                }
                            - \markup { 34 }
                    }
                    \tweak #'edge-height #'(0.7 . 0)
                    \times 4/5 {
                        a''2 :16
                            _ \markup {
                                \dynamic
                                    ffz
                                }
                            - \markup { 35 }
                    }
                }
                \context UnderlyingDynamicsVoice = "Underlying Dynamics Voice" {
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
                }
            >>
            \context Staff = "Pitch Staff" {
                \clef "bass"
                b,,1 * 124/15
                b,,1 * 107/15 \glissando
                c,1 * 2/5 \glissando
                \once \override NoteHead #'duration-log = #2
                \once \override NoteHead #'no-ledgers = ##t
                \once \override NoteHead #'style = #'do
                \clef "treble"
                e'''1 * 74/15
            }
        >>
    >>
}