% 2014-10-10 09:51

\version "2.19.13"
\language "english"

\header {
    tagline = \markup {}
}

\layout {
    indent = #0
    ragged-right = ##t
}

\score {
    \new Score \with {
        \override BarLine #'transparent = ##t
        \override BarNumber #'stencil = ##f
        \override Clef #'stencil = ##f
        \override NoteHead #'no-ledgers = ##t
        \override NoteHead #'transparent = ##t
        \override StaffSymbol #'transparent = ##t
        \override Stem #'transparent = ##t
        \override TimeSignature #'stencil = ##f
    } <<
        \new Staff {
            \time 2/4
            \break
            c'2
            \tempo 8=52
            \break
            c'2
            \tempo 8=78
            \break
            c'2
        }
    >>
}
