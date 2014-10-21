% 2014-10-21 10:48

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
						" = 52"
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
				\override TupletBracket #'staff-padding = #7.4
				{
					\tweak #'text #tuplet-number::calc-fraction-text
					\times 6/5 {
						\set stemLeftBeamCount = #0
						\set stemRightBeamCount = #2
						fs,16 [ \glissando
						\set stemLeftBeamCount = #2
						\set stemRightBeamCount = #2
						e16 \glissando
						\set stemLeftBeamCount = #2
						\set stemRightBeamCount = #2
						f,16 \glissando
						\set stemLeftBeamCount = #2
						\set stemRightBeamCount = #2
						g,16 \glissando
						\set stemLeftBeamCount = #2
						\set stemRightBeamCount = #0
						af,16 ] \glissando
					}
				}
				\revert TupletBracket #'staff-padding
				{
					{
						\set stemLeftBeamCount = #0
						\set stemRightBeamCount = #2
						a,16 [ \glissando
						\set stemLeftBeamCount = #2
						\set stemRightBeamCount = #0
						ef16 ] \glissando
					}
					\tweak #'text #tuplet-number::calc-fraction-text
					\times 4/3 {
						\set stemLeftBeamCount = #0
						\set stemRightBeamCount = #2
						d16 [ \glissando
						\set stemLeftBeamCount = #2
						\set stemRightBeamCount = #2
						e16 \glissando
						\set stemLeftBeamCount = #2
						\set stemRightBeamCount = #0
						f,16 ] \glissando
					}
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 9/13 {
					\tweak #'text #tuplet-number::calc-fraction-text
					\times 3/2 {
						cs8 \glissando
					}
					\tweak #'text #tuplet-number::calc-fraction-text
					\times 5/4 {
						\set stemLeftBeamCount = #0
						\set stemRightBeamCount = #2
						bf,16 [
						\set stemLeftBeamCount = #2
						\set stemRightBeamCount = #2
						a,16 \glissando
						\set stemLeftBeamCount = #2
						\set stemRightBeamCount = #2
						b,16 \glissando
						\set stemLeftBeamCount = #2
						\set stemRightBeamCount = #0
						c16 ] \glissando
					}
					{
						\set stemLeftBeamCount = #0
						\set stemRightBeamCount = #2
						f16 [ \glissando
						\set stemLeftBeamCount = #2
						\set stemRightBeamCount = #2
						a,16 \glissando
						\set stemLeftBeamCount = #2
						\set stemRightBeamCount = #2
						ef16
						\set stemLeftBeamCount = #2
						\set stemRightBeamCount = #2
						d16 \glissando
						\set stemLeftBeamCount = #2
						\set stemRightBeamCount = #0
						e16 ] \glissando
					}
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 7/8 {
					\tweak #'text #tuplet-number::calc-fraction-text
					\times 3/2 {
						\set stemLeftBeamCount = #0
						\set stemRightBeamCount = #2
						c16 [
						\set stemLeftBeamCount = #2
						\set stemRightBeamCount = #0
						cs16 ] \glissando
					}
					\tweak #'text #tuplet-number::calc-fraction-text
					\times 5/3 {
						\set stemLeftBeamCount = #0
						\set stemRightBeamCount = #2
						bf,16 [ \glissando
						\set stemLeftBeamCount = #2
						\set stemRightBeamCount = #2
						a,16 \glissando
						\set stemLeftBeamCount = #2
						\set stemRightBeamCount = #0
						b,16 ] \glissando
					}
				}
				{
					\tweak #'text #tuplet-number::calc-fraction-text
					\times 6/5 {
						\set stemLeftBeamCount = #0
						\set stemRightBeamCount = #2
						af,16 [ \glissando
						\set stemLeftBeamCount = #2
						\set stemRightBeamCount = #2
						fs16
						\set stemLeftBeamCount = #2
						\set stemRightBeamCount = #2
						e16 \glissando
						\set stemLeftBeamCount = #2
						\set stemRightBeamCount = #2
						f16 \glissando
						\set stemLeftBeamCount = #2
						\set stemRightBeamCount = #0
						g16 ]
					}
					{
						\set stemLeftBeamCount = #0
						\set stemRightBeamCount = #2
						b,16 [ \glissando
						\set stemLeftBeamCount = #2
						\set stemRightBeamCount = #0
						c16 ] \glissando
					}
					\tweak #'text #tuplet-number::calc-fraction-text
					\times 4/3 {
						\set stemLeftBeamCount = #0
						\set stemRightBeamCount = #2
						cs16 [ \glissando
						\set stemLeftBeamCount = #2
						\set stemRightBeamCount = #2
						bf,16 \glissando
						\set stemLeftBeamCount = #2
						\set stemRightBeamCount = #0
						a,16 ]
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