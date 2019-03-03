\include "/Users/trevorbaca/baca/lilypond/baca.ily"

%%% COLOPHON %%%

huitzil-colophon-markup = \markup
    \override #'(font-name . "Palatino")
    \with-color #black
    \override #'(baseline-skip . 4)
    \right-column
    {
        \line { Cambridge, MA }
        \line { Sep. \hspace #0.5 - \hspace #0.5 Oct. 2014; }
        \line { Madison, WI }
        \line { Feb. 2019. }
    }

%%% DIRECTIVES %%%

huitzil-cadenza-markup = \markup
    \override #'(box-padding . 0.5)
    \box
    "directly on bridge (no pitch): where IV crosses wood"

huitzil-pitch-reenters-markup = \markup
    \override #'(box-padding . 0.5)
    \box
    "pitch reenters"

huitzil-slide-markup = \markup
    \override #'(box-padding . 0.5)
    \box
    "slide onto string ..."
