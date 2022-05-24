  %! baca.path.extern()
section_number.10.Global_Rests = {
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Global_Rests measure 1]
      %! baca._make_global_rests(1)
    R1 * 1/2
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Global_Rests measure 2]
      %! baca._make_global_rests(1)
    R1 * 1/2
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Global_Rests measure 3]
      %! baca._make_global_rests(1)
    R1 * 1/2
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Global_Rests measure 4]
      %! baca._make_global_rests(1)
    R1 * 1/2
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Global_Rests measure 5]
      %! baca._make_global_rests(1)
    R1 * 1/2
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Global_Rests measure 6]
      %! baca._make_global_rests(1)
    R1 * 1/2
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Global_Rests measure 7]
      %! baca._make_global_rests(1)
    R1 * 1/2
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Global_Rests measure 8]
      %! baca._make_global_rests(1)
    R1 * 1/2
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Global_Rests measure 9]
      %! baca._make_global_rests(1)
    R1 * 1/2
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Global_Rests measure 10]
      %! baca._make_global_rests(1)
    R1 * 3/2
    % CLOSING:
    % COMMANDS:

% CLOSE_BRACKETS:
  %! baca.make_global_context()
  %! baca.path.extern()
}


  %! baca.path.extern()
section_number.10.Global_Skips = {
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Global_Skips measure 1]
    % OPENING:
    % COMMANDS:
      %! REAPPLIED_TIME_SIGNATURE_COLOR
      %! baca._attach_color_literal(2)
    \baca-time-signature-color #'green4
      %! +SEGMENT
      %! EMPTY_START_BAR
      %! baca._attach_nonfirst_empty_start_bar()
    \bar ""
      %! REAPPLIED_TIME_SIGNATURE
      %! baca._make_global_skips(2)
      %! baca._reapply_persistent_indicators(1)
      %! baca._set_status_tag()
    \time 1/2
      %! baca._make_global_skips(1)
    s1 * 1/2
    % AFTER:
    % SPANNER_STARTS:
      %! EXPLICIT_METRONOME_MARK_WITH_COLOR
      %! baca._attach_metronome_marks(3)
    - \abjad-invisible-line
      %! EXPLICIT_METRONOME_MARK_WITH_COLOR
      %! baca._attach_metronome_marks(3)
    - \baca-metronome-mark-spanner-colored-left-text 2 0 1 "66" #'blue
      %! EXPLICIT_METRONOME_MARK_WITH_COLOR
      %! baca._attach_metronome_marks(3)
    \bacaStartTextSpanMM
      %! EXPLICIT_METRONOME_MARK
      %! baca._attach_metronome_marks(2)
      %! baca._set_status_tag()
    %@% - \abjad-invisible-line
      %! EXPLICIT_METRONOME_MARK
      %! baca._attach_metronome_marks(2)
      %! baca._set_status_tag()
    %@% - \baca-metronome-mark-spanner-left-text 2 0 1 "66"
      %! EXPLICIT_METRONOME_MARK
      %! baca._attach_metronome_marks(2)
      %! baca._set_status_tag()
    %@% \bacaStartTextSpanMM
      %! CLOCK_TIME
      %! baca._label_clock_time()
    - \baca-start-ct-left-only "[9'40'']"
      %! CLOCK_TIME
      %! baca._label_clock_time()
    \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
      %! baca._label_measure_numbers()
    - \baca-start-lmn-left-only "1"
      %! LOCAL_MEASURE_NUMBER
      %! baca._label_measure_numbers()
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
      %! baca._label_measure_numbers()
    %@% - \baca-start-mn-left-only "249"
      %! MEASURE_NUMBER
      %! baca._label_measure_numbers()
    %@% \bacaStartTextSpanMN
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Global_Skips measure 2]
      %! baca._make_global_skips(1)
    s1 * 1/2
    % AFTER:
    % SPANNER_STOPS:
      %! CLOCK_TIME
      %! baca._label_clock_time()
    \bacaStopTextSpanCT
      %! LOCAL_MEASURE_NUMBER
      %! baca._label_measure_numbers()
    \bacaStopTextSpanLMN
      %! MEASURE_NUMBER
      %! baca._label_measure_numbers()
    %@% \bacaStopTextSpanMN
    % SPANNER_STARTS:
      %! CLOCK_TIME
      %! baca._label_clock_time()
    - \baca-start-ct-left-only "[9'41'']"
      %! CLOCK_TIME
      %! baca._label_clock_time()
    \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
      %! baca._label_measure_numbers()
    - \baca-start-lmn-left-only "2"
      %! LOCAL_MEASURE_NUMBER
      %! baca._label_measure_numbers()
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
      %! baca._label_measure_numbers()
    %@% - \baca-start-mn-left-only "250"
      %! MEASURE_NUMBER
      %! baca._label_measure_numbers()
    %@% \bacaStartTextSpanMN
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Global_Skips measure 3]
      %! baca._make_global_skips(1)
    s1 * 1/2
    % AFTER:
    % SPANNER_STOPS:
      %! CLOCK_TIME
      %! baca._label_clock_time()
    \bacaStopTextSpanCT
      %! LOCAL_MEASURE_NUMBER
      %! baca._label_measure_numbers()
    \bacaStopTextSpanLMN
      %! MEASURE_NUMBER
      %! baca._label_measure_numbers()
    %@% \bacaStopTextSpanMN
    % SPANNER_STARTS:
      %! CLOCK_TIME
      %! baca._label_clock_time()
    - \baca-start-ct-left-only "[9'43'']"
      %! CLOCK_TIME
      %! baca._label_clock_time()
    \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
      %! baca._label_measure_numbers()
    - \baca-start-lmn-left-only "3"
      %! LOCAL_MEASURE_NUMBER
      %! baca._label_measure_numbers()
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
      %! baca._label_measure_numbers()
    %@% - \baca-start-mn-left-only "251"
      %! MEASURE_NUMBER
      %! baca._label_measure_numbers()
    %@% \bacaStartTextSpanMN
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Global_Skips measure 4]
      %! baca._make_global_skips(1)
    s1 * 1/2
    % AFTER:
    % SPANNER_STOPS:
      %! CLOCK_TIME
      %! baca._label_clock_time()
    \bacaStopTextSpanCT
      %! LOCAL_MEASURE_NUMBER
      %! baca._label_measure_numbers()
    \bacaStopTextSpanLMN
      %! MEASURE_NUMBER
      %! baca._label_measure_numbers()
    %@% \bacaStopTextSpanMN
    % SPANNER_STARTS:
      %! CLOCK_TIME
      %! baca._label_clock_time()
    - \baca-start-ct-left-only "[9'45'']"
      %! CLOCK_TIME
      %! baca._label_clock_time()
    \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
      %! baca._label_measure_numbers()
    - \baca-start-lmn-left-only "4"
      %! LOCAL_MEASURE_NUMBER
      %! baca._label_measure_numbers()
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
      %! baca._label_measure_numbers()
    %@% - \baca-start-mn-left-only "252"
      %! MEASURE_NUMBER
      %! baca._label_measure_numbers()
    %@% \bacaStartTextSpanMN
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Global_Skips measure 5]
      %! baca._make_global_skips(1)
    s1 * 1/2
    % AFTER:
    % SPANNER_STOPS:
      %! CLOCK_TIME
      %! baca._label_clock_time()
    \bacaStopTextSpanCT
      %! LOCAL_MEASURE_NUMBER
      %! baca._label_measure_numbers()
    \bacaStopTextSpanLMN
      %! MEASURE_NUMBER
      %! baca._label_measure_numbers()
    %@% \bacaStopTextSpanMN
    % SPANNER_STARTS:
      %! CLOCK_TIME
      %! baca._label_clock_time()
    - \baca-start-ct-left-only "[9'47'']"
      %! CLOCK_TIME
      %! baca._label_clock_time()
    \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
      %! baca._label_measure_numbers()
    - \baca-start-lmn-left-only "5"
      %! LOCAL_MEASURE_NUMBER
      %! baca._label_measure_numbers()
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
      %! baca._label_measure_numbers()
    %@% - \baca-start-mn-left-only "253"
      %! MEASURE_NUMBER
      %! baca._label_measure_numbers()
    %@% \bacaStartTextSpanMN
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Global_Skips measure 6]
      %! baca._make_global_skips(1)
    s1 * 1/2
    % AFTER:
    % SPANNER_STOPS:
      %! CLOCK_TIME
      %! baca._label_clock_time()
    \bacaStopTextSpanCT
      %! LOCAL_MEASURE_NUMBER
      %! baca._label_measure_numbers()
    \bacaStopTextSpanLMN
      %! MEASURE_NUMBER
      %! baca._label_measure_numbers()
    %@% \bacaStopTextSpanMN
    % SPANNER_STARTS:
      %! CLOCK_TIME
      %! baca._label_clock_time()
    - \baca-start-ct-left-only "[9'49'']"
      %! CLOCK_TIME
      %! baca._label_clock_time()
    \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
      %! baca._label_measure_numbers()
    - \baca-start-lmn-left-only "6"
      %! LOCAL_MEASURE_NUMBER
      %! baca._label_measure_numbers()
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
      %! baca._label_measure_numbers()
    %@% - \baca-start-mn-left-only "254"
      %! MEASURE_NUMBER
      %! baca._label_measure_numbers()
    %@% \bacaStartTextSpanMN
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Global_Skips measure 7]
      %! baca._make_global_skips(1)
    s1 * 1/2
    % AFTER:
    % SPANNER_STOPS:
      %! CLOCK_TIME
      %! baca._label_clock_time()
    \bacaStopTextSpanCT
      %! LOCAL_MEASURE_NUMBER
      %! baca._label_measure_numbers()
    \bacaStopTextSpanLMN
      %! MEASURE_NUMBER
      %! baca._label_measure_numbers()
    %@% \bacaStopTextSpanMN
    % SPANNER_STARTS:
      %! CLOCK_TIME
      %! baca._label_clock_time()
    - \baca-start-ct-left-only "[9'50'']"
      %! CLOCK_TIME
      %! baca._label_clock_time()
    \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
      %! baca._label_measure_numbers()
    - \baca-start-lmn-left-only "7"
      %! LOCAL_MEASURE_NUMBER
      %! baca._label_measure_numbers()
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
      %! baca._label_measure_numbers()
    %@% - \baca-start-mn-left-only "255"
      %! MEASURE_NUMBER
      %! baca._label_measure_numbers()
    %@% \bacaStartTextSpanMN
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Global_Skips measure 8]
      %! baca._make_global_skips(1)
    s1 * 1/2
    % AFTER:
    % SPANNER_STOPS:
      %! CLOCK_TIME
      %! baca._label_clock_time()
    \bacaStopTextSpanCT
      %! LOCAL_MEASURE_NUMBER
      %! baca._label_measure_numbers()
    \bacaStopTextSpanLMN
      %! MEASURE_NUMBER
      %! baca._label_measure_numbers()
    %@% \bacaStopTextSpanMN
    % SPANNER_STARTS:
      %! CLOCK_TIME
      %! baca._label_clock_time()
    - \baca-start-ct-left-only "[9'52'']"
      %! CLOCK_TIME
      %! baca._label_clock_time()
    \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
      %! baca._label_measure_numbers()
    - \baca-start-lmn-left-only "8"
      %! LOCAL_MEASURE_NUMBER
      %! baca._label_measure_numbers()
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
      %! baca._label_measure_numbers()
    %@% - \baca-start-mn-left-only "256"
      %! MEASURE_NUMBER
      %! baca._label_measure_numbers()
    %@% \bacaStartTextSpanMN
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Global_Skips measure 9]
      %! baca._make_global_skips(1)
    s1 * 1/2
    % AFTER:
    % SPANNER_STOPS:
      %! CLOCK_TIME
      %! baca._label_clock_time()
    \bacaStopTextSpanCT
      %! LOCAL_MEASURE_NUMBER
      %! baca._label_measure_numbers()
    \bacaStopTextSpanLMN
      %! MEASURE_NUMBER
      %! baca._label_measure_numbers()
    %@% \bacaStopTextSpanMN
    % SPANNER_STARTS:
      %! CLOCK_TIME
      %! baca._label_clock_time()
    - \baca-start-ct-both "[9'54'']" "[9'56'']"
      %! CLOCK_TIME
      %! baca._label_clock_time()
    \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
      %! baca._label_measure_numbers()
    - \baca-start-lmn-left-only "9"
      %! LOCAL_MEASURE_NUMBER
      %! baca._label_measure_numbers()
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
      %! baca._label_measure_numbers()
    %@% - \baca-start-mn-left-only "257"
      %! MEASURE_NUMBER
      %! baca._label_measure_numbers()
    %@% \bacaStartTextSpanMN
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Global_Skips measure 10]
    % OPENING:
    % COMMANDS:
      %! EXPLICIT_TIME_SIGNATURE_COLOR
      %! baca._attach_color_literal(2)
    \baca-time-signature-color #'blue
      %! EXPLICIT_TIME_SIGNATURE
      %! baca._make_global_skips(2)
      %! baca._set_status_tag()
    \time 3/2
      %! baca._make_global_skips(1)
    s1 * 3/2
    % AFTER:
    % SPANNER_STOPS:
      %! CLOCK_TIME
      %! baca._label_clock_time()
    \bacaStopTextSpanCT
      %! LOCAL_MEASURE_NUMBER
      %! baca._label_measure_numbers()
    \bacaStopTextSpanLMN
      %! EOS_STOP_MM_SPANNER
      %! baca._attach_metronome_marks(4)
    \bacaStopTextSpanMM
      %! MEASURE_NUMBER
      %! baca._label_measure_numbers()
    %@% \bacaStopTextSpanMN
    % COMMANDS:
      %! baca.IndicatorCommand._call()
      %! baca.bar_line()
    \bar "|."
    % CLOSING:
    % COMMANDS:

