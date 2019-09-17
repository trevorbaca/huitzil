J_Global_Rests = {                                                             %! abjad.Path.extern

    % [J Global_Rests measure 249 / measure 1]                                 %! baca.SegmentMaker._comment_measure_numbers
    R1 * 1/2                                                                   %! baca.SegmentMaker._make_global_rests(1)

    % [J Global_Rests measure 250 / measure 2]                                 %! baca.SegmentMaker._comment_measure_numbers
    R1 * 1/2                                                                   %! baca.SegmentMaker._make_global_rests(1)

    % [J Global_Rests measure 251 / measure 3]                                 %! baca.SegmentMaker._comment_measure_numbers
    R1 * 1/2                                                                   %! baca.SegmentMaker._make_global_rests(1)

    % [J Global_Rests measure 252 / measure 4]                                 %! baca.SegmentMaker._comment_measure_numbers
    R1 * 1/2                                                                   %! baca.SegmentMaker._make_global_rests(1)

    % [J Global_Rests measure 253 / measure 5]                                 %! baca.SegmentMaker._comment_measure_numbers
    R1 * 1/2                                                                   %! baca.SegmentMaker._make_global_rests(1)

    % [J Global_Rests measure 254 / measure 6]                                 %! baca.SegmentMaker._comment_measure_numbers
    R1 * 1/2                                                                   %! baca.SegmentMaker._make_global_rests(1)

    % [J Global_Rests measure 255 / measure 7]                                 %! baca.SegmentMaker._comment_measure_numbers
    R1 * 1/2                                                                   %! baca.SegmentMaker._make_global_rests(1)

    % [J Global_Rests measure 256 / measure 8]                                 %! baca.SegmentMaker._comment_measure_numbers
    R1 * 1/2                                                                   %! baca.SegmentMaker._make_global_rests(1)

    % [J Global_Rests measure 257 / measure 9]                                 %! baca.SegmentMaker._comment_measure_numbers
    R1 * 1/2                                                                   %! baca.SegmentMaker._make_global_rests(1)

    % [J Global_Rests measure 258 / measure 10]                                %! baca.SegmentMaker._comment_measure_numbers
    R1 * 3/2                                                                   %! baca.SegmentMaker._make_global_rests(1)

}                                                                              %! abjad.Path.extern


