% 2014-10-22 10:58

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
				\time 5/8
				s1 * 5/8
			}
			{
				s1 * 5/8
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
				\time 1/4
				s1 * 1/4
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
				\time 1/8
				s1 * 1/8
			}
			{
				\time 1/1
				s1 * 1
			}
		}
		\context Staff = "Staff" <<
			\clef "bass"
			\context TextSpannerVoice = "Text Spanner Voice" {
			}
			\context Voice = "Music Voice" {
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 3/2 {
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #1
					f8 [
					\set stemLeftBeamCount = #1
					\set stemRightBeamCount = #0
					a8 ]
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 5/3 {
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #1
					ef8 [
					\set stemLeftBeamCount = #1
					\set stemRightBeamCount = #1
					d'8
					\set stemLeftBeamCount = #1
					\set stemRightBeamCount = #0
					e8 ]
				}
				{
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #1
					c8 [
					\set stemLeftBeamCount = #1
					\set stemRightBeamCount = #1
					cs8
					\set stemLeftBeamCount = #1
					\set stemRightBeamCount = #1
					bf8
					\set stemLeftBeamCount = #1
					\set stemRightBeamCount = #1
					a8
					\set stemLeftBeamCount = #1
					\set stemRightBeamCount = #0
					b,8 ]
				}
				{
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					e16 [
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					f16 ]
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 4/3 {
					a4
					ef4
					d'4
				}
				{
					b,4
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 3/2 {
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #1
					c8 [
					\set stemLeftBeamCount = #1
					\set stemRightBeamCount = #1
					cs8
					\set stemLeftBeamCount = #1
					\set stemRightBeamCount = #1
					bf8
					\set stemLeftBeamCount = #1
					\set stemRightBeamCount = #0
					a8 ]
				}
				{
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #1
					g8 [
					\set stemLeftBeamCount = #1
					\set stemRightBeamCount = #1
					af8
					\set stemLeftBeamCount = #1
					\set stemRightBeamCount = #1
					fs8
					\set stemLeftBeamCount = #1
					\set stemRightBeamCount = #1
					e8
					\set stemLeftBeamCount = #1
					\set stemRightBeamCount = #0
					f8 ]
				}
				{
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					a16 [
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					b,16 ]
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 4/3 {
					c4
					cs4
					bf4
				}
			}
		>>
	>>
}