Global_Rests = {                                                               %! extern
    R1 * 7/8
    R1 * 15/16
    R1 * 11/16
    R1 * 7/8
    R1 * 15/16
    R1 * 15/16
    R1 * 3/8
    R1 * 1
    R1 * 3/4
    R1 * 7/8
    R1 * 1
    R1 * 3/4
    R1 * 3/2
    R1 * 5/4
    R1 * 1/4
    R1 * 2
    R1 * 9/8
    R1 * 7/8
    R1 * 3/4
    R1 * 5/8
    R1 * 7/8
    R1 * 1/2
    R1 * 5/4
    R1 * 1
    R1 * 1/2
    R1 * 5/4
    R1 * 1
    R1 * 1/2
    R1 * 1
    R1 * 1
    R1 * 3/4
    R1 * 3/4
    R1 * 1/2
    R1 * 5/4
    R1 * 13/16
    R1 * 5/8
    R1 * 5/4
    R1 * 1
    R1 * 5/16
    R1 * 1
    R1 * 9/16
    R1 * 3/4
    R1 * 7/8
    R1 * 3/4
    R1 * 7/8
    R1 * 1
    R1 * 1/4
    R1 * 3/2
    R1 * 1
    R1 * 1
    R1 * 9/4
    R1 * 3/2
    R1 * 1
    R1 * 3/4
}                                                                              %! extern


Global_Skips = {                                                               %! extern
    \time 7/8
    s1 * 7/8
    \time 15/16
    s1 * 15/16
    \time 11/16
    s1 * 11/16
    \time 7/8
    s1 * 7/8
    \time 15/16
    s1 * 15/16
    \time 15/16
    s1 * 15/16
    \time 3/8
    s1 * 3/8
    \time 4/4
    s1 * 1
    \time 3/4
    s1 * 3/4
    \time 7/8
    s1 * 7/8
    \time 4/4
    s1 * 1
    \time 3/4
    s1 * 3/4
    \time 6/4
    s1 * 3/2
    \time 5/4
    s1 * 5/4
    \time 1/4
    s1 * 1/4
    \time 8/4
    s1 * 2
    \time 9/8
    s1 * 9/8
    \time 7/8
    s1 * 7/8
    \time 3/4
    s1 * 3/4
    \time 5/8
    s1 * 5/8
    \time 7/8
    s1 * 7/8
    \time 2/4
    s1 * 1/2
    \time 5/4
    s1 * 5/4
    \time 4/4
    s1 * 1
    \time 2/4
    s1 * 1/2
    \time 5/4
    s1 * 5/4
    \time 4/4
    s1 * 1
    \time 2/4
    s1 * 1/2
    \time 4/4
    s1 * 1
    \time 4/4
    s1 * 1
    \time 3/4
    s1 * 3/4
    \time 3/4
    s1 * 3/4
    \time 2/4
    s1 * 1/2
    \time 5/4
    s1 * 5/4
    \time 13/16
    s1 * 13/16
    \time 5/8
    s1 * 5/8
    \time 5/4
    s1 * 5/4
    \time 4/4
    s1 * 1
    \time 5/16
    s1 * 5/16
    \time 4/4
    s1 * 1
    \time 9/16
    s1 * 9/16
    \time 3/4
    s1 * 3/4
    \time 7/8
    s1 * 7/8
    \time 3/4
    s1 * 3/4
    \time 7/8
    s1 * 7/8
    \time 4/4
    s1 * 1
    \time 1/4
    s1 * 1/4
    \time 6/4
    s1 * 3/2
    \time 4/4
    s1 * 1
    \time 4/4
    s1 * 1
    \time 9/4
    s1 * 9/4
    \time 6/4
    s1 * 3/2
    \time 4/4
    s1 * 1
    \time 3/4
    s1 * 3/4
}                                                                              %! extern


