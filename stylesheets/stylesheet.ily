#(set-default-paper-size "11x17" 'landscape)
#(set-global-staff-size 15)

\paper {
    bottom-margin = 7\mm
    evenFooterMarkup = \markup \fill-line {
        " "
        \concat {
            \bold \fontsize #3
            \on-the-fly #print-page-number-check-first
            \fromproperty #'page:page-number-string
            \hspace #15
        }
    }
    evenHeaderMarkup = \markup \null
    left-margin = 15\mm
    oddFooterMarkup = \markup \fill-line {
        " "
        \concat {
            \bold \fontsize #3
            \on-the-fly #print-page-number-check-first
            \fromproperty #'page:page-number-string
            \hspace #15
        }
    }
    oddHeaderMarkup = \markup \null
    page-breaking = #ly:page-turn-breaking
    print-first-page-number = ##f
    print-page-number = ##t
    ragged-bottom = ##t
    ragged-last-bottom = ##t
    right-margin = 0\mm
    markup-system-spacing = #'(
        (basic-distance . 0)
        (minimum-distance . 56)
        (padding . 0)
        (stretchability . 0)
    )
    system-system-spacing = #'(
        (basic-distance . 0)
        (minimum-distance . 24)
        (padding . 0)
        (stretchability . 0)
    )
    top-markup-spacing = #'(
        (basic-distance . 0)
        (minimum-distance . 8)
        (padding . 0)
        (stretchability . 0)
    )
    top-system-spacing = #'(
        (basic-distance . 0)
        (minimum-distance . 14)
        (padding . 0)
        (stretchability . 0)
    )
    top-margin = 10\mm
}

\header {
    composer = \markup {
        \override #'(font-name . "Palatino")
        \fontsize #5 "Trevor Bača"
        \hspace #15
    }
    tagline = \markup \null
    title = \markup \column {
        \center-align {
            \override #'(font-name . "Palatino")
            \fontsize #16 {
               \line { HUITZIL }
            }
            \null
            \override #'(font-name . "Palatino Italic")
            \fontsize #3 {
               " for Alan Toda-Ambaras "
            }
        }
    }
}

\layout {
    \accidentalStyle forget
    indent = 11.5
    ragged-bottom = ##t
    ragged-last = ##t
    ragged-right = ##t
    \context {
        \name TimeSignatureContext
        \type Engraver_group
        \consists Axis_group_engraver
        \consists Bar_number_engraver
        \consists Mark_engraver
        \consists Metronome_mark_engraver
        \consists Script_engraver
        \consists Text_engraver
        \consists Text_spanner_engraver
        \consists Time_signature_engraver
        \override BarNumber.extra-offset = #'(-2 . -8)
        \override BarNumber.font-size = 0
        \override BarNumber.stencil = #(make-stencil-circler 0.1 0.7 ly:text-interface::print)
        \override RehearsalMark.X-extent = #'(0 . 0)
        \override RehearsalMark.Y-offset = -2.25
        \override RehearsalMark.X-offset = 6
        \override RehearsalMark.break-align-symbols = #'(time-signature)
        \override RehearsalMark.break-visibility = #end-of-line-invisible
        \override RehearsalMark.font-name = "Didot"
        \override RehearsalMark.font-size = 10
        \override RehearsalMark.outside-staff-priority = 500
        \override RehearsalMark.self-alignment-X = #center
        \override TextScript.extra-offset = #'(0 . -2)
        \override TextScript.font-size = 3
        \override TextScript.outside-staff-priority = 600
        \override TextSpanner.bound-details.right.attach-dir = #LEFT
        \override TextSpanner.padding = 6.75
        \override TimeSignature.X-extent = #'(0 . 0)
        \override TimeSignature.break-align-symbol = #'left-edge
        \override TimeSignature.break-visibility = #end-of-line-invisible
        \override TimeSignature.font-size = 3
        \override TimeSignature.space-alist.clef = #'(extra-space . 0.5)
        \override TimeSignature.style = #'numbered
        \override VerticalAxisGroup.default-staff-staff-spacing = #'(
            (basic-distance . 0)
            (minimum-distance . 12)
            (padding . 0)
            (stretchability . 0)
        )
    }
    \context {
        \Staff
        \remove Time_signature_engraver
    }
    \context {
        \Voice
        \remove Forbid_line_break_engraver
    }
    \context {
        \Voice
        \name TextSpannerVoice
        \type Engraver_group
        \alias Voice
        \override Beam.stencil = ##f
        \override Dots.stencil = ##f
        \override Flag.transparent = ##t
        \override NoteHead.transparent = ##t
        \override NoteHead.X-extent = #'(0 . 0)
        \override Stem.stencil = ##f
        \override TextScript.direction = #up
        \override TextScript.staff-padding = #9.5
        \override TextScript.outside-staff-priority = #800
        \override TextSpanner.extra-offset = #'(0 . 8.5)
        \override TextSpanner.Y-extent = ##f
        \override TupletBracket.stencil = ##f
        \override TupletNumber.stencil = ##f
    }
    \context {
        \Staff
        \accepts TextSpannerVoice
        \override TextScript.direction = #up
        \override Stem.length = #10
        \override TextSpanner.staff-padding = #2
        \override TupletBracket.staff-padding = #5.5
        instrumentName = \markup { \fontsize #3 Cello \hspace #1.5 }
    }
    \context {
        \Score
        \accepts TimeSignatureContext
        \remove Bar_number_engraver
        \remove Mark_engraver
        \remove Metronome_mark_engraver
        \override BarLine.hair-thickness = 0.5
        \override BarNumber.extra-offset = #'(-6 . -4)
        \override BarNumber.font-size = 1
        \override BarNumber.padding = 4
        \override Beam.breakable = ##t
        \override Beam.positions = #'(-6 . -6)
        \override DynamicLineSpanner.Y-extent = #'(-1.5 . 1.5)
        \override Glissando.breakable = ##t
        \override Glissando.thickness = 2
        \override MetronomeMark.extra-offset = #'(3 . -3)
        \override MetronomeMark.font-size = #3
        \override NoteCollision.merge-differently-dotted = ##t
        \override NoteColumn.ignore-collision = ##t
        \override SpacingSpanner.strict-grace-spacing = ##t
        \override SpacingSpanner.strict-note-spacing = ##t
        \override SpacingSpanner.uniform-stretching = ##t
        \override Stem.direction = #down
        \override StemTremolo.beam-width = #1.5
        \override StemTremolo.flag-count = #4
        \override StemTremolo.slope = #0.5
        \override StemTremolo.Y-offset = #-4
        \override TextScript.Y-extent = #'(-1.5 . 1.5)
        \override TupletBracket.breakable = ##t
        \override TupletBracket.direction = #down
        \override TupletBracket.full-length-to-extent = ##f
        \override TupletBracket.padding = #1
        \override TupletNumber.font-size = #0.333
        \override TupletNumber.text = #tuplet-number::calc-fraction-text
        autoBeaming = ##f
        markFormatter = #format-mark-box-alphabet
        proportionalNotationDuration = #(ly:make-moment 1 48)
        tupletFullLength = ##t
    }
}