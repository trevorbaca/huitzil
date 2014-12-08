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
        \override TextScript.staff-padding = 6
        \override TextSpanner.staff-padding = 6.75
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
    }
    \context {
        \PianoStaff
        \accepts BowStaff
        \override StaffGrouper.staff-staff-spacing.minimum-distance = 14
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
        \override BarLine.stencil = ##f
        \override SpanBar.stencil = ##f
        proportionalNotationDuration = #(ly:make-moment 1 20)
    }
}