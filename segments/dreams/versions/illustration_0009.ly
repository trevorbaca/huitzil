% 2014-10-22 09:52

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
				\time 3/16
				s1 * 3/16
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
				\time 5/16
				s1 * 5/16
			}
			{
				\time 7/16
				s1 * 7/16
			}
			{
				\time 1/8
				s1 * 1/8
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
				\time 1/8
				s1 * 1/8
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
				\time 3/16
				s1 * 3/16
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
				\time 5/16
				s1 * 5/16
			}
			{
				\time 7/16
				s1 * 7/16
			}
			{
				\time 1/8
				s1 * 1/8
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
				\time 1/8
				s1 * 1/8
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
				\time 3/16
				s1 * 3/16
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
				\time 5/16
				s1 * 5/16
			}
			{
				\time 7/16
				s1 * 7/16
			}
			{
				\time 1/8
				s1 * 1/8
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
				\time 1/8
				s1 * 1/8
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
					af,16 ]
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
					cs8
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 3/2 {
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					bf,16 [
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					a,16
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					b,16
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					c16 ]
				}
				{
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					f16 [
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
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 3/2 {
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					c16 [
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					cs16 ]
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 5/3 {
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
				{
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					af,16 [
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					fs16
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					e16
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					f16
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					g16 ]
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 3/2 {
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					b,16 [
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					c16 ]
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 5/3 {
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
				{
					g16
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 5/4 {
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					af,16 [
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
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 7/5 {
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
				{
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					f16 [
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					g16 ]
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 4/3 {
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					af,16 [
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					fs16
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					e16 ]
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 7/5 {
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					d16 [
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					e16
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					f16
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					a,16
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					ef16 ]
				}
				{
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					a,16 [
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					b,16 ]
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 4/3 {
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					c16 [
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					cs16
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					bf,16 ]
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 3/2 {
					ef8
				}
				{
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					d16 [
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					e16
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					f16
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					a,16 ]
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 6/5 {
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					bf,16 [
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					a,16
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					b,16
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					c16
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					cs16 ]
				}
				{
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #1
					e8 [
					\set stemLeftBeamCount = #1
					\set stemRightBeamCount = #0
					f8 ]
				}
				{
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					g16 [
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					af,16
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					fs16 ]
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 6/5 {
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					cs16 [
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					bf,16
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					a,16
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					b,16
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					c16 ]
				}
				{
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #1
					fs8 [
					\set stemLeftBeamCount = #1
					\set stemRightBeamCount = #0
					e8 ]
				}
				{
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					f16 [
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					g16
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					af,16 ]
				}
				{
					a,8
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 3/2 {
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					ef16 [
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					d16
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					e16
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					f16 ]
				}
				{
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					af,16 [
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					fs16
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					e16
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					f16
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					g16 ]
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 3/2 {
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					f16 [
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					a,16 ]
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 5/3 {
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					ef16 [
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					d16
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					e16 ]
				}
				{
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					c16 [
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					cs16
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					bf,16
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					a,16
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					b,16 ]
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 3/2 {
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					e16 [
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					f16 ]
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 5/3 {
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					a,16 [
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					ef16
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					d16 ]
				}
				{
					b,16
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 5/4 {
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					c16 [
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					cs16
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					bf,16
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					a,16 ]
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 7/5 {
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					g16 [
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					af,16
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
				{
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					a,16 [
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					b,16 ]
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 4/3 {
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					c16 [
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					cs16
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					bf,16 ]
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 7/5 {
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					f16 [
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					g16
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					af,16
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					fs16
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					e16 ]
				}
				{
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					d16 [
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					e16 ]
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 4/3 {
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					f16 [
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					a,16
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					ef16 ]
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 3/2 {
					e8
				}
				{
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					f16 [
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					g16
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					af,16
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					fs16 ]
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 6/5 {
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					ef16 [
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					d16
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					e16
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					f16
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					a,16 ]
				}
				{
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #1
					bf,8 [
					\set stemLeftBeamCount = #1
					\set stemRightBeamCount = #0
					a,8 ]
				}
				{
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					b,16 [
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					c16
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					cs16 ]
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 6/5 {
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					a,16 [
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					ef16
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					d16
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					e16
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					f16 ]
				}
				{
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #1
					cs8 [
					\set stemLeftBeamCount = #1
					\set stemRightBeamCount = #0
					bf,8 ]
				}
				{
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					a,16 [
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					b,16
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					c16 ]
				}
				{
					fs8
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 3/2 {
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					e16 [
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					f16
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					g16
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					af,16 ]
				}
				{
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					c16 [
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					cs16
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					bf,16
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					a,16
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					b,16 ]
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 3/2 {
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					af,16 [
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					fs16 ]
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 5/3 {
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					e16 [
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					f16
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					g16 ]
				}
				{
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					f16 [
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
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 3/2 {
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					g16 [
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					af,16 ]
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 5/3 {
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					fs16 [
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					e16
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					f16 ]
				}
				{
					e16
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 5/4 {
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					f16 [
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
				\times 7/5 {
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					b,16 [
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					c16
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					cs16
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					bf,16
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					a,16 ]
				}
				{
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					d16 [
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					e16 ]
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 4/3 {
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					f16 [
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					a,16
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					ef16 ]
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 7/5 {
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					a,16 [
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					b,16
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					c16
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					cs16
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					bf,16 ]
				}
				{
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					f16 [
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					g16 ]
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 4/3 {
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					af,16 [
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					fs16
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					e16 ]
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 3/2 {
					bf,8
				}
				{
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					a,16 [
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					b,16
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					c16
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					cs16 ]
				}
				\tweak #'text #tuplet-number::calc-fraction-text
				\times 6/5 {
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					e16 [
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					f16
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					g16
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					af,16
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					fs16 ]
				}
				{
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #1
					ef8 [
					\set stemLeftBeamCount = #1
					\set stemRightBeamCount = #0
					d8 ]
				}
				{
					\set stemLeftBeamCount = #0
					\set stemRightBeamCount = #2
					e16 [
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #2
					f16
					\set stemLeftBeamCount = #2
					\set stemRightBeamCount = #0
					a,16 ]
				}
			}
		>>
	>>
}