Music_Voice = {                                                                %! extern
    \times 4/5 {
        \tempo 8=78
        \clef "bass"
        fs16.
        [
        e16.
        f16.
        g16.
        af16.
        ]
    }
    \scaleDurations #'(1 . 1) {
        a,8
        [
        ef8
        ]
    }
    \scaleDurations #'(1 . 1) {
        d16
        [
        e16
        f16
        ]
    }
    \scaleDurations #'(1 . 1) {
        cs16
    }
    \tweak text #tuplet-number::calc-fraction-text
    \times 3/4 {
        \once \override TupletBracket.staff-padding = #2.5
        bf,8.
        [
        \once \override TupletBracket.staff-padding = #2.5
        a,8.
        \once \override TupletBracket.staff-padding = #2.5
        b,8.
        \once \override TupletBracket.staff-padding = #2.5
        c8.
        ]
    }
    \times 4/5 {
        \once \override TupletBracket.staff-padding = #2.5
        f,16.
        [
        \once \override TupletBracket.staff-padding = #2.5
        a,16.
        \once \override TupletBracket.staff-padding = #2.5
        ef16.
        \once \override TupletBracket.staff-padding = #2.5
        d16.
        \once \override TupletBracket.staff-padding = #2.5
        e16.
        ]
    }
    \scaleDurations #'(1 . 1) {
        \once \override TupletBracket.staff-padding = #2.5
        c8
        [
        \once \override TupletBracket.staff-padding = #2.5
        cs8
        ]
    }
    \scaleDurations #'(1 . 1) {
        \once \override TupletBracket.staff-padding = #2.5
        bf,16
        [
        \once \override TupletBracket.staff-padding = #2.5
        a,16
        \once \override TupletBracket.staff-padding = #2.5
        b,16
        ]
    }
    \times 4/5 {
        \once \override TupletBracket.staff-padding = #2.5
        af,16
        [
        \once \override TupletBracket.staff-padding = #2.5
        fs,16
        \once \override TupletBracket.staff-padding = #2.5
        e16
        \once \override TupletBracket.staff-padding = #2.5
        f,16
        \once \override TupletBracket.staff-padding = #2.5
        g,16
        ]
    }
    \scaleDurations #'(1 . 1) {
        \once \override TupletBracket.staff-padding = #2.5
        b,8..
        [
        \once \override TupletBracket.staff-padding = #2.5
        c8..
        ]
    }
    \times 2/3 {
        \once \override TupletBracket.staff-padding = #2.5
        cs8
        [
        \once \override TupletBracket.staff-padding = #2.5
        bf,8
        \once \override TupletBracket.staff-padding = #2.5
        a,8
        ]
    }
    \scaleDurations #'(1 . 1) {
        \once \override TupletBracket.staff-padding = #2.5
        g8.
    }
    \scaleDurations #'(1 . 1) {
        \once \override TupletBracket.staff-padding = #2.5
        af16
        [
        \once \override TupletBracket.staff-padding = #2.5
        fs16
        \once \override TupletBracket.staff-padding = #2.5
        e16
        \once \override TupletBracket.staff-padding = #2.5
        f16
        ]
    }
    \times 4/5 {
        \once \override TupletBracket.staff-padding = #2.5
        e16
        [
        \once \override TupletBracket.staff-padding = #2.5
        f16
        \once \override TupletBracket.staff-padding = #2.5
        a,16
        \once \override TupletBracket.staff-padding = #2.5
        ef16
        \once \override TupletBracket.staff-padding = #2.5
        d16
        ]
    }
    \scaleDurations #'(1 . 1) {
        \once \override TupletBracket.staff-padding = #2.5
        f,8..
        [
        \once \override TupletBracket.staff-padding = #2.5
        g,8..
        ]
    }
    \times 2/3 {
        \once \override Beam.positions = #'(5.5 . 5.5)
        \once \override Stem.direction = #up
        af,8
        [
        \once \override Beam.positions = #'(5.5 . 5.5)
        \once \override Stem.direction = #up
        fs,8
        \once \override Beam.positions = #'(5.5 . 5.5)
        \once \override Stem.direction = #up
        e8
        ]
    }
    \scaleDurations #'(1 . 1) {
        \once \override Beam.positions = #'(5.5 . 5.5)
        \once \override Stem.direction = #up
        cs16.
        [
        \once \override Beam.positions = #'(5.5 . 5.5)
        \once \override Stem.direction = #up
        d16.
        ]
    }
    \times 2/3 {
        \once \override Beam.positions = #'(5.5 . 5.5)
        \once \override Stem.direction = #up
        b,8
        [
        \once \override Beam.positions = #'(5.5 . 5.5)
        \once \override Stem.direction = #up
        bf,8
        ]
        \once \override Accidental.color = #blue
        \once \override Beam.color = #blue
        \once \override Beam.positions = #'(-4.5 . -4.5)
        \once \override Dots.color = #blue
        \once \override NoteHead.color = #blue
        \once \override Slur.color = #blue
        \once \override Stem.color = #blue
        \once \override Stem.direction = #down
        c2
    }
    \scaleDurations #'(1 . 1) {
        a,16
        [
        g16
        f16
        fs16
        af16
        ]
    }
    \scaleDurations #'(1 . 1) {
        c32
        [
        cs32
        ]
    }
    \tweak text #tuplet-number::calc-fraction-text
    \times 11/18 {
        \once \override Beam.positions = #'(5.5 . 5.5)
        \once \override Stem.direction = #up
        d8.
        [
        \once \override Beam.positions = #'(5.5 . 5.5)
        \once \override Stem.direction = #up
        b,8.
        ]
        \once \override Accidental.color = #blue
        \once \override Beam.color = #blue
        \once \override Beam.positions = #'(-4.5 . -4.5)
        \once \override Dots.color = #blue
        \once \override NoteHead.color = #blue
        \once \override Slur.color = #blue
        \once \override Stem.color = #blue
        \once \override Stem.direction = #down
        bf,2.
    }
    \tweak text #tuplet-number::calc-fraction-text
    \times 5/6 {
        \once \override Accidental.color = #blue
        \once \override Beam.color = #blue
        \once \override Beam.positions = #'(-4.5 . -4.5)
        \once \override Dots.color = #blue
        \once \override NoteHead.color = #blue
        \once \override Slur.color = #blue
        \once \override Stem.color = #blue
        \once \override Stem.direction = #down
        af,4.
    }
    \scaleDurations #'(1 . 1) {
        a,16.
        [
        g,16.
        f,16.
        fs,16.
        ]
    }
    \scaleDurations #'(1 . 1) {
        f,16
        [
        fs,16
        bf,16
        e16
        ef16
        ]
    }
    \scaleDurations #'(1 . 1) {
        fs,32
        [
        af,32
        ]
    }
    \times 8/9 {
        \once \override Beam.positions = #'(5.5 . 5.5)
        \once \override Stem.direction = #up
        a,16..
        \once \override Accidental.color = #blue
        \once \override Beam.color = #blue
        \once \override Beam.positions = #'(-4.5 . -4.5)
        \once \override Dots.color = #blue
        \once \override NoteHead.color = #blue
        \once \override Slur.color = #blue
        \once \override Stem.color = #blue
        \once \override Stem.direction = #down
        g,4..
        \once \override Accidental.color = #blue
        \once \override Beam.color = #blue
        \once \override Beam.positions = #'(-4.5 . -4.5)
        \once \override Dots.color = #blue
        \once \override NoteHead.color = #blue
        \once \override Slur.color = #blue
        \once \override Stem.color = #blue
        \once \override Stem.direction = #down
        f,4..
    }
    \times 4/5 {
        \once \override Beam.positions = #'(5.5 . 5.5)
        \once \override Stem.direction = #up
        ef16.
        [
        \once \override Beam.positions = #'(5.5 . 5.5)
        \once \override Stem.direction = #up
        f16.
        \once \override Beam.positions = #'(5.5 . 5.5)
        \once \override Stem.direction = #up
        fs16.
        \once \override Beam.positions = #'(5.5 . 5.5)
        \once \override Stem.direction = #up
        bf,16.
        \once \override Beam.positions = #'(5.5 . 5.5)
        \once \override Stem.direction = #up
        e16.
        ]
    }
    \tweak text #tuplet-number::calc-fraction-text
    \times 5/6 {
        \once \override Accidental.color = #blue
        \once \override Beam.color = #blue
        \once \override Beam.positions = #'(-4.5 . -4.5)
        \once \override Dots.color = #blue
        \once \override NoteHead.color = #blue
        \once \override Slur.color = #blue
        \once \override Stem.color = #blue
        \once \override Stem.direction = #down
        bf,4.
        \once \override Accidental.color = #blue
        \once \override Beam.color = #blue
        \once \override Beam.positions = #'(-4.5 . -4.5)
        \once \override Dots.color = #blue
        \once \override NoteHead.color = #blue
        \once \override Slur.color = #blue
        \once \override Stem.color = #blue
        \once \override Stem.direction = #down
        c4.
    }
    \scaleDurations #'(1 . 1) {
        \once \override Beam.positions = #'(5.5 . 5.5)
        \once \override Stem.direction = #up
        cs16
        [
        \once \override Beam.positions = #'(5.5 . 5.5)
        \once \override Stem.direction = #up
        d16
        \once \override Beam.positions = #'(5.5 . 5.5)
        \once \override Stem.direction = #up
        b,16
        ]
    }
    \scaleDurations #'(1 . 1) {
        \once \override Beam.positions = #'(5.5 . 5.5)
        \once \override Stem.direction = #up
        e16
    }
    \scaleDurations #'(1 . 1) {
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
    \scaleDurations #'(1 . 1) {
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
    \scaleDurations #'(1 . 1) {
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
    \scaleDurations #'(1 . 1) {
        \once \override Accidental.color = #blue
        \once \override Beam.color = #blue
        \once \override Dots.color = #blue
        \once \override NoteHead.color = #blue
        \once \override Slur.color = #blue
        \once \override Stem.color = #blue
        f,8
        [
        \once \override Accidental.color = #blue
        \once \override Beam.color = #blue
        \once \override Dots.color = #blue
        \once \override NoteHead.color = #blue
        \once \override Slur.color = #blue
        \once \override Stem.color = #blue
        ef,8
        ]
    }
    \times 2/3 {
        \once \override Accidental.color = #blue
        \once \override Beam.color = #blue
        \once \override Dots.color = #blue
        \once \override NoteHead.color = #blue
        \once \override Slur.color = #blue
        \once \override Stem.color = #blue
        \once \override TupletBracket.staff-padding = #3
        d1
        \once \override Accidental.color = #blue
        \once \override Beam.color = #blue
        \once \override Dots.color = #blue
        \once \override NoteHead.color = #blue
        \once \override Slur.color = #blue
        \once \override Stem.color = #blue
        \once \override TupletBracket.staff-padding = #3
        e,1
        \once \override Accidental.color = #blue
        \once \override Beam.color = #blue
        \once \override Dots.color = #blue
        \once \override NoteHead.color = #blue
        \once \override Slur.color = #blue
        \once \override Stem.color = #blue
        \once \override TupletBracket.staff-padding = #3
        fs,1
    }
    \tweak text #tuplet-number::calc-fraction-text
    \times 6/7 {
        \once \override Accidental.color = #blue
        \once \override Beam.color = #blue
        \once \override Beam.positions = #'(-4.5 . -4.5)
        \once \override Dots.color = #blue
        \once \override NoteHead.color = #blue
        \once \override Slur.color = #blue
        \once \override Stem.color = #blue
        \once \override Stem.direction = #down
        \once \override TupletBracket.staff-padding = #6
        f,4.
        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Beam.positions = #'(5.5 . 5.5)
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        \once \override Stem.direction = #up
        \once \override TupletBracket.staff-padding = #6
        g8.
        [
        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Beam.positions = #'(5.5 . 5.5)
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        \once \override Stem.direction = #up
        \once \override TupletBracket.staff-padding = #6
        af8.
        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Beam.positions = #'(5.5 . 5.5)
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        \once \override Stem.direction = #up
        \once \override TupletBracket.staff-padding = #6
        c'8.
        ]
        \once \override Accidental.color = #blue
        \once \override Beam.color = #blue
        \once \override Beam.positions = #'(-4.5 . -4.5)
        \once \override Dots.color = #blue
        \once \override NoteHead.color = #blue
        \once \override Slur.color = #blue
        \once \override Stem.color = #blue
        \once \override Stem.direction = #down
        \once \override TupletBracket.staff-padding = #6
        fs,4.
    }
    \times 2/3 {
        \once \override Accidental.color = #blue
        \once \override Beam.color = #blue
        \once \override Beam.positions = #'(-4.5 . -4.5)
        \once \override Dots.color = #blue
        \once \override NoteHead.color = #blue
        \once \override Slur.color = #blue
        \once \override Stem.color = #blue
        \once \override Stem.direction = #down
        \once \override TupletBracket.staff-padding = #6
        c2..
        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Beam.positions = #'(5.5 . 5.5)
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        \once \override Stem.direction = #up
        \once \override TupletBracket.staff-padding = #6
        d'4..
    }
    \scaleDurations #'(1 . 1) {
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
    \scaleDurations #'(1 . 1) {
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
    \times 5/6 {
        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        fs8.
        [
        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        af8.
        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        a8.
        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        cs8.
        ]
    }
    \times 4/5 {
        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        d8..
        [
        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        cs8..
        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        ef8..
        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        e8..
        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        f8..
        ]
    }
    \scaleDurations #'(1 . 1) {
        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        af8
        [
        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        a8
        ]
    }
    \times 2/3 {
        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        b8
        [
        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        c'8
        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        bf8
        ]
    }
    \scaleDurations #'(1 . 1) {
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
    \scaleDurations #'(1 . 1) {
        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        bf8.
        [
        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        af8.
        ]
    }
    \tweak text #tuplet-number::calc-fraction-text
    \times 5/9 {
        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        a4.
        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        b,4.
        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        c4.
    }
    \scaleDurations #'(1 . 1) {
        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        cs8
    }
    \scaleDurations #'(1 . 1) {
        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        g16.
        [
        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        fs16.
        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        af16.
        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        a16.
        ]
    }
    \scaleDurations #'(1 . 1) {
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
    \times 2/3 {
        \once \override Beam.positions = #'(5.5 . 5.5)
        \once \override Stem.direction = #up
        \once \override TupletBracket.staff-padding = #2
        fs8
        [
        \once \override Beam.positions = #'(5.5 . 5.5)
        \once \override Stem.direction = #up
        \once \override TupletBracket.staff-padding = #2
        a,8
        \once \override Beam.positions = #'(5.5 . 5.5)
        \once \override Stem.direction = #up
        \once \override TupletBracket.staff-padding = #2
        bf,8
        \once \override Beam.positions = #'(5.5 . 5.5)
        \once \override Stem.direction = #up
        \once \override TupletBracket.staff-padding = #2
        af8
        ]
        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Beam.positions = #'(5.5 . 5.5)
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        \once \override Stem.direction = #up
        \once \override TupletBracket.staff-padding = #2
        g4
    }
    \scaleDurations #'(1 . 1) {
        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Beam.positions = #'(5.5 . 5.5)
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        \once \override Stem.direction = #up
        \once \override TupletBracket.staff-padding = #2
        cs'4
        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Beam.positions = #'(5.5 . 5.5)
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        \once \override Stem.direction = #up
        \once \override TupletBracket.staff-padding = #2
        ef4
    }
    \scaleDurations #'(1 . 1) {
        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        d'8
        [
        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        c'8
        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        b8
        ]
    }
    \scaleDurations #'(1 . 1) {
        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        bf8
    }
    \times 2/3 {
        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Beam.positions = #'(5.5 . 5.5)
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        \once \override Stem.direction = #up
        \once \override TupletBracket.staff-padding = #2
        e2
        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Beam.positions = #'(5.5 . 5.5)
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        \once \override Stem.direction = #up
        \once \override TupletBracket.staff-padding = #2
        f2
        \once \override Beam.positions = #'(5.5 . 5.5)
        \once \override Stem.direction = #up
        \once \override TupletBracket.staff-padding = #2
        ef4
        \once \override Beam.positions = #'(5.5 . 5.5)
        \once \override Stem.direction = #up
        \once \override TupletBracket.staff-padding = #2
        d4
    }
    \times 2/3 {
        \once \override Beam.positions = #'(5.5 . 5.5)
        \once \override Stem.direction = #up
        \once \override TupletBracket.staff-padding = #2
        b,8
        [
        \once \override Beam.positions = #'(5.5 . 5.5)
        \once \override Stem.direction = #up
        \once \override TupletBracket.staff-padding = #2
        cs8
        \once \override Beam.positions = #'(5.5 . 5.5)
        \once \override Stem.direction = #up
        \once \override TupletBracket.staff-padding = #2
        ef8
        \once \override Beam.positions = #'(5.5 . 5.5)
        \once \override Stem.direction = #up
        \once \override TupletBracket.staff-padding = #2
        d8
        ]
        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Beam.positions = #'(5.5 . 5.5)
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        \once \override Stem.direction = #up
        \once \override TupletBracket.staff-padding = #2
        c4
    }
    \scaleDurations #'(1 . 1) {
        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Beam.positions = #'(5.5 . 5.5)
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        \once \override Stem.direction = #up
        \once \override TupletBracket.staff-padding = #2
        d'4
        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Beam.positions = #'(5.5 . 5.5)
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        \once \override Stem.direction = #up
        \once \override TupletBracket.staff-padding = #2
        bf4
    }
    \scaleDurations #'(1 . 1) {
        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        e8
        [
        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        f8
        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        ef8
        ]
    }
    \scaleDurations #'(1 . 1) {
        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        b,8.
        [
        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        ef8.
        ]
    }
    \scaleDurations #'(1 . 1) {
        \once \override Accidental.color = #blue
        \once \override Beam.color = #blue
        \once \override Beam.positions = #'(-4.5 . -4.5)
        \once \override Dots.color = #blue
        \once \override NoteHead.color = #blue
        \once \override Slur.color = #blue
        \once \override Stem.color = #blue
        \once \override Stem.direction = #down
        a,4.
        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Beam.positions = #'(5.5 . 5.5)
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        \once \override Stem.direction = #up
        af8.
        [
        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Beam.positions = #'(5.5 . 5.5)
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        \once \override Stem.direction = #up
        bf8.
        ]
    }
    \scaleDurations #'(1 . 1) {
        \once \override Beam.positions = #'(5.5 . 5.5)
        \once \override Stem.direction = #up
        fs,16
        [
        \once \override Beam.positions = #'(5.5 . 5.5)
        \once \override Stem.direction = #up
        g,16
        \once \override Beam.positions = #'(5.5 . 5.5)
        \once \override Stem.direction = #up
        e16
        \once \override Beam.positions = #'(5.5 . 5.5)
        \once \override Stem.direction = #up
        ef16
        ]
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
    \scaleDurations #'(1 . 1) {
        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Beam.positions = #'(5.5 . 5.5)
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        \once \override Stem.direction = #up
        bf16
        [
        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Beam.positions = #'(5.5 . 5.5)
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        \once \override Stem.direction = #up
        b16
        ]
    }
    \scaleDurations #'(1 . 1) {
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
    \scaleDurations #'(1 . 1) {
        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Beam.positions = #'(5.5 . 5.5)
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        \once \override Stem.direction = #up
        \once \override TupletBracket.staff-padding = #2
        f4
    }
    \tweak text #tuplet-number::calc-fraction-text
    \times 3/5 {
        \once \override Beam.positions = #'(5.5 . 5.5)
        \once \override Stem.direction = #up
        \once \override TupletBracket.staff-padding = #2
        fs8.
        [
        \once \override Beam.positions = #'(5.5 . 5.5)
        \once \override Stem.direction = #up
        \once \override TupletBracket.staff-padding = #2
        g8.
        \once \override Beam.positions = #'(5.5 . 5.5)
        \once \override Stem.direction = #up
        \once \override TupletBracket.staff-padding = #2
        e8.
        ]
        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Beam.positions = #'(5.5 . 5.5)
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        \once \override Stem.direction = #up
        \once \override TupletBracket.staff-padding = #2
        ef4.
    }
    \scaleDurations #'(1 . 1) {
        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Beam.positions = #'(5.5 . 5.5)
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        \once \override Stem.direction = #up
        cs8
        [
        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Beam.positions = #'(5.5 . 5.5)
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        \once \override Stem.direction = #up
        d8
        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Beam.positions = #'(5.5 . 5.5)
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        \once \override Stem.direction = #up
        c8
        ]
        \once \override Beam.positions = #'(5.5 . 5.5)
        \once \override Stem.direction = #up
        bf,16
        [
        \once \override Beam.positions = #'(5.5 . 5.5)
        \once \override Stem.direction = #up
        b,16
        ]
    }
    \scaleDurations #'(1 . 1) {
        \once \override Beam.positions = #'(5.5 . 5.5)
        \once \override Stem.direction = #up
        ef16
        [
        \once \override Beam.positions = #'(5.5 . 5.5)
        \once \override Stem.direction = #up
        f,16
        ]
    }
    \scaleDurations #'(1 . 1) {
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
    \times 2/3 {
        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Beam.positions = #'(5.5 . 5.5)
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        \once \override Stem.direction = #up
        \once \override TupletBracket.staff-padding = #2
        b4
        \once \override Beam.positions = #'(5.5 . 5.5)
        \once \override Stem.direction = #up
        \once \override TupletBracket.staff-padding = #2
        cs8
        [
        \once \override Beam.positions = #'(5.5 . 5.5)
        \once \override Stem.direction = #up
        \once \override TupletBracket.staff-padding = #2
        d8
        \once \override Beam.positions = #'(5.5 . 5.5)
        \once \override Stem.direction = #up
        \once \override TupletBracket.staff-padding = #2
        c8
        \once \override Beam.positions = #'(5.5 . 5.5)
        \once \override Stem.direction = #up
        \once \override TupletBracket.staff-padding = #2
        bf,8
        ]
    }
    \scaleDurations #'(1 . 1) {
        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Beam.positions = #'(5.5 . 5.5)
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        \once \override Stem.direction = #up
        \once \override TupletBracket.staff-padding = #2
        af4
        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Beam.positions = #'(5.5 . 5.5)
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        \once \override Stem.direction = #up
        \once \override TupletBracket.staff-padding = #2
        bf4
    }
    \scaleDurations #'(1 . 1) {
        \once \override Beam.positions = #'(5.5 . 5.5)
        \once \override Stem.direction = #up
        b,16
        [
        \once \override Beam.positions = #'(5.5 . 5.5)
        \once \override Stem.direction = #up
        ef16
        \once \override Beam.positions = #'(5.5 . 5.5)
        \once \override Stem.direction = #up
        a,16
        ]
    }
    \scaleDurations #'(1 . 1) {
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
    \times 2/3 {
        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Beam.positions = #'(5.5 . 5.5)
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        \once \override Stem.direction = #up
        \once \override TupletBracket.staff-padding = #2
        b,2
        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Beam.positions = #'(5.5 . 5.5)
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        \once \override Stem.direction = #up
        \once \override TupletBracket.staff-padding = #2
        cs2
        \once \override Beam.positions = #'(5.5 . 5.5)
        \once \override Stem.direction = #up
        \once \override TupletBracket.staff-padding = #2
        d4
        \once \override Beam.positions = #'(5.5 . 5.5)
        \once \override Stem.direction = #up
        \once \override TupletBracket.staff-padding = #2
        c4
    }
    \tweak text #tuplet-number::calc-fraction-text
    \times 6/7 {
        \once \override Beam.positions = #'(5.5 . 5.5)
        \once \override Stem.direction = #up
        \once \override TupletBracket.staff-padding = #2
        a,16.
        [
        \once \override Beam.positions = #'(5.5 . 5.5)
        \once \override Stem.direction = #up
        \once \override TupletBracket.staff-padding = #2
        af,16.
        \once \override Beam.positions = #'(5.5 . 5.5)
        \once \override Stem.direction = #up
        \once \override TupletBracket.staff-padding = #2
        bf,16.
        ]
        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Beam.positions = #'(5.5 . 5.5)
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        \once \override Stem.direction = #up
        \once \override TupletBracket.staff-padding = #2
        b,8.
        [
        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Beam.positions = #'(5.5 . 5.5)
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        \once \override Stem.direction = #up
        \once \override TupletBracket.staff-padding = #2
        ef8.
        ]
    }
    \scaleDurations #'(1 . 1) {
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
    \scaleDurations #'(1 . 1) {
        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Beam.positions = #'(5.5 . 5.5)
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        \once \override Stem.direction = #up
        f8
        [
        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Beam.positions = #'(5.5 . 5.5)
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        \once \override Stem.direction = #up
        fs8
        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Beam.positions = #'(5.5 . 5.5)
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        \once \override Stem.direction = #up
        g8
        ]
    }
    \scaleDurations #'(1 . 1) {
        \once \override Beam.positions = #'(5.5 . 5.5)
        \once \override Stem.direction = #up
        fs8
    }
    \scaleDurations #'(1 . 1) {
        \once \override Beam.positions = #'(5.5 . 5.5)
        \once \override Stem.direction = #up
        g16.
        [
        \once \override Beam.positions = #'(5.5 . 5.5)
        \once \override Stem.direction = #up
        af16.
        \once \override Beam.positions = #'(5.5 . 5.5)
        \once \override Stem.direction = #up
        f16.
        \once \override Beam.positions = #'(5.5 . 5.5)
        \once \override Stem.direction = #up
        e16.
        ]
    }
    \scaleDurations #'(1 . 1) {
        \once \override Accidental.color = #blue
        \once \override Beam.color = #blue
        \once \override Beam.positions = #'(-4.5 . -4.5)
        \once \override Dots.color = #blue
        \once \override NoteHead.color = #blue
        \once \override Slur.color = #blue
        \once \override Stem.color = #blue
        \once \override Stem.direction = #down
        d4
        \once \override Beam.positions = #'(5.5 . 5.5)
        \once \override Stem.direction = #up
        ef16
        [
        \once \override Beam.positions = #'(5.5 . 5.5)
        \once \override Stem.direction = #up
        cs16
        \once \override Beam.positions = #'(5.5 . 5.5)
        \once \override Stem.direction = #up
        b,16
        \once \override Beam.positions = #'(5.5 . 5.5)
        \once \override Stem.direction = #up
        c16
        ]
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
    \times 8/9 {
        \once \override Accidental.color = #blue
        \once \override Beam.color = #blue
        \once \override Beam.positions = #'(-4.5 . -4.5)
        \once \override Dots.color = #blue
        \once \override NoteHead.color = #blue
        \once \override Slur.color = #blue
        \once \override Stem.color = #blue
        \once \override Stem.direction = #down
        g,4..
        \once \override Accidental.color = #blue
        \once \override Beam.color = #blue
        \once \override Beam.positions = #'(-4.5 . -4.5)
        \once \override Dots.color = #blue
        \once \override NoteHead.color = #blue
        \once \override Slur.color = #blue
        \once \override Stem.color = #blue
        \once \override Stem.direction = #down
        af,4..
        \once \override Beam.positions = #'(5.5 . 5.5)
        \once \override Stem.direction = #up
        f16..
    }
    \tweak text #tuplet-number::calc-fraction-text
    \times 3/4 {
        \once \override Beam.positions = #'(5.5 . 5.5)
        \once \override Stem.direction = #up
        c16.
        [
        \once \override Beam.positions = #'(5.5 . 5.5)
        \once \override Stem.direction = #up
        d16.
        \once \override Beam.positions = #'(5.5 . 5.5)
        \once \override Stem.direction = #up
        ef16.
        \once \override Beam.positions = #'(5.5 . 5.5)
        \once \override Stem.direction = #up
        cs16.
        ]
        \once \override Accidental.color = #blue
        \once \override Beam.color = #blue
        \once \override Beam.positions = #'(-4.5 . -4.5)
        \once \override Dots.color = #blue
        \once \override NoteHead.color = #blue
        \once \override Slur.color = #blue
        \once \override Stem.color = #blue
        \once \override Stem.direction = #down
        b,4.
    }
    \times 4/5 {
        \once \override Accidental.color = #blue
        \once \override Beam.color = #blue
        \once \override Beam.positions = #'(-4.5 . -4.5)
        \once \override Dots.color = #blue
        \once \override NoteHead.color = #blue
        \once \override Slur.color = #blue
        \once \override Stem.color = #blue
        \once \override Stem.direction = #down
        a,4..
        \once \override Beam.positions = #'(5.5 . 5.5)
        \once \override Stem.direction = #up
        b,16..
    }
    \scaleDurations #'(1 . 1) {
        c16
        [
        e16
        bf,16
        ]
    }
    \scaleDurations #'(1 . 1) {
        b,16
    }
    \times 4/5 {
        \once \override Accidental.color = #blue
        \once \override Beam.color = #blue
        \once \override Dots.color = #blue
        \once \override NoteHead.color = #blue
        \once \override Slur.color = #blue
        \once \override Stem.color = #blue
        \once \override TupletBracket.staff-padding = #2
        b,4.
        \once \override Accidental.color = #blue
        \once \override Beam.color = #blue
        \once \override Dots.color = #blue
        \once \override NoteHead.color = #blue
        \once \override Slur.color = #blue
        \once \override Stem.color = #blue
        \once \override TupletBracket.staff-padding = #2
        a,4.
        \once \override Accidental.color = #blue
        \once \override Beam.color = #blue
        \once \override Dots.color = #blue
        \once \override NoteHead.color = #blue
        \once \override Slur.color = #blue
        \once \override Stem.color = #blue
        \once \override TupletBracket.staff-padding = #2
        af,4.
        \once \override Accidental.color = #blue
        \once \override Beam.color = #blue
        \once \override Dots.color = #blue
        \once \override NoteHead.color = #blue
        \once \override Slur.color = #blue
        \once \override Stem.color = #blue
        \once \override TupletBracket.staff-padding = #2
        bf,4.
        \once \override Accidental.color = #blue
        \once \override Beam.color = #blue
        \once \override Dots.color = #blue
        \once \override NoteHead.color = #blue
        \once \override Slur.color = #blue
        \once \override Stem.color = #blue
        \once \override TupletBracket.staff-padding = #2
        c4.
    }
    \scaleDurations #'(1 . 1) {
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
    \scaleDurations #'(1 . 1) {
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
    \scaleDurations #'(1 . 1) {
        \once \override Accidental.color = #blue
        \once \override Beam.color = #blue
        \once \override Dots.color = #blue
        \once \override NoteHead.color = #blue
        \once \override Slur.color = #blue
        \once \override Stem.color = #blue
        c4
    }
    \tweak text #tuplet-number::calc-fraction-text
    \times 3/4 {
        \once \override Accidental.color = #blue
        \once \override Beam.color = #blue
        \once \override Dots.color = #blue
        \once \override NoteHead.color = #blue
        \once \override Slur.color = #blue
        \once \override Stem.color = #blue
        \once \override TupletBracket.staff-padding = #2
        b,2.
        \once \override Accidental.color = #blue
        \once \override Beam.color = #blue
        \once \override Dots.color = #blue
        \once \override NoteHead.color = #blue
        \once \override Slur.color = #blue
        \once \override Stem.color = #blue
        \once \override TupletBracket.staff-padding = #2
        a,2.
        \once \override Accidental.color = #blue
        \once \override Beam.color = #blue
        \once \override Dots.color = #blue
        \once \override NoteHead.color = #blue
        \once \override Slur.color = #blue
        \once \override Stem.color = #blue
        \once \override TupletBracket.staff-padding = #2
        af,2.
        \once \override Accidental.color = #blue
        \once \override Beam.color = #blue
        \once \override Dots.color = #blue
        \once \override NoteHead.color = #blue
        \once \override Slur.color = #blue
        \once \override Stem.color = #blue
        \once \override TupletBracket.staff-padding = #2
        bf,2.
    }
    \times 4/5 {
        \once \override Accidental.color = #blue
        \once \override Beam.color = #blue
        \once \override Dots.color = #blue
        \once \override NoteHead.color = #blue
        \once \override Slur.color = #blue
        \once \override Stem.color = #blue
        cs,4.
        \once \override Accidental.color = #blue
        \once \override Beam.color = #blue
        \once \override Dots.color = #blue
        \once \override NoteHead.color = #blue
        \once \override Slur.color = #blue
        \once \override Stem.color = #blue
        d,4.
        \once \override Accidental.color = #blue
        \once \override Beam.color = #blue
        \once \override Dots.color = #blue
        \once \override NoteHead.color = #blue
        \once \override Slur.color = #blue
        \once \override Stem.color = #blue
        c,4.
        \once \override Accidental.color = #blue
        \once \override Beam.color = #blue
        \once \override Dots.color = #blue
        \once \override NoteHead.color = #blue
        \once \override Slur.color = #blue
        \once \override Stem.color = #blue
        b,,4.
        \once \override Accidental.color = #blue
        \once \override Beam.color = #blue
        \once \override Dots.color = #blue
        \once \override NoteHead.color = #blue
        \once \override Slur.color = #blue
        \once \override Stem.color = #blue
        g,4.
    }
    \scaleDurations #'(1 . 1) {
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
    \scaleDurations #'(1 . 1) {
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
}                                                                              %! extern


Staff = <<                                                                     %! extern
    \context Voice = "Music_Voice"                                             %! ScoreTemplate
    \Music_Voice                                                               %! extern
>>                                                                             %! extern
