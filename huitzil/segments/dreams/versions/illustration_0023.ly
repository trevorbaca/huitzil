% 2014-10-25 13:48

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
					cs16 [
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					d16 ]
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 4/3 {
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					b,16 [
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					bf,16 ]
					\once \override NoteHead #'color = #blue
					c4
				}
				{
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					a,16 [
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					g16
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					f16
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					fs16
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					af16 ]
				}
				{
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #3
					c32 [
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #3
					\set stemRightBeamCount = #0
					cs32 ]
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 11/6 {
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					d16 [
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					b,16 ]
					\once \override NoteHead #'color = #blue
					bf,4
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 5/4 {
					\once \override NoteHead #'color = #blue
					af,4
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 3/2 {
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					a,16 [
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					g,16
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					f,16
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					fs,16 ]
				}
				{
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					f,16 [
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					fs,16
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					bf,16
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					e16
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					ef16 ]
				}
				{
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #3
					fs,32 [
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #3
					\set stemRightBeamCount = #0
					af,32 ]
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 14/9 {
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					a,16 [ ]
					\once \override NoteHead #'color = #blue
					g,4
					\once \override NoteHead #'color = #blue
					f,4
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 6/5 {
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					ef16 [
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					f16
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					fs16
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					bf,16
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					e16 ]
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 5/4 {
					\once \override NoteHead #'color = #blue
					bf,4
					\once \override NoteHead #'color = #blue
					c4
				}
				{
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					cs16 [
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					d16
					\once \override NoteHead #'color = #green
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					b,16 ]
				}
				{
					\once \override NoteHead #'color = #green
					e16
				}
				{
					\once \override NoteHead #'color = #blue
					ef,2 - \markup { 0 }
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 3/2 {
					\once \override NoteHead #'color = #blue
					d,4 - \markup { 1 }
					\once \override NoteHead #'color = #blue
					e,4 - \markup { 2 }
					\once \override NoteHead #'color = #blue
					fs,4 - \markup { 3 }
					\once \override NoteHead #'color = #blue
					f,4 - \markup { 4 }
				}
				{
					\once \override NoteHead #'color = #blue
					fs,4 - \markup { 5 }
					\once \override NoteHead #'color = #blue
					f,4 - \markup { 6 }
					\once \override NoteHead #'color = #blue
					cs,4 - \markup { 7 }
					\once \override NoteHead #'color = #blue
					g,4 - \markup { 8 }
					\once \override NoteHead #'color = #blue
					af,4 - \markup { 9 }
				}
				{
					\once \override NoteHead #'color = #blue
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #1
					f,8 [ - \markup { 10 }
					\once \override NoteHead #'color = #blue
					\set stemLeftBeamCount = #1
					\set stemRightBeamCount = #0
					ef,8 ] - \markup { 11 }
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 4/3 {
					\once \override NoteHead #'color = #blue
					d,2 - \markup { 12 }
					\once \override NoteHead #'color = #blue
					e,2 - \markup { 13 }
					\once \override NoteHead #'color = #blue
					fs,2 - \markup { 14 }
				}
			}
		>>
	>>
}