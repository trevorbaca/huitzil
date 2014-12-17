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
        \override TextScript.staff-padding = 9
        \override TextSpanner.staff-padding = 9.75
    }
    \context {
        \Voice
        \name TremoloIndicatorVoice
        \type Engraver_group
        \alias Voice
        \override TextScript.staff-padding = 5
        \override TextSpanner.staff-padding = 5.5
    }
    \context {
        \Voice
        \name BowLocationVoice
        \type Engraver_group
        \alias Voice
        \override TextScript.staff-padding = 3.5
        \override TextScript.self-alignment-X = -0.375
    }
    \context {
        \Voice
        \name UnderlyingDynamicsVoice
        \type Engraver_group
        \alias Voice
        \override DynamicLineSpanner.staff-padding = 6
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
        \accepts BowLocationVoice
        \accepts UnderlyingDynamicsVoice
        \override Clef.transparent = ##t
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