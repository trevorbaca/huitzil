% 2014-10-11 14:49

\version "2.19.13"
\language "english"

#(ly:set-option 'relative-includes #t)

\include "../../stylesheets/stylesheet.ily"

\header {
	composer = ##f
	title = ##f
}

\score {
	\context Score = "Score" <<
		\context TimeSignatureContext = "Time Signature Context" {
			{
				\time 3/8
				s1 * 3/8
					- \markup {
						\smaller
							\with-color
								#blue
								[dreams1]
						}
					^ \markup {
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
					- \markup {
						\smaller
							\with-color
								#blue
								[dreams2]
						}
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
					- \markup {
						\smaller
							\with-color
								#blue
								[dreams3]
						}
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
			{
				s1 * 7/16
					- \markup {
						\smaller
							\with-color
								#blue
								[dreams4]
						}
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
					- \markup {
						\smaller
							\with-color
								#blue
								[dreams5]
						}
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
					- \markup {
						\smaller
							\with-color
								#blue
								[dreams6]
						}
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
					- \markup {
						\smaller
							\with-color
								#blue
								[dreams7]
						}
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
					- \markup {
						\smaller
							\with-color
								#blue
								[dreams8]
						}
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
					- \markup {
						\smaller
							\with-color
								#blue
								[dreams9]
						}
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
				r4.
				r4.
				r2
				r16
				r4..
				r2.
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
			\context Voice = "Music Voice" {
				r4.
				r4.
				r2
				r16
				r4..
				r2.
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