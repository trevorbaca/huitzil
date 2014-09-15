#(set-default-paper-size "11x17" 'landscape)
#(set-global-staff-size 15)

\paper {
    %bottom-margin = 10\mm
    evenFooterMarkup = \markup \fill-line {
        " "
        \concat {
            \bold \fontsize #3
            \on-the-fly #print-page-number-check-first
            \fromproperty #'page:page-number-string
            %\hspace #18
        }
    }
    evenHeaderMarkup = \markup \fill-line { " " }
    left-margin = 30\mm
    oddFooterMarkup = \markup \fill-line {
        " "
        \concat {
            \bold \fontsize #3
            \on-the-fly #print-page-number-check-first
            \fromproperty #'page:page-number-string
            %\hspace #18
        }
    }
    oddHeaderMarkup = \markup \fill-line { " " }
    print-first-page-number = ##f
    print-page-number = ##t
    ragged-bottom = ##t
    ragged-last-bottom = ##t
    right-margin = 5\mm
    % use (minimum-distance . 60) for final score
    markup-system-spacing = #'(
        (basic-distance . 0)
        (minimum-distance . 12)
        (padding . 0)
        (stretchability . 0)
    )
    system-system-spacing = #'(
        (basic-distance . 0)
        (minimum-distance . 14)
        (padding . 0)
        (stretchability . 0)
    )
    %top-markup-spacing = #'(
    %    (basic-distance . 0)
    %    (minimum-distance . 0)
    %    (padding . 8)
    %    (stretchability . 0)
    %)
    top-system-spacing = #'(
        (basic-distance . 0)
        %(minimum-distance . 20)
        (minimum-distance . 14)
        (padding . 0)
        (stretchability . 0)
    )
    top-margin = 10\mm
    %top-margin = 0\mm
}

\header {
    composer = \markup {
        \override #'(font-name . "Palatino")
        \fontsize #3 "Trevor Bača"
        \hspace #20
    }
    tagline = \markup { "" }
    title = \markup \column {
        \center-align {
            \override #'(font-name . "Palatino")
            \fontsize #14 {
               \line { HUITZIL }
            }
            \override #'(font-name . "Palatino Italic")
            \fontsize #3 {
               " for Alan Toda-Ambaras "
            }
        }
    }
}

