\version "2.19.65"
\language "english"

#(set-global-staff-size 16)

\header {
    title = \markup {
        \override
            #'(font-name . "Palatino")
            "Pitch classes"
        }
}

\layout {
    \accidentalStyle dodecaphonic
    indent = #0
    line-width = #287.5
    ragged-right = ##t
}

\paper {
    markup-system-spacing.padding = 8
    system-system-spacing.padding = 10
    top-markup-spacing.padding = 4
}

\score {
    \new Score \with {
        \override BarLine.transparent = ##t
        \override BarNumber.stencil = ##f
        \override Beam.stencil = ##f
        \override Flag.stencil = ##f
        \override HorizontalBracket.staff-padding = #4
        \override SpacingSpanner.strict-grace-spacing = ##t
        \override SpacingSpanner.strict-note-spacing = ##t
        \override SpacingSpanner.uniform-stretching = ##t
        \override Stem.stencil = ##f
        \override TextScript.X-extent = ##f
        \override TextScript.staff-padding = #2
        \override TimeSignature.stencil = ##f
        proportionalNotationDuration = #(ly:make-moment 1 16)
    } <<
        \new Staff {
            \new Voice \with {
                \consists Horizontal_bracket_engraver
            } {
                \time 1/8
                fs'8 \startGroup \startGroup ^ \markup { 0 }
                e'8
                f'8
                g'8
                af'8 \stopGroup
                s8
                a'8 \startGroup ^ \markup { 1 }
                ef'8 \stopGroup
                s8
                d'8 \startGroup ^ \markup { 2 }
                e'8
                f'8 \stopGroup
                s8
                cs'8 \stopGroup \stopGroup \startGroup ^ \markup { 3 }
                s8
                bf'8 \startGroup \startGroup ^ \markup { 4 }
                a'8
                b'8
                c'8 \stopGroup
                s8
                f'8 \startGroup ^ \markup { 5 }
                a'8
                ef'8
                d'8
                e'8 \stopGroup \stopGroup
                s8
                c'8 \startGroup \startGroup ^ \markup { 6 }
                cs'8 \stopGroup
                s8
                bf'8 \startGroup ^ \markup { 7 }
                a'8
                b'8 \stopGroup \stopGroup
                s8
                af'8 \startGroup \startGroup ^ \markup { 8 }
                fs'8
                e'8
                f'8
                g'8 \stopGroup
                s8
                b'8 \startGroup ^ \markup { 9 }
                c'8 \stopGroup
                s8
                cs'8 \startGroup ^ \markup { 10 }
                bf'8
                a'8 \stopGroup \stopGroup
                s8
                g'8 \stopGroup \stopGroup \startGroup \startGroup ^ \markup { 11 }
                s8
                af'8 \startGroup \startGroup ^ \markup { 12 }
                fs'8
                e'8
                f'8 \stopGroup
                s8
                e'8 \startGroup ^ \markup { 13 }
                f'8
                a'8
                ef'8
                d'8 \stopGroup
                s8
                f'8 \startGroup ^ \markup { 14 }
                g'8 \stopGroup
                s8
                af'8 \startGroup ^ \markup { 15 }
                fs'8
                e'8 \stopGroup \stopGroup
                s8
                d'8 \startGroup \startGroup ^ \markup { 16 }
                e'8
                f'8
                a'8
                ef'8 \stopGroup
                s8
                a'8 \startGroup ^ \markup { 17 }
                b'8 \stopGroup \stopGroup
                s8
                c'8 \startGroup \startGroup ^ \markup { 18 }
                cs'8
                bf'8 \stopGroup
                s8
                ef'8 \stopGroup \stopGroup \startGroup ^ \markup { 19 }
                s8
                d'8 \startGroup \startGroup ^ \markup { 20 }
                e'8
                f'8
                a'8 \stopGroup
                s8
                bf'8 \startGroup ^ \markup { 21 }
                a'8
                b'8
                c'8
                cs'8 \stopGroup
                s8
                e'8 \startGroup ^ \markup { 22 }
                f'8 \stopGroup \stopGroup
                s8
                g'8 \startGroup \startGroup ^ \markup { 23 }
                af'8
                fs'8 \stopGroup \stopGroup
                s8
                cs'8 \startGroup \startGroup ^ \markup { 24 }
                bf'8
                a'8
                b'8
                c'8 \stopGroup
                s8
                fs'8 \startGroup ^ \markup { 25 }
                e'8 \stopGroup
                s8
                f'8 \startGroup ^ \markup { 26 }
                g'8
                af'8 \stopGroup
                s8
                a'8 \stopGroup \stopGroup \startGroup ^ \markup { 27 }
                s8
                ef'8 \startGroup \startGroup ^ \markup { 28 }
                d'8
                e'8
                f'8 \stopGroup
                s8
                af'8 \startGroup ^ \markup { 29 }
                fs'8
                e'8
                f'8
                g'8 \stopGroup \stopGroup
                s8
                f'8 \startGroup \startGroup ^ \markup { 30 }
                a'8 \stopGroup
                s8
                ef'8 \startGroup ^ \markup { 31 }
                d'8
                e'8 \stopGroup \stopGroup
                s8
                c'8 \startGroup \startGroup ^ \markup { 32 }
                cs'8
                bf'8
                a'8
                b'8 \stopGroup
                s8
                e'8 \startGroup ^ \markup { 33 }
                f'8 \stopGroup
                s8
                a'8 \startGroup ^ \markup { 34 }
                ef'8
                d'8 \stopGroup \stopGroup
                s8
                b'8 \stopGroup \stopGroup \startGroup \startGroup ^ \markup { 35 }
                s8
                c'8 \startGroup \startGroup ^ \markup { 36 }
                cs'8
                bf'8
                a'8 \stopGroup
                s8
                g'8 \startGroup ^ \markup { 37 }
                af'8
                fs'8
                e'8
                f'8 \stopGroup
                s8
                a'8 \startGroup ^ \markup { 38 }
                b'8 \stopGroup
                s8
                c'8 \startGroup ^ \markup { 39 }
                cs'8
                bf'8 \stopGroup \stopGroup
                s8
                f'8 \startGroup \startGroup ^ \markup { 40 }
                g'8
                af'8
                fs'8
                e'8 \stopGroup
                s8
                d'8 \startGroup ^ \markup { 41 }
                e'8 \stopGroup \stopGroup
                s8
                f'8 \startGroup \startGroup ^ \markup { 42 }
                a'8
                ef'8 \stopGroup
                s8
                e'8 \stopGroup \stopGroup \startGroup ^ \markup { 43 }
                s8
                f'8 \startGroup \startGroup ^ \markup { 44 }
                g'8
                af'8
                fs'8 \stopGroup
                s8
                ef'8 \startGroup ^ \markup { 45 }
                d'8
                e'8
                f'8
                a'8 \stopGroup
                s8
                bf'8 \startGroup ^ \markup { 46 }
                a'8 \stopGroup \stopGroup
                s8
                b'8 \startGroup \startGroup ^ \markup { 47 }
                c'8
                cs'8 \stopGroup \stopGroup
                s8
                a'8 \startGroup \startGroup ^ \markup { 48 }
                ef'8
                d'8
                e'8
                f'8 \stopGroup
                s8
                cs'8 \startGroup ^ \markup { 49 }
                bf'8 \stopGroup
                s8
                a'8 \startGroup ^ \markup { 50 }
                b'8
                c'8 \stopGroup
                s8
                fs'8 \stopGroup \stopGroup \startGroup ^ \markup { 51 }
                s8
                e'8 \startGroup \startGroup ^ \markup { 52 }
                f'8
                g'8
                af'8 \stopGroup
                s8
                c'8 \startGroup ^ \markup { 53 }
                cs'8
                bf'8
                a'8
                b'8 \stopGroup \stopGroup
                s8
                af'8 \startGroup \startGroup ^ \markup { 54 }
                fs'8 \stopGroup
                s8
                e'8 \startGroup ^ \markup { 55 }
                f'8
                g'8 \stopGroup \stopGroup
                s8
                f'8 \startGroup \startGroup ^ \markup { 56 }
                a'8
                ef'8
                d'8
                e'8 \stopGroup
                s8
                g'8 \startGroup ^ \markup { 57 }
                af'8 \stopGroup
                s8
                fs'8 \startGroup ^ \markup { 58 }
                e'8
                f'8 \stopGroup \stopGroup
                s8
                e'8 \stopGroup \stopGroup \startGroup \startGroup ^ \markup { 59 }
                s8
                f'8 \startGroup \startGroup ^ \markup { 60 }
                a'8
                ef'8
                d'8 \stopGroup
                s8
                b'8 \startGroup ^ \markup { 61 }
                c'8
                cs'8
                bf'8
                a'8 \stopGroup
                s8
                d'8 \startGroup ^ \markup { 62 }
                e'8 \stopGroup
                s8
                f'8 \startGroup ^ \markup { 63 }
                a'8
                ef'8 \stopGroup \stopGroup
                s8
                a'8 \startGroup \startGroup ^ \markup { 64 }
                b'8
                c'8
                cs'8
                bf'8 \stopGroup
                s8
                f'8 \startGroup ^ \markup { 65 }
                g'8 \stopGroup \stopGroup
                s8
                af'8 \startGroup \startGroup ^ \markup { 66 }
                fs'8
                e'8 \stopGroup
                s8
                bf'8 \stopGroup \stopGroup \startGroup ^ \markup { 67 }
                s8
                a'8 \startGroup \startGroup ^ \markup { 68 }
                b'8
                c'8
                cs'8 \stopGroup
                s8
                e'8 \startGroup ^ \markup { 69 }
                f'8
                g'8
                af'8
                fs'8 \stopGroup
                s8
                ef'8 \startGroup ^ \markup { 70 }
                d'8 \stopGroup \stopGroup
                s8
                e'8 \startGroup \startGroup ^ \markup { 71 }
                f'8
                a'8 \stopGroup \stopGroup
                s8
                \bar "|."
                \override Score.BarLine.transparent = ##f
            }
        }
    >>
}