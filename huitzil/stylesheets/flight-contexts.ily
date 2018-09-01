\include "/Users/trevorbaca/baca/lilypond/baca.ily"


\layout {
    \context {
        \GlobalContext
        \override TimeSignature.stencil = ##f
    }
    \context {
        \Voice
        \name PitchVoice
        \type Engraver_group
        \alias Voice
    }
    \context {
        \Voice
        \name MetronomeMarkVoice
        \type Engraver_group
        \alias Voice

        \override TextScript.staff-padding = 9
        \override TextSpanner.staff-padding = 9.75
    }
    \context {
        \Voice
        \name TremoloVoice
        \type Engraver_group
        \alias Voice

        \override TextScript.staff-padding = 5
        \override TextSpanner.staff-padding = 5.5
    }
    \context {
        \Voice
        \name StringContactPointVoice
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
        \accepts PitchStaff

        \override StaffGrouper.staff-staff-spacing.minimum-distance = 14
    }
    \context {
        \Staff
        \name BowStaff
        \type Engraver_group
        \alias Staff
        \accepts TimeSignatureVoice
        \accepts MetronomeMarkVoice
        \accepts TremoloVoice
        \accepts StringContactPointVoice
        \accepts UnderlyingDynamicsVoice

        \override Clef.transparent = ##t

        \override TupletBracket.direction = #up
        \override TupletBracket.staff-padding = 1
    }
    \context {
        \Staff
        \name PitchStaff
        \type Engraver_group
        \alias Staff
        \accepts PitchVoice
    }
    \context {
        \Score

        \override BarLine.transparent = ##t

        \override SpanBar.transparent = ##t

        proportionalNotationDuration = #(ly:make-moment 1 16)
    }
}
