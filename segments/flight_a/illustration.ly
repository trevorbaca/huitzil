% 2014-12-06 21:30

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
			}
		>>
	>>
}