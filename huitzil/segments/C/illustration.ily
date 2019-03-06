C_Global_Rests = {                                                             %! abjad.Path.extern

    % [C Global_Rests measure 80 / measure 1]                                  %! _comment_measure_numbers
    R1 * 1/2                                                                   %! _make_global_rests(1)

    % [C Global_Rests measure 81 / measure 2]                                  %! _comment_measure_numbers
    R1 * 13/24                                                                 %! _make_global_rests(1)

    % [C Global_Rests measure 82 / measure 3]                                  %! _comment_measure_numbers
    R1 * 1/2                                                                   %! _make_global_rests(1)

    % [C Global_Rests measure 83 / measure 4]                                  %! _comment_measure_numbers
    R1 * 7/12                                                                  %! _make_global_rests(1)

    % [C Global_Rests measure 84 / measure 5]                                  %! _comment_measure_numbers
    R1 * 53/60                                                                 %! _make_global_rests(1)

    % [C Global_Rests measure 85 / measure 6]                                  %! _comment_measure_numbers
    R1 * 23/24                                                                 %! _make_global_rests(1)

    % [C Global_Rests measure 86 / measure 7]                                  %! _comment_measure_numbers
    R1 * 1/2                                                                   %! _make_global_rests(1)

    % [C Global_Rests measure 87 / measure 8]                                  %! _comment_measure_numbers
    R1 * 1/2                                                                   %! _make_global_rests(1)

    % [C Global_Rests measure 88 / measure 9]                                  %! _comment_measure_numbers
    R1 * 3/8                                                                   %! _make_global_rests(1)

    % [C Global_Rests measure 89 / measure 10]                                 %! _comment_measure_numbers
    R1 * 1/3                                                                   %! _make_global_rests(1)

    % [C Global_Rests measure 90 / measure 11]                                 %! _comment_measure_numbers
    R1 * 11/15                                                                 %! _make_global_rests(1)

    % [C Global_Rests measure 91 / measure 12]                                 %! _comment_measure_numbers
    R1 * 1/2                                                                   %! _make_global_rests(1)

    % [C Global_Rests measure 92 / measure 13]                                 %! _comment_measure_numbers
    R1 * 1/2                                                                   %! _make_global_rests(1)

    % [C Global_Rests measure 93 / measure 14]                                 %! _comment_measure_numbers
    R1 * 1/2                                                                   %! _make_global_rests(1)

    % [C Global_Rests measure 94 / measure 15]                                 %! _comment_measure_numbers
    R1 * 1/2                                                                   %! _make_global_rests(1)

    % [C Global_Rests measure 95 / measure 16]                                 %! _comment_measure_numbers
    R1 * 1/2                                                                   %! _make_global_rests(1)

    % [C Global_Rests measure 96 / measure 17]                                 %! _comment_measure_numbers
    R1 * 1/6                                                                   %! _make_global_rests(1)

    % [C Global_Rests measure 97 / measure 18]                                 %! _comment_measure_numbers
    R1 * 1/2                                                                   %! _make_global_rests(1)

    % [C Global_Rests measure 98 / measure 19]                                 %! _comment_measure_numbers
    R1 * 2/5                                                                   %! _make_global_rests(1)

    % [C Global_Rests measure 99 / measure 20]                                 %! _comment_measure_numbers
    R1 * 1/2                                                                   %! _make_global_rests(1)

    % [C Global_Rests measure 100 / measure 21]                                %! _comment_measure_numbers
    R1 * 1/2                                                                   %! _make_global_rests(1)

    % [C Global_Rests measure 101 / measure 22]                                %! _comment_measure_numbers
    R1 * 1/2                                                                   %! _make_global_rests(1)

    % [C Global_Rests measure 102 / measure 23]                                %! _comment_measure_numbers
    R1 * 1/2                                                                   %! _make_global_rests(1)

    % [C Global_Rests measure 103 / measure 24]                                %! _comment_measure_numbers
    R1 * 1/2                                                                   %! _make_global_rests(1)

    % [C Global_Rests measure 104 / measure 25]                                %! _comment_measure_numbers
    R1 * 1/2                                                                   %! _make_global_rests(1)

    % [C Global_Rests measure 105 / measure 26]                                %! _comment_measure_numbers
    R1 * 1/2                                                                   %! _make_global_rests(1)

    % [C Global_Rests measure 106 / measure 27]                                %! PHANTOM:_style_phantom_measures(4):_comment_measure_numbers
    R1 * 1/4                                                                   %! PHANTOM:_make_global_rests(2)

}                                                                              %! abjad.Path.extern


