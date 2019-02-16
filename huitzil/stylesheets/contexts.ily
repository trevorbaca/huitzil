\include "/Users/trevorbaca/baca/lilypond/baca.ily"


\layout {

    % GLOBAL SKIPS
    \context {
        \name GlobalSkips
        \type Engraver_group
        \consists Script_engraver
        \consists Text_engraver
        \consists \alternateTextSpannerEngraver

        \override TextScript.font-size = 6

        \override TextSpanner.font-size = 6
        }

    % GLOBAL RESTS
    \context {
        \name GlobalRests
        \type Engraver_group
        \consists Multi_measure_rest_engraver

        \override MultiMeasureRest.transparent = ##t

        \override MultiMeasureRestText.font-size = 3
        \override MultiMeasureRestText.outside-staff-priority = 0
        \override MultiMeasureRestText.padding = 0
        }

    % PAGE LAYOUT
    \context {
        \name PageLayout
        \type Engraver_group
        \consists Text_engraver
        \consists \alternateTextSpannerEngraver

        \override TextSpanner.font-size = 6
        }

    % GLOBAL CONTEXT
    \context {
        \name GlobalContext
        \type Engraver_group
        \consists Axis_group_engraver
        \consists Bar_number_engraver
        % prevents LilyPond cyclic chain in pure-Y-offset callbacks warning:
        \consists Staff_collecting_engraver
        \accepts GlobalSkips
        \accepts GlobalRests
        \accepts PageLayout

        \override BarNumber.Y-extent = ##f
        \override BarNumber.extra-offset = #'(-4 . -12)
        \override BarNumber.font-size = 1

    }

    % VOICE
    \context {
        \Voice
        \remove Forbid_line_break_engraver
    }

    % TEXT SPANNER VOICE
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
        \override TextScript.staff-padding = 9.5
        \override TextScript.outside-staff-priority = 800

        \override TextSpanner.extra-offset = #'(0 . 8.5)
        \override TextSpanner.Y-extent = ##f

        \override TupletBracket.stencil = ##f

        \override TupletNumber.stencil = ##f
    }

    % STAFF
    \context {
        \Staff

        \override TimeSignature.break-visibility = #end-of-line-invisible
        \override TimeSignature.space-alist.clef = #'(extra-space . 0.5)
        \override TimeSignature.style = #'numbered
    }

    % STAFF
    \context {
        \Staff
        \accepts GlobalRests
        \accepts TextSpannerVoice

        \override Stem.length = 7

        \override TextScript.direction = #up

        \override TextSpanner.staff-padding = 2

        \override TupletBracket.staff-padding = 4

        instrumentName = \markup { \fontsize #3 Cello \hspace #3.5 }
    }

    % MUSIC CONTEXT
    \context {
        \ChoirStaff
        \name MusicContext
        \type Engraver_group
        \alias ChoirStaff
        systemStartDelimiter = #'SystemStartBar
    }

    % SCORE
    \context {
        \Score
        \accepts GlobalContext
        \accepts MusicContext
        \remove Bar_number_engraver
        \remove Mark_engraver
        \remove Metronome_mark_engraver
        \remove System_start_delimiter_engraver

        \override BarLine.hair-thickness = 0.5

        \override BarNumber.extra-offset = #'(-6 . -4)
        \override BarNumber.font-size = 1
        \override BarNumber.padding = 4

        \override Beam.breakable = ##t
        \override Beam.damping = 99

        \override DynamicLineSpanner.Y-extent = #'(-1.5 . 1.5)

        \override Glissando.breakable = ##t
        \override Glissando.thickness = 2

        \override MetronomeMark.extra-offset = #'(3 . -3)
        \override MetronomeMark.font-size = 3

        \override NoteCollision.merge-differently-dotted = ##t

        \override NoteColumn.ignore-collision = ##t

        \override SpacingSpanner.strict-grace-spacing = ##t
        \override SpacingSpanner.strict-note-spacing = ##t
        \override SpacingSpanner.uniform-stretching = ##t

        \override StemTremolo.beam-width = 1.5
        \override StemTremolo.slope = 0.5

        \override TextScript.font-name = #"Palatino"
        \override TextScript.Y-extent = #'(-1.5 . 1.5)

        \override TupletBracket.breakable = ##t
        \override TupletBracket.direction = #down
        \override TupletBracket.full-length-to-extent = ##f
        \override TupletBracket.padding = 1
        \override TupletNumber.font-size = 0.333
        \override TupletNumber.text = #tuplet-number::calc-fraction-text

        autoBeaming = ##f
        proportionalNotationDuration = #(ly:make-moment 1 24)
        tupletFullLength = ##t
    }
}