\layout {
    \accidentalStyle forget
    indent = 0
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
        \override BarNumber.extra-offset = #'(-6 . -4)
        \override BarNumber.font-size = 1
        \override BarNumber.padding = 4
        \override BarNumber.stencil = #(make-stencil-circler 0.1 0.7 ly:text-interface::print)
        \override MetronomeMark.X-extent = #'(0 . 0)
        \override MetronomeMark.Y-extent = #'(0 . 0)
        \override MetronomeMark.break-align-symbols = #'(left-edge)
        \override MetronomeMark.extra-offset = #'(0 . 4)
        \override MetronomeMark.font-size = 3
        \override RehearsalMark.X-extent = #'(0 . 0)
        \override RehearsalMark.Y-offset = -2.25
        \override RehearsalMark.X-offset = 6
        \override RehearsalMark.break-align-symbols = #'(time-signature)
        \override RehearsalMark.break-visibility = #end-of-line-invisible
        \override RehearsalMark.font-name = "Didot"
        \override RehearsalMark.font-size = 10
        \override RehearsalMark.outside-staff-priority = 500
        \override RehearsalMark.self-alignment-X = #center
        \override Script.font-size = 6
        \override Script.extra-offset = #'(4 . -9)
        \override TextScript.font-size = 3
        \override TextScript.outside-staff-priority = 600
        \override TextScript.padding = 6
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
            (minimum-distance . 14)
            (padding . 0)
            (stretchability . 0)
        )
        \override VerticalAxisGroup.minimum-Y-extent = #'(-20 . 20)
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
        \name BowTablatureRhythmVoice
        \type Engraver_group
        \alias Voice
        \override Beam #'positions = #'(-7 . -7)
        \override Dots #'extra-offset = #'(-1 . -1.5)
        \override NoteHead #'no-ledgers = ##t
        \override NoteHead #'transparent = ##t
        \override Rest #'staff-position = #-14
        \override TextScript #'staff-padding = #13
        \override TupletBracket #'staff-padding = #8.5
    }
    \context {
        \Voice
        \name BowTablatureBowVoice
        \type Engraver_group
        \alias Voice
        \override Beam #'stencil = ##f
        \override Dots #'stencil = ##f
        \override Flag #'transparent = ##t
        \override Glissando #'bound-details #'left #'padding = #0.25
        \override Glissando #'bound-details #'right #'padding = #0
        \override Glissando #'thickness = #6
        \override NoteHead #'transparent = ##t
        \override NoteHead #'X-extent = #'(0 . 0)
        \override Stem #'stencil = ##f
        \override Script #'outside-staff-priority = #1000
        \override Script #'staff-padding = #5.5
        \override Script #'X-offset = #0.75
        \override TextScript #'direction = #up
        \override TextScript #'staff-padding = #4
        \override TextSpanner #'extra-offset = #'(0 . 2.5)
        \override TextSpanner #'Y-extent = ##f
        \override TupletBracket #'stencil = ##f
        \override TupletNumber #'stencil = ##f
    }
    \context {
        \Voice
        \name BowTablatureBowPositionVoice
        \type Engraver_group
        \alias Voice
        \override Beam #'stencil = ##f
        \override Dots #'stencil = ##f
        \override Flag #'transparent = ##t
        \override NoteHead #'transparent = ##t
        \override NoteHead #'X-extent = #'(0 . 0)
        \override Stem #'stencil = ##f
        \override TextScript #'direction = #up
        \override TextScript #'staff-padding = #9.5
        \override TextScript #'outside-staff-priority = #800
        \override TextSpanner #'extra-offset = #'(0 . 8.5)
        \override TextSpanner #'Y-extent = ##f
        \override TupletBracket #'stencil = ##f
        \override TupletNumber #'stencil = ##f
    }
    \context {
        \Voice
        \name BowTablatureDynamicsVoice
        \type Engraver_group
        \alias Voice
        \override Beam #'stencil = ##f
        \override Dots #'stencil = ##f
        \override DynamicLineSpanner #'staff-padding = #11.5
        \override DynamicLineSpanner #'Y-extent = #'(-1.5 . 1.5)
        \override DynamicText #'self-alignment-X = #-1
        \override Flag #'transparent = ##t
        \override Glissando #'bound-details #'left #'padding = #0.25
        \override Glissando #'bound-details #'right #'padding = #0
        \override Glissando #'thickness = #6
        \override Hairpin #'broken-bound-padding = #0
        \override NoteHead #'transparent = ##t
        \override NoteHead #'X-extent = #'(0 . 0)
        \override Stem #'stencil = ##f
        \override TupletBracket #'stencil = ##f
        \override TupletNumber #'stencil = ##f
    }
    \context {
        \Staff
        \name BowTablatureStaff
        \type Engraver_group
        \alias Staff
        \accepts BowTablatureRhythmVoice
        \accepts BowTablatureBowVoice
        \accepts BowTablatureBowPositionVoice
        \accepts BowTablatureDynamicsVoice
        \override BarLine #'bar-extent = #'(0 . 0)
        \override Clef #'stencil = ##f
        \override DynamicLineSpanner #'staff-padding = #11.5
        \override StaffSymbol #'line-count = #1
        %\override Stem #'length = #14
        \override Stem #'length = #10
        instrumentName = \markup { 
            \column { \hcenter-in #10 \italic { mano destra } } }
        shortInstrumentName = \markup { 
            \column { \hcenter-in #10 \italic { mano destra } } }
    }
    \context {
        \Voice
        \name LHVoice
        \type Engraver_group
        \alias Voice
        \override Glissando #'thickness = #3
    }
    \context {
        \Staff
        \name LHStaff
        \type Engraver_group
        \alias Staff
        \accepts LHVoice
        \override TextScript #'direction = #up
        \override Stem #'length = #10
        \override TextSpanner #'staff-padding = #2
        \override TupletBracket #'staff-padding = #3
        instrumentName = \markup { 
            \column { \hcenter-in #10 \italic { mano sinistra } } }
        shortInstrumentName = \markup { 
            \column { \hcenter-in #10 \italic { mano sinistra } } }
    }
    \context {
        \PianoStaff
        \accepts BowTablatureStaff
        \accepts LHStaff
        \override StaffGrouper #'staff-staff-spacing #'minimum-distance = #20
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
        \override BarNumber.transparent = ##t
        \override Beam.breakable = ##t
        \override DynamicLineSpanner.Y-extent = #'(-1.5 . 1.5)
        \override Glissando.breakable = ##t
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
        \override TupletBracket.padding = #0.75
        \override TupletNumber.font-size = #1
        \override TupletNumber.text = #tuplet-number::calc-fraction-text
        autoBeaming = ##f
        markFormatter = #format-mark-box-alphabet
        proportionalNotationDuration = #(ly:make-moment 1 64)
        tupletFullLength = ##t
    }
%    \context {
%        \Score
%        \accepts TimeSignatureContext
%        \accepts WindSectionStaffGroup
%        \accepts PercussionSectionStaffGroup
%        \accepts StringSectionStaffGroup
%        \remove Bar_number_engraver
%        \remove Mark_engraver
%        \remove Metronome_mark_engraver
%        \override BarLine.hair-thickness = 0.5
%        \override BarLine.space-alist = #'(
%            (time-signature extra-space . 0.0)
%            (custos minimum-space . 0.0) 
%            (clef minimum-space . 0.0) 
%            (key-signature extra-space . 0.0) 
%            (key-cancellation extra-space . 0.0) 
%            (first-note fixed-space . 0.0) 
%            (next-note semi-fixed-space . 0.0) 
%            (right-edge extra-space . 0.0)
%        )
%        \override Beam.breakable = ##t
%        \override DynamicLineSpanner.Y-extent = #'(-4 . 4)
%        \override Glissando.breakable = ##t
%        \override Glissando.thickness = 3
%        \override NoteCollision.merge-differently-dotted = ##t
%        \override NoteColumn.ignore-collision = ##t
%        \override SpacingSpanner.strict-grace-spacing = ##t
%        \override SpacingSpanner.strict-note-spacing = ##t
%        \override SpacingSpanner.uniform-stretching = ##t
%        \override Stem.direction = #down
%        \override StemTremolo.beam-width = 1.5
%        \override StemTremolo.flag-count = 4
%        \override StemTremolo.slope = 0.5
%        \override TextScript.X-extent = ##f
%        \override TextScript.Y-extent = #'(-1.5 . 1.5)
%        \override TextScript.padding = 2
%        \override TrillSpanner.bound-details.right.padding = 2
%        \override TupletBracket.breakable = ##t
%        \override TupletBracket.direction = #down
%        \override TupletBracket.full-length-to-extent = ##f
%        \override TupletBracket.padding = 0.75
%        \override TupletNumber.font-size = 1
%        \override TupletNumber.text = #tuplet-number::calc-fraction-text
%        autoBeaming = ##f
%        markFormatter = #format-mark-box-alphabet
%        proportionalNotationDuration = #(ly:make-moment 1 28)
%        tupletFullLength = ##t
%    }
}