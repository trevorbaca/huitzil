\version "2.19.80"
\language "english"

#(set-global-staff-size 16)

\header {
    tagline = ##f
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
    \new Score
    \with
    {
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
    }
    <<
        \new Staff
        {
            \new Voice
            \with
            {
                \consists Horizontal_bracket_engraver
            }
            {
                \time 1/8
                fs'8
                ^ \markup { 0 }
                \startGroup
                \startGroup
                e'8
                f'8
                g'8
                af'8
                \stopGroup
                s8
                a'8
                ^ \markup { 1 }
                \startGroup
                ef'8
                \stopGroup
                s8
                d'8
                ^ \markup { 2 }
                \startGroup
                e'8
                f'8
                \stopGroup
                s8
                cs'8
                ^ \markup { 3 }
                \stopGroup
                \stopGroup
                \startGroup
                s8
                bf'8
                ^ \markup { 4 }
                \startGroup
                \startGroup
                a'8
                b'8
                c'8
                \stopGroup
                s8
                f'8
                ^ \markup { 5 }
                \startGroup
                a'8
                ef'8
                d'8
                e'8
                \stopGroup
                \stopGroup
                s8
                c'8
                ^ \markup { 6 }
                \startGroup
                \startGroup
                cs'8
                \stopGroup
                s8
                bf'8
                ^ \markup { 7 }
                \startGroup
                a'8
                b'8
                \stopGroup
                \stopGroup
                s8
                af'8
                ^ \markup { 8 }
                \startGroup
                \startGroup
                fs'8
                e'8
                f'8
                g'8
                \stopGroup
                s8
                b'8
                ^ \markup { 9 }
                \startGroup
                c'8
                \stopGroup
                s8
                cs'8
                ^ \markup { 10 }
                \startGroup
                bf'8
                a'8
                \stopGroup
                \stopGroup
                s8
                g'8
                ^ \markup { 11 }
                \stopGroup
                \stopGroup
                \startGroup
                \startGroup
                s8
                af'8
                ^ \markup { 12 }
                \startGroup
                \startGroup
                fs'8
                e'8
                f'8
                \stopGroup
                s8
                e'8
                ^ \markup { 13 }
                \startGroup
                f'8
                a'8
                ef'8
                d'8
                \stopGroup
                s8
                f'8
                ^ \markup { 14 }
                \startGroup
                g'8
                \stopGroup
                s8
                af'8
                ^ \markup { 15 }
                \startGroup
                fs'8
                e'8
                \stopGroup
                \stopGroup
                s8
                d'8
                ^ \markup { 16 }
                \startGroup
                \startGroup
                e'8
                f'8
                a'8
                ef'8
                \stopGroup
                s8
                a'8
                ^ \markup { 17 }
                \startGroup
                b'8
                \stopGroup
                \stopGroup
                s8
                c'8
                ^ \markup { 18 }
                \startGroup
                \startGroup
                cs'8
                bf'8
                \stopGroup
                s8
                ef'8
                ^ \markup { 19 }
                \stopGroup
                \stopGroup
                \startGroup
                s8
                d'8
                ^ \markup { 20 }
                \startGroup
                \startGroup
                e'8
                f'8
                a'8
                \stopGroup
                s8
                bf'8
                ^ \markup { 21 }
                \startGroup
                a'8
                b'8
                c'8
                cs'8
                \stopGroup
                s8
                e'8
                ^ \markup { 22 }
                \startGroup
                f'8
                \stopGroup
                \stopGroup
                s8
                g'8
                ^ \markup { 23 }
                \startGroup
                \startGroup
                af'8
                fs'8
                \stopGroup
                \stopGroup
                s8
                cs'8
                ^ \markup { 24 }
                \startGroup
                \startGroup
                bf'8
                a'8
                b'8
                c'8
                \stopGroup
                s8
                fs'8
                ^ \markup { 25 }
                \startGroup
                e'8
                \stopGroup
                s8
                f'8
                ^ \markup { 26 }
                \startGroup
                g'8
                af'8
                \stopGroup
                s8
                a'8
                ^ \markup { 27 }
                \stopGroup
                \stopGroup
                \startGroup
                s8
                ef'8
                ^ \markup { 28 }
                \startGroup
                \startGroup
                d'8
                e'8
                f'8
                \stopGroup
                s8
                af'8
                ^ \markup { 29 }
                \startGroup
                fs'8
                e'8
                f'8
                g'8
                \stopGroup
                \stopGroup
                s8
                f'8
                ^ \markup { 30 }
                \startGroup
                \startGroup
                a'8
                \stopGroup
                s8
                ef'8
                ^ \markup { 31 }
                \startGroup
                d'8
                e'8
                \stopGroup
                \stopGroup
                s8
                c'8
                ^ \markup { 32 }
                \startGroup
                \startGroup
                cs'8
                bf'8
                a'8
                b'8
                \stopGroup
                s8
                e'8
                ^ \markup { 33 }
                \startGroup
                f'8
                \stopGroup
                s8
                a'8
                ^ \markup { 34 }
                \startGroup
                ef'8
                d'8
                \stopGroup
                \stopGroup
                s8
                b'8
                ^ \markup { 35 }
                \stopGroup
                \stopGroup
                \startGroup
                \startGroup
                s8
                c'8
                ^ \markup { 36 }
                \startGroup
                \startGroup
                cs'8
                bf'8
                a'8
                \stopGroup
                s8
                g'8
                ^ \markup { 37 }
                \startGroup
                af'8
                fs'8
                e'8
                f'8
                \stopGroup
                s8
                a'8
                ^ \markup { 38 }
                \startGroup
                b'8
                \stopGroup
                s8
                c'8
                ^ \markup { 39 }
                \startGroup
                cs'8
                bf'8
                \stopGroup
                \stopGroup
                s8
                f'8
                ^ \markup { 40 }
                \startGroup
                \startGroup
                g'8
                af'8
                fs'8
                e'8
                \stopGroup
                s8
                d'8
                ^ \markup { 41 }
                \startGroup
                e'8
                \stopGroup
                \stopGroup
                s8
                f'8
                ^ \markup { 42 }
                \startGroup
                \startGroup
                a'8
                ef'8
                \stopGroup
                s8
                e'8
                ^ \markup { 43 }
                \stopGroup
                \stopGroup
                \startGroup
                s8
                f'8
                ^ \markup { 44 }
                \startGroup
                \startGroup
                g'8
                af'8
                fs'8
                \stopGroup
                s8
                ef'8
                ^ \markup { 45 }
                \startGroup
                d'8
                e'8
                f'8
                a'8
                \stopGroup
                s8
                bf'8
                ^ \markup { 46 }
                \startGroup
                a'8
                \stopGroup
                \stopGroup
                s8
                b'8
                ^ \markup { 47 }
                \startGroup
                \startGroup
                c'8
                cs'8
                \stopGroup
                \stopGroup
                s8
                a'8
                ^ \markup { 48 }
                \startGroup
                \startGroup
                ef'8
                d'8
                e'8
                f'8
                \stopGroup
                s8
                cs'8
                ^ \markup { 49 }
                \startGroup
                bf'8
                \stopGroup
                s8
                a'8
                ^ \markup { 50 }
                \startGroup
                b'8
                c'8
                \stopGroup
                s8
                fs'8
                ^ \markup { 51 }
                \stopGroup
                \stopGroup
                \startGroup
                s8
                e'8
                ^ \markup { 52 }
                \startGroup
                \startGroup
                f'8
                g'8
                af'8
                \stopGroup
                s8
                c'8
                ^ \markup { 53 }
                \startGroup
                cs'8
                bf'8
                a'8
                b'8
                \stopGroup
                \stopGroup
                s8
                af'8
                ^ \markup { 54 }
                \startGroup
                \startGroup
                fs'8
                \stopGroup
                s8
                e'8
                ^ \markup { 55 }
                \startGroup
                f'8
                g'8
                \stopGroup
                \stopGroup
                s8
                f'8
                ^ \markup { 56 }
                \startGroup
                \startGroup
                a'8
                ef'8
                d'8
                e'8
                \stopGroup
                s8
                g'8
                ^ \markup { 57 }
                \startGroup
                af'8
                \stopGroup
                s8
                fs'8
                ^ \markup { 58 }
                \startGroup
                e'8
                f'8
                \stopGroup
                \stopGroup
                s8
                e'8
                ^ \markup { 59 }
                \stopGroup
                \stopGroup
                \startGroup
                \startGroup
                s8
                f'8
                ^ \markup { 60 }
                \startGroup
                \startGroup
                a'8
                ef'8
                d'8
                \stopGroup
                s8
                b'8
                ^ \markup { 61 }
                \startGroup
                c'8
                cs'8
                bf'8
                a'8
                \stopGroup
                s8
                d'8
                ^ \markup { 62 }
                \startGroup
                e'8
                \stopGroup
                s8
                f'8
                ^ \markup { 63 }
                \startGroup
                a'8
                ef'8
                \stopGroup
                \stopGroup
                s8
                a'8
                ^ \markup { 64 }
                \startGroup
                \startGroup
                b'8
                c'8
                cs'8
                bf'8
                \stopGroup
                s8
                f'8
                ^ \markup { 65 }
                \startGroup
                g'8
                \stopGroup
                \stopGroup
                s8
                af'8
                ^ \markup { 66 }
                \startGroup
                \startGroup
                fs'8
                e'8
                \stopGroup
                s8
                bf'8
                ^ \markup { 67 }
                \stopGroup
                \stopGroup
                \startGroup
                s8
                a'8
                ^ \markup { 68 }
                \startGroup
                \startGroup
                b'8
                c'8
                cs'8
                \stopGroup
                s8
                e'8
                ^ \markup { 69 }
                \startGroup
                f'8
                g'8
                af'8
                fs'8
                \stopGroup
                s8
                ef'8
                ^ \markup { 70 }
                \startGroup
                d'8
                \stopGroup
                \stopGroup
                s8
                e'8
                ^ \markup { 71 }
                \startGroup
                \startGroup
                f'8
                a'8
                \stopGroup
                \stopGroup
                s8
                \bar "|."                                                                %! SCORE1
                \override Score.BarLine.transparent = ##f
            }
        }
    >>
}