C_Global_Skips = {                                                             %! abjad.Path.extern

    % [C Global_Skips measure 80 / measure 1]                                  %! _comment_measure_numbers
    \time 1/2                                                                  %! EXPLICIT_TIME_SIGNATURE:_set_status_tag:_make_global_skips(2)
    \bar ""                                                                    %! _make_global_skips(3):+SEGMENT:EMPTY_START_BAR
    \baca-time-signature-color #'blue                                          %! EXPLICIT_TIME_SIGNATURE_COLOR:_attach_color_literal(2)
    s1 * 1/2                                                                   %! _make_global_skips(1)
    - \baca-start-lmn-left-only "1"                                            %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER
%@% - \baca-start-mn-left-only "80"                                            %! MEASURE_NUMBER
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER
%@% - \abjad-invisible-line                                                    %! REAPPLIED_METRONOME_MARK:_set_status_tag:_reapply_persistent_indicators(2):_attach_metronome_marks(2)
%@% - \baca-metronome-mark-spanner-left-text 2 0 1 "44"                        %! REAPPLIED_METRONOME_MARK:_set_status_tag:_reapply_persistent_indicators(2):_attach_metronome_marks(2)
%@% \bacaStartTextSpanMM                                                       %! REAPPLIED_METRONOME_MARK:_set_status_tag:_reapply_persistent_indicators(2):_attach_metronome_marks(2)
    - \abjad-invisible-line                                                    %! REAPPLIED_METRONOME_MARK_WITH_COLOR:_attach_metronome_marks(3)
    - \baca-metronome-mark-spanner-colored-left-text 2 0 1 "44" #'green4       %! REAPPLIED_METRONOME_MARK_WITH_COLOR:_attach_metronome_marks(3)
    \bacaStartTextSpanMM                                                       %! REAPPLIED_METRONOME_MARK_WITH_COLOR:_attach_metronome_marks(3)
    - \baca-start-ct-left-only "[4'01'']"                                      %! CLOCK_TIME
    \bacaStartTextSpanCT                                                       %! CLOCK_TIME

    % [C Global_Skips measure 81 / measure 2]                                  %! _comment_measure_numbers
    #(ly:expect-warning "strange time signature found")                        %! EXPLICIT_TIME_SIGNATURE:_set_status_tag:_make_global_skips(2)
    \time 13/24                                                                %! EXPLICIT_TIME_SIGNATURE:_set_status_tag:_make_global_skips(2)
    \baca-time-signature-color #'blue                                          %! EXPLICIT_TIME_SIGNATURE_COLOR:_attach_color_literal(2)
    s1 * 13/24                                                                 %! _make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER
    \bacaStopTextSpanCT                                                        %! CLOCK_TIME
    - \baca-start-lmn-left-only "2"                                            %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER
%@% - \baca-start-mn-left-only "81"                                            %! MEASURE_NUMBER
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER
    - \baca-start-ct-left-only "[4'03'']"                                      %! CLOCK_TIME
    \bacaStartTextSpanCT                                                       %! CLOCK_TIME

    % [C Global_Skips measure 82 / measure 3]                                  %! _comment_measure_numbers
    \time 1/2                                                                  %! EXPLICIT_TIME_SIGNATURE:_set_status_tag:_make_global_skips(2)
    \baca-time-signature-color #'blue                                          %! EXPLICIT_TIME_SIGNATURE_COLOR:_attach_color_literal(2)
    s1 * 1/2                                                                   %! _make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER
    \bacaStopTextSpanCT                                                        %! CLOCK_TIME
    - \baca-start-lmn-left-only "3"                                            %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER
%@% - \baca-start-mn-left-only "82"                                            %! MEASURE_NUMBER
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER
    - \baca-start-ct-left-only "[4'06'']"                                      %! CLOCK_TIME
    \bacaStartTextSpanCT                                                       %! CLOCK_TIME

    % [C Global_Skips measure 83 / measure 4]                                  %! _comment_measure_numbers
    #(ly:expect-warning "strange time signature found")                        %! EXPLICIT_TIME_SIGNATURE:_set_status_tag:_make_global_skips(2)
    \time 7/12                                                                 %! EXPLICIT_TIME_SIGNATURE:_set_status_tag:_make_global_skips(2)
    \baca-time-signature-color #'blue                                          %! EXPLICIT_TIME_SIGNATURE_COLOR:_attach_color_literal(2)
    s1 * 7/12                                                                  %! _make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER
    \bacaStopTextSpanCT                                                        %! CLOCK_TIME
    - \baca-start-lmn-left-only "4"                                            %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER
%@% - \baca-start-mn-left-only "83"                                            %! MEASURE_NUMBER
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER
    - \baca-start-ct-left-only "[4'09'']"                                      %! CLOCK_TIME
    \bacaStartTextSpanCT                                                       %! CLOCK_TIME

    % [C Global_Skips measure 84 / measure 5]                                  %! _comment_measure_numbers
    #(ly:expect-warning "strange time signature found")                        %! EXPLICIT_TIME_SIGNATURE:_set_status_tag:_make_global_skips(2)
    \time 53/60                                                                %! EXPLICIT_TIME_SIGNATURE:_set_status_tag:_make_global_skips(2)
    \baca-time-signature-color #'blue                                          %! EXPLICIT_TIME_SIGNATURE_COLOR:_attach_color_literal(2)
    s1 * 53/60                                                                 %! _make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER
    \bacaStopTextSpanCT                                                        %! CLOCK_TIME
    - \baca-start-lmn-left-only "5"                                            %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER
%@% - \baca-start-mn-left-only "84"                                            %! MEASURE_NUMBER
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER
    - \baca-start-ct-left-only "[4'12'']"                                      %! CLOCK_TIME
    \bacaStartTextSpanCT                                                       %! CLOCK_TIME

    % [C Global_Skips measure 85 / measure 6]                                  %! _comment_measure_numbers
    #(ly:expect-warning "strange time signature found")                        %! EXPLICIT_TIME_SIGNATURE:_set_status_tag:_make_global_skips(2)
    \time 23/24                                                                %! EXPLICIT_TIME_SIGNATURE:_set_status_tag:_make_global_skips(2)
    \baca-time-signature-color #'blue                                          %! EXPLICIT_TIME_SIGNATURE_COLOR:_attach_color_literal(2)
    s1 * 23/24                                                                 %! _make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER
    \bacaStopTextSpanCT                                                        %! CLOCK_TIME
    - \baca-start-lmn-left-only "6"                                            %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER
%@% - \baca-start-mn-left-only "85"                                            %! MEASURE_NUMBER
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER
    - \baca-start-ct-left-only "[4'17'']"                                      %! CLOCK_TIME
    \bacaStartTextSpanCT                                                       %! CLOCK_TIME

    % [C Global_Skips measure 86 / measure 7]                                  %! _comment_measure_numbers
    \time 1/2                                                                  %! EXPLICIT_TIME_SIGNATURE:_set_status_tag:_make_global_skips(2)
    \baca-time-signature-color #'blue                                          %! EXPLICIT_TIME_SIGNATURE_COLOR:_attach_color_literal(2)
    s1 * 1/2                                                                   %! _make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER
    \bacaStopTextSpanCT                                                        %! CLOCK_TIME
    - \baca-start-lmn-left-only "7"                                            %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER
%@% - \baca-start-mn-left-only "86"                                            %! MEASURE_NUMBER
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER
    - \baca-start-ct-left-only "[4'22'']"                                      %! CLOCK_TIME
    \bacaStartTextSpanCT                                                       %! CLOCK_TIME

    % [C Global_Skips measure 87 / measure 8]                                  %! _comment_measure_numbers
    s1 * 1/2                                                                   %! _make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER
    \bacaStopTextSpanCT                                                        %! CLOCK_TIME
    - \baca-start-lmn-left-only "8"                                            %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER
%@% - \baca-start-mn-left-only "87"                                            %! MEASURE_NUMBER
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER
    - \baca-start-ct-left-only "[4'25'']"                                      %! CLOCK_TIME
    \bacaStartTextSpanCT                                                       %! CLOCK_TIME

    % [C Global_Skips measure 88 / measure 9]                                  %! _comment_measure_numbers
    \time 3/8                                                                  %! EXPLICIT_TIME_SIGNATURE:_set_status_tag:_make_global_skips(2)
    \baca-time-signature-color #'blue                                          %! EXPLICIT_TIME_SIGNATURE_COLOR:_attach_color_literal(2)
    s1 * 3/8                                                                   %! _make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER
    \bacaStopTextSpanCT                                                        %! CLOCK_TIME
    - \baca-start-lmn-left-only "9"                                            %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER
%@% - \baca-start-mn-left-only "88"                                            %! MEASURE_NUMBER
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER
    - \baca-start-ct-left-only "[4'28'']"                                      %! CLOCK_TIME
    \bacaStartTextSpanCT                                                       %! CLOCK_TIME

    % [C Global_Skips measure 89 / measure 10]                                 %! _comment_measure_numbers
    #(ly:expect-warning "strange time signature found")                        %! EXPLICIT_TIME_SIGNATURE:_set_status_tag:_make_global_skips(2)
    \time 1/3                                                                  %! EXPLICIT_TIME_SIGNATURE:_set_status_tag:_make_global_skips(2)
    \baca-time-signature-color #'blue                                          %! EXPLICIT_TIME_SIGNATURE_COLOR:_attach_color_literal(2)
    s1 * 1/3                                                                   %! _make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER
    \bacaStopTextSpanCT                                                        %! CLOCK_TIME
    - \baca-start-lmn-left-only "10"                                           %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER
%@% - \baca-start-mn-left-only "89"                                            %! MEASURE_NUMBER
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER
    - \baca-start-ct-left-only "[4'30'']"                                      %! CLOCK_TIME
    \bacaStartTextSpanCT                                                       %! CLOCK_TIME

    % [C Global_Skips measure 90 / measure 11]                                 %! _comment_measure_numbers
    #(ly:expect-warning "strange time signature found")                        %! EXPLICIT_TIME_SIGNATURE:_set_status_tag:_make_global_skips(2)
    \time 11/15                                                                %! EXPLICIT_TIME_SIGNATURE:_set_status_tag:_make_global_skips(2)
    \baca-time-signature-color #'blue                                          %! EXPLICIT_TIME_SIGNATURE_COLOR:_attach_color_literal(2)
    s1 * 11/15                                                                 %! _make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER
    \bacaStopTextSpanCT                                                        %! CLOCK_TIME
    - \baca-start-lmn-left-only "11"                                           %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER
%@% - \baca-start-mn-left-only "90"                                            %! MEASURE_NUMBER
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER
    - \baca-start-ct-left-only "[4'31'']"                                      %! CLOCK_TIME
    \bacaStartTextSpanCT                                                       %! CLOCK_TIME

    % [C Global_Skips measure 91 / measure 12]                                 %! _comment_measure_numbers
    \time 1/2                                                                  %! EXPLICIT_TIME_SIGNATURE:_set_status_tag:_make_global_skips(2)
    \baca-time-signature-color #'blue                                          %! EXPLICIT_TIME_SIGNATURE_COLOR:_attach_color_literal(2)
    s1 * 1/2                                                                   %! _make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER
    \bacaStopTextSpanCT                                                        %! CLOCK_TIME
    - \baca-start-lmn-left-only "12"                                           %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER
%@% - \baca-start-mn-left-only "91"                                            %! MEASURE_NUMBER
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER
    - \baca-start-ct-left-only "[4'35'']"                                      %! CLOCK_TIME
    \bacaStartTextSpanCT                                                       %! CLOCK_TIME

    % [C Global_Skips measure 92 / measure 13]                                 %! _comment_measure_numbers
    s1 * 1/2                                                                   %! _make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER
    \bacaStopTextSpanMM                                                        %! _attach_metronome_marks(1)
    \bacaStopTextSpanCT                                                        %! CLOCK_TIME
    - \baca-start-lmn-left-only "13"                                           %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER
%@% - \baca-start-mn-left-only "92"                                            %! MEASURE_NUMBER
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER
%@% - \abjad-dashed-line-with-arrow                                            %! EXPLICIT_METRONOME_MARK:_set_status_tag:_attach_metronome_marks(2)
%@% - \baca-metronome-mark-spanner-left-text 2 0 1 "44"                        %! EXPLICIT_METRONOME_MARK:_set_status_tag:_attach_metronome_marks(2)
%@% \bacaStartTextSpanMM                                                       %! EXPLICIT_METRONOME_MARK:_set_status_tag:_attach_metronome_marks(2)
    - \abjad-dashed-line-with-arrow                                            %! EXPLICIT_METRONOME_MARK_WITH_COLOR:_attach_metronome_marks(3)
    - \baca-metronome-mark-spanner-colored-left-text 2 0 1 "44" #'blue         %! EXPLICIT_METRONOME_MARK_WITH_COLOR:_attach_metronome_marks(3)
    \bacaStartTextSpanMM                                                       %! EXPLICIT_METRONOME_MARK_WITH_COLOR:_attach_metronome_marks(3)
    - \baca-start-ct-left-only "[4'38'']"                                      %! CLOCK_TIME
    \bacaStartTextSpanCT                                                       %! CLOCK_TIME

    % [C Global_Skips measure 93 / measure 14]                                 %! _comment_measure_numbers
    s1 * 1/2                                                                   %! _make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER
    \bacaStopTextSpanCT                                                        %! CLOCK_TIME
    - \baca-start-lmn-left-only "14"                                           %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER
%@% - \baca-start-mn-left-only "93"                                            %! MEASURE_NUMBER
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER
    - \baca-start-ct-left-only "[4'41'']"                                      %! CLOCK_TIME
    \bacaStartTextSpanCT                                                       %! CLOCK_TIME

    % [C Global_Skips measure 94 / measure 15]                                 %! _comment_measure_numbers
    s1 * 1/2                                                                   %! _make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER
    \bacaStopTextSpanCT                                                        %! CLOCK_TIME
    - \baca-start-lmn-left-only "15"                                           %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER
%@% - \baca-start-mn-left-only "94"                                            %! MEASURE_NUMBER
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER
    - \baca-start-ct-left-only "[4'44'']"                                      %! CLOCK_TIME
    \bacaStartTextSpanCT                                                       %! CLOCK_TIME

    % [C Global_Skips measure 95 / measure 16]                                 %! _comment_measure_numbers
    s1 * 1/2                                                                   %! _make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER
    \bacaStopTextSpanMM                                                        %! _attach_metronome_marks(1)
    \bacaStopTextSpanCT                                                        %! CLOCK_TIME
    - \baca-start-lmn-left-only "16"                                           %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER
%@% - \baca-start-mn-left-only "95"                                            %! MEASURE_NUMBER
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER
%@% - \abjad-invisible-line                                                    %! EXPLICIT_METRONOME_MARK:_set_status_tag:_attach_metronome_marks(2)
%@% - \baca-metronome-mark-spanner-left-text 2 0 1 "66"                        %! EXPLICIT_METRONOME_MARK:_set_status_tag:_attach_metronome_marks(2)
%@% \bacaStartTextSpanMM                                                       %! EXPLICIT_METRONOME_MARK:_set_status_tag:_attach_metronome_marks(2)
    - \abjad-invisible-line                                                    %! EXPLICIT_METRONOME_MARK_WITH_COLOR:_attach_metronome_marks(3)
    - \baca-metronome-mark-spanner-colored-left-text 2 0 1 "66" #'blue         %! EXPLICIT_METRONOME_MARK_WITH_COLOR:_attach_metronome_marks(3)
    \bacaStartTextSpanMM                                                       %! EXPLICIT_METRONOME_MARK_WITH_COLOR:_attach_metronome_marks(3)
    - \baca-start-ct-left-only "[4'46'']"                                      %! CLOCK_TIME
    \bacaStartTextSpanCT                                                       %! CLOCK_TIME

    % [C Global_Skips measure 96 / measure 17]                                 %! _comment_measure_numbers
    #(ly:expect-warning "strange time signature found")                        %! EXPLICIT_TIME_SIGNATURE:_set_status_tag:_make_global_skips(2)
    \time 1/6                                                                  %! EXPLICIT_TIME_SIGNATURE:_set_status_tag:_make_global_skips(2)
    \baca-time-signature-color #'blue                                          %! EXPLICIT_TIME_SIGNATURE_COLOR:_attach_color_literal(2)
    s1 * 1/6                                                                   %! _make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER
    \bacaStopTextSpanMM                                                        %! _attach_metronome_marks(1)
    \bacaStopTextSpanCT                                                        %! CLOCK_TIME
    - \baca-start-lmn-left-only "17"                                           %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER
%@% - \baca-start-mn-left-only "96"                                            %! MEASURE_NUMBER
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER
%@% - \abjad-invisible-line                                                    %! EXPLICIT_METRONOME_MARK:_set_status_tag:_attach_metronome_marks(2)
%@% - \baca-metronome-mark-spanner-left-text 2 0 1 "44"                        %! EXPLICIT_METRONOME_MARK:_set_status_tag:_attach_metronome_marks(2)
%@% \bacaStartTextSpanMM                                                       %! EXPLICIT_METRONOME_MARK:_set_status_tag:_attach_metronome_marks(2)
    - \abjad-invisible-line                                                    %! EXPLICIT_METRONOME_MARK_WITH_COLOR:_attach_metronome_marks(3)
    - \baca-metronome-mark-spanner-colored-left-text 2 0 1 "44" #'blue         %! EXPLICIT_METRONOME_MARK_WITH_COLOR:_attach_metronome_marks(3)
    \bacaStartTextSpanMM                                                       %! EXPLICIT_METRONOME_MARK_WITH_COLOR:_attach_metronome_marks(3)
    - \baca-start-ct-left-only "[4'48'']"                                      %! CLOCK_TIME
    \bacaStartTextSpanCT                                                       %! CLOCK_TIME

    % [C Global_Skips measure 97 / measure 18]                                 %! _comment_measure_numbers
    \time 1/2                                                                  %! EXPLICIT_TIME_SIGNATURE:_set_status_tag:_make_global_skips(2)
    \baca-time-signature-color #'blue                                          %! EXPLICIT_TIME_SIGNATURE_COLOR:_attach_color_literal(2)
    s1 * 1/2                                                                   %! _make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER
    \bacaStopTextSpanCT                                                        %! CLOCK_TIME
    - \baca-start-lmn-left-only "18"                                           %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER
%@% - \baca-start-mn-left-only "97"                                            %! MEASURE_NUMBER
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER
    - \baca-start-ct-left-only "[4'49'']"                                      %! CLOCK_TIME
    \bacaStartTextSpanCT                                                       %! CLOCK_TIME

    % [C Global_Skips measure 98 / measure 19]                                 %! _comment_measure_numbers
    #(ly:expect-warning "strange time signature found")                        %! EXPLICIT_TIME_SIGNATURE:_set_status_tag:_make_global_skips(2)
    \time 2/5                                                                  %! EXPLICIT_TIME_SIGNATURE:_set_status_tag:_make_global_skips(2)
    \baca-time-signature-color #'blue                                          %! EXPLICIT_TIME_SIGNATURE_COLOR:_attach_color_literal(2)
    s1 * 2/5                                                                   %! _make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER
    \bacaStopTextSpanCT                                                        %! CLOCK_TIME
    - \baca-start-lmn-left-only "19"                                           %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER
%@% - \baca-start-mn-left-only "98"                                            %! MEASURE_NUMBER
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER
    - \baca-start-ct-left-only "[4'52'']"                                      %! CLOCK_TIME
    \bacaStartTextSpanCT                                                       %! CLOCK_TIME

    % [C Global_Skips measure 99 / measure 20]                                 %! _comment_measure_numbers
    \time 1/2                                                                  %! EXPLICIT_TIME_SIGNATURE:_set_status_tag:_make_global_skips(2)
    \baca-time-signature-color #'blue                                          %! EXPLICIT_TIME_SIGNATURE_COLOR:_attach_color_literal(2)
    s1 * 1/2                                                                   %! _make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER
    \bacaStopTextSpanCT                                                        %! CLOCK_TIME
    - \baca-start-lmn-left-only "20"                                           %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER
%@% - \baca-start-mn-left-only "99"                                            %! MEASURE_NUMBER
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER
    - \baca-start-ct-left-only "[4'54'']"                                      %! CLOCK_TIME
    \bacaStartTextSpanCT                                                       %! CLOCK_TIME

    % [C Global_Skips measure 100 / measure 21]                                %! _comment_measure_numbers
    s1 * 1/2                                                                   %! _make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER
    \bacaStopTextSpanMM                                                        %! _attach_metronome_marks(1)
    \bacaStopTextSpanCT                                                        %! CLOCK_TIME
    - \baca-start-lmn-left-only "21"                                           %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER
%@% - \baca-start-mn-left-only "100"                                           %! MEASURE_NUMBER
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER
%@% - \abjad-dashed-line-with-arrow                                            %! EXPLICIT_METRONOME_MARK:_set_status_tag:_attach_metronome_marks(2)
%@% - \baca-metronome-mark-spanner-left-text 2 0 1 "44"                        %! EXPLICIT_METRONOME_MARK:_set_status_tag:_attach_metronome_marks(2)
%@% \bacaStartTextSpanMM                                                       %! EXPLICIT_METRONOME_MARK:_set_status_tag:_attach_metronome_marks(2)
    - \abjad-dashed-line-with-arrow                                            %! EXPLICIT_METRONOME_MARK_WITH_COLOR:_attach_metronome_marks(3)
    - \baca-metronome-mark-spanner-colored-left-text 2 0 1 "44" #'blue         %! EXPLICIT_METRONOME_MARK_WITH_COLOR:_attach_metronome_marks(3)
    \bacaStartTextSpanMM                                                       %! EXPLICIT_METRONOME_MARK_WITH_COLOR:_attach_metronome_marks(3)
    - \baca-start-ct-left-only "[4'57'']"                                      %! CLOCK_TIME
    \bacaStartTextSpanCT                                                       %! CLOCK_TIME

    % [C Global_Skips measure 101 / measure 22]                                %! _comment_measure_numbers
    s1 * 1/2                                                                   %! _make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER
    \bacaStopTextSpanCT                                                        %! CLOCK_TIME
    - \baca-start-lmn-left-only "22"                                           %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER
%@% - \baca-start-mn-left-only "101"                                           %! MEASURE_NUMBER
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER
    - \baca-start-ct-left-only "[4'59'']"                                      %! CLOCK_TIME
    \bacaStartTextSpanCT                                                       %! CLOCK_TIME

    % [C Global_Skips measure 102 / measure 23]                                %! _comment_measure_numbers
    s1 * 1/2                                                                   %! _make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER
    \bacaStopTextSpanCT                                                        %! CLOCK_TIME
    - \baca-start-lmn-left-only "23"                                           %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER
%@% - \baca-start-mn-left-only "102"                                           %! MEASURE_NUMBER
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER
    - \baca-start-ct-left-only "[5'02'']"                                      %! CLOCK_TIME
    \bacaStartTextSpanCT                                                       %! CLOCK_TIME

    % [C Global_Skips measure 103 / measure 24]                                %! _comment_measure_numbers
    s1 * 1/2                                                                   %! _make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER
    \bacaStopTextSpanCT                                                        %! CLOCK_TIME
    - \baca-start-lmn-left-only "24"                                           %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER
%@% - \baca-start-mn-left-only "103"                                           %! MEASURE_NUMBER
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER
    - \baca-start-ct-left-only "[5'05'']"                                      %! CLOCK_TIME
    \bacaStartTextSpanCT                                                       %! CLOCK_TIME

    % [C Global_Skips measure 104 / measure 25]                                %! _comment_measure_numbers
    s1 * 1/2                                                                   %! _make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER
    \bacaStopTextSpanCT                                                        %! CLOCK_TIME
    - \baca-start-lmn-left-only "25"                                           %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER
%@% - \baca-start-mn-left-only "104"                                           %! MEASURE_NUMBER
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER
    - \baca-start-ct-left-only "[5'08'']"                                      %! CLOCK_TIME
    \bacaStartTextSpanCT                                                       %! CLOCK_TIME

    % [C Global_Skips measure 105 / measure 26]                                %! _comment_measure_numbers
    s1 * 1/2                                                                   %! _make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER
    \bacaStopTextSpanMM                                                        %! _attach_metronome_marks(1)
    \bacaStopTextSpanCT                                                        %! CLOCK_TIME
    - \baca-start-lmn-left-only "26"                                           %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER
%@% - \baca-start-mn-left-only "105"                                           %! MEASURE_NUMBER
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER
%@% - \abjad-invisible-line                                                    %! EXPLICIT_METRONOME_MARK:_set_status_tag:_attach_metronome_marks(2)
%@% - \baca-metronome-mark-spanner-left-text 2 0 1 "88"                        %! EXPLICIT_METRONOME_MARK:_set_status_tag:_attach_metronome_marks(2)
%@% \bacaStartTextSpanMM                                                       %! EXPLICIT_METRONOME_MARK:_set_status_tag:_attach_metronome_marks(2)
    - \abjad-invisible-line                                                    %! EXPLICIT_METRONOME_MARK_WITH_COLOR:_attach_metronome_marks(3)
    - \baca-metronome-mark-spanner-colored-left-text 2 0 1 "88" #'blue         %! EXPLICIT_METRONOME_MARK_WITH_COLOR:_attach_metronome_marks(3)
    \bacaStartTextSpanMM                                                       %! EXPLICIT_METRONOME_MARK_WITH_COLOR:_attach_metronome_marks(3)
    - \baca-start-ct-both "[5'10'']" "[5'12'']"                                %! CLOCK_TIME
    \bacaStartTextSpanCT                                                       %! CLOCK_TIME
    \baca-bar-line-visible                                                     %! _attach_final_bar_line
    \bar "|"                                                                   %! _attach_final_bar_line

    % [C Global_Skips measure 106 / measure 27]                                %! PHANTOM:_style_phantom_measures(1):_comment_measure_numbers
    \time 1/4                                                                  %! PHANTOM:_style_phantom_measures(1):EXPLICIT_TIME_SIGNATURE:_set_status_tag:_make_global_skips(3)
    \baca-time-signature-transparent                                           %! PHANTOM:_style_phantom_measures(2)
    s1 * 1/4                                                                   %! PHANTOM:_make_global_skips(3)
    \bacaStopTextSpanLMN                                                       %! PHANTOM:_style_phantom_measures(1):LOCAL_MEASURE_NUMBER
%@% \bacaStopTextSpanMN                                                        %! PHANTOM:_style_phantom_measures(1):MEASURE_NUMBER
    \bacaStopTextSpanMM                                                        %! PHANTOM:_style_phantom_measures(1):SEGMENT_FINAL_STOP_MM_SPANNER:_attach_metronome_marks(4)
    \bacaStopTextSpanCT                                                        %! PHANTOM:_style_phantom_measures(1):CLOCK_TIME
    \once \override Score.BarLine.transparent = ##t                            %! PHANTOM:_style_phantom_measures(3)
    \once \override Score.SpanBar.transparent = ##t                            %! PHANTOM:_style_phantom_measures(3)

}                                                                              %! abjad.Path.extern