J_Global_Skips = {                                                             %! abjad.Path.extern

    % [J Global_Skips measure 249 / measure 1]                                 %! baca.SegmentMaker._comment_measure_numbers
    \time 1/2                                                                  %! REAPPLIED_TIME_SIGNATURE:_set_status_tag:_reapply_persistent_indicators(1):baca.SegmentMaker._make_global_skips(2)
    \bar ""                                                                    %! baca.SegmentMaker._make_global_skips(4):+SEGMENT:EMPTY_START_BAR
    \baca-time-signature-color #'green4                                        %! REAPPLIED_TIME_SIGNATURE_COLOR:baca.SegmentMaker._attach_color_literal(2)
    s1 * 1/2                                                                   %! baca.SegmentMaker._make_global_skips(1)
    - \baca-start-lmn-left-only "1"                                            %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER
%@% - \baca-start-mn-left-only "249"                                           %! MEASURE_NUMBER
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER
%@% - \abjad-invisible-line                                                    %! EXPLICIT_METRONOME_MARK:_set_status_tag:baca.SegmentMaker._attach_metronome_marks(2)
%@% - \baca-metronome-mark-spanner-left-text 2 0 1 "66"                        %! EXPLICIT_METRONOME_MARK:_set_status_tag:baca.SegmentMaker._attach_metronome_marks(2)
%@% \bacaStartTextSpanMM                                                       %! EXPLICIT_METRONOME_MARK:_set_status_tag:baca.SegmentMaker._attach_metronome_marks(2)
    - \abjad-invisible-line                                                    %! EXPLICIT_METRONOME_MARK_WITH_COLOR:baca.SegmentMaker._attach_metronome_marks(3)
    - \baca-metronome-mark-spanner-colored-left-text 2 0 1 "66" #'blue         %! EXPLICIT_METRONOME_MARK_WITH_COLOR:baca.SegmentMaker._attach_metronome_marks(3)
    \bacaStartTextSpanMM                                                       %! EXPLICIT_METRONOME_MARK_WITH_COLOR:baca.SegmentMaker._attach_metronome_marks(3)
    - \baca-start-ct-left-only "[9'40'']"                                      %! CLOCK_TIME
    \bacaStartTextSpanCT                                                       %! CLOCK_TIME

    % [J Global_Skips measure 250 / measure 2]                                 %! baca.SegmentMaker._comment_measure_numbers
    s1 * 1/2                                                                   %! baca.SegmentMaker._make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER
    \bacaStopTextSpanCT                                                        %! CLOCK_TIME
    - \baca-start-lmn-left-only "2"                                            %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER
%@% - \baca-start-mn-left-only "250"                                           %! MEASURE_NUMBER
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER
    - \baca-start-ct-left-only "[9'41'']"                                      %! CLOCK_TIME
    \bacaStartTextSpanCT                                                       %! CLOCK_TIME

    % [J Global_Skips measure 251 / measure 3]                                 %! baca.SegmentMaker._comment_measure_numbers
    s1 * 1/2                                                                   %! baca.SegmentMaker._make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER
    \bacaStopTextSpanCT                                                        %! CLOCK_TIME
    - \baca-start-lmn-left-only "3"                                            %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER
%@% - \baca-start-mn-left-only "251"                                           %! MEASURE_NUMBER
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER
    - \baca-start-ct-left-only "[9'43'']"                                      %! CLOCK_TIME
    \bacaStartTextSpanCT                                                       %! CLOCK_TIME

    % [J Global_Skips measure 252 / measure 4]                                 %! baca.SegmentMaker._comment_measure_numbers
    s1 * 1/2                                                                   %! baca.SegmentMaker._make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER
    \bacaStopTextSpanCT                                                        %! CLOCK_TIME
    - \baca-start-lmn-left-only "4"                                            %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER
%@% - \baca-start-mn-left-only "252"                                           %! MEASURE_NUMBER
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER
    - \baca-start-ct-left-only "[9'45'']"                                      %! CLOCK_TIME
    \bacaStartTextSpanCT                                                       %! CLOCK_TIME

    % [J Global_Skips measure 253 / measure 5]                                 %! baca.SegmentMaker._comment_measure_numbers
    s1 * 1/2                                                                   %! baca.SegmentMaker._make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER
    \bacaStopTextSpanCT                                                        %! CLOCK_TIME
    - \baca-start-lmn-left-only "5"                                            %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER
%@% - \baca-start-mn-left-only "253"                                           %! MEASURE_NUMBER
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER
    - \baca-start-ct-left-only "[9'47'']"                                      %! CLOCK_TIME
    \bacaStartTextSpanCT                                                       %! CLOCK_TIME

    % [J Global_Skips measure 254 / measure 6]                                 %! baca.SegmentMaker._comment_measure_numbers
    s1 * 1/2                                                                   %! baca.SegmentMaker._make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER
    \bacaStopTextSpanCT                                                        %! CLOCK_TIME
    - \baca-start-lmn-left-only "6"                                            %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER
%@% - \baca-start-mn-left-only "254"                                           %! MEASURE_NUMBER
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER
    - \baca-start-ct-left-only "[9'49'']"                                      %! CLOCK_TIME
    \bacaStartTextSpanCT                                                       %! CLOCK_TIME

    % [J Global_Skips measure 255 / measure 7]                                 %! baca.SegmentMaker._comment_measure_numbers
    s1 * 1/2                                                                   %! baca.SegmentMaker._make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER
    \bacaStopTextSpanCT                                                        %! CLOCK_TIME
    - \baca-start-lmn-left-only "7"                                            %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER
%@% - \baca-start-mn-left-only "255"                                           %! MEASURE_NUMBER
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER
    - \baca-start-ct-left-only "[9'50'']"                                      %! CLOCK_TIME
    \bacaStartTextSpanCT                                                       %! CLOCK_TIME

    % [J Global_Skips measure 256 / measure 8]                                 %! baca.SegmentMaker._comment_measure_numbers
    s1 * 1/2                                                                   %! baca.SegmentMaker._make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER
    \bacaStopTextSpanCT                                                        %! CLOCK_TIME
    - \baca-start-lmn-left-only "8"                                            %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER
%@% - \baca-start-mn-left-only "256"                                           %! MEASURE_NUMBER
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER
    - \baca-start-ct-left-only "[9'52'']"                                      %! CLOCK_TIME
    \bacaStartTextSpanCT                                                       %! CLOCK_TIME

    % [J Global_Skips measure 257 / measure 9]                                 %! baca.SegmentMaker._comment_measure_numbers
    s1 * 1/2                                                                   %! baca.SegmentMaker._make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER
    \bacaStopTextSpanCT                                                        %! CLOCK_TIME
    - \baca-start-lmn-left-only "9"                                            %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER
%@% - \baca-start-mn-left-only "257"                                           %! MEASURE_NUMBER
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER
    - \baca-start-ct-both "[9'54'']" "[9'56'']"                                %! CLOCK_TIME
    \bacaStartTextSpanCT                                                       %! CLOCK_TIME

    % [J Global_Skips measure 258 / measure 10]                                %! baca.SegmentMaker._comment_measure_numbers
    \time 3/2                                                                  %! EXPLICIT_TIME_SIGNATURE:_set_status_tag:baca.SegmentMaker._make_global_skips(2)
    \baca-time-signature-color #'blue                                          %! EXPLICIT_TIME_SIGNATURE_COLOR:baca.SegmentMaker._attach_color_literal(2)
    s1 * 3/2                                                                   %! baca.SegmentMaker._make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER
    \bacaStopTextSpanMM                                                        %! SEGMENT_FINAL_STOP_MM_SPANNER:baca.SegmentMaker._attach_metronome_marks(4)
    \bacaStopTextSpanCT                                                        %! CLOCK_TIME
    \baca-bar-line-visible                                                     %! baca.SegmentMaker._attach_final_bar_line
    \bar "|."                                                                  %! baca.SegmentMaker._attach_final_bar_line

}                                                                              %! abjad.Path.extern


