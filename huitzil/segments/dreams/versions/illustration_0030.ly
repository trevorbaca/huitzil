% 2014-10-26 12:30

\version "2.19.15"
\language "english"

#(ly:set-option 'relative-includes #t)

\include "../../stylesheets/stylesheet.ily"

\header {}

\score {
	\context Score = "Score" <<
		\context TimeSignatureContext = "Time Signature Context" {
			{
				\time 3/8
				s1 * 3/8
			}
			{
				\time 1/4
				s1 * 1/4
			}
			{
				\time 3/16
				s1 * 3/16
			}
			{
				\time 1/16
				s1 * 1/16
			}
			{
				\time 9/16
				s1 * 9/16
			}
			{
				\time 3/8
				s1 * 3/8
			}
			{
				\time 1/4
				s1 * 1/4
			}
			{
				\time 3/16
				s1 * 3/16
			}
			{
				\time 1/4
				s1 * 1/4
			}
			{
				\time 7/16
				s1 * 7/16
			}
			{
				\time 1/4
				s1 * 1/4
			}
			{
				\time 3/16
				s1 * 3/16
			}
			{
				\time 1/4
				s1 * 1/4
			}
			{
				s1 * 1/4
			}
			{
				\time 7/16
				s1 * 7/16
			}
			{
				\time 1/4
				s1 * 1/4
			}
			{
				\time 3/16
				s1 * 3/16
			}
			{
				\time 1/2
				s1 * 1/2
			}
			{
				\time 5/16
				s1 * 5/16
			}
			{
				\time 1/16
				s1 * 1/16
			}
			{
				\time 11/16
				s1 * 11/16
			}
			{
				\time 5/16
				s1 * 5/16
			}
			{
				\time 3/8
				s1 * 3/8
			}
			{
				\time 5/16
				s1 * 5/16
			}
			{
				\time 1/16
				s1 * 1/16
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				\time 3/8
				s1 * 3/8
			}
			{
				\time 5/8
				s1 * 5/8
			}
			\pageBreak
			{
				\time 3/16
				s1 * 3/16
			}
			{
				\time 1/16
				s1 * 1/16
			}
			{
				\time 1/2
				s1 * 1/2
			}
			{
				\time 3/2
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
				\time 5/8
				s1 * 5/8
			}
			{
				\time 1/8
				s1 * 1/8
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
				\time 1/4
				s1 * 1/4
			}
			{
				s1 * 1/4
			}
			{
				\time 5/4
				s1 * 5/4
			}
			{
				\time 3/8
				s1 * 3/8
			}
			{
				\time 5/8
				s1 * 5/8
			}
			{
				\time 1/8
				s1 * 1/8
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
				\time 1/2
				s1 * 1/2
			}
			{
				s1 * 1/2
			}
			{
				\time 3/8
				s1 * 3/8
			}
			{
				\time 1/8
				s1 * 1/8
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
				s1 * 1/2
			}
			{
				\time 3/8
				s1 * 3/8
			}
			{
				s1 * 3/8
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
				\time 1/8
				s1 * 1/8
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
				\time 9/16
				s1 * 9/16
			}
			{
				\time 1/2
				s1 * 1/2
			}
			{
				\time 1/8
				s1 * 1/8
			}
			{
				\time 5/4
				s1 * 5/4
			}
			{
				\time 1/2
				s1 * 1/2
			}
			{
				s1 * 1/2
			}
			{
				\time 3/16
				s1 * 3/16
			}
			{
				\time 1/8
				s1 * 1/8
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
				\time 3/4
				s1 * 3/4
			}
			{
				\time 3/8
				s1 * 3/8
			}
			{
				\time 1/8
				s1 * 1/8
			}
			{
				\time 3/8
				s1 * 3/8
			}
			{
				\time 1/2
				s1 * 1/2
			}
			{
				\time 1/4
				s1 * 1/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				\time 9/16
				s1 * 9/16
			}
			{
				\time 7/16
				s1 * 7/16
			}
			{
				\time 3/16
				s1 * 3/16
			}
			{
				\time 1/16
				s1 * 1/16
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
			{
				\time 1/4
				s1 * 1/4
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
		\context Staff = "Staff" <<
			\clef "bass"
			\context TextSpannerVoice = "Text Spanner Voice" {
			}
			\context Voice = "Music Voice" {
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 6/5 {
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					\tempo 8=78
					fs16 [
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					e16
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					f16
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					g16
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					af16 ]
				}
				{
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #1
					a,8 [
					\set stemLeftBeamCount = #1
					\set stemRightBeamCount = #0
					ef8 ]
				}
				{
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					d16 [
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					e16
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					f16 ]
				}
				{
					cs16
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 9/8 {
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #1
					bf,8 [
					\set stemLeftBeamCount = #1
					\set stemRightBeamCount = #1
					a,8
					\set stemLeftBeamCount = #1
					\set stemRightBeamCount = #1
					b,8
					\set stemLeftBeamCount = #1
					\set stemRightBeamCount = #0
					c8 ]
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 6/5 {
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					f,16 [
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					a,16
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					ef16
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					d16
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					e16 ]
				}
				{
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #1
					c8 [
					\set stemLeftBeamCount = #1
					\set stemRightBeamCount = #0
					cs8 ]
				}
				{
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					bf,16 [
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					a,16
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					b,16 ]
				}
				\times 4/5 {
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					af,16 [
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					fs,16
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					e16
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					f,16
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					g,16 ]
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 7/4 {
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #1
					b,8 [
					\set stemLeftBeamCount = #1
					\set stemRightBeamCount = #0
					c8 ]
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 4/3 {
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					cs16 [
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					bf,16
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					a,16 ]
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 3/2 {
					g8
				}
				{
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					af16 [
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					fs16
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					e16
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					f16 ]
				}
				\times 4/5 {
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					e16 [
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					f16
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					a,16
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					ef16
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					d16 ]
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 7/4 {
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #1
					f,8 [
					\set stemLeftBeamCount = #1
					\set stemRightBeamCount = #0
					g,8 ]
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 4/3 {
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					af,16 [
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					fs,16
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					e16 ]
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 3/2 {
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					cs16 [
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					d16 ]
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 4/3 {
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					b,16 [
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					bf,16 ]
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Stem #'color = #blue
					c4
				}
				{
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					a,16 [
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					g16
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					f16
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					fs16
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					af16 ]
				}
				{
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #3
					c32 [
					\set stemLeftBeamCount = #3
					\set stemRightBeamCount = #0
					cs32 ]
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 11/6 {
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					d16 [
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					b,16 ]
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Stem #'color = #blue
					bf,4
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 5/4 {
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Stem #'color = #blue
					af,4
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 3/2 {
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					a,16 [
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					g,16
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					f,16
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					fs,16 ]
				}
				{
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					f,16 [
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					fs,16
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					bf,16
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					e16
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					ef16 ]
				}
				{
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #3
					fs,32 [
					\set stemLeftBeamCount = #3
					\set stemRightBeamCount = #0
					af,32 ]
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 14/9 {
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					a,16 [ ]
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Stem #'color = #blue
					g,4
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Stem #'color = #blue
					f,4
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 6/5 {
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					ef16 [
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					f16
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					fs16
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					bf,16
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					e16 ]
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 5/4 {
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Stem #'color = #blue
					bf,4
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Stem #'color = #blue
					c4
				}
				{
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					cs16 [
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					d16
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					b,16 ]
				}
				{
					e16
				}
				{
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Stem #'color = #blue
					ef,2
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 3/2 {
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Stem #'color = #blue
					d,4
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Stem #'color = #blue
					e,4
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Stem #'color = #blue
					fs,4
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Stem #'color = #blue
					f,4
				}
				{
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Stem #'color = #blue
					fs,4
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Stem #'color = #blue
					f,4
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Stem #'color = #blue
					cs,4
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Stem #'color = #blue
					g,4
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Stem #'color = #blue
					af,4
				}
				{
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Stem #'color = #blue
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #1
					f,8 [
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Stem #'color = #blue
					\set stemLeftBeamCount = #1
					\set stemRightBeamCount = #0
					ef,8 ]
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 4/3 {
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Stem #'color = #blue
					d,2
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Stem #'color = #blue
					e,2
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Stem #'color = #blue
					fs,2
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 9/7 {
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Stem #'color = #blue
					f,4
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Stem #'color = #red
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #1
					g8 [
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Stem #'color = #red
					\set stemLeftBeamCount = #1
					\set stemRightBeamCount = #1
					af8
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Stem #'color = #red
					\set stemLeftBeamCount = #1
					\set stemRightBeamCount = #1
					c8 ]
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Stem #'color = #blue
					fs,4
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 7/6 {
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Stem #'color = #blue
					c,2
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Stem #'color = #red
					d4
				}
				{
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Stem #'color = #red
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #1
					ef8 [ ]
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Stem #'color = #blue
					e,4
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Stem #'color = #blue
					cs,4
				}
				{
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Stem #'color = #red
					fs8
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 5/4 {
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Stem #'color = #red
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #1
					fs8 [
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Stem #'color = #red
					\set stemLeftBeamCount = #1
					\set stemRightBeamCount = #1
					af8
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Stem #'color = #red
					\set stemLeftBeamCount = #1
					\set stemRightBeamCount = #1
					a8
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Stem #'color = #red
					\set stemLeftBeamCount = #1
					\set stemRightBeamCount = #0
					cs8 ]
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 7/5 {
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Stem #'color = #red
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #1
					d8 [
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Stem #'color = #red
					\set stemLeftBeamCount = #1
					\set stemRightBeamCount = #1
					cs8
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Stem #'color = #red
					\set stemLeftBeamCount = #1
					\set stemRightBeamCount = #1
					ef8
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Stem #'color = #red
					\set stemLeftBeamCount = #1
					\set stemRightBeamCount = #1
					e8
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Stem #'color = #red
					\set stemLeftBeamCount = #1
					\set stemRightBeamCount = #0
					f8 ]
				}
				{
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Stem #'color = #red
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #1
					af8 [
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Stem #'color = #red
					\set stemLeftBeamCount = #1
					\set stemRightBeamCount = #0
					a8 ]
				}
				\times 2/3 {
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Stem #'color = #red
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #1
					b8 [
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Stem #'color = #red
					\set stemLeftBeamCount = #1
					\set stemRightBeamCount = #1
					c'8
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Stem #'color = #red
					\set stemLeftBeamCount = #1
					\set stemRightBeamCount = #0
					bf8 ]
				}
				{
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Stem #'color = #red
					f4
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Stem #'color = #red
					d'4
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Stem #'color = #red
					cs'4
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Stem #'color = #red
					ef4
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Stem #'color = #red
					e4
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 3/2 {
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Stem #'color = #red
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #1
					bf8 [
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Stem #'color = #red
					\set stemLeftBeamCount = #1
					\set stemRightBeamCount = #0
					af8 ]
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 5/3 {
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Stem #'color = #red
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #1
					a8 [
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Stem #'color = #red
					\set stemLeftBeamCount = #1
					\set stemRightBeamCount = #1
					b,8
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Stem #'color = #red
					\set stemLeftBeamCount = #1
					\set stemRightBeamCount = #0
					c8 ]
				}
				{
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Stem #'color = #red
					cs8
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 3/4 {
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Stem #'color = #red
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #1
					g8 [
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Stem #'color = #red
					\set stemLeftBeamCount = #1
					\set stemRightBeamCount = #1
					fs8
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Stem #'color = #red
					\set stemLeftBeamCount = #1
					\set stemRightBeamCount = #1
					af8
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Stem #'color = #red
					\set stemLeftBeamCount = #1
					\set stemRightBeamCount = #0
					a8 ]
				}
				{
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Stem #'color = #red
					c4
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Stem #'color = #red
					bf4
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Stem #'color = #red
					af4
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Stem #'color = #red
					a4
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Stem #'color = #red
					b4
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 4/3 {
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					fs16 [
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					a,16
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					bf,16
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #1
					af16
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Stem #'color = #red
					\set stemLeftBeamCount = #1
					\set stemRightBeamCount = #0
					g8 ]
				}
				{
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Stem #'color = #red
					cs'4
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Stem #'color = #red
					ef4
				}
				{
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Stem #'color = #red
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #1
					d'8 [
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Stem #'color = #red
					\set stemLeftBeamCount = #1
					\set stemRightBeamCount = #1
					c'8
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Stem #'color = #red
					\set stemLeftBeamCount = #1
					\set stemRightBeamCount = #0
					b8 ]
				}
				{
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Stem #'color = #red
					bf8
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 4/3 {
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Stem #'color = #red
					e4
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Stem #'color = #red
					f4
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #1
					ef8 [
					\set stemLeftBeamCount = #1
					\set stemRightBeamCount = #0
					d8 ]
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 4/3 {
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					b,16 [
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					cs16
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					ef16
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #1
					d16
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Stem #'color = #red
					\set stemLeftBeamCount = #1
					\set stemRightBeamCount = #0
					c8 ]
				}
				{
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Stem #'color = #red
					d'4
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Stem #'color = #red
					bf4
				}
				{
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Stem #'color = #red
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #1
					e8 [
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Stem #'color = #red
					\set stemLeftBeamCount = #1
					\set stemRightBeamCount = #1
					f8
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Stem #'color = #red
					\set stemLeftBeamCount = #1
					\set stemRightBeamCount = #0
					ef8 ]
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 3/2 {
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Stem #'color = #red
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #1
					b,8 [
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Stem #'color = #red
					\set stemLeftBeamCount = #1
					\set stemRightBeamCount = #0
					ef8 ]
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 3/2 {
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Stem #'color = #blue
					a,4
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Stem #'color = #red
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #1
					af8 [
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Stem #'color = #red
					\set stemLeftBeamCount = #1
					\set stemRightBeamCount = #0
					bf8 ]
				}
				{
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					fs,16 [
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					g,16
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					e16
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #1
					ef16
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Stem #'color = #red
					\set stemLeftBeamCount = #1
					\set stemRightBeamCount = #0
					f8 ]
				}
				{
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Stem #'color = #red
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					bf16 [
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Stem #'color = #red
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					b16 ]
				}
				{
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Stem #'color = #red
					ef4
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Stem #'color = #blue
					a,2
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Stem #'color = #blue
					af,2
				}
				{
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Stem #'color = #red
					f4
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 9/5 {
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					fs16 [
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					g16
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #1
					e16
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Stem #'color = #red
					\set stemLeftBeamCount = #1
					\set stemRightBeamCount = #0
					ef8 ]
				}
				{
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Stem #'color = #red
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #1
					cs8 [
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Stem #'color = #red
					\set stemLeftBeamCount = #1
					\set stemRightBeamCount = #1
					d8
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Stem #'color = #red
					\set stemLeftBeamCount = #1
					\set stemRightBeamCount = #1
					c8
					\set stemLeftBeamCount = #1
					\set stemRightBeamCount = #2
					bf,16
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					b,16 ]
				}
				{
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					ef16 [
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					f,16 ]
				}
				{
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Stem #'color = #blue
					fs,2
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Stem #'color = #blue
					g,2
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Stem #'color = #red
					e4
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 4/3 {
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Stem #'color = #red
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #1
					b8 [
					\set stemLeftBeamCount = #1
					\set stemRightBeamCount = #2
					cs16
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					d16
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					c16
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					bf,16 ]
				}
				{
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Stem #'color = #red
					af4
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Stem #'color = #red
					bf4
				}
				{
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					b,16 [
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					ef16
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					a,16 ]
				}
				{
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Stem #'color = #blue
					bf,8
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 4/3 {
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Stem #'color = #red
					b,4
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Stem #'color = #red
					cs4
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #1
					d8 [
					\set stemLeftBeamCount = #1
					\set stemRightBeamCount = #0
					c8 ]
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 9/7 {
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					a,16 [
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					af,16
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #1
					bf,16
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Stem #'color = #red
					\set stemLeftBeamCount = #1
					\set stemRightBeamCount = #1
					b,8
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Stem #'color = #red
					\set stemLeftBeamCount = #1
					\set stemRightBeamCount = #0
					ef8 ]
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 3/2 {
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Stem #'color = #blue
					e,4
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Stem #'color = #blue
					ef,4
				}
				{
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Stem #'color = #red
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #1
					f8 [
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Stem #'color = #red
					\set stemLeftBeamCount = #1
					\set stemRightBeamCount = #1
					fs8
					\once \override Accidental #'color = #red
					\once \override Beam #'color = #red
					\once \override Dots #'color = #red
					\once \override NoteHead #'color = #red
					\once \override Stem #'color = #red
					\set stemLeftBeamCount = #1
					\set stemRightBeamCount = #0
					g8 ]
				}
				{
					fs8
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 3/2 {
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					g16 [
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					af16
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					f16
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					e16 ]
				}
				{
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Stem #'color = #blue
					d4
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					ef16 [
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					cs16
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					b,16
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					c16 ]
				}
				\times 4/5 {
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					e16 [ ]
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Stem #'color = #blue
					fs,4
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 14/9 {
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Stem #'color = #blue
					g,4
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Stem #'color = #blue
					af,4
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					f16 [ ]
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 9/8 {
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					c16 [
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					d16
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					ef16
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					cs16 ]
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Stem #'color = #blue
					b,4
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 7/5 {
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Stem #'color = #blue
					a,4
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					b,16 [ ]
				}
				{
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					c16 [
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					e16
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					bf,16 ]
				}
				{
					b,16
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 6/5 {
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Stem #'color = #blue
					b,4
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Stem #'color = #blue
					a,4
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Stem #'color = #blue
					af,4
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Stem #'color = #blue
					bf,4
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Stem #'color = #blue
					c4
				}
				{
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Stem #'color = #blue
					d,2
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Stem #'color = #blue
					c,2
				}
				{
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Stem #'color = #blue
					b,,4
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Stem #'color = #blue
					g,4
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Stem #'color = #blue
					cs,4
				}
				{
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Stem #'color = #blue
					c4
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 9/8 {
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Stem #'color = #blue
					b,2
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Stem #'color = #blue
					a,2
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Stem #'color = #blue
					af,2
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Stem #'color = #blue
					bf,2
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 6/5 {
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Stem #'color = #blue
					cs,4
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Stem #'color = #blue
					d,4
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Stem #'color = #blue
					c,4
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Stem #'color = #blue
					b,,4
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Stem #'color = #blue
					g,4
				}
				{
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Stem #'color = #blue
					fs,2
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Stem #'color = #blue
					g,2
				}
				{
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Stem #'color = #blue
					f,4
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Stem #'color = #blue
					e,4
					\once \override Accidental #'color = #blue
					\once \override Beam #'color = #blue
					\once \override Dots #'color = #blue
					\once \override NoteHead #'color = #blue
					\once \override Stem #'color = #blue
					ef,4
				}
			}
		>>
	>>
}