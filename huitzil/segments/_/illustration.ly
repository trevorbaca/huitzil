\version "2.19.65"
\language "english"

#(ly:set-option 'relative-includes #t)

\include "../../stylesheets/stylesheet.ily"

\header {
    title = ##f
    composer = ##f
}

\score {
    \context Score = "Score" <<
        \context GlobalContext = "Global Context" <<
            \context GlobalRests = "Global Rests" {
                {
                    \time 7/8
                    s1 * 7/8
                }
                {
                    \time 15/16
                    s1 * 15/16
                }
                {
                    \time 11/16
                    s1 * 11/16
                }
                {
                    \time 31/32
                    s1 * 31/32
                }
                {
                    \time 15/16
                    s1 * 15/16
                }
                {
                    \time 17/32
                    s1 * 17/32
                }
                {
                    \time 7/8
                    s1 * 7/8
                }
                {
                    \time 1/1
                    s1 * 1
                }
                {
                    \time 15/16
                    s1 * 15/16
                }
                {
                    \time 7/8
                    s1 * 7/8
                }
                {
                    \time 1/1
                    s1 * 1
                }
                {
                    \time 3/4
                    s1 * 3/4
                }
                {
                    \time 9/4
                    s1 * 9/4
                }
                {
                    \time 5/4
                    s1 * 5/4
                }
                {
                    \time 1/4
                    s1 * 1/4
                }
                {
                    \time 2/1
                    s1 * 2
                }
                {
                    \time 9/8
                    s1 * 9/8
                }
                {
                    \time 7/8
                    s1 * 7/8
                }
                {
                    \time 3/4
                    s1 * 3/4
                }
                {
                    \time 5/8
                    s1 * 5/8
                }
                {
                    \time 7/8
                    s1 * 7/8
                }
                {
                    \time 1/2
                    s1 * 1/2
                }
                {
                    \time 5/4
                    s1 * 5/4
                }
                {
                    \time 9/16
                    s1 * 9/16
                }
                {
                    \time 3/4
                    s1 * 3/4
                }
                {
                    \time 3/8
                    s1 * 3/8
                }
                {
                    \time 5/4
                    s1 * 5/4
                }
                {
                    \time 1/1
                    s1 * 1
                }
                {
                    \time 1/2
                    s1 * 1/2
                }
                {
                    \time 1/1
                    s1 * 1
                }
                {
                    s1 * 1
                }
                {
                    \time 15/16
                    s1 * 15/16
                }
                {
                    \time 9/8
                    s1 * 9/8
                }
                {
                    \time 1/2
                    s1 * 1/2
                }
                {
                    \time 5/4
                    s1 * 5/4
                }
                {
                    \time 13/16
                    s1 * 13/16
                }
                {
                    \time 5/8
                    s1 * 5/8
                }
                {
                    \time 5/4
                    s1 * 5/4
                }
                {
                    \time 1/1
                    s1 * 1
                }
                {
                    \time 5/16
                    s1 * 5/16
                }
                {
                    \time 1/1
                    s1 * 1
                }
                {
                    \time 9/16
                    s1 * 9/16
                }
                {
                    \time 9/8
                    s1 * 9/8
                }
                {
                    \time 1/2
                    s1 * 1/2
                }
                {
                    \time 9/16
                    s1 * 9/16
                }
                {
                    \time 3/4
                    s1 * 3/4
                }
                {
                    \time 7/8
                    s1 * 7/8
                }
                {
                    \time 1/1
                    s1 * 1
                }
                {
                    \time 1/4
                    s1 * 1/4
                }
                {
                    \time 3/2
                    s1 * 3/2
                }
                {
                    \time 1/1
                    s1 * 1
                }
                {
                    s1 * 1
                }
                {
                    \time 9/4
                    s1 * 9/4
                }
                {
                    \time 3/2
                    s1 * 3/2
                }
                {
                    \time 1/1
                    s1 * 1
                }
                {
                    \time 3/4
                    s1 * 3/4
                }
            }
            \context GlobalSkips = "Global Skips" {
                {
                    \time 7/8
                    s1 * 7/8
                }
                {
                    \time 15/16
                    s1 * 15/16
                }
                {
                    \time 11/16
                    s1 * 11/16
                }
                {
                    \time 31/32
                    s1 * 31/32
                }
                {
                    \time 15/16
                    s1 * 15/16
                }
                {
                    \time 17/32
                    s1 * 17/32
                }
                {
                    \time 7/8
                    s1 * 7/8
                }
                {
                    \time 4/4
                    s1 * 1
                }
                {
                    \time 15/16
                    s1 * 15/16
                }
                {
                    \time 7/8
                    s1 * 7/8
                }
                {
                    \time 4/4
                    s1 * 1
                }
                {
                    \time 3/4
                    s1 * 3/4
                }
                {
                    \time 9/4
                    s1 * 9/4
                }
                {
                    \time 5/4
                    s1 * 5/4
                }
                {
                    \time 1/4
                    s1 * 1/4
                }
                {
                    \time 8/4
                    s1 * 2
                }
                {
                    \time 9/8
                    s1 * 9/8
                }
                {
                    \time 7/8
                    s1 * 7/8
                }
                {
                    \time 3/4
                    s1 * 3/4
                }
                {
                    \time 5/8
                    s1 * 5/8
                }
                {
                    \time 7/8
                    s1 * 7/8
                }
                {
                    \time 2/4
                    s1 * 1/2
                }
                {
                    \time 5/4
                    s1 * 5/4
                }
                {
                    \time 9/16
                    s1 * 9/16
                }
                {
                    \time 3/4
                    s1 * 3/4
                }
                {
                    \time 3/8
                    s1 * 3/8
                }
                {
                    \time 5/4
                    s1 * 5/4
                }
                {
                    \time 4/4
                    s1 * 1
                }
                {
                    \time 2/4
                    s1 * 1/2
                }
                {
                    \time 4/4
                    s1 * 1
                }
                {
                    s1 * 1
                }
                {
                    \time 15/16
                    s1 * 15/16
                }
                {
                    \time 9/8
                    s1 * 9/8
                }
                {
                    \time 2/4
                    s1 * 1/2
                }
                {
                    \time 5/4
                    s1 * 5/4
                }
                {
                    \time 13/16
                    s1 * 13/16
                }
                {
                    \time 5/8
                    s1 * 5/8
                }
                {
                    \time 5/4
                    s1 * 5/4
                }
                {
                    \time 4/4
                    s1 * 1
                }
                {
                    \time 5/16
                    s1 * 5/16
                }
                {
                    \time 4/4
                    s1 * 1
                }
                {
                    \time 9/16
                    s1 * 9/16
                }
                {
                    \time 9/8
                    s1 * 9/8
                }
                {
                    \time 2/4
                    s1 * 1/2
                }
                {
                    \time 9/16
                    s1 * 9/16
                }
                {
                    \time 3/4
                    s1 * 3/4
                }
                {
                    \time 7/8
                    s1 * 7/8
                }
                {
                    \time 4/4
                    s1 * 1
                }
                {
                    \time 1/4
                    s1 * 1/4
                }
                {
                    \time 6/4
                    s1 * 3/2
                }
                {
                    \time 4/4
                    s1 * 1
                }
                {
                    s1 * 1
                }
                {
                    \time 9/4
                    s1 * 9/4
                }
                {
                    \time 6/4
                    s1 * 3/2
                }
                {
                    \time 4/4
                    s1 * 1
                }
                {
                    \time 3/4
                    s1 * 3/4
                }
            }
        >>
        \context Staff = "Staff" <<
            \context Voice = "Music Voice" {
                \tweak text #tuplet-number::calc-fraction-text
                \times 6/5 {
                    \tempo 8=78
                    \set stemLeftBeamCount = #0
                    \set stemRightBeamCount = #2
                    \once \override Beam.positions = #'(-4.5 . -4.5)
                    \once \override Stem.direction = #down
                    \clef "bass"
                    fs16 [
                    \set stemLeftBeamCount = #2
                    \set stemRightBeamCount = #2
                    \once \override Stem.direction = #down
                    e16
                    \set stemLeftBeamCount = #2
                    \set stemRightBeamCount = #2
                    \once \override Stem.direction = #down
                    f16
                    \set stemLeftBeamCount = #2
                    \set stemRightBeamCount = #2
                    \once \override Stem.direction = #down
                    g16
                    \set stemLeftBeamCount = #2
                    \set stemRightBeamCount = #0
                    \once \override Stem.direction = #down
                    af16 ]
                }
                {
                    \set stemLeftBeamCount = #0
                    \set stemRightBeamCount = #1
                    \once \override Beam.positions = #'(5.5 . 5.5)
                    \once \override Stem.direction = #up
                    a,8 [
                    \set stemLeftBeamCount = #1
                    \set stemRightBeamCount = #0
                    \once \override Stem.direction = #up
                    ef8 ]
                }
                {
                    \set stemLeftBeamCount = #0
                    \set stemRightBeamCount = #2
                    \once \override Beam.positions = #'(-4.5 . -4.5)
                    \once \override Stem.direction = #down
                    d16 [
                    \set stemLeftBeamCount = #2
                    \set stemRightBeamCount = #2
                    \once \override Stem.direction = #down
                    e16
                    \set stemLeftBeamCount = #2
                    \set stemRightBeamCount = #0
                    \once \override Stem.direction = #down
                    f16 ]
                }
                {
                    \once \override Beam.positions = #'(5.5 . 5.5)
                    \once \override Stem.direction = #up
                    cs16
                }
                \tweak text #tuplet-number::calc-fraction-text
                \times 9/8 {
                    \set stemLeftBeamCount = #0
                    \set stemRightBeamCount = #1
                    \once \override Beam.positions = #'(5.5 . 5.5)
                    \once \override Stem.direction = #up
                    bf,8 [
                    \set stemLeftBeamCount = #1
                    \set stemRightBeamCount = #1
                    \once \override Stem.direction = #up
                    a,8
                    \set stemLeftBeamCount = #1
                    \set stemRightBeamCount = #1
                    \once \override Stem.direction = #up
                    b,8
                    \set stemLeftBeamCount = #1
                    \set stemRightBeamCount = #0
                    \once \override Stem.direction = #up
                    c8 ]
                }
                \tweak text #tuplet-number::calc-fraction-text
                \times 6/5 {
                    \set stemLeftBeamCount = #0
                    \set stemRightBeamCount = #2
                    \once \override Beam.positions = #'(5.5 . 5.5)
                    \once \override Stem.direction = #up
                    f,16 [
                    \set stemLeftBeamCount = #2
                    \set stemRightBeamCount = #2
                    \once \override Stem.direction = #up
                    a,16
                    \set stemLeftBeamCount = #2
                    \set stemRightBeamCount = #2
                    \once \override Stem.direction = #up
                    ef16
                    \set stemLeftBeamCount = #2
                    \set stemRightBeamCount = #2
                    \once \override Stem.direction = #up
                    d16
                    \set stemLeftBeamCount = #2
                    \set stemRightBeamCount = #0
                    \once \override Stem.direction = #up
                    e16 ]
                }
                {
                    \set stemLeftBeamCount = #0
                    \set stemRightBeamCount = #1
                    \once \override Beam.positions = #'(5.5 . 5.5)
                    \once \override Stem.direction = #up
                    c8 [
                    \set stemLeftBeamCount = #1
                    \set stemRightBeamCount = #0
                    \once \override Stem.direction = #up
                    cs8 ]
                }
                {
                    \set stemLeftBeamCount = #0
                    \set stemRightBeamCount = #2
                    \once \override Beam.positions = #'(5.5 . 5.5)
                    \once \override Stem.direction = #up
                    bf,16 [
                    \set stemLeftBeamCount = #2
                    \set stemRightBeamCount = #2
                    \once \override Stem.direction = #up
                    a,16
                    \set stemLeftBeamCount = #2
                    \set stemRightBeamCount = #0
                    \once \override Stem.direction = #up
                    b,16 ]
                }
                \times 4/5 {
                    \set stemLeftBeamCount = #0
                    \set stemRightBeamCount = #2
                    \once \override Beam.positions = #'(5.5 . 5.5)
                    \once \override Stem.direction = #up
                    af,16 [
                    \set stemLeftBeamCount = #2
                    \set stemRightBeamCount = #2
                    \once \override Stem.direction = #up
                    fs,16
                    \set stemLeftBeamCount = #2
                    \set stemRightBeamCount = #2
                    \once \override Stem.direction = #up
                    e16
                    \set stemLeftBeamCount = #2
                    \set stemRightBeamCount = #2
                    \once \override Stem.direction = #up
                    f,16
                    \set stemLeftBeamCount = #2
                    \set stemRightBeamCount = #0
                    \once \override Stem.direction = #up
                    g,16 ]
                }
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/4 {
                    \set stemLeftBeamCount = #0
                    \set stemRightBeamCount = #1
                    \once \override Beam.positions = #'(5.5 . 5.5)
                    \once \override Stem.direction = #up
                    b,8 [
                    \set stemLeftBeamCount = #1
                    \set stemRightBeamCount = #0
                    \once \override Stem.direction = #up
                    c8 ]
                }
                \tweak text #tuplet-number::calc-fraction-text
                \times 4/3 {
                    \set stemLeftBeamCount = #0
                    \set stemRightBeamCount = #2
                    \once \override Beam.positions = #'(5.5 . 5.5)
                    \once \override Stem.direction = #up
                    cs16 [
                    \set stemLeftBeamCount = #2
                    \set stemRightBeamCount = #2
                    \once \override Stem.direction = #up
                    bf,16
                    \set stemLeftBeamCount = #2
                    \set stemRightBeamCount = #0
                    \once \override Stem.direction = #up
                    a,16 ]
                }
                \tweak text #tuplet-number::calc-fraction-text
                \times 3/2 {
                    \once \override Beam.positions = #'(-4.5 . -4.5)
                    \once \override Stem.direction = #down
                    g8.
                }
                {
                    \set stemLeftBeamCount = #0
                    \set stemRightBeamCount = #2
                    \once \override Beam.positions = #'(-4.5 . -4.5)
                    \once \override Stem.direction = #down
                    af16 [
                    \set stemLeftBeamCount = #2
                    \set stemRightBeamCount = #2
                    \once \override Stem.direction = #down
                    fs16
                    \set stemLeftBeamCount = #2
                    \set stemRightBeamCount = #2
                    \once \override Stem.direction = #down
                    e16
                    \set stemLeftBeamCount = #2
                    \set stemRightBeamCount = #0
                    \once \override Stem.direction = #down
                    f16 ]
                }
                \times 4/5 {
                    \set stemLeftBeamCount = #0
                    \set stemRightBeamCount = #2
                    \once \override Beam.positions = #'(5.5 . 5.5)
                    \once \override Stem.direction = #up
                    e16 [
                    \set stemLeftBeamCount = #2
                    \set stemRightBeamCount = #2
                    \once \override Stem.direction = #up
                    f16
                    \set stemLeftBeamCount = #2
                    \set stemRightBeamCount = #2
                    \once \override Stem.direction = #up
                    a,16
                    \set stemLeftBeamCount = #2
                    \set stemRightBeamCount = #2
                    \once \override Stem.direction = #up
                    ef16
                    \set stemLeftBeamCount = #2
                    \set stemRightBeamCount = #0
                    \once \override Stem.direction = #up
                    d16 ]
                }
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/4 {
                    \set stemLeftBeamCount = #0
                    \set stemRightBeamCount = #1
                    \once \override Beam.positions = #'(5.5 . 5.5)
                    \once \override Stem.direction = #up
                    f,8 [
                    \set stemLeftBeamCount = #1
                    \set stemRightBeamCount = #0
                    \once \override Stem.direction = #up
                    g,8 ]
                }
                \tweak text #tuplet-number::calc-fraction-text
                \times 4/3 {
                    \set stemLeftBeamCount = #0
                    \set stemRightBeamCount = #2
                    \once \override Beam.positions = #'(5.5 . 5.5)
                    \once \override Stem.direction = #up
                    af,16 [
                    \set stemLeftBeamCount = #2
                    \set stemRightBeamCount = #2
                    \once \override Stem.direction = #up
                    fs,16
                    \set stemLeftBeamCount = #2
                    \set stemRightBeamCount = #0
                    \once \override Stem.direction = #up
                    e16 ]
                }
                \tweak text #tuplet-number::calc-fraction-text
                \times 3/2 {
                    \set stemLeftBeamCount = #0
                    \set stemRightBeamCount = #2
                    \once \override Beam.positions = #'(5.5 . 5.5)
                    \once \override Stem.direction = #up
                    cs16. [
                    \set stemLeftBeamCount = #2
                    \set stemRightBeamCount = #0
                    \once \override Stem.direction = #up
                    d16. ]
                }
                \tweak text #tuplet-number::calc-fraction-text
                \times 4/3 {
                    \set stemLeftBeamCount = #0
                    \set stemRightBeamCount = #2
                    \once \override Beam.positions = #'(5.5 . 5.5)
                    \once \override Stem.direction = #up
                    b,16 [
                    \set stemLeftBeamCount = #2
                    \set stemRightBeamCount = #0
                    \once \override Beam.positions = #'(5.5 . 5.5)
                    \once \override Stem.direction = #up
                    bf,16 ]
                    \once \override Accidental.color = #blue
                    \once \override Beam.color = #blue
                    \once \override Beam.positions = #'(-4.5 . -4.5)
                    \once \override Dots.color = #blue
                    \once \override NoteHead.color = #blue
                    \once \override Slur.color = #blue
                    \once \override Stem.color = #blue
                    \once \override Stem.direction = #down
                    c4
                }
                {
                    \set stemLeftBeamCount = #0
                    \set stemRightBeamCount = #2
                    \once \override Beam.positions = #'(5.5 . 5.5)
                    \once \override Stem.direction = #up
                    a,16 [
                    \set stemLeftBeamCount = #2
                    \set stemRightBeamCount = #2
                    \once \override Beam.positions = #'(5.5 . 5.5)
                    \once \override Stem.direction = #up
                    g16
                    \set stemLeftBeamCount = #2
                    \set stemRightBeamCount = #2
                    \once \override Beam.positions = #'(5.5 . 5.5)
                    \once \override Stem.direction = #up
                    f16
                    \set stemLeftBeamCount = #2
                    \set stemRightBeamCount = #2
                    \once \override Beam.positions = #'(5.5 . 5.5)
                    \once \override Stem.direction = #up
                    fs16
                    \set stemLeftBeamCount = #2
                    \set stemRightBeamCount = #0
                    \once \override Beam.positions = #'(5.5 . 5.5)
                    \once \override Stem.direction = #up
                    af16 ]
                }
                {
                    \set stemLeftBeamCount = #0
                    \set stemRightBeamCount = #3
                    \once \override Beam.positions = #'(5.5 . 5.5)
                    \once \override Stem.direction = #up
                    c32 [
                    \set stemLeftBeamCount = #3
                    \set stemRightBeamCount = #0
                    \once \override Beam.positions = #'(5.5 . 5.5)
                    \once \override Stem.direction = #up
                    cs32 ]
                }
                \tweak text #tuplet-number::calc-fraction-text
                \times 11/6 {
                    \set stemLeftBeamCount = #0
                    \set stemRightBeamCount = #2
                    \once \override Beam.positions = #'(5.5 . 5.5)
                    \once \override Stem.direction = #up
                    d16 [
                    \set stemLeftBeamCount = #2
                    \set stemRightBeamCount = #0
                    \once \override Beam.positions = #'(5.5 . 5.5)
                    \once \override Stem.direction = #up
                    b,16 ]
                    \once \override Accidental.color = #blue
                    \once \override Beam.color = #blue
                    \once \override Beam.positions = #'(-4.5 . -4.5)
                    \once \override Dots.color = #blue
                    \once \override NoteHead.color = #blue
                    \once \override Slur.color = #blue
                    \once \override Stem.color = #blue
                    \once \override Stem.direction = #down
                    bf,4
                }
                \tweak text #tuplet-number::calc-fraction-text
                \times 5/4 {
                    \once \override Accidental.color = #blue
                    \once \override Beam.color = #blue
                    \once \override Beam.positions = #'(-4.5 . -4.5)
                    \once \override Dots.color = #blue
                    \once \override NoteHead.color = #blue
                    \once \override Slur.color = #blue
                    \once \override Stem.color = #blue
                    \once \override Stem.direction = #down
                    af,4
                }
                \tweak text #tuplet-number::calc-fraction-text
                \times 3/2 {
                    \set stemLeftBeamCount = #0
                    \set stemRightBeamCount = #2
                    \once \override Beam.positions = #'(5.5 . 5.5)
                    \once \override Stem.direction = #up
                    a,16. [
                    \set stemLeftBeamCount = #2
                    \set stemRightBeamCount = #2
                    \once \override Stem.direction = #up
                    g,16.
                    \set stemLeftBeamCount = #2
                    \set stemRightBeamCount = #2
                    \once \override Stem.direction = #up
                    f,16.
                    \set stemLeftBeamCount = #2
                    \set stemRightBeamCount = #0
                    \once \override Stem.direction = #up
                    fs,16. ]
                }
                {
                    \set stemLeftBeamCount = #0
                    \set stemRightBeamCount = #2
                    \once \override Beam.positions = #'(5.5 . 5.5)
                    \once \override Stem.direction = #up
                    f,16 [
                    \set stemLeftBeamCount = #2
                    \set stemRightBeamCount = #2
                    \once \override Stem.direction = #up
                    fs,16
                    \set stemLeftBeamCount = #2
                    \set stemRightBeamCount = #2
                    \once \override Stem.direction = #up
                    bf,16
                    \set stemLeftBeamCount = #2
                    \set stemRightBeamCount = #2
                    \once \override Stem.direction = #up
                    e16
                    \set stemLeftBeamCount = #2
                    \set stemRightBeamCount = #0
                    \once \override Stem.direction = #up
                    ef16 ]
                }
                {
                    \set stemLeftBeamCount = #0
                    \set stemRightBeamCount = #3
                    \once \override Beam.positions = #'(5.5 . 5.5)
                    \once \override Stem.direction = #up
                    fs,32 [
                    \set stemLeftBeamCount = #3
                    \set stemRightBeamCount = #0
                    \once \override Stem.direction = #up
                    af,32 ]
                }
                \tweak text #tuplet-number::calc-fraction-text
                \times 14/9 {
                    \once \override Beam.positions = #'(5.5 . 5.5)
                    \once \override Stem.direction = #up
                    a,16
                    \once \override Accidental.color = #blue
                    \once \override Beam.color = #blue
                    \once \override Beam.positions = #'(-4.5 . -4.5)
                    \once \override Dots.color = #blue
                    \once \override NoteHead.color = #blue
                    \once \override Slur.color = #blue
                    \once \override Stem.color = #blue
                    \once \override Stem.direction = #down
                    g,4
                    \once \override Accidental.color = #blue
                    \once \override Beam.color = #blue
                    \once \override Beam.positions = #'(-4.5 . -4.5)
                    \once \override Dots.color = #blue
                    \once \override NoteHead.color = #blue
                    \once \override Slur.color = #blue
                    \once \override Stem.color = #blue
                    \once \override Stem.direction = #down
                    f,4
                }
                \tweak text #tuplet-number::calc-fraction-text
                \times 6/5 {
                    \set stemLeftBeamCount = #0
                    \set stemRightBeamCount = #2
                    \once \override Beam.positions = #'(5.5 . 5.5)
                    \once \override Stem.direction = #up
                    ef16 [
                    \set stemLeftBeamCount = #2
                    \set stemRightBeamCount = #2
                    \once \override Beam.positions = #'(5.5 . 5.5)
                    \once \override Stem.direction = #up
                    f16
                    \set stemLeftBeamCount = #2
                    \set stemRightBeamCount = #2
                    \once \override Beam.positions = #'(5.5 . 5.5)
                    \once \override Stem.direction = #up
                    fs16
                    \set stemLeftBeamCount = #2
                    \set stemRightBeamCount = #2
                    \once \override Beam.positions = #'(5.5 . 5.5)
                    \once \override Stem.direction = #up
                    bf,16
                    \set stemLeftBeamCount = #2
                    \set stemRightBeamCount = #0
                    \once \override Beam.positions = #'(5.5 . 5.5)
                    \once \override Stem.direction = #up
                    e16 ]
                }
                \tweak text #tuplet-number::calc-fraction-text
                \times 5/4 {
                    \once \override Accidental.color = #blue
                    \once \override Beam.color = #blue
                    \once \override Beam.positions = #'(-4.5 . -4.5)
                    \once \override Dots.color = #blue
                    \once \override NoteHead.color = #blue
                    \once \override Slur.color = #blue
                    \once \override Stem.color = #blue
                    \once \override Stem.direction = #down
                    bf,4
                    \once \override Accidental.color = #blue
                    \once \override Beam.color = #blue
                    \once \override Beam.positions = #'(-4.5 . -4.5)
                    \once \override Dots.color = #blue
                    \once \override NoteHead.color = #blue
                    \once \override Slur.color = #blue
                    \once \override Stem.color = #blue
                    \once \override Stem.direction = #down
                    c4
                }
                {
                    \set stemLeftBeamCount = #0
                    \set stemRightBeamCount = #2
                    \once \override Beam.positions = #'(5.5 . 5.5)
                    \once \override Stem.direction = #up
                    cs16 [
                    \set stemLeftBeamCount = #2
                    \set stemRightBeamCount = #2
                    \once \override Beam.positions = #'(5.5 . 5.5)
                    \once \override Stem.direction = #up
                    d16
                    \set stemLeftBeamCount = #2
                    \set stemRightBeamCount = #0
                    \once \override Beam.positions = #'(5.5 . 5.5)
                    \once \override Stem.direction = #up
                    b,16 ]
                }
                {
                    \once \override Beam.positions = #'(5.5 . 5.5)
                    \once \override Stem.direction = #up
                    e16
                }
                {
                    \once \override Accidental.color = #blue
                    \once \override Beam.color = #blue
                    \once \override Beam.positions = #'(-4.5 . -4.5)
                    \once \override Dots.color = #blue
                    \once \override NoteHead.color = #blue
                    \once \override Slur.color = #blue
                    \once \override Stem.color = #blue
                    \once \override Stem.direction = #down
                    ef,2
                }
                \tweak text #tuplet-number::calc-fraction-text
                \times 3/2 {
                    \once \override Accidental.color = #blue
                    \once \override Beam.color = #blue
                    \once \override Dots.color = #blue
                    \once \override NoteHead.color = #blue
                    \once \override Slur.color = #blue
                    \once \override Stem.color = #blue
                    d4.
                    \once \override Accidental.color = #blue
                    \once \override Beam.color = #blue
                    \once \override Dots.color = #blue
                    \once \override NoteHead.color = #blue
                    \once \override Slur.color = #blue
                    \once \override Stem.color = #blue
                    e,4.
                    \once \override Accidental.color = #blue
                    \once \override Beam.color = #blue
                    \once \override Dots.color = #blue
                    \once \override NoteHead.color = #blue
                    \once \override Slur.color = #blue
                    \once \override Stem.color = #blue
                    fs,4.
                    \once \override Accidental.color = #blue
                    \once \override Beam.color = #blue
                    \once \override Dots.color = #blue
                    \once \override NoteHead.color = #blue
                    \once \override Slur.color = #blue
                    \once \override Stem.color = #blue
                    f,4.
                }
                {
                    \once \override Accidental.color = #blue
                    \once \override Beam.color = #blue
                    \once \override Dots.color = #blue
                    \once \override NoteHead.color = #blue
                    \once \override Slur.color = #blue
                    \once \override Stem.color = #blue
                    fs,4
                    \once \override Accidental.color = #blue
                    \once \override Beam.color = #blue
                    \once \override Dots.color = #blue
                    \once \override NoteHead.color = #blue
                    \once \override Slur.color = #blue
                    \once \override Stem.color = #blue
                    f,4
                    \once \override Accidental.color = #blue
                    \once \override Beam.color = #blue
                    \once \override Dots.color = #blue
                    \once \override NoteHead.color = #blue
                    \once \override Slur.color = #blue
                    \once \override Stem.color = #blue
                    cs4
                    \once \override Accidental.color = #blue
                    \once \override Beam.color = #blue
                    \once \override Dots.color = #blue
                    \once \override NoteHead.color = #blue
                    \once \override Slur.color = #blue
                    \once \override Stem.color = #blue
                    g,4
                    \once \override Accidental.color = #blue
                    \once \override Beam.color = #blue
                    \once \override Dots.color = #blue
                    \once \override NoteHead.color = #blue
                    \once \override Slur.color = #blue
                    \once \override Stem.color = #blue
                    af,4
                }
                {
                    \set stemLeftBeamCount = #0
                    \set stemRightBeamCount = #1
                    \once \override Accidental.color = #blue
                    \once \override Beam.color = #blue
                    \once \override Beam.positions = #'(5.5 . 5.5)
                    \once \override Dots.color = #blue
                    \once \override NoteHead.color = #blue
                    \once \override Slur.color = #blue
                    \once \override Stem.color = #blue
                    \once \override Stem.direction = #up
                    f,8 [
                    \set stemLeftBeamCount = #1
                    \set stemRightBeamCount = #0
                    \once \override Accidental.color = #blue
                    \once \override Beam.color = #blue
                    \once \override Dots.color = #blue
                    \once \override NoteHead.color = #blue
                    \once \override Slur.color = #blue
                    \once \override Stem.color = #blue
                    \once \override Stem.direction = #up
                    ef,8 ]
                }
                \tweak text #tuplet-number::calc-fraction-text
                \times 4/3 {
                    \once \override Accidental.color = #blue
                    \once \override Beam.color = #blue
                    \once \override Dots.color = #blue
                    \once \override NoteHead.color = #blue
                    \once \override Slur.color = #blue
                    \once \override Stem.color = #blue
                    d2
                    \once \override Accidental.color = #blue
                    \once \override Beam.color = #blue
                    \once \override Dots.color = #blue
                    \once \override NoteHead.color = #blue
                    \once \override Slur.color = #blue
                    \once \override Stem.color = #blue
                    e,2
                    \once \override Accidental.color = #blue
                    \once \override Beam.color = #blue
                    \once \override Dots.color = #blue
                    \once \override NoteHead.color = #blue
                    \once \override Slur.color = #blue
                    \once \override Stem.color = #blue
                    fs,2
                }
                \tweak text #tuplet-number::calc-fraction-text
                \times 9/7 {
                    \once \override Accidental.color = #blue
                    \once \override Beam.color = #blue
                    \once \override Beam.positions = #'(-4.5 . -4.5)
                    \once \override Dots.color = #blue
                    \once \override NoteHead.color = #blue
                    \once \override Slur.color = #blue
                    \once \override Stem.color = #blue
                    \once \override Stem.direction = #down
                    f,4
                    \set stemLeftBeamCount = #0
                    \set stemRightBeamCount = #1
                    \once \override Accidental.color = #red
                    \once \override Beam.color = #red
                    \once \override Beam.positions = #'(5.5 . 5.5)
                    \once \override Dots.color = #red
                    \once \override NoteHead.color = #red
                    \once \override Slur.color = #red
                    \once \override Stem.color = #red
                    \once \override Stem.direction = #up
                    g8 [
                    \set stemLeftBeamCount = #1
                    \set stemRightBeamCount = #1
                    \once \override Accidental.color = #red
                    \once \override Beam.color = #red
                    \once \override Beam.positions = #'(5.5 . 5.5)
                    \once \override Dots.color = #red
                    \once \override NoteHead.color = #red
                    \once \override Slur.color = #red
                    \once \override Stem.color = #red
                    \once \override Stem.direction = #up
                    af8
                    \set stemLeftBeamCount = #1
                    \set stemRightBeamCount = #0
                    \once \override Accidental.color = #red
                    \once \override Beam.color = #red
                    \once \override Beam.positions = #'(5.5 . 5.5)
                    \once \override Dots.color = #red
                    \once \override NoteHead.color = #red
                    \once \override Slur.color = #red
                    \once \override Stem.color = #red
                    \once \override Stem.direction = #up
                    c'8 ]
                    \once \override Accidental.color = #blue
                    \once \override Beam.color = #blue
                    \once \override Beam.positions = #'(-4.5 . -4.5)
                    \once \override Dots.color = #blue
                    \once \override NoteHead.color = #blue
                    \once \override Slur.color = #blue
                    \once \override Stem.color = #blue
                    \once \override Stem.direction = #down
                    fs,4
                }
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/6 {
                    \once \override Accidental.color = #blue
                    \once \override Beam.color = #blue
                    \once \override Beam.positions = #'(-4.5 . -4.5)
                    \once \override Dots.color = #blue
                    \once \override NoteHead.color = #blue
                    \once \override Slur.color = #blue
                    \once \override Stem.color = #blue
                    \once \override Stem.direction = #down
                    c2
                    \once \override Accidental.color = #red
                    \once \override Beam.color = #red
                    \once \override Beam.positions = #'(5.5 . 5.5)
                    \once \override Dots.color = #red
                    \once \override NoteHead.color = #red
                    \once \override Slur.color = #red
                    \once \override Stem.color = #red
                    \once \override Stem.direction = #up
                    d'4
                }
                {
                    \once \override Accidental.color = #red
                    \once \override Beam.color = #red
                    \once \override Beam.positions = #'(5.5 . 5.5)
                    \once \override Dots.color = #red
                    \once \override NoteHead.color = #red
                    \once \override Slur.color = #red
                    \once \override Stem.color = #red
                    \once \override Stem.direction = #up
                    ef8
                    \once \override Accidental.color = #blue
                    \once \override Beam.color = #blue
                    \once \override Beam.positions = #'(-4.5 . -4.5)
                    \once \override Dots.color = #blue
                    \once \override NoteHead.color = #blue
                    \once \override Slur.color = #blue
                    \once \override Stem.color = #blue
                    \once \override Stem.direction = #down
                    e,4
                    \once \override Accidental.color = #blue
                    \once \override Beam.color = #blue
                    \once \override Beam.positions = #'(-4.5 . -4.5)
                    \once \override Dots.color = #blue
                    \once \override NoteHead.color = #blue
                    \once \override Slur.color = #blue
                    \once \override Stem.color = #blue
                    \once \override Stem.direction = #down
                    cs4
                }
                {
                    \once \override Accidental.color = #red
                    \once \override Beam.color = #red
                    \once \override Beam.positions = #'(5.5 . 5.5)
                    \once \override Dots.color = #red
                    \once \override NoteHead.color = #red
                    \once \override Slur.color = #red
                    \once \override Stem.color = #red
                    \once \override Stem.direction = #up
                    fs8
                }
                \tweak text #tuplet-number::calc-fraction-text
                \times 5/4 {
                    \set stemLeftBeamCount = #0
                    \set stemRightBeamCount = #1
                    \once \override Accidental.color = #red
                    \once \override Beam.color = #red
                    \once \override Beam.positions = #'(-4.5 . -4.5)
                    \once \override Dots.color = #red
                    \once \override NoteHead.color = #red
                    \once \override Slur.color = #red
                    \once \override Stem.color = #red
                    \once \override Stem.direction = #down
                    fs8 [
                    \set stemLeftBeamCount = #1
                    \set stemRightBeamCount = #1
                    \once \override Accidental.color = #red
                    \once \override Beam.color = #red
                    \once \override Dots.color = #red
                    \once \override NoteHead.color = #red
                    \once \override Slur.color = #red
                    \once \override Stem.color = #red
                    \once \override Stem.direction = #down
                    af8
                    \set stemLeftBeamCount = #1
                    \set stemRightBeamCount = #1
                    \once \override Accidental.color = #red
                    \once \override Beam.color = #red
                    \once \override Dots.color = #red
                    \once \override NoteHead.color = #red
                    \once \override Slur.color = #red
                    \once \override Stem.color = #red
                    \once \override Stem.direction = #down
                    a8
                    \set stemLeftBeamCount = #1
                    \set stemRightBeamCount = #0
                    \once \override Accidental.color = #red
                    \once \override Beam.color = #red
                    \once \override Dots.color = #red
                    \once \override NoteHead.color = #red
                    \once \override Slur.color = #red
                    \once \override Stem.color = #red
                    \once \override Stem.direction = #down
                    cs8 ]
                }
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/5 {
                    \set stemLeftBeamCount = #0
                    \set stemRightBeamCount = #1
                    \once \override Accidental.color = #red
                    \once \override Beam.color = #red
                    \once \override Beam.positions = #'(-4.5 . -4.5)
                    \once \override Dots.color = #red
                    \once \override NoteHead.color = #red
                    \once \override Slur.color = #red
                    \once \override Stem.color = #red
                    \once \override Stem.direction = #down
                    d8 [
                    \set stemLeftBeamCount = #1
                    \set stemRightBeamCount = #1
                    \once \override Accidental.color = #red
                    \once \override Beam.color = #red
                    \once \override Dots.color = #red
                    \once \override NoteHead.color = #red
                    \once \override Slur.color = #red
                    \once \override Stem.color = #red
                    \once \override Stem.direction = #down
                    cs8
                    \set stemLeftBeamCount = #1
                    \set stemRightBeamCount = #1
                    \once \override Accidental.color = #red
                    \once \override Beam.color = #red
                    \once \override Dots.color = #red
                    \once \override NoteHead.color = #red
                    \once \override Slur.color = #red
                    \once \override Stem.color = #red
                    \once \override Stem.direction = #down
                    ef8
                    \set stemLeftBeamCount = #1
                    \set stemRightBeamCount = #1
                    \once \override Accidental.color = #red
                    \once \override Beam.color = #red
                    \once \override Dots.color = #red
                    \once \override NoteHead.color = #red
                    \once \override Slur.color = #red
                    \once \override Stem.color = #red
                    \once \override Stem.direction = #down
                    e8
                    \set stemLeftBeamCount = #1
                    \set stemRightBeamCount = #0
                    \once \override Accidental.color = #red
                    \once \override Beam.color = #red
                    \once \override Dots.color = #red
                    \once \override NoteHead.color = #red
                    \once \override Slur.color = #red
                    \once \override Stem.color = #red
                    \once \override Stem.direction = #down
                    f8 ]
                }
                {
                    \set stemLeftBeamCount = #0
                    \set stemRightBeamCount = #1
                    \once \override Accidental.color = #red
                    \once \override Beam.color = #red
                    \once \override Beam.positions = #'(-4.5 . -4.5)
                    \once \override Dots.color = #red
                    \once \override NoteHead.color = #red
                    \once \override Slur.color = #red
                    \once \override Stem.color = #red
                    \once \override Stem.direction = #down
                    af8 [
                    \set stemLeftBeamCount = #1
                    \set stemRightBeamCount = #0
                    \once \override Accidental.color = #red
                    \once \override Beam.color = #red
                    \once \override Dots.color = #red
                    \once \override NoteHead.color = #red
                    \once \override Slur.color = #red
                    \once \override Stem.color = #red
                    \once \override Stem.direction = #down
                    a8 ]
                }
                \times 2/3 {
                    \set stemLeftBeamCount = #0
                    \set stemRightBeamCount = #1
                    \once \override Accidental.color = #red
                    \once \override Beam.color = #red
                    \once \override Beam.positions = #'(-4.5 . -4.5)
                    \once \override Dots.color = #red
                    \once \override NoteHead.color = #red
                    \once \override Slur.color = #red
                    \once \override Stem.color = #red
                    \once \override Stem.direction = #down
                    b8 [
                    \set stemLeftBeamCount = #1
                    \set stemRightBeamCount = #1
                    \once \override Accidental.color = #red
                    \once \override Beam.color = #red
                    \once \override Dots.color = #red
                    \once \override NoteHead.color = #red
                    \once \override Slur.color = #red
                    \once \override Stem.color = #red
                    \once \override Stem.direction = #down
                    c'8
                    \set stemLeftBeamCount = #1
                    \set stemRightBeamCount = #0
                    \once \override Accidental.color = #red
                    \once \override Beam.color = #red
                    \once \override Dots.color = #red
                    \once \override NoteHead.color = #red
                    \once \override Slur.color = #red
                    \once \override Stem.color = #red
                    \once \override Stem.direction = #down
                    bf8 ]
                }
                {
                    \once \override Accidental.color = #red
                    \once \override Beam.color = #red
                    \once \override Dots.color = #red
                    \once \override NoteHead.color = #red
                    \once \override Slur.color = #red
                    \once \override Stem.color = #red
                    f4
                    \once \override Accidental.color = #red
                    \once \override Beam.color = #red
                    \once \override Dots.color = #red
                    \once \override NoteHead.color = #red
                    \once \override Slur.color = #red
                    \once \override Stem.color = #red
                    d'4
                    \once \override Accidental.color = #red
                    \once \override Beam.color = #red
                    \once \override Dots.color = #red
                    \once \override NoteHead.color = #red
                    \once \override Slur.color = #red
                    \once \override Stem.color = #red
                    cs'4
                    \once \override Accidental.color = #red
                    \once \override Beam.color = #red
                    \once \override Dots.color = #red
                    \once \override NoteHead.color = #red
                    \once \override Slur.color = #red
                    \once \override Stem.color = #red
                    ef4
                    \once \override Accidental.color = #red
                    \once \override Beam.color = #red
                    \once \override Dots.color = #red
                    \once \override NoteHead.color = #red
                    \once \override Slur.color = #red
                    \once \override Stem.color = #red
                    e4
                }
                \tweak text #tuplet-number::calc-fraction-text
                \times 3/2 {
                    \set stemLeftBeamCount = #0
                    \set stemRightBeamCount = #1
                    \once \override Accidental.color = #red
                    \once \override Beam.color = #red
                    \once \override Beam.positions = #'(-4.5 . -4.5)
                    \once \override Dots.color = #red
                    \once \override NoteHead.color = #red
                    \once \override Slur.color = #red
                    \once \override Stem.color = #red
                    \once \override Stem.direction = #down
                    bf8. [
                    \set stemLeftBeamCount = #1
                    \set stemRightBeamCount = #0
                    \once \override Accidental.color = #red
                    \once \override Beam.color = #red
                    \once \override Dots.color = #red
                    \once \override NoteHead.color = #red
                    \once \override Slur.color = #red
                    \once \override Stem.color = #red
                    \once \override Stem.direction = #down
                    af8. ]
                }
                \tweak text #tuplet-number::calc-fraction-text
                \times 5/3 {
                    \set stemLeftBeamCount = #0
                    \set stemRightBeamCount = #1
                    \once \override Accidental.color = #red
                    \once \override Beam.color = #red
                    \once \override Beam.positions = #'(-4.5 . -4.5)
                    \once \override Dots.color = #red
                    \once \override NoteHead.color = #red
                    \once \override Slur.color = #red
                    \once \override Stem.color = #red
                    \once \override Stem.direction = #down
                    a8 [
                    \set stemLeftBeamCount = #1
                    \set stemRightBeamCount = #1
                    \once \override Accidental.color = #red
                    \once \override Beam.color = #red
                    \once \override Dots.color = #red
                    \once \override NoteHead.color = #red
                    \once \override Slur.color = #red
                    \once \override Stem.color = #red
                    \once \override Stem.direction = #down
                    b,8
                    \set stemLeftBeamCount = #1
                    \set stemRightBeamCount = #0
                    \once \override Accidental.color = #red
                    \once \override Beam.color = #red
                    \once \override Dots.color = #red
                    \once \override NoteHead.color = #red
                    \once \override Slur.color = #red
                    \once \override Stem.color = #red
                    \once \override Stem.direction = #down
                    c8 ]
                }
                {
                    \once \override Accidental.color = #red
                    \once \override Beam.color = #red
                    \once \override Beam.positions = #'(5.5 . 5.5)
                    \once \override Dots.color = #red
                    \once \override NoteHead.color = #red
                    \once \override Slur.color = #red
                    \once \override Stem.color = #red
                    \once \override Stem.direction = #up
                    cs8
                }
                \tweak text #tuplet-number::calc-fraction-text
                \times 3/4 {
                    \set stemLeftBeamCount = #0
                    \set stemRightBeamCount = #1
                    \once \override Accidental.color = #red
                    \once \override Beam.color = #red
                    \once \override Beam.positions = #'(-4.5 . -4.5)
                    \once \override Dots.color = #red
                    \once \override NoteHead.color = #red
                    \once \override Slur.color = #red
                    \once \override Stem.color = #red
                    \once \override Stem.direction = #down
                    g8 [
                    \set stemLeftBeamCount = #1
                    \set stemRightBeamCount = #1
                    \once \override Accidental.color = #red
                    \once \override Beam.color = #red
                    \once \override Dots.color = #red
                    \once \override NoteHead.color = #red
                    \once \override Slur.color = #red
                    \once \override Stem.color = #red
                    \once \override Stem.direction = #down
                    fs8
                    \set stemLeftBeamCount = #1
                    \set stemRightBeamCount = #1
                    \once \override Accidental.color = #red
                    \once \override Beam.color = #red
                    \once \override Dots.color = #red
                    \once \override NoteHead.color = #red
                    \once \override Slur.color = #red
                    \once \override Stem.color = #red
                    \once \override Stem.direction = #down
                    af8
                    \set stemLeftBeamCount = #1
                    \set stemRightBeamCount = #0
                    \once \override Accidental.color = #red
                    \once \override Beam.color = #red
                    \once \override Dots.color = #red
                    \once \override NoteHead.color = #red
                    \once \override Slur.color = #red
                    \once \override Stem.color = #red
                    \once \override Stem.direction = #down
                    a8 ]
                }
                {
                    \once \override Accidental.color = #red
                    \once \override Beam.color = #red
                    \once \override Dots.color = #red
                    \once \override NoteHead.color = #red
                    \once \override Slur.color = #red
                    \once \override Stem.color = #red
                    c4
                    \once \override Accidental.color = #red
                    \once \override Beam.color = #red
                    \once \override Dots.color = #red
                    \once \override NoteHead.color = #red
                    \once \override Slur.color = #red
                    \once \override Stem.color = #red
                    bf4
                    \once \override Accidental.color = #red
                    \once \override Beam.color = #red
                    \once \override Dots.color = #red
                    \once \override NoteHead.color = #red
                    \once \override Slur.color = #red
                    \once \override Stem.color = #red
                    af4
                    \once \override Accidental.color = #red
                    \once \override Beam.color = #red
                    \once \override Dots.color = #red
                    \once \override NoteHead.color = #red
                    \once \override Slur.color = #red
                    \once \override Stem.color = #red
                    a4
                    \once \override Accidental.color = #red
                    \once \override Beam.color = #red
                    \once \override Dots.color = #red
                    \once \override NoteHead.color = #red
                    \once \override Slur.color = #red
                    \once \override Stem.color = #red
                    b4
                }
                \tweak text #tuplet-number::calc-fraction-text
                \times 4/3 {
                    \set stemLeftBeamCount = #0
                    \set stemRightBeamCount = #2
                    \once \override Beam.positions = #'(5.5 . 5.5)
                    \once \override Stem.direction = #up
                    fs16 [
                    \set stemLeftBeamCount = #2
                    \set stemRightBeamCount = #2
                    \once \override Beam.positions = #'(5.5 . 5.5)
                    \once \override Stem.direction = #up
                    a,16
                    \set stemLeftBeamCount = #2
                    \set stemRightBeamCount = #2
                    \once \override Beam.positions = #'(5.5 . 5.5)
                    \once \override Stem.direction = #up
                    bf,16
                    \set stemLeftBeamCount = #2
                    \set stemRightBeamCount = #0
                    \once \override Beam.positions = #'(5.5 . 5.5)
                    \once \override Stem.direction = #up
                    af16 ]
                    \once \override Accidental.color = #red
                    \once \override Beam.color = #red
                    \once \override Beam.positions = #'(5.5 . 5.5)
                    \once \override Dots.color = #red
                    \once \override NoteHead.color = #red
                    \once \override Slur.color = #red
                    \once \override Stem.color = #red
                    \once \override Stem.direction = #up
                    g8
                }
                {
                    \once \override Accidental.color = #red
                    \once \override Beam.color = #red
                    \once \override Beam.positions = #'(5.5 . 5.5)
                    \once \override Dots.color = #red
                    \once \override NoteHead.color = #red
                    \once \override Slur.color = #red
                    \once \override Stem.color = #red
                    \once \override Stem.direction = #up
                    cs'4
                    \once \override Accidental.color = #red
                    \once \override Beam.color = #red
                    \once \override Beam.positions = #'(5.5 . 5.5)
                    \once \override Dots.color = #red
                    \once \override NoteHead.color = #red
                    \once \override Slur.color = #red
                    \once \override Stem.color = #red
                    \once \override Stem.direction = #up
                    ef4
                }
                {
                    \set stemLeftBeamCount = #0
                    \set stemRightBeamCount = #1
                    \once \override Accidental.color = #red
                    \once \override Beam.color = #red
                    \once \override Beam.positions = #'(-4.5 . -4.5)
                    \once \override Dots.color = #red
                    \once \override NoteHead.color = #red
                    \once \override Slur.color = #red
                    \once \override Stem.color = #red
                    \once \override Stem.direction = #down
                    d'8 [
                    \set stemLeftBeamCount = #1
                    \set stemRightBeamCount = #1
                    \once \override Accidental.color = #red
                    \once \override Beam.color = #red
                    \once \override Dots.color = #red
                    \once \override NoteHead.color = #red
                    \once \override Slur.color = #red
                    \once \override Stem.color = #red
                    \once \override Stem.direction = #down
                    c'8
                    \set stemLeftBeamCount = #1
                    \set stemRightBeamCount = #0
                    \once \override Accidental.color = #red
                    \once \override Beam.color = #red
                    \once \override Dots.color = #red
                    \once \override NoteHead.color = #red
                    \once \override Slur.color = #red
                    \once \override Stem.color = #red
                    \once \override Stem.direction = #down
                    b8 ]
                }
                {
                    \once \override Accidental.color = #red
                    \once \override Beam.color = #red
                    \once \override Beam.positions = #'(-4.5 . -4.5)
                    \once \override Dots.color = #red
                    \once \override NoteHead.color = #red
                    \once \override Slur.color = #red
                    \once \override Stem.color = #red
                    \once \override Stem.direction = #down
                    bf8
                }
                \tweak text #tuplet-number::calc-fraction-text
                \times 4/3 {
                    \once \override Accidental.color = #red
                    \once \override Beam.color = #red
                    \once \override Beam.positions = #'(5.5 . 5.5)
                    \once \override Dots.color = #red
                    \once \override NoteHead.color = #red
                    \once \override Slur.color = #red
                    \once \override Stem.color = #red
                    \once \override Stem.direction = #up
                    e4
                    \once \override Accidental.color = #red
                    \once \override Beam.color = #red
                    \once \override Beam.positions = #'(5.5 . 5.5)
                    \once \override Dots.color = #red
                    \once \override NoteHead.color = #red
                    \once \override Slur.color = #red
                    \once \override Stem.color = #red
                    \once \override Stem.direction = #up
                    f4
                    \set stemLeftBeamCount = #0
                    \set stemRightBeamCount = #1
                    \once \override Beam.positions = #'(5.5 . 5.5)
                    \once \override Stem.direction = #up
                    ef8 [
                    \set stemLeftBeamCount = #1
                    \set stemRightBeamCount = #0
                    \once \override Beam.positions = #'(5.5 . 5.5)
                    \once \override Stem.direction = #up
                    d8 ]
                }
                \tweak text #tuplet-number::calc-fraction-text
                \times 4/3 {
                    \set stemLeftBeamCount = #0
                    \set stemRightBeamCount = #2
                    \once \override Beam.positions = #'(5.5 . 5.5)
                    \once \override Stem.direction = #up
                    b,16 [
                    \set stemLeftBeamCount = #2
                    \set stemRightBeamCount = #2
                    \once \override Beam.positions = #'(5.5 . 5.5)
                    \once \override Stem.direction = #up
                    cs16
                    \set stemLeftBeamCount = #2
                    \set stemRightBeamCount = #2
                    \once \override Beam.positions = #'(5.5 . 5.5)
                    \once \override Stem.direction = #up
                    ef16
                    \set stemLeftBeamCount = #2
                    \set stemRightBeamCount = #0
                    \once \override Beam.positions = #'(5.5 . 5.5)
                    \once \override Stem.direction = #up
                    d16 ]
                    \once \override Accidental.color = #red
                    \once \override Beam.color = #red
                    \once \override Beam.positions = #'(5.5 . 5.5)
                    \once \override Dots.color = #red
                    \once \override NoteHead.color = #red
                    \once \override Slur.color = #red
                    \once \override Stem.color = #red
                    \once \override Stem.direction = #up
                    c8
                }
                {
                    \once \override Accidental.color = #red
                    \once \override Beam.color = #red
                    \once \override Beam.positions = #'(5.5 . 5.5)
                    \once \override Dots.color = #red
                    \once \override NoteHead.color = #red
                    \once \override Slur.color = #red
                    \once \override Stem.color = #red
                    \once \override Stem.direction = #up
                    d'4
                    \once \override Accidental.color = #red
                    \once \override Beam.color = #red
                    \once \override Beam.positions = #'(5.5 . 5.5)
                    \once \override Dots.color = #red
                    \once \override NoteHead.color = #red
                    \once \override Slur.color = #red
                    \once \override Stem.color = #red
                    \once \override Stem.direction = #up
                    bf4
                }
                {
                    \set stemLeftBeamCount = #0
                    \set stemRightBeamCount = #1
                    \once \override Accidental.color = #red
                    \once \override Beam.color = #red
                    \once \override Beam.positions = #'(-4.5 . -4.5)
                    \once \override Dots.color = #red
                    \once \override NoteHead.color = #red
                    \once \override Slur.color = #red
                    \once \override Stem.color = #red
                    \once \override Stem.direction = #down
                    e8 [
                    \set stemLeftBeamCount = #1
                    \set stemRightBeamCount = #1
                    \once \override Accidental.color = #red
                    \once \override Beam.color = #red
                    \once \override Dots.color = #red
                    \once \override NoteHead.color = #red
                    \once \override Slur.color = #red
                    \once \override Stem.color = #red
                    \once \override Stem.direction = #down
                    f8
                    \set stemLeftBeamCount = #1
                    \set stemRightBeamCount = #0
                    \once \override Accidental.color = #red
                    \once \override Beam.color = #red
                    \once \override Dots.color = #red
                    \once \override NoteHead.color = #red
                    \once \override Slur.color = #red
                    \once \override Stem.color = #red
                    \once \override Stem.direction = #down
                    ef8 ]
                }
                \tweak text #tuplet-number::calc-fraction-text
                \times 3/2 {
                    \set stemLeftBeamCount = #0
                    \set stemRightBeamCount = #1
                    \once \override Accidental.color = #red
                    \once \override Beam.color = #red
                    \once \override Beam.positions = #'(5.5 . 5.5)
                    \once \override Dots.color = #red
                    \once \override NoteHead.color = #red
                    \once \override Slur.color = #red
                    \once \override Stem.color = #red
                    \once \override Stem.direction = #up
                    b,8. [
                    \set stemLeftBeamCount = #1
                    \set stemRightBeamCount = #0
                    \once \override Accidental.color = #red
                    \once \override Beam.color = #red
                    \once \override Dots.color = #red
                    \once \override NoteHead.color = #red
                    \once \override Slur.color = #red
                    \once \override Stem.color = #red
                    \once \override Stem.direction = #up
                    ef8. ]
                }
                \tweak text #tuplet-number::calc-fraction-text
                \times 3/2 {
                    \once \override Accidental.color = #blue
                    \once \override Beam.color = #blue
                    \once \override Beam.positions = #'(-4.5 . -4.5)
                    \once \override Dots.color = #blue
                    \once \override NoteHead.color = #blue
                    \once \override Slur.color = #blue
                    \once \override Stem.color = #blue
                    \once \override Stem.direction = #down
                    a,4.
                    \set stemLeftBeamCount = #0
                    \set stemRightBeamCount = #1
                    \once \override Accidental.color = #red
                    \once \override Beam.color = #red
                    \once \override Beam.positions = #'(5.5 . 5.5)
                    \once \override Dots.color = #red
                    \once \override NoteHead.color = #red
                    \once \override Slur.color = #red
                    \once \override Stem.color = #red
                    \once \override Stem.direction = #up
                    af8. [
                    \set stemLeftBeamCount = #1
                    \set stemRightBeamCount = #0
                    \once \override Accidental.color = #red
                    \once \override Beam.color = #red
                    \once \override Beam.positions = #'(5.5 . 5.5)
                    \once \override Dots.color = #red
                    \once \override NoteHead.color = #red
                    \once \override Slur.color = #red
                    \once \override Stem.color = #red
                    \once \override Stem.direction = #up
                    bf8. ]
                }
                {
                    \set stemLeftBeamCount = #0
                    \set stemRightBeamCount = #2
                    \once \override Beam.positions = #'(5.5 . 5.5)
                    \once \override Stem.direction = #up
                    fs,16 [
                    \set stemLeftBeamCount = #2
                    \set stemRightBeamCount = #2
                    \once \override Beam.positions = #'(5.5 . 5.5)
                    \once \override Stem.direction = #up
                    g,16
                    \set stemLeftBeamCount = #2
                    \set stemRightBeamCount = #2
                    \once \override Beam.positions = #'(5.5 . 5.5)
                    \once \override Stem.direction = #up
                    e16
                    \set stemLeftBeamCount = #2
                    \set stemRightBeamCount = #0
                    \once \override Beam.positions = #'(5.5 . 5.5)
                    \once \override Stem.direction = #up
                    ef16 ]
                    \once \override Accidental.color = #red
                    \once \override Beam.color = #red
                    \once \override Beam.positions = #'(5.5 . 5.5)
                    \once \override Dots.color = #red
                    \once \override NoteHead.color = #red
                    \once \override Slur.color = #red
                    \once \override Stem.color = #red
                    \once \override Stem.direction = #up
                    f8
                }
                {
                    \set stemLeftBeamCount = #0
                    \set stemRightBeamCount = #2
                    \once \override Accidental.color = #red
                    \once \override Beam.color = #red
                    \once \override Beam.positions = #'(5.5 . 5.5)
                    \once \override Dots.color = #red
                    \once \override NoteHead.color = #red
                    \once \override Slur.color = #red
                    \once \override Stem.color = #red
                    \once \override Stem.direction = #up
                    bf16 [
                    \set stemLeftBeamCount = #2
                    \set stemRightBeamCount = #0
                    \once \override Accidental.color = #red
                    \once \override Beam.color = #red
                    \once \override Beam.positions = #'(5.5 . 5.5)
                    \once \override Dots.color = #red
                    \once \override NoteHead.color = #red
                    \once \override Slur.color = #red
                    \once \override Stem.color = #red
                    \once \override Stem.direction = #up
                    b16 ]
                }
                {
                    \once \override Accidental.color = #red
                    \once \override Beam.color = #red
                    \once \override Beam.positions = #'(5.5 . 5.5)
                    \once \override Dots.color = #red
                    \once \override NoteHead.color = #red
                    \once \override Slur.color = #red
                    \once \override Stem.color = #red
                    \once \override Stem.direction = #up
                    ef4
                    \once \override Accidental.color = #blue
                    \once \override Beam.color = #blue
                    \once \override Beam.positions = #'(-4.5 . -4.5)
                    \once \override Dots.color = #blue
                    \once \override NoteHead.color = #blue
                    \once \override Slur.color = #blue
                    \once \override Stem.color = #blue
                    \once \override Stem.direction = #down
                    a,2
                    \once \override Accidental.color = #blue
                    \once \override Beam.color = #blue
                    \once \override Beam.positions = #'(-4.5 . -4.5)
                    \once \override Dots.color = #blue
                    \once \override NoteHead.color = #blue
                    \once \override Slur.color = #blue
                    \once \override Stem.color = #blue
                    \once \override Stem.direction = #down
                    af,2
                }
                {
                    \once \override Accidental.color = #red
                    \once \override Beam.color = #red
                    \once \override Beam.positions = #'(5.5 . 5.5)
                    \once \override Dots.color = #red
                    \once \override NoteHead.color = #red
                    \once \override Slur.color = #red
                    \once \override Stem.color = #red
                    \once \override Stem.direction = #up
                    f4
                }
                \tweak text #tuplet-number::calc-fraction-text
                \times 9/5 {
                    \set stemLeftBeamCount = #0
                    \set stemRightBeamCount = #2
                    \once \override Beam.positions = #'(5.5 . 5.5)
                    \once \override Stem.direction = #up
                    fs16 [
                    \set stemLeftBeamCount = #2
                    \set stemRightBeamCount = #2
                    \once \override Beam.positions = #'(5.5 . 5.5)
                    \once \override Stem.direction = #up
                    g16
                    \set stemLeftBeamCount = #2
                    \set stemRightBeamCount = #0
                    \once \override Beam.positions = #'(5.5 . 5.5)
                    \once \override Stem.direction = #up
                    e16 ]
                    \once \override Accidental.color = #red
                    \once \override Beam.color = #red
                    \once \override Beam.positions = #'(5.5 . 5.5)
                    \once \override Dots.color = #red
                    \once \override NoteHead.color = #red
                    \once \override Slur.color = #red
                    \once \override Stem.color = #red
                    \once \override Stem.direction = #up
                    ef8
                }
                {
                    \set stemLeftBeamCount = #0
                    \set stemRightBeamCount = #1
                    \once \override Accidental.color = #red
                    \once \override Beam.color = #red
                    \once \override Beam.positions = #'(5.5 . 5.5)
                    \once \override Dots.color = #red
                    \once \override NoteHead.color = #red
                    \once \override Slur.color = #red
                    \once \override Stem.color = #red
                    \once \override Stem.direction = #up
                    cs8 [
                    \set stemLeftBeamCount = #1
                    \set stemRightBeamCount = #1
                    \once \override Accidental.color = #red
                    \once \override Beam.color = #red
                    \once \override Beam.positions = #'(5.5 . 5.5)
                    \once \override Dots.color = #red
                    \once \override NoteHead.color = #red
                    \once \override Slur.color = #red
                    \once \override Stem.color = #red
                    \once \override Stem.direction = #up
                    d8
                    \set stemLeftBeamCount = #1
                    \set stemRightBeamCount = #0
                    \once \override Accidental.color = #red
                    \once \override Beam.color = #red
                    \once \override Beam.positions = #'(5.5 . 5.5)
                    \once \override Dots.color = #red
                    \once \override NoteHead.color = #red
                    \once \override Slur.color = #red
                    \once \override Stem.color = #red
                    \once \override Stem.direction = #up
                    c8 ]
                    \set stemLeftBeamCount = #0
                    \set stemRightBeamCount = #2
                    \once \override Beam.positions = #'(5.5 . 5.5)
                    \once \override Stem.direction = #up
                    bf,16 [
                    \set stemLeftBeamCount = #2
                    \set stemRightBeamCount = #0
                    \once \override Beam.positions = #'(5.5 . 5.5)
                    \once \override Stem.direction = #up
                    b,16 ]
                }
                {
                    \set stemLeftBeamCount = #0
                    \set stemRightBeamCount = #2
                    \once \override Beam.positions = #'(5.5 . 5.5)
                    \once \override Stem.direction = #up
                    ef16 [
                    \set stemLeftBeamCount = #2
                    \set stemRightBeamCount = #0
                    \once \override Beam.positions = #'(5.5 . 5.5)
                    \once \override Stem.direction = #up
                    f,16 ]
                }
                {
                    \once \override Accidental.color = #blue
                    \once \override Beam.color = #blue
                    \once \override Beam.positions = #'(-4.5 . -4.5)
                    \once \override Dots.color = #blue
                    \once \override NoteHead.color = #blue
                    \once \override Slur.color = #blue
                    \once \override Stem.color = #blue
                    \once \override Stem.direction = #down
                    fs,2
                    \once \override Accidental.color = #blue
                    \once \override Beam.color = #blue
                    \once \override Beam.positions = #'(-4.5 . -4.5)
                    \once \override Dots.color = #blue
                    \once \override NoteHead.color = #blue
                    \once \override Slur.color = #blue
                    \once \override Stem.color = #blue
                    \once \override Stem.direction = #down
                    g,2
                    \once \override Accidental.color = #red
                    \once \override Beam.color = #red
                    \once \override Beam.positions = #'(5.5 . 5.5)
                    \once \override Dots.color = #red
                    \once \override NoteHead.color = #red
                    \once \override Slur.color = #red
                    \once \override Stem.color = #red
                    \once \override Stem.direction = #up
                    e4
                }
                \tweak text #tuplet-number::calc-fraction-text
                \times 4/3 {
                    \once \override Accidental.color = #red
                    \once \override Beam.color = #red
                    \once \override Beam.positions = #'(5.5 . 5.5)
                    \once \override Dots.color = #red
                    \once \override NoteHead.color = #red
                    \once \override Slur.color = #red
                    \once \override Stem.color = #red
                    \once \override Stem.direction = #up
                    b8
                    \set stemLeftBeamCount = #0
                    \set stemRightBeamCount = #2
                    \once \override Beam.positions = #'(5.5 . 5.5)
                    \once \override Stem.direction = #up
                    cs16 [
                    \set stemLeftBeamCount = #2
                    \set stemRightBeamCount = #2
                    \once \override Beam.positions = #'(5.5 . 5.5)
                    \once \override Stem.direction = #up
                    d16
                    \set stemLeftBeamCount = #2
                    \set stemRightBeamCount = #2
                    \once \override Beam.positions = #'(5.5 . 5.5)
                    \once \override Stem.direction = #up
                    c16
                    \set stemLeftBeamCount = #2
                    \set stemRightBeamCount = #0
                    \once \override Beam.positions = #'(5.5 . 5.5)
                    \once \override Stem.direction = #up
                    bf,16 ]
                }
                {
                    \once \override Accidental.color = #red
                    \once \override Beam.color = #red
                    \once \override Beam.positions = #'(5.5 . 5.5)
                    \once \override Dots.color = #red
                    \once \override NoteHead.color = #red
                    \once \override Slur.color = #red
                    \once \override Stem.color = #red
                    \once \override Stem.direction = #up
                    af4
                    \once \override Accidental.color = #red
                    \once \override Beam.color = #red
                    \once \override Beam.positions = #'(5.5 . 5.5)
                    \once \override Dots.color = #red
                    \once \override NoteHead.color = #red
                    \once \override Slur.color = #red
                    \once \override Stem.color = #red
                    \once \override Stem.direction = #up
                    bf4
                }
                {
                    \set stemLeftBeamCount = #0
                    \set stemRightBeamCount = #2
                    \once \override Beam.positions = #'(5.5 . 5.5)
                    \once \override Stem.direction = #up
                    b,16 [
                    \set stemLeftBeamCount = #2
                    \set stemRightBeamCount = #2
                    \once \override Beam.positions = #'(5.5 . 5.5)
                    \once \override Stem.direction = #up
                    ef16
                    \set stemLeftBeamCount = #2
                    \set stemRightBeamCount = #0
                    \once \override Beam.positions = #'(5.5 . 5.5)
                    \once \override Stem.direction = #up
                    a,16 ]
                }
                {
                    \once \override Accidental.color = #blue
                    \once \override Beam.color = #blue
                    \once \override Beam.positions = #'(-4.5 . -4.5)
                    \once \override Dots.color = #blue
                    \once \override NoteHead.color = #blue
                    \once \override Slur.color = #blue
                    \once \override Stem.color = #blue
                    \once \override Stem.direction = #down
                    bf,8
                }
                \tweak text #tuplet-number::calc-fraction-text
                \times 4/3 {
                    \once \override Accidental.color = #red
                    \once \override Beam.color = #red
                    \once \override Beam.positions = #'(5.5 . 5.5)
                    \once \override Dots.color = #red
                    \once \override NoteHead.color = #red
                    \once \override Slur.color = #red
                    \once \override Stem.color = #red
                    \once \override Stem.direction = #up
                    b,4
                    \once \override Accidental.color = #red
                    \once \override Beam.color = #red
                    \once \override Beam.positions = #'(5.5 . 5.5)
                    \once \override Dots.color = #red
                    \once \override NoteHead.color = #red
                    \once \override Slur.color = #red
                    \once \override Stem.color = #red
                    \once \override Stem.direction = #up
                    cs4
                    \set stemLeftBeamCount = #0
                    \set stemRightBeamCount = #1
                    \once \override Beam.positions = #'(5.5 . 5.5)
                    \once \override Stem.direction = #up
                    d8 [
                    \set stemLeftBeamCount = #1
                    \set stemRightBeamCount = #0
                    \once \override Beam.positions = #'(5.5 . 5.5)
                    \once \override Stem.direction = #up
                    c8 ]
                }
                \tweak text #tuplet-number::calc-fraction-text
                \times 9/7 {
                    \set stemLeftBeamCount = #0
                    \set stemRightBeamCount = #2
                    \once \override Beam.positions = #'(5.5 . 5.5)
                    \once \override Stem.direction = #up
                    a,16 [
                    \set stemLeftBeamCount = #2
                    \set stemRightBeamCount = #2
                    \once \override Beam.positions = #'(5.5 . 5.5)
                    \once \override Stem.direction = #up
                    af,16
                    \set stemLeftBeamCount = #2
                    \set stemRightBeamCount = #0
                    \once \override Beam.positions = #'(5.5 . 5.5)
                    \once \override Stem.direction = #up
                    bf,16 ]
                    \set stemLeftBeamCount = #0
                    \set stemRightBeamCount = #1
                    \once \override Accidental.color = #red
                    \once \override Beam.color = #red
                    \once \override Beam.positions = #'(5.5 . 5.5)
                    \once \override Dots.color = #red
                    \once \override NoteHead.color = #red
                    \once \override Slur.color = #red
                    \once \override Stem.color = #red
                    \once \override Stem.direction = #up
                    b,8 [
                    \set stemLeftBeamCount = #1
                    \set stemRightBeamCount = #0
                    \once \override Accidental.color = #red
                    \once \override Beam.color = #red
                    \once \override Beam.positions = #'(5.5 . 5.5)
                    \once \override Dots.color = #red
                    \once \override NoteHead.color = #red
                    \once \override Slur.color = #red
                    \once \override Stem.color = #red
                    \once \override Stem.direction = #up
                    ef8 ]
                }
                \tweak text #tuplet-number::calc-fraction-text
                \times 3/2 {
                    \once \override Accidental.color = #blue
                    \once \override Beam.color = #blue
                    \once \override Dots.color = #blue
                    \once \override NoteHead.color = #blue
                    \once \override Slur.color = #blue
                    \once \override Stem.color = #blue
                    e,4.
                    \once \override Accidental.color = #blue
                    \once \override Beam.color = #blue
                    \once \override Dots.color = #blue
                    \once \override NoteHead.color = #blue
                    \once \override Slur.color = #blue
                    \once \override Stem.color = #blue
                    ef,4.
                }
                {
                    \set stemLeftBeamCount = #0
                    \set stemRightBeamCount = #1
                    \once \override Accidental.color = #red
                    \once \override Beam.color = #red
                    \once \override Beam.positions = #'(5.5 . 5.5)
                    \once \override Dots.color = #red
                    \once \override NoteHead.color = #red
                    \once \override Slur.color = #red
                    \once \override Stem.color = #red
                    \once \override Stem.direction = #up
                    f8 [
                    \set stemLeftBeamCount = #1
                    \set stemRightBeamCount = #1
                    \once \override Accidental.color = #red
                    \once \override Beam.color = #red
                    \once \override Beam.positions = #'(5.5 . 5.5)
                    \once \override Dots.color = #red
                    \once \override NoteHead.color = #red
                    \once \override Slur.color = #red
                    \once \override Stem.color = #red
                    \once \override Stem.direction = #up
                    fs8
                    \set stemLeftBeamCount = #1
                    \set stemRightBeamCount = #0
                    \once \override Accidental.color = #red
                    \once \override Beam.color = #red
                    \once \override Beam.positions = #'(5.5 . 5.5)
                    \once \override Dots.color = #red
                    \once \override NoteHead.color = #red
                    \once \override Slur.color = #red
                    \once \override Stem.color = #red
                    \once \override Stem.direction = #up
                    g8 ]
                }
                {
                    \once \override Beam.positions = #'(5.5 . 5.5)
                    \once \override Stem.direction = #up
                    fs8
                }
                \tweak text #tuplet-number::calc-fraction-text
                \times 3/2 {
                    \set stemLeftBeamCount = #0
                    \set stemRightBeamCount = #2
                    \once \override Beam.positions = #'(-4.5 . -4.5)
                    \once \override Stem.direction = #down
                    g16. [
                    \set stemLeftBeamCount = #2
                    \set stemRightBeamCount = #2
                    \once \override Stem.direction = #down
                    af16.
                    \set stemLeftBeamCount = #2
                    \set stemRightBeamCount = #2
                    \once \override Stem.direction = #down
                    f16.
                    \set stemLeftBeamCount = #2
                    \set stemRightBeamCount = #0
                    \once \override Stem.direction = #down
                    e16. ]
                }
                {
                    \once \override Accidental.color = #blue
                    \once \override Beam.color = #blue
                    \once \override Beam.positions = #'(-4.5 . -4.5)
                    \once \override Dots.color = #blue
                    \once \override NoteHead.color = #blue
                    \once \override Slur.color = #blue
                    \once \override Stem.color = #blue
                    \once \override Stem.direction = #down
                    d4
                    \set stemLeftBeamCount = #0
                    \set stemRightBeamCount = #2
                    \once \override Beam.positions = #'(5.5 . 5.5)
                    \once \override Stem.direction = #up
                    ef16 [
                    \set stemLeftBeamCount = #2
                    \set stemRightBeamCount = #2
                    \once \override Beam.positions = #'(5.5 . 5.5)
                    \once \override Stem.direction = #up
                    cs16
                    \set stemLeftBeamCount = #2
                    \set stemRightBeamCount = #2
                    \once \override Beam.positions = #'(5.5 . 5.5)
                    \once \override Stem.direction = #up
                    b,16
                    \set stemLeftBeamCount = #2
                    \set stemRightBeamCount = #0
                    \once \override Beam.positions = #'(5.5 . 5.5)
                    \once \override Stem.direction = #up
                    c16 ]
                }
                \times 4/5 {
                    \once \override Beam.positions = #'(5.5 . 5.5)
                    \once \override Stem.direction = #up
                    e16
                    \once \override Accidental.color = #blue
                    \once \override Beam.color = #blue
                    \once \override Beam.positions = #'(-4.5 . -4.5)
                    \once \override Dots.color = #blue
                    \once \override NoteHead.color = #blue
                    \once \override Slur.color = #blue
                    \once \override Stem.color = #blue
                    \once \override Stem.direction = #down
                    fs,4
                }
                \tweak text #tuplet-number::calc-fraction-text
                \times 14/9 {
                    \once \override Accidental.color = #blue
                    \once \override Beam.color = #blue
                    \once \override Beam.positions = #'(-4.5 . -4.5)
                    \once \override Dots.color = #blue
                    \once \override NoteHead.color = #blue
                    \once \override Slur.color = #blue
                    \once \override Stem.color = #blue
                    \once \override Stem.direction = #down
                    g,4
                    \once \override Accidental.color = #blue
                    \once \override Beam.color = #blue
                    \once \override Beam.positions = #'(-4.5 . -4.5)
                    \once \override Dots.color = #blue
                    \once \override NoteHead.color = #blue
                    \once \override Slur.color = #blue
                    \once \override Stem.color = #blue
                    \once \override Stem.direction = #down
                    af,4
                    \once \override Beam.positions = #'(5.5 . 5.5)
                    \once \override Stem.direction = #up
                    f16
                }
                \tweak text #tuplet-number::calc-fraction-text
                \times 9/8 {
                    \set stemLeftBeamCount = #0
                    \set stemRightBeamCount = #2
                    \once \override Beam.positions = #'(5.5 . 5.5)
                    \once \override Stem.direction = #up
                    c16 [
                    \set stemLeftBeamCount = #2
                    \set stemRightBeamCount = #2
                    \once \override Beam.positions = #'(5.5 . 5.5)
                    \once \override Stem.direction = #up
                    d16
                    \set stemLeftBeamCount = #2
                    \set stemRightBeamCount = #2
                    \once \override Beam.positions = #'(5.5 . 5.5)
                    \once \override Stem.direction = #up
                    ef16
                    \set stemLeftBeamCount = #2
                    \set stemRightBeamCount = #0
                    \once \override Beam.positions = #'(5.5 . 5.5)
                    \once \override Stem.direction = #up
                    cs16 ]
                    \once \override Accidental.color = #blue
                    \once \override Beam.color = #blue
                    \once \override Beam.positions = #'(-4.5 . -4.5)
                    \once \override Dots.color = #blue
                    \once \override NoteHead.color = #blue
                    \once \override Slur.color = #blue
                    \once \override Stem.color = #blue
                    \once \override Stem.direction = #down
                    b,4
                }
                \tweak text #tuplet-number::calc-fraction-text
                \times 7/5 {
                    \once \override Accidental.color = #blue
                    \once \override Beam.color = #blue
                    \once \override Beam.positions = #'(-4.5 . -4.5)
                    \once \override Dots.color = #blue
                    \once \override NoteHead.color = #blue
                    \once \override Slur.color = #blue
                    \once \override Stem.color = #blue
                    \once \override Stem.direction = #down
                    a,4
                    \once \override Beam.positions = #'(5.5 . 5.5)
                    \once \override Stem.direction = #up
                    b,16
                }
                {
                    \set stemLeftBeamCount = #0
                    \set stemRightBeamCount = #2
                    \once \override Beam.positions = #'(5.5 . 5.5)
                    \once \override Stem.direction = #up
                    c16 [
                    \set stemLeftBeamCount = #2
                    \set stemRightBeamCount = #2
                    \once \override Stem.direction = #up
                    e16
                    \set stemLeftBeamCount = #2
                    \set stemRightBeamCount = #0
                    \once \override Stem.direction = #up
                    bf,16 ]
                }
                {
                    \once \override Beam.positions = #'(5.5 . 5.5)
                    \once \override Stem.direction = #up
                    b,16
                }
                \tweak text #tuplet-number::calc-fraction-text
                \times 6/5 {
                    \once \override Accidental.color = #blue
                    \once \override Beam.color = #blue
                    \once \override Dots.color = #blue
                    \once \override NoteHead.color = #blue
                    \once \override Slur.color = #blue
                    \once \override Stem.color = #blue
                    b,4
                    \once \override Accidental.color = #blue
                    \once \override Beam.color = #blue
                    \once \override Dots.color = #blue
                    \once \override NoteHead.color = #blue
                    \once \override Slur.color = #blue
                    \once \override Stem.color = #blue
                    a,4
                    \once \override Accidental.color = #blue
                    \once \override Beam.color = #blue
                    \once \override Dots.color = #blue
                    \once \override NoteHead.color = #blue
                    \once \override Slur.color = #blue
                    \once \override Stem.color = #blue
                    af,4
                    \once \override Accidental.color = #blue
                    \once \override Beam.color = #blue
                    \once \override Dots.color = #blue
                    \once \override NoteHead.color = #blue
                    \once \override Slur.color = #blue
                    \once \override Stem.color = #blue
                    bf,4
                    \once \override Accidental.color = #blue
                    \once \override Beam.color = #blue
                    \once \override Dots.color = #blue
                    \once \override NoteHead.color = #blue
                    \once \override Slur.color = #blue
                    \once \override Stem.color = #blue
                    c4
                }
                {
                    \once \override Accidental.color = #blue
                    \once \override Beam.color = #blue
                    \once \override Dots.color = #blue
                    \once \override NoteHead.color = #blue
                    \once \override Slur.color = #blue
                    \once \override Stem.color = #blue
                    d,2
                    \once \override Accidental.color = #blue
                    \once \override Beam.color = #blue
                    \once \override Dots.color = #blue
                    \once \override NoteHead.color = #blue
                    \once \override Slur.color = #blue
                    \once \override Stem.color = #blue
                    c,2
                }
                {
                    \once \override Accidental.color = #blue
                    \once \override Beam.color = #blue
                    \once \override Dots.color = #blue
                    \once \override NoteHead.color = #blue
                    \once \override Slur.color = #blue
                    \once \override Stem.color = #blue
                    b,,4
                    \once \override Accidental.color = #blue
                    \once \override Beam.color = #blue
                    \once \override Dots.color = #blue
                    \once \override NoteHead.color = #blue
                    \once \override Slur.color = #blue
                    \once \override Stem.color = #blue
                    g,4
                    \once \override Accidental.color = #blue
                    \once \override Beam.color = #blue
                    \once \override Dots.color = #blue
                    \once \override NoteHead.color = #blue
                    \once \override Slur.color = #blue
                    \once \override Stem.color = #blue
                    cs,4
                }
                {
                    \once \override Accidental.color = #blue
                    \once \override Beam.color = #blue
                    \once \override Dots.color = #blue
                    \once \override NoteHead.color = #blue
                    \once \override Slur.color = #blue
                    \once \override Stem.color = #blue
                    c4
                }
                \tweak text #tuplet-number::calc-fraction-text
                \times 9/8 {
                    \once \override Accidental.color = #blue
                    \once \override Beam.color = #blue
                    \once \override Dots.color = #blue
                    \once \override NoteHead.color = #blue
                    \once \override Slur.color = #blue
                    \once \override Stem.color = #blue
                    b,2
                    \once \override Accidental.color = #blue
                    \once \override Beam.color = #blue
                    \once \override Dots.color = #blue
                    \once \override NoteHead.color = #blue
                    \once \override Slur.color = #blue
                    \once \override Stem.color = #blue
                    a,2
                    \once \override Accidental.color = #blue
                    \once \override Beam.color = #blue
                    \once \override Dots.color = #blue
                    \once \override NoteHead.color = #blue
                    \once \override Slur.color = #blue
                    \once \override Stem.color = #blue
                    af,2
                    \once \override Accidental.color = #blue
                    \once \override Beam.color = #blue
                    \once \override Dots.color = #blue
                    \once \override NoteHead.color = #blue
                    \once \override Slur.color = #blue
                    \once \override Stem.color = #blue
                    bf,2
                }
                \tweak text #tuplet-number::calc-fraction-text
                \times 6/5 {
                    \once \override Accidental.color = #blue
                    \once \override Beam.color = #blue
                    \once \override Dots.color = #blue
                    \once \override NoteHead.color = #blue
                    \once \override Slur.color = #blue
                    \once \override Stem.color = #blue
                    cs,4
                    \once \override Accidental.color = #blue
                    \once \override Beam.color = #blue
                    \once \override Dots.color = #blue
                    \once \override NoteHead.color = #blue
                    \once \override Slur.color = #blue
                    \once \override Stem.color = #blue
                    d,4
                    \once \override Accidental.color = #blue
                    \once \override Beam.color = #blue
                    \once \override Dots.color = #blue
                    \once \override NoteHead.color = #blue
                    \once \override Slur.color = #blue
                    \once \override Stem.color = #blue
                    c,4
                    \once \override Accidental.color = #blue
                    \once \override Beam.color = #blue
                    \once \override Dots.color = #blue
                    \once \override NoteHead.color = #blue
                    \once \override Slur.color = #blue
                    \once \override Stem.color = #blue
                    b,,4
                    \once \override Accidental.color = #blue
                    \once \override Beam.color = #blue
                    \once \override Dots.color = #blue
                    \once \override NoteHead.color = #blue
                    \once \override Slur.color = #blue
                    \once \override Stem.color = #blue
                    g,4
                }
                {
                    \once \override Accidental.color = #blue
                    \once \override Beam.color = #blue
                    \once \override Dots.color = #blue
                    \once \override NoteHead.color = #blue
                    \once \override Slur.color = #blue
                    \once \override Stem.color = #blue
                    fs,2
                    \once \override Accidental.color = #blue
                    \once \override Beam.color = #blue
                    \once \override Dots.color = #blue
                    \once \override NoteHead.color = #blue
                    \once \override Slur.color = #blue
                    \once \override Stem.color = #blue
                    g,2
                }
                {
                    \once \override Accidental.color = #blue
                    \once \override Beam.color = #blue
                    \once \override Dots.color = #blue
                    \once \override NoteHead.color = #blue
                    \once \override Slur.color = #blue
                    \once \override Stem.color = #blue
                    f,4
                    \once \override Accidental.color = #blue
                    \once \override Beam.color = #blue
                    \once \override Dots.color = #blue
                    \once \override NoteHead.color = #blue
                    \once \override Slur.color = #blue
                    \once \override Stem.color = #blue
                    e,4
                    \once \override Accidental.color = #blue
                    \once \override Beam.color = #blue
                    \once \override Dots.color = #blue
                    \once \override NoteHead.color = #blue
                    \once \override Slur.color = #blue
                    \once \override Stem.color = #blue
                    ef,4
                }
            }
        >>
    >>
}