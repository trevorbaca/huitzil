% 2014-10-22 11:44

\version "2.19.15"
\language "english"

#(ly:set-option 'relative-includes #t)

\include "../../stylesheets/stylesheet.ily"

\header {}

\score {
	\context Score = "Score" <<
		\context TimeSignatureContext = "Time Signature Context" {
			{
				\time 3/16
				s1 * 3/16
			}
			{
				\time 5/16
				s1 * 5/16
			}
			{
				\time 1/2
				s1 * 1/2
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
				\time 1/8
				s1 * 1/8
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
		}
		\context Staff = "Staff" <<
			\clef "bass"
			\context TextSpannerVoice = "Text Spanner Voice" {
			}
			\context Voice = "Music Voice" {
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 3/2 {
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					c16 [
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					cs16 ]
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 5/3 {
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
				{
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					af16 [ ]
					\once \override NoteHead #'color = #blue
					fs,4
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
					\set stemRightBeamCount = #0
					g16 ]
				}
				{
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #3
					b,32 [
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #3
					\set stemRightBeamCount = #0
					c32 ]
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 14/9 {
					\once \override NoteHead #'color = #blue
					cs4
					\once \override NoteHead #'color = #blue
					bf,4
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					a,16 [ ]
				}
				{
					\once \override NoteHead #'color = #green
					g8
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 9/7 {
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					af16 [
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					fs16 ]
					\once \override NoteHead #'color = #blue
					e,4
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					f16 [ ]
				}
				{
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
					ef16 ]
					\once \override NoteHead #'color = #blue
					d4
				}
				{
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #3
					f32 [
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #3
					\set stemRightBeamCount = #0
					g32 ]
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 4/3 {
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #1
					af8 [
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #1
					\set stemRightBeamCount = #1
					fs8
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #1
					\set stemRightBeamCount = #0
					e8 ]
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 6/5 {
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
					\set stemRightBeamCount = #2
					f16
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					a,16
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					ef16 ]
				}
				{
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #1
					a,8 [
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #1
					\set stemRightBeamCount = #0
					b,8 ]
				}
				{
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					c16 [
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					cs16
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					bf,16 ]
				}
				{
					\once \override NoteHead #'color = #green
					ef16
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 9/8 {
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #1
					d8 [
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #1
					\set stemRightBeamCount = #1
					e8
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #1
					\set stemRightBeamCount = #1
					f8
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #1
					\set stemRightBeamCount = #0
					a,8 ]
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 6/5 {
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
					\set stemRightBeamCount = #2
					b,16
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					c16
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					cs16 ]
				}
				{
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #1
					e8 [
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #1
					\set stemRightBeamCount = #0
					f8 ]
				}
			}
		>>
	>>
}