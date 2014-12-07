% 2014-12-06 22:05

\version "2.19.15"
\language "english"

#(ly:set-option 'relative-includes #t)

\include "../../stylesheets/stylesheet.ily"

\header {
	composer = ##f
	title = ##f
}

\score {
	\context Score = "Score" <<
		\context Staff = "Staff" <<
			\context TempoIndicatorVoice = "Tempo Indicator Voice" {
			}
			\context TremoloIndicatorVoice = "Tremolo Indicator Voice" {
			}
			\context Voice = "Music Voice" {
				c'2 -\tenuto
				c'4 -\tenuto
				e'4 -\tenuto
				c'2 -\tenuto
				c'4 -\tenuto
				\tweak #'text #tuplet-number::calc-fraction-text
				\tweak #'edge-height #'(0.7 . 0)
				\times 4/3 {
					e'4 -\tenuto
				}
				c'2 -\tenuto
				c'4 -\tenuto
				e'4 -\tenuto
				\tweak #'text #tuplet-number::calc-fraction-text
				\tweak #'edge-height #'(0.7 . 0)
				\times 4/3 {
					e'2 -\accent
				}
			}
		>>
	>>
}