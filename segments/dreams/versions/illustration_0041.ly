% 2014-11-08 15:59

\version "2.19.15"
\language "english"

#(ly:set-option 'relative-includes #t)

\include "../../stylesheets/stylesheet.ily"

\header {}

\score {
	\context Score = "Score" <<
		\context TimeSignatureContext = "Time Signature Context" {
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
				\time 7/8
				s1 * 7/8
			}
			{
				\time 15/16
				s1 * 15/16
			}
			{
				s1 * 15/16
			}
			{
				\time 3/8
				s1 * 3/8
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
				\time 7/8
				s1 * 7/8
			}
			{
				\time 4/4
				s1 * 1
			}
			\pageBreak
			{
				\time 3/4
				s1 * 3/4
			}
			{
				\time 6/4
				s1 * 3/2
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
				\time 4/4
				s1 * 1
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
				\time 3/4
				s1 * 3/4
			}
			{
				s1 * 3/4
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
				\time 3/4
				s1 * 3/4
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
		\context Staff = "Staff" <<
			\clef "bass"
			\context TextSpannerVoice = "Text Spanner Voice" {
			}
			\context Voice = "Music Voice" {
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 6/5 {
					\once \override Beam #'positions = #'(-4.5 . -4.5)
					\once \override Stem #'direction = #down
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					\tempo 8=78
					fs16 [ - \markup { 0 }
					\once \override Stem #'direction = #down
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					e16 - \markup { 1 }
					\once \override Stem #'direction = #down
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					f16 - \markup { 2 }
					\once \override Stem #'direction = #down
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					g16 - \markup { 3 }
					\once \override Stem #'direction = #down
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					af16 ] - \markup { 4 }
				}
				{
					\once \override Beam #'positions = #'(5.5 . 5.5)
					\once \override Stem #'direction = #up
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #1
					a,8 [ - \markup { 5 }
					\once \override Stem #'direction = #up
					\set stemLeftBeamCount = #1
					\set stemRightBeamCount = #0
					ef8 ] - \markup { 6 }
				}
				{
					\once \override Beam #'positions = #'(-4.5 . -4.5)
					\once \override Stem #'direction = #down
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					d16 [ - \markup { 7 }
					\once \override Stem #'direction = #down
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					e16 - \markup { 8 }
					\once \override Stem #'direction = #down
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					f16 ] - \markup { 9 }
				}
				{
					\once \override Beam #'positions = #'(5.5 . 5.5)
					\once \override Stem #'direction = #up
					cs16 - \markup { 10 }
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 9/8 {
					\once \override Beam #'positions = #'(5.5 . 5.5)
					\once \override Stem #'direction = #up
					\once \override TupletBracket #'staff-padding = #2.5
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #1
					bf,8 [ - \markup { 11 }
					\once \override Stem #'direction = #up
					\once \override TupletBracket #'staff-padding = #2.5
					\set stemLeftBeamCount = #1
					\set stemRightBeamCount = #1
					a,8 - \markup { 12 }
					\once \override Stem #'direction = #up
					\once \override TupletBracket #'staff-padding = #2.5
					\set stemLeftBeamCount = #1
					\set stemRightBeamCount = #1
					b,8 - \markup { 13 }
					\once \override Stem #'direction = #up
					\once \override TupletBracket #'staff-padding = #2.5
					\set stemLeftBeamCount = #1
					\set stemRightBeamCount = #0
					c8 ] - \markup { 14 }
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 6/5 {
					\once \override Beam #'positions = #'(5.5 . 5.5)
					\once \override Stem #'direction = #up
					\once \override TupletBracket #'staff-padding = #2.5
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					f,16 [ - \markup { 15 }
					\once \override Stem #'direction = #up
					\once \override TupletBracket #'staff-padding = #2.5
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					a,16 - \markup { 16 }
					\once \override Stem #'direction = #up
					\once \override TupletBracket #'staff-padding = #2.5
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					ef16 - \markup { 17 }
					\once \override Stem #'direction = #up
					\once \override TupletBracket #'staff-padding = #2.5
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					d16 - \markup { 18 }
					\once \override Stem #'direction = #up
					\once \override TupletBracket #'staff-padding = #2.5
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					e16 ] - \markup { 19 }
				}
				{
					\once \override Beam #'positions = #'(5.5 . 5.5)
					\once \override Stem #'direction = #up
					\once \override TupletBracket #'staff-padding = #2.5
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #1
					c8 [ - \markup { 20 }
					\once \override Stem #'direction = #up
					\once \override TupletBracket #'staff-padding = #2.5
					\set stemLeftBeamCount = #1
					\set stemRightBeamCount = #0
					cs8 ] - \markup { 21 }
				}
				{
					\once \override Beam #'positions = #'(5.5 . 5.5)
					\once \override Stem #'direction = #up
					\once \override TupletBracket #'staff-padding = #2.5
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					bf,16 [ - \markup { 22 }
					\once \override Stem #'direction = #up
					\once \override TupletBracket #'staff-padding = #2.5
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					a,16 - \markup { 23 }
					\once \override Stem #'direction = #up
					\once \override TupletBracket #'staff-padding = #2.5
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					b,16 ] - \markup { 24 }
				}
				\times 4/5 {
					\once \override Beam #'positions = #'(5.5 . 5.5)
					\once \override Stem #'direction = #up
					\once \override TupletBracket #'staff-padding = #2.5
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					af,16 [ - \markup { 25 }
					\once \override Stem #'direction = #up
					\once \override TupletBracket #'staff-padding = #2.5
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					fs,16 - \markup { 26 }
					\once \override Stem #'direction = #up
					\once \override TupletBracket #'staff-padding = #2.5
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					e16 - \markup { 27 }
					\once \override Stem #'direction = #up
					\once \override TupletBracket #'staff-padding = #2.5
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					f,16 - \markup { 28 }
					\once \override Stem #'direction = #up
					\once \override TupletBracket #'staff-padding = #2.5
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					g,16 ] - \markup { 29 }
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 7/4 {
					\once \override Beam #'positions = #'(5.5 . 5.5)
					\once \override Stem #'direction = #up
					\once \override TupletBracket #'staff-padding = #2.5
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #1
					b,8 [ - \markup { 30 }
					\once \override Stem #'direction = #up
					\once \override TupletBracket #'staff-padding = #2.5
					\set stemLeftBeamCount = #1
					\set stemRightBeamCount = #0
					c8 ] - \markup { 31 }
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 4/3 {
					\once \override Beam #'positions = #'(5.5 . 5.5)
					\once \override Stem #'direction = #up
					\once \override TupletBracket #'staff-padding = #2.5
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					cs16 [ - \markup { 32 }
					\once \override Stem #'direction = #up
					\once \override TupletBracket #'staff-padding = #2.5
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					bf,16 - \markup { 33 }
					\once \override Stem #'direction = #up
					\once \override TupletBracket #'staff-padding = #2.5
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					a,16 ] - \markup { 34 }
				}
				{
					\once \override Beam #'positions = #'(-4.5 . -4.5)
					\once \override Stem #'direction = #down
					\once \override TupletBracket #'staff-padding = #2.5
					g8. - \markup { 35 }
				}
				{
					\once \override Beam #'positions = #'(-4.5 . -4.5)
					\once \override Stem #'direction = #down
					\once \override TupletBracket #'staff-padding = #2.5
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					af16 [ - \markup { 36 }
					\once \override Stem #'direction = #down
					\once \override TupletBracket #'staff-padding = #2.5
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					fs16 - \markup { 37 }
					\once \override Stem #'direction = #down
					\once \override TupletBracket #'staff-padding = #2.5
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					e16 - \markup { 38 }
					\once \override Stem #'direction = #down
					\once \override TupletBracket #'staff-padding = #2.5
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					f16 ] - \markup { 39 }
				}
				\times 4/5 {
					\once \override Beam #'positions = #'(5.5 . 5.5)
					\once \override Stem #'direction = #up
					\once \override TupletBracket #'staff-padding = #2.5
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					e16 [ - \markup { 40 }
					\once \override Stem #'direction = #up
					\once \override TupletBracket #'staff-padding = #2.5
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					f16 - \markup { 41 }
					\once \override Stem #'direction = #up
					\once \override TupletBracket #'staff-padding = #2.5
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					a,16 - \markup { 42 }
					\once \override Stem #'direction = #up
					\once \override TupletBracket #'staff-padding = #2.5
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					ef16 - \markup { 43 }
					\once \override Stem #'direction = #up
					\once \override TupletBracket #'staff-padding = #2.5
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					d16 ] - \markup { 44 }
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 7/4 {
					\once \override Beam #'positions = #'(5.5 . 5.5)
					\once \override Stem #'direction = #up
					\once \override TupletBracket #'staff-padding = #2.5
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #1
					f,8 [ - \markup { 45 }
					\once \override Stem #'direction = #up
					\once \override TupletBracket #'staff-padding = #2.5
					\set stemLeftBeamCount = #1
					\set stemRightBeamCount = #0
					g,8 ] - \markup { 46 }
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 4/3 {
					\once \override Beam #'positions = #'(5.5 . 5.5)
					\once \override Stem #'direction = #up
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					af,16 [ - \markup { 47 }
					\once \override Beam #'positions = #'(5.5 . 5.5)
					\once \override Stem #'direction = #up
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					fs,16 - \markup { 48 }
					\once \override Beam #'positions = #'(5.5 . 5.5)
					\once \override Stem #'direction = #up
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					e16 ] - \markup { 49 }
				}
				{
					\once \override Beam #'positions = #'(5.5 . 5.5)
					\once \override Stem #'direction = #up
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					cs16. [ - \markup { 50 }
					\once \override Beam #'positions = #'(5.5 . 5.5)
					\once \override Stem #'direction = #up
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					d16. ] - \markup { 51 }
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 4/3 {
					\once \override Beam #'positions = #'(5.5 . 5.5)
					\once \override Stem #'direction = #up
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					b,16 [ - \markup { 52 }
					\once \override Beam #'positions = #'(5.5 . 5.5)
					\once \override Stem #'direction = #up
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					bf,16 ] - \markup { 53 }
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Beam #'positions = #'(-4.5 . -4.5)
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Slur #'color = #blue
					\once \override Stem #'color = #blue
					\once \override Stem #'direction = #down
					c4 - \markup { 54 }
				}
				{
					\once \override Beam #'positions = #'(-4.5 . -4.5)
					\once \override Stem #'direction = #down
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					a,16 [ - \markup { 55 }
					\once \override Stem #'direction = #down
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					g16 - \markup { 56 }
					\once \override Stem #'direction = #down
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					f16 - \markup { 57 }
					\once \override Stem #'direction = #down
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					fs16 - \markup { 58 }
					\once \override Stem #'direction = #down
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					af16 ] - \markup { 59 }
				}
				{
					\once \override Beam #'positions = #'(5.5 . 5.5)
					\once \override Stem #'direction = #up
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #3
					c32 [ - \markup { 60 }
					\once \override Stem #'direction = #up
					\set stemLeftBeamCount = #3
					\set stemRightBeamCount = #0
					cs32 ] - \markup { 61 }
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 11/6 {
					\once \override Beam #'positions = #'(5.5 . 5.5)
					\once \override Stem #'direction = #up
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					d16 [ - \markup { 62 }
					\once \override Beam #'positions = #'(5.5 . 5.5)
					\once \override Stem #'direction = #up
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					b,16 ] - \markup { 63 }
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Beam #'positions = #'(-4.5 . -4.5)
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Slur #'color = #blue
					\once \override Stem #'color = #blue
					\once \override Stem #'direction = #down
					bf,4 ( - \markup { 64 }
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 5/4 {
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Beam #'positions = #'(-4.5 . -4.5)
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Slur #'color = #blue
					\once \override Stem #'color = #blue
					\once \override Stem #'direction = #down
					af,4 ) - \markup { 65 }
				}
				{
					\once \override Beam #'positions = #'(5.5 . 5.5)
					\once \override Stem #'direction = #up
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					a,16. [ - \markup { 66 }
					\once \override Stem #'direction = #up
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					g,16. - \markup { 67 }
					\once \override Stem #'direction = #up
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					f,16. - \markup { 68 }
					\once \override Stem #'direction = #up
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					fs,16. ] - \markup { 69 }
				}
				{
					\once \override Beam #'positions = #'(5.5 . 5.5)
					\once \override Stem #'direction = #up
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					f,16 [ - \markup { 70 }
					\once \override Stem #'direction = #up
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					fs,16 - \markup { 71 }
					\once \override Stem #'direction = #up
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					bf,16 - \markup { 72 }
					\once \override Stem #'direction = #up
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					e16 - \markup { 73 }
					\once \override Stem #'direction = #up
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					ef16 ] - \markup { 74 }
				}
				{
					\once \override Beam #'positions = #'(5.5 . 5.5)
					\once \override Stem #'direction = #up
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #3
					fs,32 [ - \markup { 75 }
					\once \override Stem #'direction = #up
					\set stemLeftBeamCount = #3
					\set stemRightBeamCount = #0
					af,32 ] - \markup { 76 }
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 14/9 {
					\once \override Beam #'positions = #'(5.5 . 5.5)
					\once \override Stem #'direction = #up
					a,16 - \markup { 77 }
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Beam #'positions = #'(-4.5 . -4.5)
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Slur #'color = #blue
					\once \override Stem #'color = #blue
					\once \override Stem #'direction = #down
					g,4 ( - \markup { 78 }
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Beam #'positions = #'(-4.5 . -4.5)
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Slur #'color = #blue
					\once \override Stem #'color = #blue
					\once \override Stem #'direction = #down
					f,4 ) - \markup { 79 }
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 6/5 {
					\once \override Beam #'positions = #'(5.5 . 5.5)
					\once \override Stem #'direction = #up
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					ef16 [ - \markup { 80 }
					\once \override Beam #'positions = #'(5.5 . 5.5)
					\once \override Stem #'direction = #up
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					f16 - \markup { 81 }
					\once \override Beam #'positions = #'(5.5 . 5.5)
					\once \override Stem #'direction = #up
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					fs16 - \markup { 82 }
					\once \override Beam #'positions = #'(5.5 . 5.5)
					\once \override Stem #'direction = #up
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					bf,16 - \markup { 83 }
					\once \override Beam #'positions = #'(5.5 . 5.5)
					\once \override Stem #'direction = #up
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					e16 ] - \markup { 84 }
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 5/4 {
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Beam #'positions = #'(-4.5 . -4.5)
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Slur #'color = #blue
					\once \override Stem #'color = #blue
					\once \override Stem #'direction = #down
					bf,4 ( - \markup { 85 }
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Beam #'positions = #'(-4.5 . -4.5)
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Slur #'color = #blue
					\once \override Stem #'color = #blue
					\once \override Stem #'direction = #down
					c4 ) - \markup { 86 }
				}
				{
					\once \override Beam #'positions = #'(5.5 . 5.5)
					\once \override Stem #'direction = #up
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					cs16 [ - \markup { 87 }
					\once \override Beam #'positions = #'(5.5 . 5.5)
					\once \override Stem #'direction = #up
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					d16 - \markup { 88 }
					\once \override Beam #'positions = #'(5.5 . 5.5)
					\once \override Stem #'direction = #up
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					b,16 ] - \markup { 89 }
				}
				{
					\once \override Beam #'positions = #'(5.5 . 5.5)
					\once \override Stem #'direction = #up
					e16 - \markup { 90 }
				}
				{
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Beam #'positions = #'(-4.5 . -4.5)
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Slur #'color = #blue
					\once \override Stem #'color = #blue
					\once \override Stem #'direction = #down
					ef,2 ( - \markup { 91 }
				}
				{
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Slur #'color = #blue
					\once \override Stem #'color = #blue
					d,4. ) - \markup { 92 }
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Slur #'color = #blue
					\once \override Stem #'color = #blue
					e,4. ( - \markup { 93 }
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Slur #'color = #blue
					\once \override Stem #'color = #blue
					fs,4. - \markup { 94 }
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Slur #'color = #blue
					\once \override Stem #'color = #blue
					f,4. ) - \markup { 95 }
				}
				{
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Slur #'color = #blue
					\once \override Stem #'color = #blue
					fs,4 ( - \markup { 96 }
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Slur #'color = #blue
					\once \override Stem #'color = #blue
					f,4 - \markup { 97 }
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Slur #'color = #blue
					\once \override Stem #'color = #blue
					cs,4 ) - \markup { 98 }
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Slur #'color = #blue
					\once \override Stem #'color = #blue
					g,4 ( - \markup { 99 }
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Slur #'color = #blue
					\once \override Stem #'color = #blue
					af,4 - \markup { 100 }
				}
				{
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Beam #'positions = #'(5.5 . 5.5)
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Slur #'color = #blue
					\once \override Stem #'color = #blue
					\once \override Stem #'direction = #up
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #1
					f,8 [ ) - \markup { 101 }
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Slur #'color = #blue
					\once \override Stem #'color = #blue
					\once \override Stem #'direction = #up
					\set stemLeftBeamCount = #1
					\set stemRightBeamCount = #0
					ef,8 ] ( - \markup { 102 }
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 4/3 {
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Slur #'color = #blue
					\once \override Stem #'color = #blue
					\once \override TupletBracket #'staff-padding = #3
					d,2 ) - \markup { 103 }
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Slur #'color = #blue
					\once \override Stem #'color = #blue
					\once \override TupletBracket #'staff-padding = #3
					e,2 - \markup { 104 }
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Slur #'color = #blue
					\once \override Stem #'color = #blue
					\once \override TupletBracket #'staff-padding = #3
					fs,2 - \markup { 105 }
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 9/7 {
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Beam #'positions = #'(-4.5 . -4.5)
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Slur #'color = #blue
					\once \override Stem #'color = #blue
					\once \override Stem #'direction = #down
					\once \override TupletBracket #'staff-padding = #6
					f,4 - \markup { 106 }
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Beam #'positions = #'(5.5 . 5.5)
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Slur #'color = #red
					\once \override Stem #'color = #red
					\once \override Stem #'direction = #up
					\once \override TupletBracket #'staff-padding = #6
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #1
					g8 [ ( - \markup { 107 }
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Beam #'positions = #'(5.5 . 5.5)
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Slur #'color = #red
					\once \override Stem #'color = #red
					\once \override Stem #'direction = #up
					\once \override TupletBracket #'staff-padding = #6
					\set stemLeftBeamCount = #1
					\set stemRightBeamCount = #1
					af8 - \markup { 108 }
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Beam #'positions = #'(5.5 . 5.5)
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Slur #'color = #red
					\once \override Stem #'color = #red
					\once \override Stem #'direction = #up
					\once \override TupletBracket #'staff-padding = #6
					\set stemLeftBeamCount = #1
					\set stemRightBeamCount = #0
					c8 ] ) - \markup { 109 }
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Beam #'positions = #'(-4.5 . -4.5)
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Slur #'color = #blue
					\once \override Stem #'color = #blue
					\once \override Stem #'direction = #down
					\once \override TupletBracket #'staff-padding = #6
					fs,4 ( - \markup { 110 }
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 7/6 {
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Beam #'positions = #'(-4.5 . -4.5)
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Slur #'color = #blue
					\once \override Stem #'color = #blue
					\once \override Stem #'direction = #down
					\once \override TupletBracket #'staff-padding = #6
					c,2 ) - \markup { 111 }
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Beam #'positions = #'(5.5 . 5.5)
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Slur #'color = #red
					\once \override Stem #'color = #red
					\once \override Stem #'direction = #up
					\once \override TupletBracket #'staff-padding = #6
					d4 ( - \markup { 112 }
				}
				{
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Beam #'positions = #'(5.5 . 5.5)
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Slur #'color = #red
					\once \override Stem #'color = #red
					\once \override Stem #'direction = #up
					ef8 ) - \markup { 113 }
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Beam #'positions = #'(-4.5 . -4.5)
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Slur #'color = #blue
					\once \override Stem #'color = #blue
					\once \override Stem #'direction = #down
					e,4 ( - \markup { 114 }
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Beam #'positions = #'(-4.5 . -4.5)
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Slur #'color = #blue
					\once \override Stem #'color = #blue
					\once \override Stem #'direction = #down
					cs,4 ) - \markup { 115 }
				}
				{
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Beam #'positions = #'(5.5 . 5.5)
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Slur #'color = #red
					\once \override Stem #'color = #red
					\once \override Stem #'direction = #up
					fs8 ( - \markup { 116 }
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 5/4 {
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Beam #'positions = #'(-4.5 . -4.5)
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Slur #'color = #red
					\once \override Stem #'color = #red
					\once \override Stem #'direction = #down
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #1
					fs8 [ - \markup { 117 }
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Slur #'color = #red
					\once \override Stem #'color = #red
					\once \override Stem #'direction = #down
					\set stemLeftBeamCount = #1
					\set stemRightBeamCount = #1
					af8 - \markup { 118 }
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Slur #'color = #red
					\once \override Stem #'color = #red
					\once \override Stem #'direction = #down
					\set stemLeftBeamCount = #1
					\set stemRightBeamCount = #1
					a8 ) - \markup { 119 }
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Slur #'color = #red
					\once \override Stem #'color = #red
					\once \override Stem #'direction = #down
					\set stemLeftBeamCount = #1
					\set stemRightBeamCount = #0
					cs8 ] ( - \markup { 120 }
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 7/5 {
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Beam #'positions = #'(-4.5 . -4.5)
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Slur #'color = #red
					\once \override Stem #'color = #red
					\once \override Stem #'direction = #down
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #1
					d8 [ - \markup { 121 }
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Slur #'color = #red
					\once \override Stem #'color = #red
					\once \override Stem #'direction = #down
					\set stemLeftBeamCount = #1
					\set stemRightBeamCount = #1
					cs8 - \markup { 122 }
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Slur #'color = #red
					\once \override Stem #'color = #red
					\once \override Stem #'direction = #down
					\set stemLeftBeamCount = #1
					\set stemRightBeamCount = #1
					ef8 - \markup { 123 }
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Slur #'color = #red
					\once \override Stem #'color = #red
					\once \override Stem #'direction = #down
					\set stemLeftBeamCount = #1
					\set stemRightBeamCount = #1
					e8 ) - \markup { 124 }
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Slur #'color = #red
					\once \override Stem #'color = #red
					\once \override Stem #'direction = #down
					\set stemLeftBeamCount = #1
					\set stemRightBeamCount = #0
					f8 ] ( - \markup { 125 }
				}
				{
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Beam #'positions = #'(-4.5 . -4.5)
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Slur #'color = #red
					\once \override Stem #'color = #red
					\once \override Stem #'direction = #down
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #1
					af8 [ - \markup { 126 }
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Slur #'color = #red
					\once \override Stem #'color = #red
					\once \override Stem #'direction = #down
					\set stemLeftBeamCount = #1
					\set stemRightBeamCount = #0
					a8 ] - \markup { 127 }
				}
				\times 2/3 {
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Beam #'positions = #'(-4.5 . -4.5)
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Slur #'color = #red
					\once \override Stem #'color = #red
					\once \override Stem #'direction = #down
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #1
					b8 [ - \markup { 128 }
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Slur #'color = #red
					\once \override Stem #'color = #red
					\once \override Stem #'direction = #down
					\set stemLeftBeamCount = #1
					\set stemRightBeamCount = #1
					c'8 ) - \markup { 129 }
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Slur #'color = #red
					\once \override Stem #'color = #red
					\once \override Stem #'direction = #down
					\set stemLeftBeamCount = #1
					\set stemRightBeamCount = #0
					bf8 ] ( - \markup { 130 }
				}
				{
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Slur #'color = #red
					\once \override Stem #'color = #red
					f4 - \markup { 131 }
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Slur #'color = #red
					\once \override Stem #'color = #red
					d'4 - \markup { 132 }
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Slur #'color = #red
					\once \override Stem #'color = #red
					cs'4 - \markup { 133 }
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Slur #'color = #red
					\once \override Stem #'color = #red
					ef4 ) - \markup { 134 }
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Slur #'color = #red
					\once \override Stem #'color = #red
					e4 ( - \markup { 135 }
				}
				{
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Beam #'positions = #'(-4.5 . -4.5)
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Slur #'color = #red
					\once \override Stem #'color = #red
					\once \override Stem #'direction = #down
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #1
					bf8. [ - \markup { 136 }
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Slur #'color = #red
					\once \override Stem #'color = #red
					\once \override Stem #'direction = #down
					\set stemLeftBeamCount = #1
					\set stemRightBeamCount = #0
					af8. ] - \markup { 137 }
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 5/3 {
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Beam #'positions = #'(-4.5 . -4.5)
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Slur #'color = #red
					\once \override Stem #'color = #red
					\once \override Stem #'direction = #down
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #1
					a8 [ - \markup { 138 }
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Slur #'color = #red
					\once \override Stem #'color = #red
					\once \override Stem #'direction = #down
					\set stemLeftBeamCount = #1
					\set stemRightBeamCount = #1
					b,8 ) - \markup { 139 }
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Slur #'color = #red
					\once \override Stem #'color = #red
					\once \override Stem #'direction = #down
					\set stemLeftBeamCount = #1
					\set stemRightBeamCount = #0
					c8 ] ( - \markup { 140 }
				}
				{
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Beam #'positions = #'(5.5 . 5.5)
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Slur #'color = #red
					\once \override Stem #'color = #red
					\once \override Stem #'direction = #up
					cs8 - \markup { 141 }
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 3/4 {
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Beam #'positions = #'(-4.5 . -4.5)
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Slur #'color = #red
					\once \override Stem #'color = #red
					\once \override Stem #'direction = #down
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #1
					g8 [ - \markup { 142 }
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Slur #'color = #red
					\once \override Stem #'color = #red
					\once \override Stem #'direction = #down
					\set stemLeftBeamCount = #1
					\set stemRightBeamCount = #1
					fs8 - \markup { 143 }
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Slur #'color = #red
					\once \override Stem #'color = #red
					\once \override Stem #'direction = #down
					\set stemLeftBeamCount = #1
					\set stemRightBeamCount = #1
					af8 ) - \markup { 144 }
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Slur #'color = #red
					\once \override Stem #'color = #red
					\once \override Stem #'direction = #down
					\set stemLeftBeamCount = #1
					\set stemRightBeamCount = #0
					a8 ] ( - \markup { 145 }
				}
				{
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Slur #'color = #red
					\once \override Stem #'color = #red
					c4 - \markup { 146 }
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Slur #'color = #red
					\once \override Stem #'color = #red
					bf4 - \markup { 147 }
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Slur #'color = #red
					\once \override Stem #'color = #red
					af4 ) - \markup { 148 }
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Slur #'color = #red
					\once \override Stem #'color = #red
					a4 ( - \markup { 149 }
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Slur #'color = #red
					\once \override Stem #'color = #red
					b4 ) - \markup { 150 }
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 4/3 {
					\once \override Beam #'positions = #'(5.5 . 5.5)
					\once \override Stem #'direction = #up
					\once \override TupletBracket #'staff-padding = #2
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					fs16 [ - \markup { 151 }
					\once \override Beam #'positions = #'(5.5 . 5.5)
					\once \override Stem #'direction = #up
					\once \override TupletBracket #'staff-padding = #2
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					a,16 - \markup { 152 }
					\once \override Beam #'positions = #'(5.5 . 5.5)
					\once \override Stem #'direction = #up
					\once \override TupletBracket #'staff-padding = #2
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					bf,16 - \markup { 153 }
					\once \override Beam #'positions = #'(5.5 . 5.5)
					\once \override Stem #'direction = #up
					\once \override TupletBracket #'staff-padding = #2
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					af16 ] - \markup { 154 }
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Beam #'positions = #'(5.5 . 5.5)
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Slur #'color = #red
					\once \override Stem #'color = #red
					\once \override Stem #'direction = #up
					\once \override TupletBracket #'staff-padding = #2
					g8 ( - \markup { 155 }
				}
				{
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Beam #'positions = #'(5.5 . 5.5)
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Slur #'color = #red
					\once \override Stem #'color = #red
					\once \override Stem #'direction = #up
					\once \override TupletBracket #'staff-padding = #2
					cs'4 ) - \markup { 156 }
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Beam #'positions = #'(5.5 . 5.5)
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Slur #'color = #red
					\once \override Stem #'color = #red
					\once \override Stem #'direction = #up
					\once \override TupletBracket #'staff-padding = #2
					ef4 ( - \markup { 157 }
				}
				{
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Beam #'positions = #'(-4.5 . -4.5)
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Slur #'color = #red
					\once \override Stem #'color = #red
					\once \override Stem #'direction = #down
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #1
					d'8 [ - \markup { 158 }
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Slur #'color = #red
					\once \override Stem #'color = #red
					\once \override Stem #'direction = #down
					\set stemLeftBeamCount = #1
					\set stemRightBeamCount = #1
					c'8 - \markup { 159 }
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Slur #'color = #red
					\once \override Stem #'color = #red
					\once \override Stem #'direction = #down
					\set stemLeftBeamCount = #1
					\set stemRightBeamCount = #0
					b8 ] ) - \markup { 160 }
				}
				{
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Beam #'positions = #'(-4.5 . -4.5)
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Slur #'color = #red
					\once \override Stem #'color = #red
					\once \override Stem #'direction = #down
					bf8 ( - \markup { 161 }
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 4/3 {
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Beam #'positions = #'(5.5 . 5.5)
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Slur #'color = #red
					\once \override Stem #'color = #red
					\once \override Stem #'direction = #up
					\once \override TupletBracket #'staff-padding = #2
					e4 - \markup { 162 }
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Beam #'positions = #'(5.5 . 5.5)
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Slur #'color = #red
					\once \override Stem #'color = #red
					\once \override Stem #'direction = #up
					\once \override TupletBracket #'staff-padding = #2
					f4 ) - \markup { 163 }
					\once \override Beam #'positions = #'(5.5 . 5.5)
					\once \override Stem #'direction = #up
					\once \override TupletBracket #'staff-padding = #2
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #1
					ef8 [ - \markup { 164 }
					\once \override Beam #'positions = #'(5.5 . 5.5)
					\once \override Stem #'direction = #up
					\once \override TupletBracket #'staff-padding = #2
					\set stemLeftBeamCount = #1
					\set stemRightBeamCount = #0
					d8 ] - \markup { 165 }
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 4/3 {
					\once \override Beam #'positions = #'(5.5 . 5.5)
					\once \override Stem #'direction = #up
					\once \override TupletBracket #'staff-padding = #2
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					b,16 [ - \markup { 166 }
					\once \override Beam #'positions = #'(5.5 . 5.5)
					\once \override Stem #'direction = #up
					\once \override TupletBracket #'staff-padding = #2
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					cs16 - \markup { 167 }
					\once \override Beam #'positions = #'(5.5 . 5.5)
					\once \override Stem #'direction = #up
					\once \override TupletBracket #'staff-padding = #2
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					ef16 - \markup { 168 }
					\once \override Beam #'positions = #'(5.5 . 5.5)
					\once \override Stem #'direction = #up
					\once \override TupletBracket #'staff-padding = #2
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					d16 ] - \markup { 169 }
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Beam #'positions = #'(5.5 . 5.5)
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Slur #'color = #red
					\once \override Stem #'color = #red
					\once \override Stem #'direction = #up
					\once \override TupletBracket #'staff-padding = #2
					c8 ( - \markup { 170 }
				}
				{
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Beam #'positions = #'(5.5 . 5.5)
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Slur #'color = #red
					\once \override Stem #'color = #red
					\once \override Stem #'direction = #up
					\once \override TupletBracket #'staff-padding = #2
					d'4 ) - \markup { 171 }
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Beam #'positions = #'(5.5 . 5.5)
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Slur #'color = #red
					\once \override Stem #'color = #red
					\once \override Stem #'direction = #up
					\once \override TupletBracket #'staff-padding = #2
					bf4 ( - \markup { 172 }
				}
				{
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Beam #'positions = #'(-4.5 . -4.5)
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Slur #'color = #red
					\once \override Stem #'color = #red
					\once \override Stem #'direction = #down
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #1
					e8 [ - \markup { 173 }
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Slur #'color = #red
					\once \override Stem #'color = #red
					\once \override Stem #'direction = #down
					\set stemLeftBeamCount = #1
					\set stemRightBeamCount = #1
					f8 - \markup { 174 }
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Slur #'color = #red
					\once \override Stem #'color = #red
					\once \override Stem #'direction = #down
					\set stemLeftBeamCount = #1
					\set stemRightBeamCount = #0
					ef8 ] ) - \markup { 175 }
				}
				{
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Beam #'positions = #'(5.5 . 5.5)
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Slur #'color = #red
					\once \override Stem #'color = #red
					\once \override Stem #'direction = #up
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #1
					b,8. [ ( - \markup { 176 }
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Slur #'color = #red
					\once \override Stem #'color = #red
					\once \override Stem #'direction = #up
					\set stemLeftBeamCount = #1
					\set stemRightBeamCount = #0
					ef8. ] ) - \markup { 177 }
				}
				{
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Beam #'positions = #'(-4.5 . -4.5)
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Slur #'color = #blue
					\once \override Stem #'color = #blue
					\once \override Stem #'direction = #down
					a,4. - \markup { 178 }
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Beam #'positions = #'(5.5 . 5.5)
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Slur #'color = #red
					\once \override Stem #'color = #red
					\once \override Stem #'direction = #up
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #1
					af8. [ ( - \markup { 179 }
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Beam #'positions = #'(5.5 . 5.5)
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Slur #'color = #red
					\once \override Stem #'color = #red
					\once \override Stem #'direction = #up
					\set stemLeftBeamCount = #1
					\set stemRightBeamCount = #0
					bf8. ] ) - \markup { 180 }
				}
				{
					\once \override Beam #'positions = #'(5.5 . 5.5)
					\once \override Stem #'direction = #up
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					fs,16 [ - \markup { 181 }
					\once \override Beam #'positions = #'(5.5 . 5.5)
					\once \override Stem #'direction = #up
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					g,16 - \markup { 182 }
					\once \override Beam #'positions = #'(5.5 . 5.5)
					\once \override Stem #'direction = #up
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					e16 - \markup { 183 }
					\once \override Beam #'positions = #'(5.5 . 5.5)
					\once \override Stem #'direction = #up
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					ef16 ] - \markup { 184 }
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Beam #'positions = #'(5.5 . 5.5)
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Slur #'color = #red
					\once \override Stem #'color = #red
					\once \override Stem #'direction = #up
					f8 ( - \markup { 185 }
				}
				{
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Beam #'positions = #'(5.5 . 5.5)
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Slur #'color = #red
					\once \override Stem #'color = #red
					\once \override Stem #'direction = #up
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					bf16 [ - \markup { 186 }
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Beam #'positions = #'(5.5 . 5.5)
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Slur #'color = #red
					\once \override Stem #'color = #red
					\once \override Stem #'direction = #up
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					b16 ] - \markup { 187 }
				}
				{
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Beam #'positions = #'(5.5 . 5.5)
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Slur #'color = #red
					\once \override Stem #'color = #red
					\once \override Stem #'direction = #up
					ef4 ) - \markup { 188 }
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Beam #'positions = #'(-4.5 . -4.5)
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Slur #'color = #blue
					\once \override Stem #'color = #blue
					\once \override Stem #'direction = #down
					a,2 ( - \markup { 189 }
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Beam #'positions = #'(-4.5 . -4.5)
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Slur #'color = #blue
					\once \override Stem #'color = #blue
					\once \override Stem #'direction = #down
					af,2 ) - \markup { 190 }
				}
				{
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Beam #'positions = #'(5.5 . 5.5)
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Slur #'color = #red
					\once \override Stem #'color = #red
					\once \override Stem #'direction = #up
					\once \override TupletBracket #'staff-padding = #2
					f4 - \markup { 191 }
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 9/5 {
					\once \override Beam #'positions = #'(5.5 . 5.5)
					\once \override Stem #'direction = #up
					\once \override TupletBracket #'staff-padding = #2
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					fs16 [ ( - \markup { 192 }
					\once \override Beam #'positions = #'(5.5 . 5.5)
					\once \override Stem #'direction = #up
					\once \override TupletBracket #'staff-padding = #2
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					g16 - \markup { 193 }
					\once \override Beam #'positions = #'(5.5 . 5.5)
					\once \override Stem #'direction = #up
					\once \override TupletBracket #'staff-padding = #2
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					e16 ] ) - \markup { 194 }
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Beam #'positions = #'(5.5 . 5.5)
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Slur #'color = #red
					\once \override Stem #'color = #red
					\once \override Stem #'direction = #up
					\once \override TupletBracket #'staff-padding = #2
					ef8 ( - \markup { 195 }
				}
				{
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Beam #'positions = #'(5.5 . 5.5)
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Slur #'color = #red
					\once \override Stem #'color = #red
					\once \override Stem #'direction = #up
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #1
					cs8 [ - \markup { 196 }
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Beam #'positions = #'(5.5 . 5.5)
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Slur #'color = #red
					\once \override Stem #'color = #red
					\once \override Stem #'direction = #up
					\set stemLeftBeamCount = #1
					\set stemRightBeamCount = #1
					d8 - \markup { 197 }
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Beam #'positions = #'(5.5 . 5.5)
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Slur #'color = #red
					\once \override Stem #'color = #red
					\once \override Stem #'direction = #up
					\set stemLeftBeamCount = #1
					\set stemRightBeamCount = #0
					c8 ] ) - \markup { 198 }
					\once \override Beam #'positions = #'(5.5 . 5.5)
					\once \override Stem #'direction = #up
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					bf,16 [ ( - \markup { 199 }
					\once \override Beam #'positions = #'(5.5 . 5.5)
					\once \override Stem #'direction = #up
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					b,16 ] - \markup { 200 }
				}
				{
					\once \override Beam #'positions = #'(5.5 . 5.5)
					\once \override Stem #'direction = #up
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					ef16 [ - \markup { 201 }
					\once \override Beam #'positions = #'(5.5 . 5.5)
					\once \override Stem #'direction = #up
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					f,16 ] ) - \markup { 202 }
				}
				{
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Beam #'positions = #'(-4.5 . -4.5)
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Slur #'color = #blue
					\once \override Stem #'color = #blue
					\once \override Stem #'direction = #down
					fs,2 ( - \markup { 203 }
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Beam #'positions = #'(-4.5 . -4.5)
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Slur #'color = #blue
					\once \override Stem #'color = #blue
					\once \override Stem #'direction = #down
					g,2 ) - \markup { 204 }
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Beam #'positions = #'(5.5 . 5.5)
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Slur #'color = #red
					\once \override Stem #'color = #red
					\once \override Stem #'direction = #up
					e4 ( - \markup { 205 }
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 4/3 {
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Beam #'positions = #'(5.5 . 5.5)
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Slur #'color = #red
					\once \override Stem #'color = #red
					\once \override Stem #'direction = #up
					\once \override TupletBracket #'staff-padding = #2
					b8 ) - \markup { 206 }
					\once \override Beam #'positions = #'(5.5 . 5.5)
					\once \override Stem #'direction = #up
					\once \override TupletBracket #'staff-padding = #2
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					cs16 [ ( - \markup { 207 }
					\once \override Beam #'positions = #'(5.5 . 5.5)
					\once \override Stem #'direction = #up
					\once \override TupletBracket #'staff-padding = #2
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					d16 - \markup { 208 }
					\once \override Beam #'positions = #'(5.5 . 5.5)
					\once \override Stem #'direction = #up
					\once \override TupletBracket #'staff-padding = #2
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					c16 - \markup { 209 }
					\once \override Beam #'positions = #'(5.5 . 5.5)
					\once \override Stem #'direction = #up
					\once \override TupletBracket #'staff-padding = #2
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					bf,16 ] ) - \markup { 210 }
				}
				{
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Beam #'positions = #'(5.5 . 5.5)
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Slur #'color = #red
					\once \override Stem #'color = #red
					\once \override Stem #'direction = #up
					\once \override TupletBracket #'staff-padding = #2
					af4 ( - \markup { 211 }
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Beam #'positions = #'(5.5 . 5.5)
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Slur #'color = #red
					\once \override Stem #'color = #red
					\once \override Stem #'direction = #up
					\once \override TupletBracket #'staff-padding = #2
					bf4 ) - \markup { 212 }
				}
				{
					\once \override Beam #'positions = #'(5.5 . 5.5)
					\once \override Stem #'direction = #up
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					b,16 [ ( - \markup { 213 }
					\once \override Beam #'positions = #'(5.5 . 5.5)
					\once \override Stem #'direction = #up
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					ef16 - \markup { 214 }
					\once \override Beam #'positions = #'(5.5 . 5.5)
					\once \override Stem #'direction = #up
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					a,16 ] ) - \markup { 215 }
				}
				{
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Beam #'positions = #'(-4.5 . -4.5)
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Slur #'color = #blue
					\once \override Stem #'color = #blue
					\once \override Stem #'direction = #down
					bf,8 - \markup { 216 }
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 4/3 {
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Beam #'positions = #'(5.5 . 5.5)
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Slur #'color = #red
					\once \override Stem #'color = #red
					\once \override Stem #'direction = #up
					\once \override TupletBracket #'staff-padding = #2
					b,4 ( - \markup { 217 }
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Beam #'positions = #'(5.5 . 5.5)
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Slur #'color = #red
					\once \override Stem #'color = #red
					\once \override Stem #'direction = #up
					\once \override TupletBracket #'staff-padding = #2
					cs4 ) - \markup { 218 }
					\once \override Beam #'positions = #'(5.5 . 5.5)
					\once \override Stem #'direction = #up
					\once \override TupletBracket #'staff-padding = #2
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #1
					d8 [ ( - \markup { 219 }
					\once \override Beam #'positions = #'(5.5 . 5.5)
					\once \override Stem #'direction = #up
					\once \override TupletBracket #'staff-padding = #2
					\set stemLeftBeamCount = #1
					\set stemRightBeamCount = #0
					c8 ] - \markup { 220 }
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 9/7 {
					\once \override Beam #'positions = #'(5.5 . 5.5)
					\once \override Stem #'direction = #up
					\once \override TupletBracket #'staff-padding = #2
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					a,16 [ - \markup { 221 }
					\once \override Beam #'positions = #'(5.5 . 5.5)
					\once \override Stem #'direction = #up
					\once \override TupletBracket #'staff-padding = #2
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					af,16 - \markup { 222 }
					\once \override Beam #'positions = #'(5.5 . 5.5)
					\once \override Stem #'direction = #up
					\once \override TupletBracket #'staff-padding = #2
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					bf,16 ] ) - \markup { 223 }
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Beam #'positions = #'(5.5 . 5.5)
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Slur #'color = #red
					\once \override Stem #'color = #red
					\once \override Stem #'direction = #up
					\once \override TupletBracket #'staff-padding = #2
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #1
					b,8 [ ( - \markup { 224 }
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Beam #'positions = #'(5.5 . 5.5)
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Slur #'color = #red
					\once \override Stem #'color = #red
					\once \override Stem #'direction = #up
					\once \override TupletBracket #'staff-padding = #2
					\set stemLeftBeamCount = #1
					\set stemRightBeamCount = #0
					ef8 ] ) - \markup { 225 }
				}
				{
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Slur #'color = #blue
					\once \override Stem #'color = #blue
					e,4. ( - \markup { 226 }
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Slur #'color = #blue
					\once \override Stem #'color = #blue
					ef,4. ) - \markup { 227 }
				}
				{
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Beam #'positions = #'(5.5 . 5.5)
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Slur #'color = #red
					\once \override Stem #'color = #red
					\once \override Stem #'direction = #up
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #1
					f8 [ ( - \markup { 228 }
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Beam #'positions = #'(5.5 . 5.5)
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Slur #'color = #red
					\once \override Stem #'color = #red
					\once \override Stem #'direction = #up
					\set stemLeftBeamCount = #1
					\set stemRightBeamCount = #1
					fs8 - \markup { 229 }
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Beam #'positions = #'(5.5 . 5.5)
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Slur #'color = #red
					\once \override Stem #'color = #red
					\once \override Stem #'direction = #up
					\set stemLeftBeamCount = #1
					\set stemRightBeamCount = #0
					g8 ] ) - \markup { 230 }
				}
				{
					\once \override Beam #'positions = #'(5.5 . 5.5)
					\once \override Stem #'direction = #up
					fs8 ( - \markup { 231 }
				}
				{
					\once \override Beam #'positions = #'(5.5 . 5.5)
					\once \override Stem #'direction = #up
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					g16. [ - \markup { 232 }
					\once \override Beam #'positions = #'(5.5 . 5.5)
					\once \override Stem #'direction = #up
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					af16. - \markup { 233 }
					\once \override Beam #'positions = #'(5.5 . 5.5)
					\once \override Stem #'direction = #up
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					f16. - \markup { 234 }
					\once \override Beam #'positions = #'(5.5 . 5.5)
					\once \override Stem #'direction = #up
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					e16. ] ) - \markup { 235 }
				}
				{
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Beam #'positions = #'(-4.5 . -4.5)
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Slur #'color = #blue
					\once \override Stem #'color = #blue
					\once \override Stem #'direction = #down
					d4 - \markup { 236 }
					\once \override Beam #'positions = #'(5.5 . 5.5)
					\once \override Stem #'direction = #up
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					ef16 [ ( - \markup { 237 }
					\once \override Beam #'positions = #'(5.5 . 5.5)
					\once \override Stem #'direction = #up
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					cs16 - \markup { 238 }
					\once \override Beam #'positions = #'(5.5 . 5.5)
					\once \override Stem #'direction = #up
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					b,16 - \markup { 239 }
					\once \override Beam #'positions = #'(5.5 . 5.5)
					\once \override Stem #'direction = #up
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					c16 ] - \markup { 240 }
				}
				\times 4/5 {
					\once \override Beam #'positions = #'(5.5 . 5.5)
					\once \override Stem #'direction = #up
					e16 ) - \markup { 241 }
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Beam #'positions = #'(-4.5 . -4.5)
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Slur #'color = #blue
					\once \override Stem #'color = #blue
					\once \override Stem #'direction = #down
					fs,4 ( - \markup { 242 }
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 14/9 {
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Beam #'positions = #'(-4.5 . -4.5)
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Slur #'color = #blue
					\once \override Stem #'color = #blue
					\once \override Stem #'direction = #down
					g,4 - \markup { 243 }
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Beam #'positions = #'(-4.5 . -4.5)
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Slur #'color = #blue
					\once \override Stem #'color = #blue
					\once \override Stem #'direction = #down
					af,4 ) - \markup { 244 }
					\once \override Beam #'positions = #'(5.5 . 5.5)
					\once \override Stem #'direction = #up
					f16 ( - \markup { 245 }
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 9/8 {
					\once \override Beam #'positions = #'(5.5 . 5.5)
					\once \override Stem #'direction = #up
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					c16 [ - \markup { 246 }
					\once \override Beam #'positions = #'(5.5 . 5.5)
					\once \override Stem #'direction = #up
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					d16 - \markup { 247 }
					\once \override Beam #'positions = #'(5.5 . 5.5)
					\once \override Stem #'direction = #up
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					ef16 - \markup { 248 }
					\once \override Beam #'positions = #'(5.5 . 5.5)
					\once \override Stem #'direction = #up
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					cs16 ] ) - \markup { 249 }
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Beam #'positions = #'(-4.5 . -4.5)
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Slur #'color = #blue
					\once \override Stem #'color = #blue
					\once \override Stem #'direction = #down
					b,4 ( - \markup { 250 }
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 7/5 {
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Beam #'positions = #'(-4.5 . -4.5)
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Slur #'color = #blue
					\once \override Stem #'color = #blue
					\once \override Stem #'direction = #down
					a,4 ) - \markup { 251 }
					\once \override Beam #'positions = #'(5.5 . 5.5)
					\once \override Stem #'direction = #up
					b,16 ( - \markup { 252 }
				}
				{
					\once \override Beam #'positions = #'(5.5 . 5.5)
					\once \override Stem #'direction = #up
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					c16 [ - \markup { 253 }
					\once \override Stem #'direction = #up
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					e16 - \markup { 254 }
					\once \override Stem #'direction = #up
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					bf,16 ] - \markup { 255 }
				}
				{
					\once \override Beam #'positions = #'(5.5 . 5.5)
					\once \override Stem #'direction = #up
					b,16 ) - \markup { 256 }
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 6/5 {
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Slur #'color = #blue
					\once \override Stem #'color = #blue
					\once \override TupletBracket #'staff-padding = #2
					b,4 ( - \markup { 257 }
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Slur #'color = #blue
					\once \override Stem #'color = #blue
					\once \override TupletBracket #'staff-padding = #2
					a,4 ) - \markup { 258 }
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Slur #'color = #blue
					\once \override Stem #'color = #blue
					\once \override TupletBracket #'staff-padding = #2
					af,4 ( - \markup { 259 }
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Slur #'color = #blue
					\once \override Stem #'color = #blue
					\once \override TupletBracket #'staff-padding = #2
					bf,4 ) - \markup { 260 }
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Slur #'color = #blue
					\once \override Stem #'color = #blue
					\once \override TupletBracket #'staff-padding = #2
					c4 ( - \markup { 261 }
				}
				{
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Slur #'color = #blue
					\once \override Stem #'color = #blue
					d,2 ) - \markup { 262 }
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Slur #'color = #blue
					\once \override Stem #'color = #blue
					c,2 ( - \markup { 263 }
				}
				{
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Slur #'color = #blue
					\once \override Stem #'color = #blue
					b,,4 ) - \markup { 264 }
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Slur #'color = #blue
					\once \override Stem #'color = #blue
					g,4 ( - \markup { 265 }
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Slur #'color = #blue
					\once \override Stem #'color = #blue
					cs,4 ) - \markup { 266 }
				}
				{
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Slur #'color = #blue
					\once \override Stem #'color = #blue
					c4 ( - \markup { 267 }
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 9/8 {
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Slur #'color = #blue
					\once \override Stem #'color = #blue
					\once \override TupletBracket #'staff-padding = #2
					b,2 ) - \markup { 268 }
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Slur #'color = #blue
					\once \override Stem #'color = #blue
					\once \override TupletBracket #'staff-padding = #2
					a,2 ( - \markup { 269 }
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Slur #'color = #blue
					\once \override Stem #'color = #blue
					\once \override TupletBracket #'staff-padding = #2
					af,2 ) - \markup { 270 }
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Slur #'color = #blue
					\once \override Stem #'color = #blue
					\once \override TupletBracket #'staff-padding = #2
					bf,2 ( - \markup { 271 }
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 6/5 {
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Slur #'color = #blue
					\once \override Stem #'color = #blue
					cs,4 ) - \markup { 272 }
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Slur #'color = #blue
					\once \override Stem #'color = #blue
					d,4 ( - \markup { 273 }
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Slur #'color = #blue
					\once \override Stem #'color = #blue
					c,4 - \markup { 274 }
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Slur #'color = #blue
					\once \override Stem #'color = #blue
					b,,4 ) - \markup { 275 }
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Slur #'color = #blue
					\once \override Stem #'color = #blue
					g,4 ( - \markup { 276 }
				}
				{
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Slur #'color = #blue
					\once \override Stem #'color = #blue
					fs,2 ) - \markup { 277 }
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Slur #'color = #blue
					\once \override Stem #'color = #blue
					g,2 ( - \markup { 278 }
				}
				{
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Slur #'color = #blue
					\once \override Stem #'color = #blue
					f,4 - \markup { 279 }
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Slur #'color = #blue
					\once \override Stem #'color = #blue
					e,4 - \markup { 280 }
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Slur #'color = #blue
					\once \override Stem #'color = #blue
					ef,4 ) - \markup { 281 }
				}
			}
		>>
	>>
}