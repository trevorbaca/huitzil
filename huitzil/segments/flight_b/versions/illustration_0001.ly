% 2014-12-12 11:28

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
						s1 * 1
					}
					{
						\time 4/3
						s1 * 4/3
					}
					{
						\time 1/1
						s1 * 1
					}
					{
						\time 8/5
						s1 * 8/5
					}
					{
						\time 1/1
						s1 * 1
					}
					{
						\time 4/3
						s1 * 4/3
					}
					{
						\time 1/1
						s1 * 1
					}
					{
						\time 8/5
						s1 * 8/5
					}
					{
						\time 1/1
						s1 * 1
					}
					{
						\time 4/3
						s1 * 4/3
					}
					{
						\time 1/1
						s1 * 1
					}
					{
						\time 8/5
						s1 * 8/5
					}
				}
				\context TempoIndicatorVoice = "Tempo Indicator Voice" {
				}
				\context TremoloIndicatorVoice = "Tremolo Indicator Voice" {
				}
				\context BowLocationVoice = "Bow Location Voice" {
					a''4 :16
						_ \markup {
							\dynamic
								ffz
							}
					f''4 :16
						_ \markup {
							\dynamic
								ffz
							}
					d''4 :16
						_ \markup {
							\dynamic
								ffz
							}
					b'4 :16
						_ \markup {
							\dynamic
								ffz
							}
					b'1 :16
						_ \markup {
							\dynamic
								ffz
							}
					\tweak #'edge-height #'(0.7 . 0)
					\times 2/3 {
						b'1 :16
							_ \markup {
								\dynamic
									ffz
								}
					}
					\tweak #'edge-height #'(0.7 . 0)
					\times 2/3 {
						b'1 :16
							_ \markup {
								\dynamic
									ffz
								}
					}
					b'1 :16
						_ \markup {
							\dynamic
								ffz
							}
					\tweak #'edge-height #'(0.7 . 0)
					\times 4/5 {
						b'2 :16
							_ \markup {
								\dynamic
									ffz
								}
					}
					\tweak #'edge-height #'(0.7 . 0)
					\times 4/5 {
						b'2 :16
							_ \markup {
								\dynamic
									ffz
								}
					}
					\tweak #'edge-height #'(0.7 . 0)
					\times 4/5 {
						b'2 :16
							_ \markup {
								\dynamic
									ffz
								}
					}
					\tweak #'edge-height #'(0.7 . 0)
					\times 4/5 {
						b'2 :16
							_ \markup {
								\dynamic
									ffz
								}
					}
					b'1 :16
						_ \markup {
							\dynamic
								ffz
							}
					\tweak #'edge-height #'(0.7 . 0)
					\times 2/3 {
						b'1 :16
							_ \markup {
								\dynamic
									ffz
								}
					}
					\tweak #'edge-height #'(0.7 . 0)
					\times 2/3 {
						b'1 :16
							_ \markup {
								\dynamic
									ffz
								}
					}
					b'1 :16
						_ \markup {
							\dynamic
								ffz
							}
					\tweak #'edge-height #'(0.7 . 0)
					\times 4/5 {
						b'2 :16
							_ \markup {
								\dynamic
									ffz
								}
					}
					\tweak #'edge-height #'(0.7 . 0)
					\times 4/5 {
						b'2 :16
							_ \markup {
								\dynamic
									ffz
								}
					}
					\tweak #'edge-height #'(0.7 . 0)
					\times 4/5 {
						b'2 :16
							_ \markup {
								\dynamic
									ffz
								}
					}
					\tweak #'edge-height #'(0.7 . 0)
					\times 4/5 {
						b'2 :16
							_ \markup {
								\dynamic
									ffz
								}
					}
					b'1 :16
						_ \markup {
							\dynamic
								ffz
							}
					\tweak #'edge-height #'(0.7 . 0)
					\times 2/3 {
						b'1 :16
							_ \markup {
								\dynamic
									ffz
								}
					}
					\tweak #'edge-height #'(0.7 . 0)
					\times 2/3 {
						b'1 :16
							_ \markup {
								\dynamic
									ffz
								}
					}
					b'1 :16
						_ \markup {
							\dynamic
								ffz
							}
					\tweak #'edge-height #'(0.7 . 0)
					\times 4/5 {
						b'2 :16
							_ \markup {
								\dynamic
									ffz
								}
					}
					\tweak #'edge-height #'(0.7 . 0)
					\times 4/5 {
						b'2 :16
							_ \markup {
								\dynamic
									ffz
								}
					}
					\tweak #'edge-height #'(0.7 . 0)
					\times 4/5 {
						b'2 :16
							_ \markup {
								\dynamic
									ffz
								}
					}
					\tweak #'edge-height #'(0.7 . 0)
					\times 4/5 {
						b'2 :16
							_ \markup {
								\dynamic
									ffz
								}
					}
				}
				\context UnderlyingDynamicsVoice = "Underlying Dynamics Voice" {
					s1 * 1/4
					s1 * 1/4
					s1 * 1/4
					s1 * 1/4
					s1 * 1
					s1 * 2/3
					s1 * 2/3
					s1 * 1
					s1 * 2/5
					s1 * 2/5
					s1 * 2/5
					s1 * 2/5
					s1 * 1
					s1 * 2/3
					s1 * 2/3
					s1 * 1
					s1 * 2/5
					s1 * 2/5
					s1 * 2/5
					s1 * 2/5
					s1 * 1
					s1 * 2/3
					s1 * 2/3
					s1 * 1
					s1 * 2/5
					s1 * 2/5
					s1 * 2/5
					s1 * 2/5
				}
			>>
			\context Staff = "Pitch Staff" {
				\clef "bass"
				b,,1 * 79/5
			}
		>>
	>>
}