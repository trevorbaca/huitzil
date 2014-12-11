% 2014-12-11 11:31

\version "2.19.15"
\language "english"

#(ly:set-option 'relative-includes #t)

\include "../../stylesheets/flight-stylesheet.ily"

\header {
	composer = ##f
	title = ##f
}

\score {
	\context Score = "Score" <<
		\new PianoStaff <<
			\context BowStaff = "Bow Staff" <<
				\context TimeSignatureVoice = "Time Signature Voice" {
					{
						\time 1/1
						s1 * 1
					}
					{
						\time 13/12
						s1 * 13/12
					}
					{
						\time 1/1
						s1 * 1
					}
					{
						\time 2/3
						s1 * 2/3
					}
				}
				\context TempoIndicatorVoice = "Tempo Indicator Voice" {
					s1 * 1/2 ^ \markup {
						\smaller
							\general-align
								#Y
								#DOWN
								\note-by-number
									#2
									#0
									#1
						\upright
							" = 44"
						}
					s1 * 1/4
					s1 * 1/4
					s1 * 1/2
					s1 * 1/4
					s1 * 1/3
					s1 * 1/2
					s1 * 1/4
					s1 * 1/4
					s1 * 2/3
				}
				\context TremoloIndicatorVoice = "Tremolo Indicator Voice" {
					\once \override TextSpanner.bound-details.left.text = \markup {
						\upright
							"tremolo moderato"
						}
					s1 * 1/2 \startTextSpan
					s1 * 1/4
					s1 * 1/4
					s1 * 1/2
					s1 * 1/4
					s1 * 1/3
					s1 * 1/2
					s1 * 1/4
					s1 * 1/4
					s1 * 2/3 \stopTextSpan ^ \markup {
						\upright
							"sub. trem. poco più mosso"
						}
				}
				\context BowLocationVoice = "Bow Location Voice" {
					c'2 :16
						_ \markup {
							\dynamic
								mfz
							}
					c'4 :16
						_ \markup {
							\dynamic
								mfz
							}
					e'4 :16
						_ \markup {
							\dynamic
								mfz
							}
					c'2 :16
						_ \markup {
							\dynamic
								mfz
							}
					c'4 :16
						_ \markup {
							\dynamic
								mfz
							}
					\tweak #'edge-height #'(0.7 . 0)
					\times 2/3 {
						e'2 :16
							_ \markup {
								\dynamic
									mfz
								}
					}
					c'2 :16
						_ \markup {
							\dynamic
								mfz
							}
					c'4 :16
						_ \markup {
							\dynamic
								mfz
							}
					e'4 :16
						_ \markup {
							\dynamic
								mfz
							}
					\tweak #'edge-height #'(0.7 . 0)
					\times 2/3 {
						e'1 :16
							_ \markup {
								\dynamic
									mfz
								}
					}
				}
				\context UnderlyingDynamicsVoice = "Underlying Dynamics Voice" {
					\once \override Hairpin #'stencil = #constante-hairpin
					s1 * 1/2 \< \mp
					s1 * 1/4
					s1 * 1/4
					s1 * 1/2
					s1 * 1/4
					s1 * 1/3
					s1 * 1/2
					s1 * 1/4
					s1 * 1/4
					s1 * 2/3 \pp
				}
			>>
			\context Staff = "Pitch Staff" {
				\clef "bass"
				b,,1 * 15/4
			}
		>>
	>>
}