C_RH_Music_Voice = {                                                           %! abjad.Path.extern

    % [C RH_Music_Voice measure 80 / measure 1]                                %! _comment_measure_numbers
    \override Staff.BarLine.bar-extent = #'(-4 . 4)                            %! REAPPLIED_PERSISTENT_OVERRIDE:_set_status_tag:_reapply_persistent_indicators(3)
    \stopStaff                                                                 %! REAPPLIED_STAFF_LINES:_set_status_tag:_reapply_persistent_indicators(3)
    \once \override RHStaff.StaffSymbol.line-count = 7                         %! REAPPLIED_STAFF_LINES:_set_status_tag:_reapply_persistent_indicators(3)
    \startStaff                                                                %! REAPPLIED_STAFF_LINES:_set_status_tag:_reapply_persistent_indicators(3)
    \override DynamicLineSpanner.staff-padding = #7                            %! baca_dls_staff_padding:OverrideCommand(1)
    \stopStaff                                                                 %! baca_literal:IndicatorCommand
    \once \override RHStaff.StaffSymbol.line-positions = #'(8.2 8 7.8 6 4 2 0 -2 -4 -5.8 -6 -6.2)\startStaff %! baca_literal:IndicatorCommand
    \override TextScript.parent-alignment-X = #0                               %! baca_text_script_parent_alignment_x:OverrideCommand(1)
    \override TextScript.self-alignment-X = #0                                 %! baca_text_script_self_alignment_x:OverrideCommand(1)
    \override TextScript.staff-padding = #4                                    %! baca_script_staff_padding:OverrideCommand(1)
    \clef "percussion"                                                         %! REAPPLIED_CLEF:_set_status_tag:_reapply_persistent_indicators(3)
    \once \override RHStaff.Clef.color = #(x11-color 'green4)                  %! REAPPLIED_CLEF_COLOR:_attach_color_literal(2)
%@% \override RHStaff.Clef.color = ##f                                         %! REAPPLIED_CLEF_COLOR_CANCELLATION:_attach_color_literal(1)
    \set RHStaff.forceClef = ##t                                               %! REAPPLIED_CLEF:_set_status_tag:_treat_persistent_wrapper(2):_reapply_persistent_indicators(3)
    \once \override RHStaff.StaffSymbol.color = #(x11-color 'green4)           %! REAPPLIED_STAFF_LINES_COLOR:_attach_color_literal(2)
    b'4
    :32                                                                        %! baca_stem_tremolo:IndicatorCommand
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak to-barline ##t                                                    %! EXPLICIT_DYNAMIC:_set_status_tag:baca_hairpin:PiecewiseCommand(1)
    \baca-mp-parenthesized                                                     %! EXPLICIT_DYNAMIC:_set_status_tag:baca_hairpin:PiecewiseCommand(1)
    _ \baca-mfz-markup                                                         %! baca_markup:IndicatorCommand
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak to-barline ##t                                                    %! EXPLICIT_DYNAMIC:_set_status_tag:baca_hairpin:PiecewiseCommand(1)
    - \tweak stencil #constante-hairpin                                        %! EXPLICIT_DYNAMIC:_set_status_tag:baca_hairpin:PiecewiseCommand(1)
    \<                                                                         %! EXPLICIT_DYNAMIC:_set_status_tag:baca_hairpin:PiecewiseCommand(1)
    \override RHStaff.Clef.color = #(x11-color 'OliveDrab)                     %! REAPPLIED_CLEF_REDRAW_COLOR:_attach_color_literal(2)

    b'8
    :32                                                                        %! baca_stem_tremolo:IndicatorCommand
    _ \baca-mfz-markup                                                         %! baca_markup:IndicatorCommand
    \glissando                                                                 %! baca_glissando

    g'8
    :32                                                                        %! baca_stem_tremolo:IndicatorCommand
    _ \baca-mfz-markup                                                         %! baca_markup:IndicatorCommand
    \glissando                                                                 %! baca_glissando

    % [C RH_Music_Voice measure 81 / measure 2]                                %! _comment_measure_numbers
    b'4
    :32                                                                        %! baca_stem_tremolo:IndicatorCommand
    _ \baca-mfz-markup                                                         %! baca_markup:IndicatorCommand

    b'8
    :32                                                                        %! baca_stem_tremolo:IndicatorCommand
    _ \baca-mfz-markup                                                         %! baca_markup:IndicatorCommand
    \glissando                                                                 %! baca_glissando

    \tweak edge-height #'(0.7 . 0)
    \times 2/3 {

        g'4
        :32                                                                    %! baca_stem_tremolo:IndicatorCommand
        _ \baca-mfz-markup                                                     %! baca_markup:IndicatorCommand
        \glissando                                                             %! baca_glissando

    }

    % [C RH_Music_Voice measure 82 / measure 3]                                %! _comment_measure_numbers
    b'4
    :32                                                                        %! baca_stem_tremolo:IndicatorCommand
    _ \baca-mfz-markup                                                         %! baca_markup:IndicatorCommand

    b'8
    :32                                                                        %! baca_stem_tremolo:IndicatorCommand
    _ \baca-mfz-markup                                                         %! baca_markup:IndicatorCommand
    \glissando                                                                 %! baca_glissando

    g'8
    :32                                                                        %! baca_stem_tremolo:IndicatorCommand
    _ \baca-mfz-markup                                                         %! baca_markup:IndicatorCommand

    \tweak edge-height #'(0.7 . 0)
    \times 2/3 {

        % [C RH_Music_Voice measure 83 / measure 4]                            %! _comment_measure_numbers
        g'2
        :32                                                                    %! baca_stem_tremolo:IndicatorCommand
        \!                                                                     %! baca_hairpin:PiecewiseCommand(2)
        - \tweak color #(x11-color 'blue)                                      %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
        \p                                                                     %! EXPLICIT_DYNAMIC:_set_status_tag:baca_hairpin:PiecewiseCommand(1)
        _ \baca-fz-markup                                                      %! baca_markup:IndicatorCommand
        - \tweak color #(x11-color 'blue)                                      %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
        - \tweak stencil #constante-hairpin                                    %! EXPLICIT_DYNAMIC:_set_status_tag:baca_hairpin:PiecewiseCommand(1)
        \<                                                                     %! EXPLICIT_DYNAMIC:_set_status_tag:baca_hairpin:PiecewiseCommand(1)

    }

    g'8
    :32                                                                        %! baca_stem_tremolo:IndicatorCommand
    _ \baca-mpz-markup                                                         %! baca_markup:IndicatorCommand
    \glissando                                                                 %! baca_glissando

    e'8
    :32                                                                        %! baca_stem_tremolo:IndicatorCommand
    _ \baca-mpz-markup                                                         %! baca_markup:IndicatorCommand
    \glissando                                                                 %! baca_glissando

    % [C RH_Music_Voice measure 84 / measure 5]                                %! _comment_measure_numbers
    g'4
    :32                                                                        %! baca_stem_tremolo:IndicatorCommand
    _ \baca-mpz-markup                                                         %! baca_markup:IndicatorCommand

    \tweak edge-height #'(0.7 . 0)
    \times 2/3 {

        g'4
        :32                                                                    %! baca_stem_tremolo:IndicatorCommand
        \!                                                                     %! baca_hairpin:PiecewiseCommand(2)
        - \tweak color #(x11-color 'blue)                                      %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
        \pp                                                                    %! EXPLICIT_DYNAMIC:_set_status_tag:baca_hairpin:PiecewiseCommand(1)
        _ \baca-mpz-markup                                                     %! baca_markup:IndicatorCommand
        - \tweak color #(x11-color 'blue)                                      %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
        \<                                                                     %! EXPLICIT_DYNAMIC:_set_status_tag:baca_hairpin:PiecewiseCommand(1)
        \glissando                                                             %! baca_glissando

    }

    \tweak edge-height #'(0.7 . 0)
    \times 2/3 {

        e'4
        :32                                                                    %! baca_stem_tremolo:IndicatorCommand
        _ \baca-mpz-markup                                                     %! baca_markup:IndicatorCommand
        \glissando                                                             %! baca_glissando

    }

    \tweak edge-height #'(0.7 . 0)
    \times 4/5 {

        b'8
        :32                                                                    %! baca_stem_tremolo:IndicatorCommand
        _ \baca-mfz-markup                                                     %! baca_markup:IndicatorCommand
        \glissando                                                             %! baca_glissando

    }

    \tweak edge-height #'(0.7 . 0)
    \times 4/5 {

        g'8
        :32                                                                    %! baca_stem_tremolo:IndicatorCommand
        _ \baca-mfz-markup                                                     %! baca_markup:IndicatorCommand
        \glissando                                                             %! baca_glissando

    }

    \tweak edge-height #'(0.7 . 0)
    \times 4/5 {

        e'8
        :32                                                                    %! baca_stem_tremolo:IndicatorCommand
        - \tweak color #(x11-color 'blue)                                      %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
        \mf                                                                    %! EXPLICIT_DYNAMIC:_set_status_tag:baca_hairpin:PiecewiseCommand(2)
        _ \baca-mfz-markup                                                     %! baca_markup:IndicatorCommand
        \glissando                                                             %! baca_glissando

    }

    % [C RH_Music_Voice measure 85 / measure 6]                                %! _comment_measure_numbers
    g'4
    :32                                                                        %! baca_stem_tremolo:IndicatorCommand
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak to-barline ##t                                                    %! EXPLICIT_DYNAMIC:_set_status_tag:baca_hairpin:PiecewiseCommand(1)
    \p                                                                         %! EXPLICIT_DYNAMIC:_set_status_tag:baca_hairpin:PiecewiseCommand(1)
    _ \baca-fz-markup                                                          %! baca_markup:IndicatorCommand
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak to-barline ##t                                                    %! EXPLICIT_DYNAMIC:_set_status_tag:baca_hairpin:PiecewiseCommand(1)
    - \tweak stencil #constante-hairpin                                        %! EXPLICIT_DYNAMIC:_set_status_tag:baca_hairpin:PiecewiseCommand(1)
    \<                                                                         %! EXPLICIT_DYNAMIC:_set_status_tag:baca_hairpin:PiecewiseCommand(1)

    \tweak edge-height #'(0.7 . 0)
    \times 2/3 {

        g'4
        :32                                                                    %! baca_stem_tremolo:IndicatorCommand
        _ \baca-mpz-markup                                                     %! baca_markup:IndicatorCommand
        \glissando                                                             %! baca_glissando

    }

    \tweak edge-height #'(0.7 . 0)
    \times 2/3 {

        e'4
        :32                                                                    %! baca_stem_tremolo:IndicatorCommand
        _ \baca-mpz-markup                                                     %! baca_markup:IndicatorCommand
        \glissando                                                             %! baca_glissando

    }

    b'8
    :32                                                                        %! baca_stem_tremolo:IndicatorCommand
    _ \baca-mpz-markup                                                         %! baca_markup:IndicatorCommand
    \glissando                                                                 %! baca_glissando

    g'8
    :32                                                                        %! baca_stem_tremolo:IndicatorCommand
    _ \baca-mpz-markup                                                         %! baca_markup:IndicatorCommand
    \glissando                                                                 %! baca_glissando

    e'8
    :32                                                                        %! baca_stem_tremolo:IndicatorCommand
    _ \baca-mpz-markup                                                         %! baca_markup:IndicatorCommand

    % [C RH_Music_Voice measure 86 / measure 7]                                %! _comment_measure_numbers
    e'2
    :32                                                                        %! baca_stem_tremolo:IndicatorCommand
    \!                                                                         %! baca_hairpin:PiecewiseCommand(2)
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak to-barline ##t                                                    %! EXPLICIT_DYNAMIC:_set_status_tag:baca_hairpin:PiecewiseCommand(1)
    \mf                                                                        %! EXPLICIT_DYNAMIC:_set_status_tag:baca_hairpin:PiecewiseCommand(1)
    _ \baca-fz-markup                                                          %! baca_markup:IndicatorCommand
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak to-barline ##t                                                    %! EXPLICIT_DYNAMIC:_set_status_tag:baca_hairpin:PiecewiseCommand(1)
    - \tweak stencil #constante-hairpin                                        %! EXPLICIT_DYNAMIC:_set_status_tag:baca_hairpin:PiecewiseCommand(1)
    \<                                                                         %! EXPLICIT_DYNAMIC:_set_status_tag:baca_hairpin:PiecewiseCommand(1)

    % [C RH_Music_Voice measure 87 / measure 8]                                %! _comment_measure_numbers
    e'4
    :32                                                                        %! baca_stem_tremolo:IndicatorCommand
    _ \baca-fz-markup                                                          %! baca_markup:IndicatorCommand

    e'8
    :32                                                                        %! baca_stem_tremolo:IndicatorCommand
    _ \baca-fz-markup                                                          %! baca_markup:IndicatorCommand
    \glissando                                                                 %! baca_glissando

    c'8
    :32                                                                        %! baca_stem_tremolo:IndicatorCommand
    _ \baca-fz-markup                                                          %! baca_markup:IndicatorCommand
    \glissando                                                                 %! baca_glissando

    % [C RH_Music_Voice measure 88 / measure 9]                                %! _comment_measure_numbers
    e'4
    :32                                                                        %! baca_stem_tremolo:IndicatorCommand
    _ \baca-fz-markup                                                          %! baca_markup:IndicatorCommand

    e'8
    :32                                                                        %! baca_stem_tremolo:IndicatorCommand
    _ \baca-fz-markup                                                          %! baca_markup:IndicatorCommand

    \tweak edge-height #'(0.7 . 0)
    \times 2/3 {

        % [C RH_Music_Voice measure 89 / measure 10]                           %! _comment_measure_numbers
        e'4
        :32                                                                    %! baca_stem_tremolo:IndicatorCommand
        \!                                                                     %! baca_hairpin:PiecewiseCommand(2)
        - \tweak color #(x11-color 'blue)                                      %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
        - \tweak to-barline ##t                                                %! EXPLICIT_DYNAMIC:_set_status_tag:baca_hairpin:PiecewiseCommand(1)
        \mp                                                                    %! EXPLICIT_DYNAMIC:_set_status_tag:baca_hairpin:PiecewiseCommand(1)
        _ \baca-mfz-markup                                                     %! baca_markup:IndicatorCommand
        - \tweak color #(x11-color 'blue)                                      %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
        - \tweak to-barline ##t                                                %! EXPLICIT_DYNAMIC:_set_status_tag:baca_hairpin:PiecewiseCommand(1)
        \>                                                                     %! EXPLICIT_DYNAMIC:_set_status_tag:baca_hairpin:PiecewiseCommand(1)
        - \abjad-dashed-line-with-arrow                                        %! baca_text_spanner:PiecewiseCommand(1)
        - \baca-text-spanner-left-text "(trem. mod.)"                          %! baca_text_spanner:PiecewiseCommand(1)
        - \baca-text-spanner-right-text "trem. stretto"                        %! baca_text_spanner:PiecewiseCommand(1)
        - \tweak bound-details.right.padding #0.5                              %! baca_text_spanner:PiecewiseCommand(1)
        - \tweak bound-details.right.stencil-align-dir-y #center               %! baca_text_spanner:PiecewiseCommand(1)
        - \tweak staff-padding #6                                              %! baca_text_spanner:PiecewiseCommand(1)
        \startTextSpan                                                         %! baca_text_spanner:PiecewiseCommand(1)
        \glissando                                                             %! baca_glissando

    }

    \tweak edge-height #'(0.7 . 0)
    \times 2/3 {

        b'4
        :32                                                                    %! baca_stem_tremolo:IndicatorCommand
        _ \baca-mfz-markup                                                     %! baca_markup:IndicatorCommand
        \glissando                                                             %! baca_glissando

    }

    \tweak edge-height #'(0.7 . 0)
    \times 2/3 {

        % [C RH_Music_Voice measure 90 / measure 11]                           %! _comment_measure_numbers
        g'4
        :32                                                                    %! baca_stem_tremolo:IndicatorCommand
        _ \baca-mfz-markup                                                     %! baca_markup:IndicatorCommand
        \glissando                                                             %! baca_glissando

    }

    \tweak edge-height #'(0.7 . 0)
    \times 2/3 {

        e'4
        :32                                                                    %! baca_stem_tremolo:IndicatorCommand
        _ \baca-mfz-markup                                                     %! baca_markup:IndicatorCommand
        \glissando                                                             %! baca_glissando

    }

    \tweak edge-height #'(0.7 . 0)
    \times 4/5 {

        b'8
        :32                                                                    %! baca_stem_tremolo:IndicatorCommand
        - \tweak color #(x11-color 'blue)                                      %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
        - \tweak to-barline ##t                                                %! EXPLICIT_DYNAMIC:_set_status_tag:baca_hairpin:PiecewiseCommand(1)
        \ppp                                                                   %! EXPLICIT_DYNAMIC:_set_status_tag:baca_hairpin:PiecewiseCommand(1)
        _ \baca-mpz-markup                                                     %! baca_markup:IndicatorCommand
        - \tweak color #(x11-color 'blue)                                      %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
        - \tweak to-barline ##t                                                %! EXPLICIT_DYNAMIC:_set_status_tag:baca_hairpin:PiecewiseCommand(1)
        - \tweak stencil #constante-hairpin                                    %! EXPLICIT_DYNAMIC:_set_status_tag:baca_hairpin:PiecewiseCommand(1)
        \<                                                                     %! EXPLICIT_DYNAMIC:_set_status_tag:baca_hairpin:PiecewiseCommand(1)
        \stopTextSpan                                                          %! baca_text_spanner:PiecewiseCommand(2)
        \glissando                                                             %! baca_glissando

    }

    \tweak edge-height #'(0.7 . 0)
    \times 4/5 {

        g'8
        :32                                                                    %! baca_stem_tremolo:IndicatorCommand
        _ \baca-mpz-markup                                                     %! baca_markup:IndicatorCommand
        \glissando                                                             %! baca_glissando

    }

    \tweak edge-height #'(0.7 . 0)
    \times 4/5 {

        e'8
        :32                                                                    %! baca_stem_tremolo:IndicatorCommand
        _ \baca-mpz-markup                                                     %! baca_markup:IndicatorCommand
        \glissando                                                             %! baca_glissando

    }

    \tweak edge-height #'(0.7 . 0)
    \times 4/5 {

        c'8
        :32                                                                    %! baca_stem_tremolo:IndicatorCommand
        _ \baca-mpz-markup                                                     %! baca_markup:IndicatorCommand

    }

    % [C RH_Music_Voice measure 91 / measure 12]                               %! _comment_measure_numbers
    c'2
    :32                                                                        %! baca_stem_tremolo:IndicatorCommand
    _ \baca-ffz-markup                                                         %! baca_markup:IndicatorCommand

    % [C RH_Music_Voice measure 92 / measure 13]                               %! _comment_measure_numbers
    c'2
    :32                                                                        %! baca_stem_tremolo:IndicatorCommand
    \!                                                                         %! baca_hairpin:PiecewiseCommand(2)
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! EXPLICIT_DYNAMIC:_set_status_tag:baca_hairpin:PiecewiseCommand(1)
    _ \baca-ffz-markup                                                         %! baca_markup:IndicatorCommand
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \<                                                                         %! EXPLICIT_DYNAMIC:_set_status_tag:baca_hairpin:PiecewiseCommand(1)
    - \abjad-dashed-line-with-arrow                                            %! baca_text_spanner:PiecewiseCommand(1)
    - \baca-text-spanner-left-text "sub. trem. mod."                           %! baca_text_spanner:PiecewiseCommand(1)
    - \tweak staff-padding #6                                                  %! baca_text_spanner:PiecewiseCommand(1)
    \startTextSpan                                                             %! baca_text_spanner:PiecewiseCommand(1)
    \glissando                                                                 %! baca_glissando

    % [C RH_Music_Voice measure 93 / measure 14]                               %! _comment_measure_numbers
    a2
    :32                                                                        %! baca_stem_tremolo:IndicatorCommand
    _ \baca-ffz-markup                                                         %! baca_markup:IndicatorCommand
    \stopTextSpan                                                              %! baca_text_spanner:PiecewiseCommand(1)
    - \abjad-dashed-line-with-arrow                                            %! baca_text_spanner:PiecewiseCommand(1)
    - \baca-text-spanner-left-text "più stretto"                               %! baca_text_spanner:PiecewiseCommand(1)
    - \tweak staff-padding #6                                                  %! baca_text_spanner:PiecewiseCommand(1)
    \startTextSpan                                                             %! baca_text_spanner:PiecewiseCommand(1)

    % [C RH_Music_Voice measure 94 / measure 15]                               %! _comment_measure_numbers
    a2
    :32                                                                        %! baca_stem_tremolo:IndicatorCommand
    _ \baca-ffz-markup                                                         %! baca_markup:IndicatorCommand
    \stopTextSpan                                                              %! baca_text_spanner:PiecewiseCommand(1)
    - \abjad-dashed-line-with-arrow                                            %! baca_text_spanner:PiecewiseCommand(1)
    - \baca-text-spanner-left-text "più largo"                                 %! baca_text_spanner:PiecewiseCommand(1)
    - \baca-text-spanner-right-text "più stretto"                              %! baca_text_spanner:PiecewiseCommand(1)
    - \tweak bound-details.right.padding #0.5                                  %! baca_text_spanner:PiecewiseCommand(1)
    - \tweak bound-details.right.stencil-align-dir-y #center                   %! baca_text_spanner:PiecewiseCommand(1)
    - \tweak staff-padding #6                                                  %! baca_text_spanner:PiecewiseCommand(1)
    \startTextSpan                                                             %! baca_text_spanner:PiecewiseCommand(1)
    \glissando                                                                 %! baca_glissando

    % [C RH_Music_Voice measure 95 / measure 16]                               %! _comment_measure_numbers
    f2
    :32                                                                        %! baca_stem_tremolo:IndicatorCommand
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mf                                                                        %! EXPLICIT_DYNAMIC:_set_status_tag:baca_hairpin:PiecewiseCommand(2)
    _ \baca-ffz-markup                                                         %! baca_markup:IndicatorCommand
    \stopTextSpan                                                              %! baca_text_spanner:PiecewiseCommand(2)
    \glissando                                                                 %! baca_glissando

    \tweak edge-height #'(0.7 . 0)
    \times 2/3 {

        % [C RH_Music_Voice measure 96 / measure 17]                           %! _comment_measure_numbers
        c'4
        :32                                                                    %! baca_stem_tremolo:IndicatorCommand
        - \tweak color #(x11-color 'blue)                                      %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
        \mp                                                                    %! EXPLICIT_DYNAMIC:_set_status_tag:baca_hairpin:PiecewiseCommand(1)
        _ \baca-fz-markup                                                      %! baca_markup:IndicatorCommand
        - \tweak color #(x11-color 'blue)                                      %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
        \>                                                                     %! EXPLICIT_DYNAMIC:_set_status_tag:baca_hairpin:PiecewiseCommand(1)
        - \abjad-dashed-line-with-arrow                                        %! baca_text_spanner:PiecewiseCommand(1)
        - \baca-text-spanner-left-text "sub. trem. mod."                       %! baca_text_spanner:PiecewiseCommand(1)
        - \baca-text-spanner-right-text "trem. stretto"                        %! baca_text_spanner:PiecewiseCommand(1)
        - \tweak bound-details.right.padding #0.5                              %! baca_text_spanner:PiecewiseCommand(1)
        - \tweak bound-details.right.stencil-align-dir-y #center               %! baca_text_spanner:PiecewiseCommand(1)
        - \tweak staff-padding #6                                              %! baca_text_spanner:PiecewiseCommand(1)
        \startTextSpan                                                         %! baca_text_spanner:PiecewiseCommand(1)
        \glissando                                                             %! baca_glissando

    }

    \tweak edge-height #'(0.7 . 0)
    \times 2/3 {

        % [C RH_Music_Voice measure 97 / measure 18]                           %! _comment_measure_numbers
        b'4
        :32                                                                    %! baca_stem_tremolo:IndicatorCommand
        _ \baca-mfz-markup                                                     %! baca_markup:IndicatorCommand
        \glissando                                                             %! baca_glissando

    }

    \tweak edge-height #'(0.7 . 0)
    \times 2/3 {

        g'4
        :32                                                                    %! baca_stem_tremolo:IndicatorCommand
        _ \baca-mfz-markup                                                     %! baca_markup:IndicatorCommand
        \glissando                                                             %! baca_glissando

    }

    \tweak edge-height #'(0.7 . 0)
    \times 2/3 {

        e'4
        :32                                                                    %! baca_stem_tremolo:IndicatorCommand
        _ \baca-mfz-markup                                                     %! baca_markup:IndicatorCommand
        \glissando                                                             %! baca_glissando

    }

    \tweak edge-height #'(0.7 . 0)
    \times 4/5 {

        % [C RH_Music_Voice measure 98 / measure 19]                           %! _comment_measure_numbers
        b'8
        :32                                                                    %! baca_stem_tremolo:IndicatorCommand
        - \tweak color #(x11-color 'blue)                                      %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
        \ppp                                                                   %! EXPLICIT_DYNAMIC:_set_status_tag:baca_hairpin:PiecewiseCommand(1)
        _ \baca-mpz-markup                                                     %! baca_markup:IndicatorCommand
        - \tweak color #(x11-color 'blue)                                      %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
        - \tweak stencil #constante-hairpin                                    %! EXPLICIT_DYNAMIC:_set_status_tag:baca_hairpin:PiecewiseCommand(1)
        \<                                                                     %! EXPLICIT_DYNAMIC:_set_status_tag:baca_hairpin:PiecewiseCommand(1)
        \stopTextSpan                                                          %! baca_text_spanner:PiecewiseCommand(2)
        \glissando                                                             %! baca_glissando

    }

    \tweak edge-height #'(0.7 . 0)
    \times 4/5 {

        g'8
        :32                                                                    %! baca_stem_tremolo:IndicatorCommand
        _ \baca-mpz-markup                                                     %! baca_markup:IndicatorCommand
        \glissando                                                             %! baca_glissando

    }

    \tweak edge-height #'(0.7 . 0)
    \times 4/5 {

        e'8
        :32                                                                    %! baca_stem_tremolo:IndicatorCommand
        _ \baca-mpz-markup                                                     %! baca_markup:IndicatorCommand
        \glissando                                                             %! baca_glissando

    }

    \tweak edge-height #'(0.7 . 0)
    \times 4/5 {

        c'8
        :32                                                                    %! baca_stem_tremolo:IndicatorCommand
        _ \baca-mpz-markup                                                     %! baca_markup:IndicatorCommand

    }

    % [C RH_Music_Voice measure 99 / measure 20]                               %! _comment_measure_numbers
    c'2
    :32                                                                        %! baca_stem_tremolo:IndicatorCommand
    _ \baca-ffz-markup                                                         %! baca_markup:IndicatorCommand

    % [C RH_Music_Voice measure 100 / measure 21]                              %! _comment_measure_numbers
    c'2
    :32                                                                        %! baca_stem_tremolo:IndicatorCommand
    \!                                                                         %! baca_hairpin:PiecewiseCommand(2)
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \p                                                                         %! EXPLICIT_DYNAMIC:_set_status_tag:baca_hairpin:PiecewiseCommand(1)
    _ \baca-ffz-markup                                                         %! baca_markup:IndicatorCommand
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \<                                                                         %! EXPLICIT_DYNAMIC:_set_status_tag:baca_hairpin:PiecewiseCommand(1)
    - \abjad-dashed-line-with-arrow                                            %! baca_text_spanner:PiecewiseCommand(1)
    - \baca-text-spanner-left-text "sub. trem. mod."                           %! baca_text_spanner:PiecewiseCommand(1)
    - \tweak staff-padding #6                                                  %! baca_text_spanner:PiecewiseCommand(1)
    \startTextSpan                                                             %! baca_text_spanner:PiecewiseCommand(1)
    \glissando                                                                 %! baca_glissando

    % [C RH_Music_Voice measure 101 / measure 22]                              %! _comment_measure_numbers
    a2
    :32                                                                        %! baca_stem_tremolo:IndicatorCommand
    _ \baca-ffz-markup                                                         %! baca_markup:IndicatorCommand
    \stopTextSpan                                                              %! baca_text_spanner:PiecewiseCommand(1)
    - \abjad-dashed-line-with-arrow                                            %! baca_text_spanner:PiecewiseCommand(1)
    - \baca-text-spanner-left-text "più stretto"                               %! baca_text_spanner:PiecewiseCommand(1)
    - \tweak staff-padding #6                                                  %! baca_text_spanner:PiecewiseCommand(1)
    \startTextSpan                                                             %! baca_text_spanner:PiecewiseCommand(1)

    % [C RH_Music_Voice measure 102 / measure 23]                              %! _comment_measure_numbers
    a2
    :32                                                                        %! baca_stem_tremolo:IndicatorCommand
    _ \baca-ffz-markup                                                         %! baca_markup:IndicatorCommand
    \stopTextSpan                                                              %! baca_text_spanner:PiecewiseCommand(1)
    - \abjad-dashed-line-with-arrow                                            %! baca_text_spanner:PiecewiseCommand(1)
    - \baca-text-spanner-left-text "più largo"                                 %! baca_text_spanner:PiecewiseCommand(1)
    - \tweak staff-padding #6                                                  %! baca_text_spanner:PiecewiseCommand(1)
    \startTextSpan                                                             %! baca_text_spanner:PiecewiseCommand(1)
    \glissando                                                                 %! baca_glissando

    % [C RH_Music_Voice measure 103 / measure 24]                              %! _comment_measure_numbers
    f2
    :32                                                                        %! baca_stem_tremolo:IndicatorCommand
    _ \baca-ffz-markup                                                         %! baca_markup:IndicatorCommand
    \stopTextSpan                                                              %! baca_text_spanner:PiecewiseCommand(1)
    - \abjad-dashed-line-with-arrow                                            %! baca_text_spanner:PiecewiseCommand(1)
    - \baca-text-spanner-left-text "più stretto"                               %! baca_text_spanner:PiecewiseCommand(1)
    - \tweak staff-padding #6                                                  %! baca_text_spanner:PiecewiseCommand(1)
    \startTextSpan                                                             %! baca_text_spanner:PiecewiseCommand(1)

    % [C RH_Music_Voice measure 104 / measure 25]                              %! _comment_measure_numbers
    f2
    :32                                                                        %! baca_stem_tremolo:IndicatorCommand
    _ \baca-ffz-markup                                                         %! baca_markup:IndicatorCommand
    \stopTextSpan                                                              %! baca_text_spanner:PiecewiseCommand(1)
    - \abjad-dashed-line-with-arrow                                            %! baca_text_spanner:PiecewiseCommand(1)
    - \baca-text-spanner-left-text "più largo"                                 %! baca_text_spanner:PiecewiseCommand(1)
    - \baca-text-spanner-right-text "più stretto"                              %! baca_text_spanner:PiecewiseCommand(1)
    - \tweak bound-details.right.padding #0.5                                  %! baca_text_spanner:PiecewiseCommand(1)
    - \tweak bound-details.right.stencil-align-dir-y #center                   %! baca_text_spanner:PiecewiseCommand(1)
    - \tweak staff-padding #6                                                  %! baca_text_spanner:PiecewiseCommand(1)
    \startTextSpan                                                             %! baca_text_spanner:PiecewiseCommand(1)
    \glissando                                                                 %! baca_glissando

    % [C RH_Music_Voice measure 105 / measure 26]                              %! _comment_measure_numbers
    d2
    :32                                                                        %! baca_stem_tremolo:IndicatorCommand
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \f                                                                         %! EXPLICIT_DYNAMIC:_set_status_tag:baca_hairpin:PiecewiseCommand(2)
    - \tweak self-alignment-X #-0.95                                           %! baca_markup:IndicatorCommand
    - \tweak staff-padding #2                                                  %! baca_markup:IndicatorCommand
    ^ \huitzil-directly-above-end-of-fingerboard-markup                        %! baca_markup:IndicatorCommand
    _ \baca-ffz-markup                                                         %! baca_markup:IndicatorCommand
    \stopTextSpan                                                              %! baca_text_spanner:PiecewiseCommand(2)
    \revert DynamicLineSpanner.staff-padding                                   %! baca_dls_staff_padding:OverrideCommand(2)
    \revert TextScript.parent-alignment-X                                      %! baca_text_script_parent_alignment_x:OverrideCommand(2)
    \revert TextScript.self-alignment-X                                        %! baca_text_script_self_alignment_x:OverrideCommand(2)
    \revert TextScript.staff-padding                                           %! baca_script_staff_padding:OverrideCommand(2)

    <<                                                                         %! PHANTOM:_make_multimeasure_rest_container

        \context Voice = "RH_Music_Voice"                                      %! PHANTOM:_make_multimeasure_rest_container
        {                                                                      %! PHANTOM:_make_multimeasure_rest_container

            % [C RH_Music_Voice measure 106 / measure 27]                      %! PHANTOM:_style_phantom_measures(5):_comment_measure_numbers
            \baca-invisible-music                                              %! PHANTOM:_style_phantom_measures(5):_make_multimeasure_rest_container
            c'1 * 1/4                                                          %! PHANTOM:_make_multimeasure_rest_container

        }                                                                      %! PHANTOM:_make_multimeasure_rest_container

        \context Voice = "RH_Rest_Voice"                                       %! PHANTOM:_make_multimeasure_rest_container
        {                                                                      %! PHANTOM:_make_multimeasure_rest_container

            % [C RH_Rest_Voice measure 106 / measure 27]                       %! PHANTOM:_style_phantom_measures(5):_comment_measure_numbers
            \once \override Score.TimeSignature.X-extent = ##f                 %! PHANTOM:_style_phantom_measures(6)
            \once \override MultiMeasureRest.transparent = ##t                 %! PHANTOM:_style_phantom_measures(7)
            \stopStaff                                                         %! PHANTOM:_style_phantom_measures(8)
            \once \override Staff.StaffSymbol.transparent = ##t                %! PHANTOM:_style_phantom_measures(8)
            \startStaff                                                        %! PHANTOM:_style_phantom_measures(8)
            R1 * 1/4                                                           %! PHANTOM:_make_multimeasure_rest_container

        }                                                                      %! PHANTOM:_make_multimeasure_rest_container

    >>                                                                         %! PHANTOM:_make_multimeasure_rest_container

}                                                                              %! abjad.Path.extern