J_RH_Music_Voice = {                                                           %! abjad.Path.extern

    % [J RH_Music_Voice measure 249 / measure 1]                               %! baca.SegmentMaker._comment_measure_numbers
    \override Staff.BarLine.bar-extent = #'(-2 . 4)                            %! EXPLICIT_BAR_EXTENT:_set_status_tag:REAPPLIED_BAR_EXTENT:-PARTS:baca.SegmentMaker._reapply_persistent_indicators(3)
    \stopStaff                                                                 %! REAPPLIED_STAFF_LINES:_set_status_tag:baca.SegmentMaker._reapply_persistent_indicators(3)
    \once \override RHStaff.StaffSymbol.line-count = 7                         %! REAPPLIED_STAFF_LINES:_set_status_tag:baca.SegmentMaker._reapply_persistent_indicators(3)
    \startStaff                                                                %! REAPPLIED_STAFF_LINES:_set_status_tag:baca.SegmentMaker._reapply_persistent_indicators(3)
    <> \stopTextSpan                                                           %! baca.literal:IndicatorCommand
    \override DynamicLineSpanner.staff-padding = 7                             %! baca.literal:IndicatorCommand
    \stopStaff                                                                 %! baca.literal:+SEGMENT:IndicatorCommand
    \once \override RHStaff.StaffSymbol.line-positions = #'(8.2 8 7.8 -5.8 -6 -6.2) %! baca.literal:+SEGMENT:IndicatorCommand
    \startStaff                                                                %! baca.literal:+SEGMENT:IndicatorCommand
    \override TextScript.parent-alignment-X = #0                               %! baca.text_script_parent_alignment_x:OverrideCommand(1)
    \override TextScript.self-alignment-X = #0                                 %! baca.text_script_self_alignment_x:OverrideCommand(1)
    \override TextScript.staff-padding = #4                                    %! baca.text_script_staff_padding:OverrideCommand(1)
    \clef "percussion"                                                         %! REAPPLIED_CLEF:_set_status_tag:baca.SegmentMaker._reapply_persistent_indicators(3)
    \once \override RHStaff.Clef.color = #(x11-color 'green4)                  %! REAPPLIED_CLEF_COLOR:baca.SegmentMaker._attach_color_literal(2)
%@% \override RHStaff.Clef.color = ##f                                         %! REAPPLIED_CLEF_COLOR_CANCELLATION:baca.SegmentMaker._attach_color_literal(1)
    \set RHStaff.forceClef = ##t                                               %! REAPPLIED_CLEF:_set_status_tag:_treat_persistent_wrapper(2):baca.SegmentMaker._reapply_persistent_indicators(3)
    \once \override RHStaff.StaffSymbol.color = #(x11-color 'green4)           %! REAPPLIED_STAFF_LINES_COLOR:baca.SegmentMaker._attach_color_literal(2)
    d''2
    :32                                                                        %! baca.stem_tremolo:IndicatorCommand
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak to-barline ##t                                                    %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)
    \mp                                                                        %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)
    _ \baca-mpz-markup                                                         %! baca.markup:IndicatorCommand
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak to-barline ##t                                                    %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)
    \>                                                                         %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)
    - \abjad-dashed-line-with-arrow                                            %! baca.text_spanner:PiecewiseCommand(1)
    - \baca-text-spanner-left-text "larg."                                     %! baca.text_spanner:PiecewiseCommand(1)
    - \tweak staff-padding #6                                                  %! baca.text_spanner:PiecewiseCommand(1)
    \startTextSpan                                                             %! baca.text_spanner:PiecewiseCommand(1)
    \override RHStaff.Clef.color = #(x11-color 'OliveDrab)                     %! REAPPLIED_CLEF_REDRAW_COLOR:baca.SegmentMaker._attach_color_literal(2)

    % [J RH_Music_Voice measure 250 / measure 2]                               %! baca.SegmentMaker._comment_measure_numbers
    d''2
    :32                                                                        %! baca.stem_tremolo:IndicatorCommand
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak to-barline ##t                                                    %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)
    \pp                                                                        %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak to-barline ##t                                                    %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)
    \<                                                                         %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)
    \repeatTie                                                                 %! baca.repeat_tie:IndicatorCommand
    \stopTextSpan                                                              %! baca.text_spanner:PiecewiseCommand(1)
    - \abjad-dashed-line-with-arrow                                            %! baca.text_spanner:PiecewiseCommand(1)
    - \baca-text-spanner-left-text "strett."                                   %! baca.text_spanner:PiecewiseCommand(1)
    - \tweak staff-padding #6                                                  %! baca.text_spanner:PiecewiseCommand(1)
    \startTextSpan                                                             %! baca.text_spanner:PiecewiseCommand(1)

    % [J RH_Music_Voice measure 251 / measure 3]                               %! baca.SegmentMaker._comment_measure_numbers
    d''2
    :32                                                                        %! baca.stem_tremolo:IndicatorCommand
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak to-barline ##t                                                    %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)
    \mp                                                                        %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak to-barline ##t                                                    %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)
    \>                                                                         %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)
    \repeatTie                                                                 %! baca.repeat_tie:IndicatorCommand
    \stopTextSpan                                                              %! baca.text_spanner:PiecewiseCommand(1)
    - \abjad-dashed-line-with-arrow                                            %! baca.text_spanner:PiecewiseCommand(1)
    - \baca-text-spanner-left-text "larg."                                     %! baca.text_spanner:PiecewiseCommand(1)
    - \tweak staff-padding #6                                                  %! baca.text_spanner:PiecewiseCommand(1)
    \startTextSpan                                                             %! baca.text_spanner:PiecewiseCommand(1)

    % [J RH_Music_Voice measure 252 / measure 4]                               %! baca.SegmentMaker._comment_measure_numbers
    d''2
    :32                                                                        %! baca.stem_tremolo:IndicatorCommand
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak to-barline ##t                                                    %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)
    \pp                                                                        %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak to-barline ##t                                                    %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)
    \<                                                                         %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)
    \repeatTie                                                                 %! baca.repeat_tie:IndicatorCommand
    \stopTextSpan                                                              %! baca.text_spanner:PiecewiseCommand(1)
    - \abjad-dashed-line-with-arrow                                            %! baca.text_spanner:PiecewiseCommand(1)
    - \baca-text-spanner-left-text "strett."                                   %! baca.text_spanner:PiecewiseCommand(1)
    - \tweak staff-padding #6                                                  %! baca.text_spanner:PiecewiseCommand(1)
    \startTextSpan                                                             %! baca.text_spanner:PiecewiseCommand(1)

    % [J RH_Music_Voice measure 253 / measure 5]                               %! baca.SegmentMaker._comment_measure_numbers
    d''2
    :32                                                                        %! baca.stem_tremolo:IndicatorCommand
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak to-barline ##t                                                    %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)
    \mp                                                                        %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak to-barline ##t                                                    %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)
    \>                                                                         %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)
    \repeatTie                                                                 %! baca.repeat_tie:IndicatorCommand
    \stopTextSpan                                                              %! baca.text_spanner:PiecewiseCommand(1)
    - \abjad-dashed-line-with-arrow                                            %! baca.text_spanner:PiecewiseCommand(1)
    - \baca-text-spanner-left-text "larg."                                     %! baca.text_spanner:PiecewiseCommand(1)
    - \tweak staff-padding #6                                                  %! baca.text_spanner:PiecewiseCommand(1)
    \startTextSpan                                                             %! baca.text_spanner:PiecewiseCommand(1)

    % [J RH_Music_Voice measure 254 / measure 6]                               %! baca.SegmentMaker._comment_measure_numbers
    d''2
    :32                                                                        %! baca.stem_tremolo:IndicatorCommand
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak to-barline ##t                                                    %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)
    \pp                                                                        %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak to-barline ##t                                                    %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)
    \<                                                                         %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)
    \repeatTie                                                                 %! baca.repeat_tie:IndicatorCommand
    \stopTextSpan                                                              %! baca.text_spanner:PiecewiseCommand(1)
    - \abjad-dashed-line-with-arrow                                            %! baca.text_spanner:PiecewiseCommand(1)
    - \baca-text-spanner-left-text "strett."                                   %! baca.text_spanner:PiecewiseCommand(1)
    - \tweak staff-padding #6                                                  %! baca.text_spanner:PiecewiseCommand(1)
    \startTextSpan                                                             %! baca.text_spanner:PiecewiseCommand(1)

    % [J RH_Music_Voice measure 255 / measure 7]                               %! baca.SegmentMaker._comment_measure_numbers
    d''2
    :32                                                                        %! baca.stem_tremolo:IndicatorCommand
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak to-barline ##t                                                    %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)
    \mp                                                                        %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak to-barline ##t                                                    %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)
    \>                                                                         %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)
    \repeatTie                                                                 %! baca.repeat_tie:IndicatorCommand
    \stopTextSpan                                                              %! baca.text_spanner:PiecewiseCommand(1)
    - \abjad-dashed-line-with-arrow                                            %! baca.text_spanner:PiecewiseCommand(1)
    - \baca-text-spanner-left-text "larg."                                     %! baca.text_spanner:PiecewiseCommand(1)
    - \tweak staff-padding #6                                                  %! baca.text_spanner:PiecewiseCommand(1)
    \startTextSpan                                                             %! baca.text_spanner:PiecewiseCommand(1)

    % [J RH_Music_Voice measure 256 / measure 8]                               %! baca.SegmentMaker._comment_measure_numbers
    d''2
    :32                                                                        %! baca.stem_tremolo:IndicatorCommand
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak to-barline ##t                                                    %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)
    \pp                                                                        %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak to-barline ##t                                                    %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)
    \<                                                                         %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)
    \repeatTie                                                                 %! baca.repeat_tie:IndicatorCommand
    \stopTextSpan                                                              %! baca.text_spanner:PiecewiseCommand(1)
    - \abjad-dashed-line-with-arrow                                            %! baca.text_spanner:PiecewiseCommand(1)
    - \baca-text-spanner-left-text "strett."                                   %! baca.text_spanner:PiecewiseCommand(1)
    - \tweak staff-padding #6                                                  %! baca.text_spanner:PiecewiseCommand(1)
    \startTextSpan                                                             %! baca.text_spanner:PiecewiseCommand(1)

    % [J RH_Music_Voice measure 257 / measure 9]                               %! baca.SegmentMaker._comment_measure_numbers
    d''2
    :32                                                                        %! baca.stem_tremolo:IndicatorCommand
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak to-barline ##t                                                    %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)
    \mp                                                                        %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak to-barline ##t                                                    %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)
    \>                                                                         %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)
    \repeatTie                                                                 %! baca.repeat_tie:IndicatorCommand
    \stopTextSpan                                                              %! baca.text_spanner:PiecewiseCommand(1)
    - \abjad-dashed-line-with-arrow                                            %! baca.text_spanner:PiecewiseCommand(1)
    - \baca-text-spanner-left-text "larg."                                     %! baca.text_spanner:PiecewiseCommand(1)
    - \baca-text-spanner-right-text "strett."                                  %! baca.text_spanner:PiecewiseCommand(1)
    - \tweak bound-details.right.padding #0.5                                  %! baca.text_spanner:PiecewiseCommand(1)
    - \tweak bound-details.right.stencil-align-dir-y #center                   %! baca.text_spanner:PiecewiseCommand(1)
    - \tweak staff-padding #6                                                  %! baca.text_spanner:PiecewiseCommand(1)
    \startTextSpan                                                             %! baca.text_spanner:PiecewiseCommand(1)

    % [J RH_Music_Voice measure 258 / measure 10]                              %! baca.SegmentMaker._comment_measure_numbers
    d''1.
    :32                                                                        %! baca.stem_tremolo:IndicatorCommand
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak to-barline ##t                                                    %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)
    \pp                                                                        %! EXPLICIT_DYNAMIC:_set_status_tag:baca.hairpin:PiecewiseCommand(1)
    \repeatTie                                                                 %! baca.repeat_tie:IndicatorCommand
    \stopTextSpan                                                              %! baca.text_spanner:PiecewiseCommand(1)
    \revert TextScript.parent-alignment-X                                      %! baca.text_script_parent_alignment_x:OverrideCommand(2)
    \revert TextScript.self-alignment-X                                        %! baca.text_script_self_alignment_x:OverrideCommand(2)
    \revert TextScript.staff-padding                                           %! baca.text_script_staff_padding:OverrideCommand(2)

}                                                                              %! abjad.Path.extern


