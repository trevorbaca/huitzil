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

    % STAFF
    \context {
        \Staff
        \accepts GlobalRests

        \override TimeSignature.break-visibility = #end-of-line-invisible
        \override TimeSignature.space-alist.clef = #'(extra-space . 0.5)
        \override TimeSignature.style = #'numbered

        \override TupletBracket.staff-padding = 4
    }

    % RH STAFF
    \context {
        \Staff
        \name RHStaff
        \type Engraver_group
        \alias Staff
        \remove Time_signature_engraver
        \RemoveAllEmptyStaves

        \override Clef.stencil = ##f

        \override TupletBracket.direction = #up
        \override TupletBracket.staff-padding = 2
    }

    % PIANO STAFF 
    \context {
        \PianoStaff
        \accepts RHStaff
        \remove "Keep_alive_together_engraver" 
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

        \override Beam.breakable = ##t

        \override Glissando.breakable = ##t
        \override Glissando.thickness = 3

        \override NoteCollision.merge-differently-dotted = ##t

        \override NoteColumn.ignore-collision = ##t

        \override SpacingSpanner.strict-grace-spacing = ##t
        \override SpacingSpanner.strict-note-spacing = ##t
        \override SpacingSpanner.uniform-stretching = ##t

        \override TupletBracket.breakable = ##t
        \override TupletBracket.direction = #down
        \override TupletNumber.font-size = 1
        \override TupletNumber.text = #tuplet-number::calc-fraction-text

        autoBeaming = ##f
        proportionalNotationDuration = #(ly:make-moment 1 24)
        tupletFullLength = ##t
    }
}
