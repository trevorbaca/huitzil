\include "/Users/trevorbaca/baca/lilypond/baca.ily"

%%% COLOPHON %%%

huitzil-colophon-markup = \markup {
    \override #'(font-name . "Palatino")
    \with-color #black
    \override #'(baseline-skip . 4)
    \right-column {
        \line { Cambridge, MA \hspace #0.75 (Aug. - Oct. 2014). }
        \line { Madison, WI \hspace #0.75 (Feb. 2019). }
        }
    }
