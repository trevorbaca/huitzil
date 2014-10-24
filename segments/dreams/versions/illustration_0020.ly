% 2014-10-24 11:11

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
				\time 5/16
				s1 * 5/16
			}
			{
				s1 * 5/16
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
				\time 1/8
				s1 * 1/8
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
				\time 1/2
				s1 * 1/2
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
				\time 1/16
				s1 * 1/16
			}
		}
		\context Staff = "Staff" <<
			\clef "bass"
			\context TextSpannerVoice = "Text Spanner Voice" {
			}
			\context Voice = "Music Voice" {
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 6/5 {
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					\tempo 8=78
					fs16 [
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					e16
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					f16
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					g16
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					af16 ]
				}
				{
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #1
					a,8 [
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #1
					\set stemRightBeamCount = #0
					ef8 ]
				}
				{
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					d16 [
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					e16
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					f16 ]
				}
				{
					\once \override NoteHead #'color = #green
					cs16
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 9/8 {
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #1
					bf,8 [
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #1
					\set stemRightBeamCount = #1
					a,8
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #1
					\set stemRightBeamCount = #1
					b,8
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #1
					\set stemRightBeamCount = #0
					c8 ]
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 6/5 {
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					f,16 [
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					a,16
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					ef16
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					d16
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					e16 ]
				}
				{
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #1
					c8 [
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #1
					\set stemRightBeamCount = #0
					cs8 ]
				}
				{
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					bf,16 [
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					a,16
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					b,16 ]
				}
				\times 4/5 {
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					af,16 [
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					fs,16
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					e16
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					f,16
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					g,16 ]
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 7/4 {
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #1
					b,8 [
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #1
					\set stemRightBeamCount = #0
					c8 ]
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 4/3 {
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					cs16 [
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					bf,16
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					a,16 ]
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 3/2 {
					\once \override NoteHead #'color = #green
					g8
				}
				{
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					af16 [
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					fs16
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					e16
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					f16 ]
				}
				\times 4/5 {
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					e16 [
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					f16
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					a,16
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					ef16
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					d16 ]
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 7/4 {
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #1
					f,8 [
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #1
					\set stemRightBeamCount = #0
					g,8 ]
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 4/3 {
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					af,16 [
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					fs,16
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					e16 ]
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 3/2 {
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					cs16 [ - \markup { 0 }
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					d16 ] - \markup { 1 }
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 5/3 {
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					b,16 [ - \markup { 2 }
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					bf,16 - \markup { 3 }
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					c16 ] - \markup { 4 }
				}
				{
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					a,16 [ - \markup { 5 }
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					g16 - \markup { 6 }
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					f16 - \markup { 7 }
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					fs16 - \markup { 8 }
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					af16 ] - \markup { 9 }
				}
				{
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #3
					c32 [ - \markup { 10 }
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #3
					\set stemRightBeamCount = #0
					cs32 ] - \markup { 11 }
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 4/3 {
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #1
					d8 [ - \markup { 12 }
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #1
					\set stemRightBeamCount = #1
					b,8 - \markup { 13 }
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #1
					\set stemRightBeamCount = #0
					bf,8 ] - \markup { 14 }
				}
				{
					\once \override NoteHead #'color = #green
					af,8 - \markup { 15 }
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 3/2 {
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					a,16 [ - \markup { 16 }
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					g,16 - \markup { 17 }
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					f,16 - \markup { 18 }
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					fs,16 ] - \markup { 19 }
				}
				{
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					f,16 [ - \markup { 20 }
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					fs,16 - \markup { 21 }
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					bf,16 - \markup { 22 }
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					e16 - \markup { 23 }
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					ef16 ] - \markup { 24 }
				}
				{
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #3
					fs,32 [ - \markup { 25 }
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #3
					\set stemRightBeamCount = #0
					af,32 ] - \markup { 26 }
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 4/3 {
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #1
					a,8 [ - \markup { 27 }
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #1
					\set stemRightBeamCount = #1
					g,8 - \markup { 28 }
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #1
					\set stemRightBeamCount = #0
					f,8 ] - \markup { 29 }
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 6/5 {
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					ef16 [ - \markup { 30 }
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					f16 - \markup { 31 }
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					fs16 - \markup { 32 }
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					bf,16 - \markup { 33 }
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					e16 ] - \markup { 34 }
				}
				{
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #1
					bf,8 [ - \markup { 35 }
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #1
					\set stemRightBeamCount = #0
					c8 ] - \markup { 36 }
				}
				{
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					cs16 [ - \markup { 37 }
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					d16 - \markup { 38 }
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					b,16 ] - \markup { 39 }
				}
				{
					\once \override NoteHead #'color = #green
					e16 - \markup { 40 }
				}
			}
		>>
	>>
}