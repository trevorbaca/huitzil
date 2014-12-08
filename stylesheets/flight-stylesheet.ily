\include "stylesheet.ily"

\layout {
    indent = 0
    \context {
        \Voice
        \name TimeSignatureVoice
        \type Engraver_group
        \alias Voice
    }
    \context {
        \Voice
        \name TempoIndicatorVoice
        \type Engraver_group
        \alias Voice
    }
    \context {
        \Voice
        \name TremoloIndicatorVoice
        \type Engraver_group
        \alias Voice
    }
    \context {
        \Staff
        instrumentName = \markup \null
        \override BarLine.stencil = ##f
    }
    \context {
        \Staff
        \name BowStaff
        \type Engraver_group
        \alias Staff
        \accepts TimeSignatureVoice
        \accepts TempoIndicatorVoice
        \accepts TremoloIndicatorVoice
        \override Clef.transparent = ##t
        \override StaffSymbol.line-count = 7
        \override StemTremolo.direction = #up
        \override TupletBracket.direction = #up
        \override TupletBracket.staff-padding = 1
    }
    \context {
        \Score
        \accepts BowStaff
        proportionalNotationDuration = #(ly:make-moment 1 20)
    }
}