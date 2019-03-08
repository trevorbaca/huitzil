\include "/Users/trevorbaca/baca/lilypond/baca.ily"

%%% COLOPHON %%%

huitzil-colophon-markup = \markup
    \override #'(font-name . "Adobe Garamond Pro")
    \with-dimensions-from \null
    \with-color #black
    \fontsize #-1
    \override #'(baseline-skip . 4)
    \general-align #X #right
    \right-column
    {
        \line { Cambridge, Mass. (September – October 2014); }
        \line { Madison, Wisc. (February – March 2019). }
    }

%%% DIRECTIVES %%%

huitzil-close-to-lh-markup = \markup
    "(close to LH as poss.)"

huitzil-ascending-fingerboard-markup = \markup
    \override #'(box-padding . 0.5)
    \box
    "ascending fingerboard to LH ..."

huitzil-descending-fingerboard-markup = \markup
    \override #'(box-padding . 0.5)
    \box
    "descending fingerboard back to bridge ..."

huitzil-directly-above-end-of-fingerboard-markup = \markup
    "(directly above end of fingerboard)"

huitzil-directly-above-end-of-fingerboard-column-markup = \markup
    \column
    {
        \line { (directly above }
        \line { end of fingerboard) }
    }

huitzil-directly-on-bridge-markup = \markup
    "(directly on bridge)"

huitzil-phrasing-dynamics-see-preface-markup = \markup
    \italic
    "phrasing, dynamics: see preface"

huitzil-sliding-back-onto-string-markup = \markup
    \override #'(box-padding . 0.5)
    \box
    "sliding back onto string ..."

huitzil-sliding-from-bridge-onto-string-markup = \markup
    \override #'(box-padding . 0.5)
    \box
    "sliding from bridge onto string ..."

huitzil-sliding-onto-string-markup = \markup
    \override #'(box-padding . 0.5)
    \box
    "sliding onto string ..."