C_RH_Music_Staff = {                                                           %! abjad.Path.extern

    \context Voice = "RH_Music_Voice"                                          %! huitzil.ScoreTemplate.__call__
    \C_RH_Music_Voice                                                          %! abjad.Path.extern

}                                                                              %! abjad.Path.extern


C_Cello_Music_Voice = {                                                        %! abjad.Path.extern

    % [C Cello_Music_Voice measure 80 / measure 1]                             %! _comment_measure_numbers
    \override MultiMeasureRest.transparent = ##t                               %! baca_mmrest_transparent:OverrideCommand(1)
    \override Score.BarLine.transparent = ##t                                  %! baca_bar_line_transparent:OverrideCommand(1)
    \override Score.SpanBar.transparent = ##t                                  %! baca_span_bar_transparent:OverrideCommand(1)
    \override Score.TimeSignature.stencil = ##f                                %! baca_time_signature_stencil_false:OverrideCommand(1)
    \clef "bass"                                                               %! REAPPLIED_CLEF:_set_status_tag:_reapply_persistent_indicators(3)
    \once \override Staff.Clef.color = #(x11-color 'green4)                    %! REAPPLIED_CLEF_COLOR:_attach_color_literal(2)
%@% \override Staff.Clef.color = ##f                                           %! REAPPLIED_CLEF_COLOR_CANCELLATION:_attach_color_literal(1)
    \set Staff.forceClef = ##t                                                 %! REAPPLIED_CLEF:_set_status_tag:_treat_persistent_wrapper(2):_reapply_persistent_indicators(3)
    R1 * 1/2                                                                   %! _call_rhythm_commands
    ^ \baca-reapplied-indicator-markup "(“Cello”)"                             %! REAPPLIED_INSTRUMENT_ALERT:_attach_latent_indicator_alert
    \override Staff.Clef.color = #(x11-color 'OliveDrab)                       %! REAPPLIED_CLEF_REDRAW_COLOR:_attach_color_literal(2)

    \tweak edge-height #'(0.7 . 0)
    \times 2/3 {

        % [C Cello_Music_Voice measure 81 / measure 2]                         %! _comment_measure_numbers
        R1 * 13/16                                                             %! _call_rhythm_commands

    }

    % [C Cello_Music_Voice measure 82 / measure 3]                             %! _comment_measure_numbers
    R1 * 1/2                                                                   %! _call_rhythm_commands

    \tweak edge-height #'(0.7 . 0)
    \times 2/3 {

        % [C Cello_Music_Voice measure 83 / measure 4]                         %! _comment_measure_numbers
        R1 * 7/8                                                               %! _call_rhythm_commands

    }

    \tweak edge-height #'(0.7 . 0)
    \times 8/15 {

        % [C Cello_Music_Voice measure 84 / measure 5]                         %! _comment_measure_numbers
        R1 * 53/32                                                             %! _call_rhythm_commands

    }

    \tweak edge-height #'(0.7 . 0)
    \times 2/3 {

        % [C Cello_Music_Voice measure 85 / measure 6]                         %! _comment_measure_numbers
        R1 * 23/16                                                             %! _call_rhythm_commands

    }

    % [C Cello_Music_Voice measure 86 / measure 7]                             %! _comment_measure_numbers
    R1 * 1/2                                                                   %! _call_rhythm_commands

    % [C Cello_Music_Voice measure 87 / measure 8]                             %! _comment_measure_numbers
    R1 * 1/2                                                                   %! _call_rhythm_commands

    % [C Cello_Music_Voice measure 88 / measure 9]                             %! _comment_measure_numbers
    R1 * 3/8                                                                   %! _call_rhythm_commands

    \tweak edge-height #'(0.7 . 0)
    \times 2/3 {

        % [C Cello_Music_Voice measure 89 / measure 10]                        %! _comment_measure_numbers
        R1 * 1/2                                                               %! _call_rhythm_commands

    }

    \tweak edge-height #'(0.7 . 0)
    \times 8/15 {

        % [C Cello_Music_Voice measure 90 / measure 11]                        %! _comment_measure_numbers
        R1 * 11/8                                                              %! _call_rhythm_commands

    }

    % [C Cello_Music_Voice measure 91 / measure 12]                            %! _comment_measure_numbers
    R1 * 1/2                                                                   %! _call_rhythm_commands

    % [C Cello_Music_Voice measure 92 / measure 13]                            %! _comment_measure_numbers
    R1 * 1/2                                                                   %! _call_rhythm_commands

    % [C Cello_Music_Voice measure 93 / measure 14]                            %! _comment_measure_numbers
    R1 * 1/2                                                                   %! _call_rhythm_commands

    % [C Cello_Music_Voice measure 94 / measure 15]                            %! _comment_measure_numbers
    R1 * 1/2                                                                   %! _call_rhythm_commands

    % [C Cello_Music_Voice measure 95 / measure 16]                            %! _comment_measure_numbers
    R1 * 1/2                                                                   %! _call_rhythm_commands

    \tweak edge-height #'(0.7 . 0)
    \times 2/3 {

        % [C Cello_Music_Voice measure 96 / measure 17]                        %! _comment_measure_numbers
        R1 * 1/4                                                               %! _call_rhythm_commands

    }

    % [C Cello_Music_Voice measure 97 / measure 18]                            %! _comment_measure_numbers
    R1 * 1/2                                                                   %! _call_rhythm_commands

    \tweak edge-height #'(0.7 . 0)
    \times 4/5 {

        % [C Cello_Music_Voice measure 98 / measure 19]                        %! _comment_measure_numbers
        R1 * 1/2                                                               %! _call_rhythm_commands

    }

    % [C Cello_Music_Voice measure 99 / measure 20]                            %! _comment_measure_numbers
    R1 * 1/2                                                                   %! _call_rhythm_commands

    % [C Cello_Music_Voice measure 100 / measure 21]                           %! _comment_measure_numbers
    R1 * 1/2                                                                   %! _call_rhythm_commands

    % [C Cello_Music_Voice measure 101 / measure 22]                           %! _comment_measure_numbers
    R1 * 1/2                                                                   %! _call_rhythm_commands

    % [C Cello_Music_Voice measure 102 / measure 23]                           %! _comment_measure_numbers
    R1 * 1/2                                                                   %! _call_rhythm_commands

    % [C Cello_Music_Voice measure 103 / measure 24]                           %! _comment_measure_numbers
    R1 * 1/2                                                                   %! _call_rhythm_commands

    % [C Cello_Music_Voice measure 104 / measure 25]                           %! _comment_measure_numbers
    R1 * 1/2                                                                   %! _call_rhythm_commands

    % [C Cello_Music_Voice measure 105 / measure 26]                           %! _comment_measure_numbers
    R1 * 1/2                                                                   %! _call_rhythm_commands
    \revert MultiMeasureRest.transparent                                       %! baca_mmrest_transparent:OverrideCommand(2)
    \revert Score.BarLine.transparent                                          %! baca_bar_line_transparent:OverrideCommand(2)
    \revert Score.SpanBar.transparent                                          %! baca_span_bar_transparent:OverrideCommand(2)
    \revert Score.TimeSignature.stencil                                        %! baca_time_signature_stencil_false:OverrideCommand(2)

    <<                                                                         %! PHANTOM:_make_multimeasure_rest_container

        \context Voice = "Cello_Music_Voice"                                   %! PHANTOM:_make_multimeasure_rest_container
        {                                                                      %! PHANTOM:_make_multimeasure_rest_container

            % [C Cello_Music_Voice measure 106 / measure 27]                   %! PHANTOM:_style_phantom_measures(5):_comment_measure_numbers
            \baca-invisible-music                                              %! PHANTOM:_style_phantom_measures(5):_make_multimeasure_rest_container
            R1 * 1/4                                                           %! PHANTOM:_make_multimeasure_rest_container

        }                                                                      %! PHANTOM:_make_multimeasure_rest_container

        \context Voice = "Cello_Rest_Voice"                                    %! PHANTOM:_make_multimeasure_rest_container
        {                                                                      %! PHANTOM:_make_multimeasure_rest_container

            % [C Cello_Rest_Voice measure 106 / measure 27]                    %! PHANTOM:_style_phantom_measures(5):_comment_measure_numbers
            \once \override Score.TimeSignature.X-extent = ##f                 %! PHANTOM:_style_phantom_measures(6)
            \once \override MultiMeasureRest.transparent = ##t                 %! PHANTOM:_style_phantom_measures(7)
            \stopStaff                                                         %! PHANTOM:_style_phantom_measures(8)
            \once \override Staff.StaffSymbol.transparent = ##t                %! PHANTOM:_style_phantom_measures(8)
            \startStaff                                                        %! PHANTOM:_style_phantom_measures(8)
            R1 * 1/4                                                           %! PHANTOM:_make_multimeasure_rest_container

        }                                                                      %! PHANTOM:_make_multimeasure_rest_container

    >>                                                                         %! PHANTOM:_make_multimeasure_rest_container

}                                                                              %! abjad.Path.extern


C_Cello_Music_Staff = {                                                        %! abjad.Path.extern

    \context Voice = "Cello_Music_Voice"                                       %! huitzil.ScoreTemplate.__call__
    \C_Cello_Music_Voice                                                       %! abjad.Path.extern

}                                                                              %! abjad.Path.extern
