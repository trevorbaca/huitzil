\include "/Users/trevorbaca/baca/lilypond/baca.ily"

%%% COLOPHON %%%

huitzil-colophon-markup = \markup
    \override #'(font-name . "Palatino")
    \with-dimensions-from \null
    \with-color #black
    \override #'(baseline-skip . 4)
    \general-align #X #right
    \right-column
    {
        \line { Cambridge, Mass. (Sep – Oct 2014); }
        \line { Madison, Wisc. (Feb – Mar 2019). }
    }

%%% DIRECTIVES %%%

huitzil-as-close-to-lh-markup = \markup
    "(as close to LH as poss.)"

huitzil-ascending-fingerboard-markup = \markup
    \override #'(box-padding . 0.5)
    \box
    "ascending fingerboard to LH ..."

huitzil-cadenza-markup = \markup
    \override #'(box-padding . 0.5)
    \box
    "directly on bridge where IV crosses wood"

huitzil-descending-fingerboard-markup = \markup
    \override #'(box-padding . 0.5)
    \box
    "descending fingerboard to bridge ..."

huitzil-directly-above-end-of-fingerboard-markup = \markup
    "(directly above end of fingerboard)"

huitzil-directly-on-bridge-markup = \markup
    "(directly on bridge)"

huitzil-pitch-reenters-markup = \markup
    \override #'(box-padding . 0.5)
    \box
    "pitch reenters"

huitzil-slide-markup = \markup
    \override #'(box-padding . 0.5)
    \box
    "slide onto string ..."
