% 2014-12-07 16:14

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
		\context Staff = "Staff" <<
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
			}
			\context TremoloIndicatorVoice = "Tremolo Indicator Voice" {
			}
			\context Voice = "Music Voice" {
				c'2 :16
				c'4 :16
				e'4 :16
				c'2 :16
				c'4 :16
				\tweak #'edge-height #'(0.7 . 0)
				\times 2/3 {
					e'2 :16
				}
				c'2 :16
				c'4 :16
				e'4 :16
				\tweak #'edge-height #'(0.7 . 0)
				\times 2/3 {
					e'1 :16 -\accent
				}
			}
		>>
	>>
}