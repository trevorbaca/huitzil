\include "/Users/trevorbaca/baca/lilypond/baca.ily"

huitzil-ascending-fingerboard-markup = \baca-boxed-markup
  "ascending fingerboard to LH ..."

huitzil-close-to-lh-markup = \markup
  "(close to LH as poss.)"

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

huitzil-descending-fingerboard-markup = \baca-boxed-markup
  "descending fingerboard back to bridge ..."

huitzil-directly-above-end-of-fingerboard-markup = \baca-boxed-markup
  "(directly above end of fingerboard)"

huitzil-directly-above-end-of-fingerboard-column-markup = \markup
  \column {
    \line { (directly above }
    \line { end of fingerboard) }
    }

huitzil-directly-on-bridge-markup = \markup
  "(directly on bridge)"

huitzil-phrasing-dynamics-see-preface-markup = \markup
  \italic "phrasing, dynamics: see preface"

huitzil-sliding-back-onto-string-markup = \baca-boxed-markup
  "sliding back onto string ..."

huitzil-sliding-from-bridge-onto-string-markup = \baca-boxed-markup
  "sliding from bridge onto string ..."

huitzil-sliding-onto-string-markup = \baca-boxed-markup
  "sliding onto string ..."

huitzil-trem-moderato-markup = \markup "trem. moderato"

huitzil-string-three-to-four-markup = \markup "III→IV"