% CLOSE_BRACKETS:
  %! baca.make_global_context()
  %! baca.path.extern()
}


  %! baca.path.extern()
section_number.10.RH.Music_Voice = {
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [RH.Music_Voice measure 1]
    % BEFORE:
    % COMMANDS:
      %! baca.IndicatorCommand._call()
      %! baca.literal()
    <> \stopTextSpan
      %! baca.IndicatorCommand._call()
      %! baca.literal()
    \override DynamicLineSpanner.staff-padding = 7
      %! -PARTS
      %! EXPLICIT_BAR_EXTENT
      %! REAPPLIED_BAR_EXTENT
      %! baca._reapply_persistent_indicators(3)
      %! baca._set_status_tag()
    \override Staff.BarLine.bar-extent = #'(-2 . 4)
      %! baca.OverrideCommand._call(1)
      %! baca.text_script_parent_alignment_x()
    \override TextScript.parent-alignment-X = 0
      %! baca.OverrideCommand._call(1)
      %! baca.text_script_self_alignment_x()
    \override TextScript.self-alignment-X = 0
      %! baca.OverrideCommand._call(1)
      %! baca.text_script_staff_padding()
    \override TextScript.staff-padding = 4
      %! REAPPLIED_STAFF_LINES
      %! baca._reapply_persistent_indicators(3)
      %! baca._set_status_tag()
    \stopStaff
      %! REAPPLIED_STAFF_LINES
      %! baca._reapply_persistent_indicators(3)
      %! baca._set_status_tag()
    \once \override RHStaff.StaffSymbol.line-count = 7
      %! REAPPLIED_STAFF_LINES
      %! baca._reapply_persistent_indicators(3)
      %! baca._set_status_tag()
    \startStaff
      %! +SEGMENT
      %! baca.IndicatorCommand._call()
      %! baca.literal()
    \stopStaff
      %! +SEGMENT
      %! baca.IndicatorCommand._call()
      %! baca.literal()
    \once \override RHStaff.StaffSymbol.line-positions = #'(8.2 8 7.8 -5.8 -6 -6.2)
      %! +SEGMENT
      %! baca.IndicatorCommand._call()
      %! baca.literal()
    \startStaff
    % OPENING:
    % COMMANDS:
      %! REAPPLIED_CLEF
      %! baca._reapply_persistent_indicators(3)
      %! baca._set_status_tag()
    \clef "percussion"
      %! REAPPLIED_CLEF_COLOR
      %! baca._attach_color_literal(2)
    \once \override RHStaff.Clef.color = #(x11-color 'green4)
      %! REAPPLIED_STAFF_LINES_COLOR
      %! baca._attach_color_literal(2)
    \once \override RHStaff.StaffSymbol.color = #(x11-color 'green4)
      %! REAPPLIED_CLEF_COLOR_CANCELLATION
      %! baca._attach_color_literal(1)
    %@% \override RHStaff.Clef.color = ##f
      %! REAPPLIED_CLEF
      %! baca._reapply_persistent_indicators(3)
      %! baca._set_status_tag()
      %! baca.treat_persistent_wrapper(2)
    \set RHStaff.forceClef = ##t
    d''2
    % AFTER:
    % STEM_TREMOLOS:
      %! baca.IndicatorCommand._call()
      %! baca.stem_tremolo()
    :32
    % ARTICULATIONS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    \mp
    % MARKUP:
      %! baca.IndicatorCommand._call()
      %! baca.markup()
    _ \baca-mpz-markup
    % SPANNER_STARTS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    - \tweak to-barline ##t
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    \>
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.text_spanner()
    - \tweak staff-padding 6
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.text_spanner()
    - \abjad-dashed-line-with-arrow
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.text_spanner()
    - \baca-text-spanner-left-text "larg."
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.text_spanner()
    \startTextSpan
      %! baca._attach_shadow_tie_indicators()
    - \tweak stencil ##f
      %! baca._attach_shadow_tie_indicators()
    ~
    % ABSOLUTE_AFTER:
    % COMMANDS:
      %! REAPPLIED_CLEF_REDRAW_COLOR
      %! baca._attach_color_literal(2)
    \override RHStaff.Clef.color = #(x11-color 'OliveDrab)
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [RH.Music_Voice measure 2]
    d''2
    % AFTER:
    % STEM_TREMOLOS:
      %! baca.IndicatorCommand._call()
      %! baca.stem_tremolo()
    :32
    % ARTICULATIONS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    \pp
    % SPANNER_STOPS:
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca.text_spanner()
    \stopTextSpan
    % SPANNER_STARTS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    - \tweak to-barline ##t
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    \<
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.text_spanner()
    - \tweak staff-padding 6
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.text_spanner()
    - \abjad-dashed-line-with-arrow
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.text_spanner()
    - \baca-text-spanner-left-text "strett."
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.text_spanner()
    \startTextSpan
      %! baca._attach_shadow_tie_indicators()
    - \tweak stencil ##f
      %! baca._attach_shadow_tie_indicators()
    ~
      %! baca.IndicatorCommand._call()
      %! baca.repeat_tie()
    \repeatTie
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [RH.Music_Voice measure 3]
    d''2
    % AFTER:
    % STEM_TREMOLOS:
      %! baca.IndicatorCommand._call()
      %! baca.stem_tremolo()
    :32
    % ARTICULATIONS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    \mp
    % SPANNER_STOPS:
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca.text_spanner()
    \stopTextSpan
    % SPANNER_STARTS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    - \tweak to-barline ##t
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    \>
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.text_spanner()
    - \tweak staff-padding 6
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.text_spanner()
    - \abjad-dashed-line-with-arrow
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.text_spanner()
    - \baca-text-spanner-left-text "larg."
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.text_spanner()
    \startTextSpan
      %! baca._attach_shadow_tie_indicators()
    - \tweak stencil ##f
      %! baca._attach_shadow_tie_indicators()
    ~
      %! baca.IndicatorCommand._call()
      %! baca.repeat_tie()
    \repeatTie
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [RH.Music_Voice measure 4]
    d''2
    % AFTER:
    % STEM_TREMOLOS:
      %! baca.IndicatorCommand._call()
      %! baca.stem_tremolo()
    :32
    % ARTICULATIONS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    \pp
    % SPANNER_STOPS:
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca.text_spanner()
    \stopTextSpan
    % SPANNER_STARTS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    - \tweak to-barline ##t
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    \<
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.text_spanner()
    - \tweak staff-padding 6
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.text_spanner()
    - \abjad-dashed-line-with-arrow
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.text_spanner()
    - \baca-text-spanner-left-text "strett."
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.text_spanner()
    \startTextSpan
      %! baca._attach_shadow_tie_indicators()
    - \tweak stencil ##f
      %! baca._attach_shadow_tie_indicators()
    ~
      %! baca.IndicatorCommand._call()
      %! baca.repeat_tie()
    \repeatTie
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [RH.Music_Voice measure 5]
    d''2
    % AFTER:
    % STEM_TREMOLOS:
      %! baca.IndicatorCommand._call()
      %! baca.stem_tremolo()
    :32
    % ARTICULATIONS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    \mp
    % SPANNER_STOPS:
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca.text_spanner()
    \stopTextSpan
    % SPANNER_STARTS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    - \tweak to-barline ##t
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    \>
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.text_spanner()
    - \tweak staff-padding 6
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.text_spanner()
    - \abjad-dashed-line-with-arrow
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.text_spanner()
    - \baca-text-spanner-left-text "larg."
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.text_spanner()
    \startTextSpan
      %! baca._attach_shadow_tie_indicators()
    - \tweak stencil ##f
      %! baca._attach_shadow_tie_indicators()
    ~
      %! baca.IndicatorCommand._call()
      %! baca.repeat_tie()
    \repeatTie
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [RH.Music_Voice measure 6]
    d''2
    % AFTER:
    % STEM_TREMOLOS:
      %! baca.IndicatorCommand._call()
      %! baca.stem_tremolo()
    :32
    % ARTICULATIONS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    \pp
    % SPANNER_STOPS:
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca.text_spanner()
    \stopTextSpan
    % SPANNER_STARTS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    - \tweak to-barline ##t
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    \<
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.text_spanner()
    - \tweak staff-padding 6
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.text_spanner()
    - \abjad-dashed-line-with-arrow
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.text_spanner()
    - \baca-text-spanner-left-text "strett."
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.text_spanner()
    \startTextSpan
      %! baca._attach_shadow_tie_indicators()
    - \tweak stencil ##f
      %! baca._attach_shadow_tie_indicators()
    ~
      %! baca.IndicatorCommand._call()
      %! baca.repeat_tie()
    \repeatTie
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [RH.Music_Voice measure 7]
    d''2
    % AFTER:
    % STEM_TREMOLOS:
      %! baca.IndicatorCommand._call()
      %! baca.stem_tremolo()
    :32
    % ARTICULATIONS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    \mp
    % SPANNER_STOPS:
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca.text_spanner()
    \stopTextSpan
    % SPANNER_STARTS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    - \tweak to-barline ##t
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    \>
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.text_spanner()
    - \tweak staff-padding 6
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.text_spanner()
    - \abjad-dashed-line-with-arrow
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.text_spanner()
    - \baca-text-spanner-left-text "larg."
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.text_spanner()
    \startTextSpan
      %! baca._attach_shadow_tie_indicators()
    - \tweak stencil ##f
      %! baca._attach_shadow_tie_indicators()
    ~
      %! baca.IndicatorCommand._call()
      %! baca.repeat_tie()
    \repeatTie
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [RH.Music_Voice measure 8]
    d''2
    % AFTER:
    % STEM_TREMOLOS:
      %! baca.IndicatorCommand._call()
      %! baca.stem_tremolo()
    :32
    % ARTICULATIONS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    \pp
    % SPANNER_STOPS:
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca.text_spanner()
    \stopTextSpan
    % SPANNER_STARTS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    - \tweak to-barline ##t
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    \<
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.text_spanner()
    - \tweak staff-padding 6
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.text_spanner()
    - \abjad-dashed-line-with-arrow
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.text_spanner()
    - \baca-text-spanner-left-text "strett."
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.text_spanner()
    \startTextSpan
      %! baca._attach_shadow_tie_indicators()
    - \tweak stencil ##f
      %! baca._attach_shadow_tie_indicators()
    ~
      %! baca.IndicatorCommand._call()
      %! baca.repeat_tie()
    \repeatTie
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [RH.Music_Voice measure 9]
    d''2
    % AFTER:
    % STEM_TREMOLOS:
      %! baca.IndicatorCommand._call()
      %! baca.stem_tremolo()
    :32
    % ARTICULATIONS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    \mp
    % SPANNER_STOPS:
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca.text_spanner()
    \stopTextSpan
    % SPANNER_STARTS:
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.text_spanner()
    - \tweak bound-details.right.padding 0.5
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.text_spanner()
    - \tweak bound-details.right.stencil-align-dir-y #center
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.text_spanner()
    - \tweak staff-padding 6
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.text_spanner()
    - \abjad-dashed-line-with-arrow
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.text_spanner()
    - \baca-text-spanner-left-text "larg."
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.text_spanner()
    - \baca-text-spanner-right-text "strett."
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca.text_spanner()
    \startTextSpan
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    - \tweak to-barline ##t
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    \>
      %! baca._attach_shadow_tie_indicators()
    - \tweak stencil ##f
      %! baca._attach_shadow_tie_indicators()
    ~
      %! baca.IndicatorCommand._call()
      %! baca.repeat_tie()
    \repeatTie
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [RH.Music_Voice measure 10]
    d''1.
    % AFTER:
    % STEM_TREMOLOS:
      %! baca.IndicatorCommand._call()
      %! baca.stem_tremolo()
    :32
    % ARTICULATIONS:
      %! EXPLICIT_DYNAMIC_COLOR
      %! baca.treat_persistent_wrapper()
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    - \tweak color #(x11-color 'blue)
      %! EXPLICIT_DYNAMIC
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca._set_status_tag()
      %! baca.hairpin()
    \pp
    % SPANNER_STOPS:
      %! SPANNER_STOP
      %! baca.PiecewiseCommand._call(2)
      %! baca.text_spanner()
    \stopTextSpan
    % SPANNER_STARTS:
      %! baca.IndicatorCommand._call()
      %! baca.repeat_tie()
    \repeatTie
    % COMMANDS:
      %! baca.OverrideCommand._call(2)
      %! baca.text_script_parent_alignment_x()
    \revert TextScript.parent-alignment-X
      %! baca.OverrideCommand._call(2)
      %! baca.text_script_self_alignment_x()
    \revert TextScript.self-alignment-X
      %! baca.OverrideCommand._call(2)
      %! baca.text_script_staff_padding()
    \revert TextScript.staff-padding
    % CLOSING:
    % COMMANDS:

% CLOSE_BRACKETS:
  %! huitzil.make_empty_score()
  %! baca.path.extern()
}


  %! baca.path.extern()
