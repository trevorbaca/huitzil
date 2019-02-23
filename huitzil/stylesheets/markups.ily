\include "/Users/trevorbaca/baca/lilypond/baca.ily"

%%% COLOPHON %%%

huitzil-colophon-markup = \markup {
    \override #'(font-name . "Palatino")
    \with-color #black
    \override #'(baseline-skip . 4)
    \right-column {
        \line { Cambridge, MA }
        \line { Sep. \hspace #0.5 - \hspace #0.5 Oct. 2014; }
        \line { Madison, WI }
        \line { Feb. 2019. }
        }
    }
