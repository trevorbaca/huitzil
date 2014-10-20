% 2014-10-20 10:52

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
				s1 * 3/8 ^ \markup {
					\smaller
						\general-align
							#Y
							#DOWN
							\note-by-number
								#3
								#0
								#1
					\upright
						" = 78"
					}
			}
			{
				s1 * 3/8
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
				\time 6/8
				s1 * 3/4
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
				\time 7/8
				s1 * 7/8
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
				\time 4/8
				s1 * 1/2
			}
			{
				\time 6/8
				s1 * 3/4
			}
			{
				\time 3/8
				s1 * 3/8
			}
			{
				\time 4/8
				s1 * 1/2
			}
			{
				\time 7/16
				s1 * 7/16
			}
			\pageBreak
			{
				s1 * 7/16
			}
			{
				\time 4/8
				s1 * 1/2
			}
			{
				\time 8/8
				s1 * 1
			}
			{
				\time 3/8
				s1 * 3/8
			}
			{
				\time 4/8
				s1 * 1/2
			}
			{
				\time 5/16
				s1 * 5/16
			}
			{
				\time 9/16
				s1 * 9/16
			}
			{
				\time 5/8
				s1 * 5/8
			}
			{
				\time 2/8
				s1 * 1/4
			}
			{
				\time 3/8
				s1 * 3/8
			}
			{
				s1 * 3/8
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
				\time 6/8
				s1 * 3/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
			}
			{
				\time 3/8
				s1 * 3/8
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
				\time 4/8
				s1 * 1/2
			}
			{
				\time 2/8
				s1 * 1/4
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				\time 4/8
				s1 * 1/2
			}
			{
				\time 7/16
				s1 * 7/16
			}
			{
				s1 * 7/16
			}
			{
				\time 8/8
				s1 * 1
			}
			{
				\time 4/8
				s1 * 1/2
			}
			{
				\time 3/8
				s1 * 3/8
			}
			{
				\time 4/8
				s1 * 1/2
			}
			{
				\time 5/16
				s1 * 5/16
			}
			{
				\time 9/16
				s1 * 9/16
			}
			{
				\time 5/8
				s1 * 5/8
			}
			{
				\time 2/8
				s1 * 1/4
			}
		}
		\context Staff = "Staff" <<
			\clef "bass"
			\context TextSpannerVoice = "Text Spanner Voice" {
			}
			\context Voice = "Music Voice" {
				\override TupletBracket #'staff-padding = #4.9
				{
					\tweak #'text #tuplet-number::calc-fraction-text
					\times 6/5 {
						fs'16
						e'16
						f'16
						g'16
						af'16
					}
				}
				\revert TupletBracket #'staff-padding
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 6/7 {
					{
						a'16
						ef'16
					}
					\tweak #'text #tuplet-number::calc-fraction-text
					\times 4/3 {
						d'32
						e'32
						f'32
					}
					\tweak #'text #tuplet-number::calc-fraction-text
					\times 3/2 {
						cs'8
					}
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 9/10 {
					\tweak #'text #tuplet-number::calc-fraction-text
					\times 5/4 {
						bf'16
						a'16
						b'16
						c'16
					}
					{
						f'16
						a'16
						ef'16
						d'16
						e'16
					}
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 7/12 {
					{
						c'32
						cs'32
					}
					\tweak #'text #tuplet-number::calc-fraction-text
					\times 5/3 {
						bf'16
						a'16
						b'16
					}
					\tweak #'text #tuplet-number::calc-fraction-text
					\times 6/5 {
						af'16
						fs'16
						e'16
						f'16
						g'16
					}
				}
				{
					{
						b'16
						c'16
					}
					\tweak #'text #tuplet-number::calc-fraction-text
					\times 4/3 {
						cs'32
						bf'32
						a'32
					}
					\tweak #'text #tuplet-number::calc-fraction-text
					\times 3/2 {
						g'8
					}
					\tweak #'text #tuplet-number::calc-fraction-text
					\times 5/4 {
						af'16
						fs'16
						e'16
						f'16
					}
				}
				r2..
				r4.
				r2..
				r2
				r8.
				r4
				r16
				r2
				r2.
				r4.
				r2
				r4..
				r4..
				r2
				r1
				r4.
				r2
				r4
				r16
				r2
				r16
				r2
				r8
				r4
				r4.
				r4.
				r2
				r16
				r4..
				r2.
				r2..
				r2..
				r4.
				r2
				r8.
				r4
				r16
				r2
				r4
				r2..
				r2
				r4..
				r4..
				r1
				r2
				r4.
				r2
				r4
				r16
				r2
				r16
				r2
				r8
				r4
			}
		>>
	>>
}