J_RH_Music_Staff = {                                                           %! abjad.Path.extern

    \context Voice = "RH_Music_Voice"                                          %! huitzil.ScoreTemplate.__call__
    \J_RH_Music_Voice                                                          %! abjad.Path.extern

}                                                                              %! abjad.Path.extern


J_Cello_Music_Voice = {                                                        %! abjad.Path.extern

    % [J Cello_Music_Voice measure 249 / measure 1]                            %! baca.SegmentMaker._comment_measure_numbers
    \override MultiMeasureRest.transparent = ##t                               %! baca.mmrest_transparent:OverrideCommand(1)
    \override Score.BarLine.transparent = ##t                                  %! baca.bar_line_transparent:OverrideCommand(1)
    \override Score.SpanBar.transparent = ##t                                  %! baca.span_bar_transparent:OverrideCommand(1)
    \stopStaff                                                                 %! baca.literal:+SEGMENT:IndicatorCommand
    \once \override Staff.StaffSymbol.line-positions = #'(4 -4)                %! baca.literal:+SEGMENT:IndicatorCommand
    \startStaff                                                                %! baca.literal:+SEGMENT:IndicatorCommand
    \override Score.TimeSignature.stencil = ##f                                %! baca.time_signature_stencil_false:OverrideCommand(1)
    \clef "treble"                                                             %! REAPPLIED_CLEF:_set_status_tag:baca.SegmentMaker._reapply_persistent_indicators(3)
    \once \override Staff.Clef.color = #(x11-color 'green4)                    %! REAPPLIED_CLEF_COLOR:baca.SegmentMaker._attach_color_literal(2)
%@% \override Staff.Clef.color = ##f                                           %! REAPPLIED_CLEF_COLOR_CANCELLATION:baca.SegmentMaker._attach_color_literal(1)
    \set Staff.forceClef = ##t                                                 %! REAPPLIED_CLEF:_set_status_tag:_treat_persistent_wrapper(2):baca.SegmentMaker._reapply_persistent_indicators(3)
    R1 * 1/2                                                                   %! _call_rhythm_commands
    ^ \baca-reapplied-indicator-markup "(“Cello”)"                             %! REAPPLIED_INSTRUMENT_ALERT:baca.SegmentMaker._attach_latent_indicator_alert
    \override Staff.Clef.color = #(x11-color 'OliveDrab)                       %! REAPPLIED_CLEF_REDRAW_COLOR:baca.SegmentMaker._attach_color_literal(2)

    % [J Cello_Music_Voice measure 250 / measure 2]                            %! baca.SegmentMaker._comment_measure_numbers
    R1 * 1/2                                                                   %! _call_rhythm_commands

    % [J Cello_Music_Voice measure 251 / measure 3]                            %! baca.SegmentMaker._comment_measure_numbers
    R1 * 1/2                                                                   %! _call_rhythm_commands

    % [J Cello_Music_Voice measure 252 / measure 4]                            %! baca.SegmentMaker._comment_measure_numbers
    R1 * 1/2                                                                   %! _call_rhythm_commands

    % [J Cello_Music_Voice measure 253 / measure 5]                            %! baca.SegmentMaker._comment_measure_numbers
    R1 * 1/2                                                                   %! _call_rhythm_commands

    % [J Cello_Music_Voice measure 254 / measure 6]                            %! baca.SegmentMaker._comment_measure_numbers
    R1 * 1/2                                                                   %! _call_rhythm_commands

    % [J Cello_Music_Voice measure 255 / measure 7]                            %! baca.SegmentMaker._comment_measure_numbers
    R1 * 1/2                                                                   %! _call_rhythm_commands

    % [J Cello_Music_Voice measure 256 / measure 8]                            %! baca.SegmentMaker._comment_measure_numbers
    R1 * 1/2                                                                   %! _call_rhythm_commands

    % [J Cello_Music_Voice measure 257 / measure 9]                            %! baca.SegmentMaker._comment_measure_numbers
    R1 * 1/2                                                                   %! _call_rhythm_commands

    % [J Cello_Music_Voice measure 258 / measure 10]                           %! baca.SegmentMaker._comment_measure_numbers
    \override Score.BarLine.X-extent = #'(0 . 8)                               %! baca.literal:IndicatorCommand
    \override Score.BarLine.extra-offset = #'(8 . 0)                           %! baca.literal:IndicatorCommand
    \override Score.RehearsalMark.extra-offset = #'(4 . 0)                     %! baca.literal:IndicatorCommand
    \override Score.SpanBar.extra-offset = #'(8 . 0)                           %! baca.literal:IndicatorCommand
    R1 * 3/2                                                                   %! _call_rhythm_commands
    \revert MultiMeasureRest.transparent                                       %! baca.mmrest_transparent:OverrideCommand(2)
    \revert Score.BarLine.transparent                                          %! baca.bar_line_transparent:OverrideCommand(2)
    \revert Score.SpanBar.transparent                                          %! baca.span_bar_transparent:OverrideCommand(2)
    \revert Score.TimeSignature.stencil                                        %! baca.time_signature_stencil_false:OverrideCommand(2)
    \once \override Score.RehearsalMark.direction = #down                      %! baca.literal:IndicatorCommand
    \once \override Score.RehearsalMark.padding = 4                            %! baca.literal:IndicatorCommand
    \mark \huitzil-colophon-markup                                             %! baca.literal:IndicatorCommand

}                                                                              %! abjad.Path.extern


J_Cello_Music_Staff = {                                                        %! abjad.Path.extern

    \context Voice = "Cello_Music_Voice"                                       %! huitzil.ScoreTemplate.__call__
    \J_Cello_Music_Voice                                                       %! abjad.Path.extern

}                                                                              %! abjad.Path.extern
