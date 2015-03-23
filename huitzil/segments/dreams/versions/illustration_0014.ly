% 2014-10-22 10:42

\version "2.19.15"
\language "english"

#(ly:set-option 'relative-includes #t)

\include "../../stylesheets/stylesheet.ily"

\header {}

\score {
	\context Score = "Score" <<
		\context TimeSignatureContext = "Time Signature Context" {
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
					d4
					e,4
					f,4
					a,4
					ef,4
				}
				{
					a,2
					b,2
				}
				{
					c4
					cs4
					bf,4
				}
				{
					ef,4
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 9/8 {
					d2
					e,2
					f,2
					a,2
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 6/5 {
					bf,4
					a,4
					b,4
					c4
					cs4
				}
				{
					e,2
					f,2
				}
				{
					g,4
					af,4
					fs,4
				}
			}
		>>
	>>
}