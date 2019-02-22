#(set-default-paper-size "ledger")
#(set-global-staff-size 13)

\include "/Users/trevorbaca/baca/lilypond/baca.ily"
\include "contexts.ily"
\include "markups.ily"

\paper {
    bottom-margin = 7\mm
    evenFooterMarkup = \markup
        \on-the-fly #print-page-number-check-first
        \fill-line {
            " "
            \bold
            \fontsize #3
            \override #'(font-name . "Palatino")
            \concat {
                \override #'(font-name . "Palatino Italic")
                Huitzil
                \hspace #3
                —
                \hspace #3
                \on-the-fly #print-page-number-check-first
                \fromproperty #'page:page-number-string
                \hspace #3
                —
                \hspace #3
                Bača
            }
            " "
    }
    evenHeaderMarkup = \markup \null
    left-margin = 20\mm
    oddFooterMarkup = \evenFooterMarkup
    oddHeaderMarkup = \markup \null
    print-first-page-number = ##f
    print-page-number = ##t
    ragged-bottom = ##t
    ragged-last-bottom = ##t
    right-margin = 20\mm
    markup-system-spacing = #'(
        (basic-distance . 0)
        (minimum-distance . 56)
        (padding . 0)
        (stretchability . 0)
    )
    system-system-spacing = #'(
        (basic-distance . 0)
        (minimum-distance . 22)
        (padding . 0)
        (stretchability . 0)
    )
    top-markup-spacing = #'(
        (basic-distance . 0)
        (minimum-distance . 8)
        (padding . 0)
        (stretchability . 0)
    )
    top-system-spacing = #'(
        (basic-distance . 0)
        (minimum-distance . 14)
        (padding . 0)
        (stretchability . 0)
    )
    top-margin = 10\mm
}

\header {
    composer = \markup {
        \override #'(font-name . "Palatino")
        \fontsize #5 "Trevor Bača"
        \hspace #1
        \fontsize #3.5 "(*1975)"
    }
    tagline = \markup \null
    title = \markup \column {
        \center-align {
            \override #'(font-name . "Palatino")
            \fontsize #16 {
               \line { HUITZIL }
            }
            \null
            \override #'(font-name . "Palatino Italic")
            \fontsize #3 {
               " for Alan Toda-Ambaras "
            }
        }
    }
}

\layout {
    \accidentalStyle neo-modern
    indent = 0
    ragged-bottom = ##t
    ragged-last = ##t
    ragged-right = ##t
}