section_number.10.RH.Music_Staff = {
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % OPEN_BRACKETS:
      %! huitzil.make_empty_score()
    \context Voice = "RH.Music_Voice"
      %! huitzil.make_empty_score()
      %! baca.path.extern()
    { \section_number.10.RH.Music_Voice }
    % CLOSING:
    % COMMANDS:

% CLOSE_BRACKETS:
  %! huitzil.make_empty_score()
  %! baca.path.extern()
}


  %! baca.path.extern()
section_number.10.Cello.Music_Voice = {
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Cello.Music_Voice measure 1]
    % BEFORE:
    % COMMANDS:
      %! baca.OverrideCommand._call(1)
      %! baca.mmrest_transparent()
    \override MultiMeasureRest.transparent = ##t
      %! baca.OverrideCommand._call(1)
      %! baca.bar_line_transparent()
    \override Score.BarLine.transparent = ##t
      %! baca.OverrideCommand._call(1)
      %! baca.span_bar_transparent()
    \override Score.SpanBar.transparent = ##t
      %! baca.OverrideCommand._call(1)
      %! baca.time_signature_stencil_false()
    \override Score.TimeSignature.stencil = ##f
      %! +SEGMENT
      %! baca.IndicatorCommand._call()
      %! baca.literal()
    \stopStaff
      %! +SEGMENT
      %! baca.IndicatorCommand._call()
      %! baca.literal()
    \once \override Staff.StaffSymbol.line-positions = #'(4 -4)
      %! +SEGMENT
      %! baca.IndicatorCommand._call()
      %! baca.literal()
    \startStaff
    % OPENING:
    % COMMANDS:
      %! REAPPLIED_CLEF
      %! baca._reapply_persistent_indicators(3)
      %! baca._set_status_tag()
    \clef "treble"
      %! REAPPLIED_CLEF_COLOR
      %! baca._attach_color_literal(2)
    \once \override Staff.Clef.color = #(x11-color 'green4)
      %! REAPPLIED_CLEF_COLOR_CANCELLATION
      %! baca._attach_color_literal(1)
    %@% \override Staff.Clef.color = ##f
      %! REAPPLIED_CLEF
      %! baca._reapply_persistent_indicators(3)
      %! baca._set_status_tag()
      %! baca.treat_persistent_wrapper(2)
    \set Staff.forceClef = ##t
      %! baca._make_mmrests_flat()
    R1 * 1/2
    % AFTER:
    % MARKUP:
      %! DURATION_MULTIPLIER
      %! baca._label_duration_multipliers()
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
      %! REAPPLIED_INSTRUMENT_ALERT
      %! baca._attach_latent_indicator_alert()
    ^ \baca-reapplied-indicator-markup "(“Cello”)"
    % ABSOLUTE_AFTER:
    % COMMANDS:
      %! REAPPLIED_CLEF_REDRAW_COLOR
      %! baca._attach_color_literal(2)
    \override Staff.Clef.color = #(x11-color 'OliveDrab)
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Cello.Music_Voice measure 2]
      %! baca._make_mmrests_flat()
    R1 * 1/2
    % AFTER:
    % MARKUP:
      %! DURATION_MULTIPLIER
      %! baca._label_duration_multipliers()
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Cello.Music_Voice measure 3]
      %! baca._make_mmrests_flat()
    R1 * 1/2
    % AFTER:
    % MARKUP:
      %! DURATION_MULTIPLIER
      %! baca._label_duration_multipliers()
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Cello.Music_Voice measure 4]
      %! baca._make_mmrests_flat()
    R1 * 1/2
    % AFTER:
    % MARKUP:
      %! DURATION_MULTIPLIER
      %! baca._label_duration_multipliers()
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Cello.Music_Voice measure 5]
      %! baca._make_mmrests_flat()
    R1 * 1/2
    % AFTER:
    % MARKUP:
      %! DURATION_MULTIPLIER
      %! baca._label_duration_multipliers()
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Cello.Music_Voice measure 6]
      %! baca._make_mmrests_flat()
    R1 * 1/2
    % AFTER:
    % MARKUP:
      %! DURATION_MULTIPLIER
      %! baca._label_duration_multipliers()
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Cello.Music_Voice measure 7]
      %! baca._make_mmrests_flat()
    R1 * 1/2
    % AFTER:
    % MARKUP:
      %! DURATION_MULTIPLIER
      %! baca._label_duration_multipliers()
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Cello.Music_Voice measure 8]
      %! baca._make_mmrests_flat()
    R1 * 1/2
    % AFTER:
    % MARKUP:
      %! DURATION_MULTIPLIER
      %! baca._label_duration_multipliers()
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Cello.Music_Voice measure 9]
      %! baca._make_mmrests_flat()
    R1 * 1/2
    % AFTER:
    % MARKUP:
      %! DURATION_MULTIPLIER
      %! baca._label_duration_multipliers()
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    % ABSOLUTE_BEFORE:
    % COMMANDS:

      %! baca._comment_measure_numbers()
    % [Cello.Music_Voice measure 10]
    % BEFORE:
    % COMMANDS:
      %! baca.IndicatorCommand._call()
      %! baca.literal()
    \override Score.BarLine.X-extent = #'(0 . 8)
      %! baca.IndicatorCommand._call()
      %! baca.literal()
    \override Score.BarLine.extra-offset = #'(8 . 0)
      %! baca.IndicatorCommand._call()
      %! baca.literal()
    \override Score.RehearsalMark.extra-offset = #'(4 . 0)
      %! baca.IndicatorCommand._call()
      %! baca.literal()
    \override Score.SpanBar.extra-offset = #'(8 . 0)
      %! baca._make_mmrests_flat()
    R1 * 3/2
    % AFTER:
    % MARKUP:
      %! DURATION_MULTIPLIER
      %! baca._label_duration_multipliers()
    %@% ^ \baca-duration-multiplier-markup #"3" #"2"
    % COMMANDS:
      %! baca.IndicatorCommand._call()
      %! baca.literal()
    \once \override Score.RehearsalMark.direction = #down
      %! baca.IndicatorCommand._call()
      %! baca.literal()
    \once \override Score.RehearsalMark.padding = 4
      %! baca.IndicatorCommand._call()
      %! baca.literal()
    \mark \huitzil-colophon-markup
      %! baca.OverrideCommand._call(2)
      %! baca.mmrest_transparent()
    \revert MultiMeasureRest.transparent
      %! baca.OverrideCommand._call(2)
      %! baca.bar_line_transparent()
    \revert Score.BarLine.transparent
      %! baca.OverrideCommand._call(2)
      %! baca.span_bar_transparent()
    \revert Score.SpanBar.transparent
      %! baca.OverrideCommand._call(2)
      %! baca.time_signature_stencil_false()
    \revert Score.TimeSignature.stencil
    % CLOSING:
    % COMMANDS:

% CLOSE_BRACKETS:
  %! huitzil.make_empty_score()
  %! baca.path.extern()
}


  %! baca.path.extern()
section_number.10.Cello.Music_Staff = {
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % OPEN_BRACKETS:
      %! huitzil.make_empty_score()
    \context Voice = "Cello.Music_Voice"
      %! huitzil.make_empty_score()
      %! baca.path.extern()
    { \section_number.10.Cello.Music_Voice }
    % CLOSING:
    % COMMANDS:

% CLOSE_BRACKETS:
  %! huitzil.make_empty_score()
  %! baca.path.extern()
}
