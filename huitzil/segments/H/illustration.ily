H_Global_Rests = {                                                             %! abjad.Path.extern

    % [H Global_Rests measure 200 / measure 1]                                 %! _comment_measure_numbers
    R1 * 1/2                                                                   %! _make_global_rests(1)

    % [H Global_Rests measure 201 / measure 2]                                 %! _comment_measure_numbers
    R1 * 13/24                                                                 %! _make_global_rests(1)

    % [H Global_Rests measure 202 / measure 3]                                 %! _comment_measure_numbers
    R1 * 1/2                                                                   %! _make_global_rests(1)

    % [H Global_Rests measure 203 / measure 4]                                 %! _comment_measure_numbers
    R1 * 7/12                                                                  %! _make_global_rests(1)

    % [H Global_Rests measure 204 / measure 5]                                 %! _comment_measure_numbers
    R1 * 53/60                                                                 %! _make_global_rests(1)

    % [H Global_Rests measure 205 / measure 6]                                 %! _comment_measure_numbers
    R1 * 23/24                                                                 %! _make_global_rests(1)

    % [H Global_Rests measure 206 / measure 7]                                 %! _comment_measure_numbers
    R1 * 1/2                                                                   %! _make_global_rests(1)

    % [H Global_Rests measure 207 / measure 8]                                 %! _comment_measure_numbers
    R1 * 1/2                                                                   %! _make_global_rests(1)

    % [H Global_Rests measure 208 / measure 9]                                 %! _comment_measure_numbers
    R1 * 3/8                                                                   %! _make_global_rests(1)

    % [H Global_Rests measure 209 / measure 10]                                %! _comment_measure_numbers
    R1 * 1/3                                                                   %! _make_global_rests(1)

    % [H Global_Rests measure 210 / measure 11]                                %! _comment_measure_numbers
    R1 * 11/15                                                                 %! _make_global_rests(1)

    % [H Global_Rests measure 211 / measure 12]                                %! _comment_measure_numbers
    R1 * 1/2                                                                   %! _make_global_rests(1)

    % [H Global_Rests measure 212 / measure 13]                                %! _comment_measure_numbers
    R1 * 1/2                                                                   %! _make_global_rests(1)

    % [H Global_Rests measure 213 / measure 14]                                %! _comment_measure_numbers
    R1 * 1/2                                                                   %! _make_global_rests(1)

    % [H Global_Rests measure 214 / measure 15]                                %! _comment_measure_numbers
    R1 * 1/2                                                                   %! _make_global_rests(1)

    % [H Global_Rests measure 215 / measure 16]                                %! _comment_measure_numbers
    R1 * 1/2                                                                   %! _make_global_rests(1)

    % [H Global_Rests measure 216 / measure 17]                                %! _comment_measure_numbers
    R1 * 1/6                                                                   %! _make_global_rests(1)

    % [H Global_Rests measure 217 / measure 18]                                %! _comment_measure_numbers
    R1 * 1/2                                                                   %! _make_global_rests(1)

    % [H Global_Rests measure 218 / measure 19]                                %! _comment_measure_numbers
    R1 * 2/5                                                                   %! _make_global_rests(1)

    % [H Global_Rests measure 219 / measure 20]                                %! _comment_measure_numbers
    R1 * 1/2                                                                   %! _make_global_rests(1)

    % [H Global_Rests measure 220 / measure 21]                                %! _comment_measure_numbers
    R1 * 1/2                                                                   %! _make_global_rests(1)

    % [H Global_Rests measure 221 / measure 22]                                %! _comment_measure_numbers
    R1 * 1/2                                                                   %! _make_global_rests(1)

    % [H Global_Rests measure 222 / measure 23]                                %! _comment_measure_numbers
    R1 * 1/2                                                                   %! _make_global_rests(1)

    % [H Global_Rests measure 223 / measure 24]                                %! _comment_measure_numbers
    R1 * 1/2                                                                   %! _make_global_rests(1)

    % [H Global_Rests measure 224 / measure 25]                                %! _comment_measure_numbers
    R1 * 1/2                                                                   %! _make_global_rests(1)

    % [H Global_Rests measure 225 / measure 26]                                %! _comment_measure_numbers
    R1 * 1/2                                                                   %! _make_global_rests(1)

    % [H Global_Rests measure 226 / measure 27]                                %! PHANTOM:_style_phantom_measures(4):_comment_measure_numbers
    R1 * 1/4                                                                   %! PHANTOM:_make_global_rests(2)

}                                                                              %! abjad.Path.extern


H_Global_Skips = {                                                             %! abjad.Path.extern

    % [H Global_Skips measure 200 / measure 1]                                 %! _comment_measure_numbers
    \time 1/2                                                                  %! EXPLICIT_TIME_SIGNATURE:_set_status_tag:_make_global_skips(2)
    \bar ""                                                                    %! _make_global_skips(3):+SEGMENT:EMPTY_START_BAR
    \baca-time-signature-color #'blue                                          %! EXPLICIT_TIME_SIGNATURE_COLOR:_attach_color_literal(2)
    s1 * 1/2                                                                   %! _make_global_skips(1)
    - \baca-start-lmn-left-only "1"                                            %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER
%@% - \baca-start-mn-left-only "200"                                           %! MEASURE_NUMBER
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER
%@% - \abjad-invisible-line                                                    %! EXPLICIT_METRONOME_MARK:_set_status_tag:_attach_metronome_marks(2)
%@% - \baca-metronome-mark-spanner-left-text 2 0 1 "44"                        %! EXPLICIT_METRONOME_MARK:_set_status_tag:_attach_metronome_marks(2)
%@% \bacaStartTextSpanMM                                                       %! EXPLICIT_METRONOME_MARK:_set_status_tag:_attach_metronome_marks(2)
    - \abjad-invisible-line                                                    %! EXPLICIT_METRONOME_MARK_WITH_COLOR:_attach_metronome_marks(3)
    - \baca-metronome-mark-spanner-colored-left-text 2 0 1 "44" #'blue         %! EXPLICIT_METRONOME_MARK_WITH_COLOR:_attach_metronome_marks(3)
    \bacaStartTextSpanMM                                                       %! EXPLICIT_METRONOME_MARK_WITH_COLOR:_attach_metronome_marks(3)
    - \baca-start-ct-left-only "[7'52'']"                                      %! CLOCK_TIME
    \bacaStartTextSpanCT                                                       %! CLOCK_TIME

    % [H Global_Skips measure 201 / measure 2]                                 %! _comment_measure_numbers
    #(ly:expect-warning "strange time signature found")                        %! EXPLICIT_TIME_SIGNATURE:_set_status_tag:_make_global_skips(2)
    \time 13/24                                                                %! EXPLICIT_TIME_SIGNATURE:_set_status_tag:_make_global_skips(2)
    \baca-time-signature-color #'blue                                          %! EXPLICIT_TIME_SIGNATURE_COLOR:_attach_color_literal(2)
    s1 * 13/24                                                                 %! _make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER
    \bacaStopTextSpanCT                                                        %! CLOCK_TIME
    - \baca-start-lmn-left-only "2"                                            %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER
%@% - \baca-start-mn-left-only "201"                                           %! MEASURE_NUMBER
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER
    - \baca-start-ct-left-only "[7'54'']"                                      %! CLOCK_TIME
    \bacaStartTextSpanCT                                                       %! CLOCK_TIME

    % [H Global_Skips measure 202 / measure 3]                                 %! _comment_measure_numbers
    \time 1/2                                                                  %! EXPLICIT_TIME_SIGNATURE:_set_status_tag:_make_global_skips(2)
    \baca-time-signature-color #'blue                                          %! EXPLICIT_TIME_SIGNATURE_COLOR:_attach_color_literal(2)
    s1 * 1/2                                                                   %! _make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER
    \bacaStopTextSpanCT                                                        %! CLOCK_TIME
    - \baca-start-lmn-left-only "3"                                            %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER
%@% - \baca-start-mn-left-only "202"                                           %! MEASURE_NUMBER
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER
    - \baca-start-ct-left-only "[7'57'']"                                      %! CLOCK_TIME
    \bacaStartTextSpanCT                                                       %! CLOCK_TIME

    % [H Global_Skips measure 203 / measure 4]                                 %! _comment_measure_numbers
    #(ly:expect-warning "strange time signature found")                        %! EXPLICIT_TIME_SIGNATURE:_set_status_tag:_make_global_skips(2)
    \time 7/12                                                                 %! EXPLICIT_TIME_SIGNATURE:_set_status_tag:_make_global_skips(2)
    \baca-time-signature-color #'blue                                          %! EXPLICIT_TIME_SIGNATURE_COLOR:_attach_color_literal(2)
    s1 * 7/12                                                                  %! _make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER
    \bacaStopTextSpanCT                                                        %! CLOCK_TIME
    - \baca-start-lmn-left-only "4"                                            %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER
%@% - \baca-start-mn-left-only "203"                                           %! MEASURE_NUMBER
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER
    - \baca-start-ct-left-only "[8'00'']"                                      %! CLOCK_TIME
    \bacaStartTextSpanCT                                                       %! CLOCK_TIME

    % [H Global_Skips measure 204 / measure 5]                                 %! _comment_measure_numbers
    #(ly:expect-warning "strange time signature found")                        %! EXPLICIT_TIME_SIGNATURE:_set_status_tag:_make_global_skips(2)
    \time 53/60                                                                %! EXPLICIT_TIME_SIGNATURE:_set_status_tag:_make_global_skips(2)
    \baca-time-signature-color #'blue                                          %! EXPLICIT_TIME_SIGNATURE_COLOR:_attach_color_literal(2)
    s1 * 53/60                                                                 %! _make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER
    \bacaStopTextSpanCT                                                        %! CLOCK_TIME
    - \baca-start-lmn-left-only "5"                                            %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER
%@% - \baca-start-mn-left-only "204"                                           %! MEASURE_NUMBER
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER
    - \baca-start-ct-left-only "[8'03'']"                                      %! CLOCK_TIME
    \bacaStartTextSpanCT                                                       %! CLOCK_TIME

    % [H Global_Skips measure 205 / measure 6]                                 %! _comment_measure_numbers
    #(ly:expect-warning "strange time signature found")                        %! EXPLICIT_TIME_SIGNATURE:_set_status_tag:_make_global_skips(2)
    \time 23/24                                                                %! EXPLICIT_TIME_SIGNATURE:_set_status_tag:_make_global_skips(2)
    \baca-time-signature-color #'blue                                          %! EXPLICIT_TIME_SIGNATURE_COLOR:_attach_color_literal(2)
    s1 * 23/24                                                                 %! _make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER
    \bacaStopTextSpanCT                                                        %! CLOCK_TIME
    - \baca-start-lmn-left-only "6"                                            %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER
%@% - \baca-start-mn-left-only "205"                                           %! MEASURE_NUMBER
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER
    - \baca-start-ct-left-only "[8'08'']"                                      %! CLOCK_TIME
    \bacaStartTextSpanCT                                                       %! CLOCK_TIME

    % [H Global_Skips measure 206 / measure 7]                                 %! _comment_measure_numbers
    \time 1/2                                                                  %! EXPLICIT_TIME_SIGNATURE:_set_status_tag:_make_global_skips(2)
    \baca-time-signature-color #'blue                                          %! EXPLICIT_TIME_SIGNATURE_COLOR:_attach_color_literal(2)
    s1 * 1/2                                                                   %! _make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER
    \bacaStopTextSpanCT                                                        %! CLOCK_TIME
    - \baca-start-lmn-left-only "7"                                            %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER
%@% - \baca-start-mn-left-only "206"                                           %! MEASURE_NUMBER
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER
    - \baca-start-ct-left-only "[8'13'']"                                      %! CLOCK_TIME
    \bacaStartTextSpanCT                                                       %! CLOCK_TIME

    % [H Global_Skips measure 207 / measure 8]                                 %! _comment_measure_numbers
    s1 * 1/2                                                                   %! _make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER
    \bacaStopTextSpanCT                                                        %! CLOCK_TIME
    - \baca-start-lmn-left-only "8"                                            %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER
%@% - \baca-start-mn-left-only "207"                                           %! MEASURE_NUMBER
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER
    - \baca-start-ct-left-only "[8'16'']"                                      %! CLOCK_TIME
    \bacaStartTextSpanCT                                                       %! CLOCK_TIME

    % [H Global_Skips measure 208 / measure 9]                                 %! _comment_measure_numbers
    \time 3/8                                                                  %! EXPLICIT_TIME_SIGNATURE:_set_status_tag:_make_global_skips(2)
    \baca-time-signature-color #'blue                                          %! EXPLICIT_TIME_SIGNATURE_COLOR:_attach_color_literal(2)
    s1 * 3/8                                                                   %! _make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER
    \bacaStopTextSpanCT                                                        %! CLOCK_TIME
    - \baca-start-lmn-left-only "9"                                            %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER
%@% - \baca-start-mn-left-only "208"                                           %! MEASURE_NUMBER
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER
    - \baca-start-ct-left-only "[8'19'']"                                      %! CLOCK_TIME
    \bacaStartTextSpanCT                                                       %! CLOCK_TIME

    % [H Global_Skips measure 209 / measure 10]                                %! _comment_measure_numbers
    #(ly:expect-warning "strange time signature found")                        %! EXPLICIT_TIME_SIGNATURE:_set_status_tag:_make_global_skips(2)
    \time 1/3                                                                  %! EXPLICIT_TIME_SIGNATURE:_set_status_tag:_make_global_skips(2)
    \baca-time-signature-color #'blue                                          %! EXPLICIT_TIME_SIGNATURE_COLOR:_attach_color_literal(2)
    s1 * 1/3                                                                   %! _make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER
    \bacaStopTextSpanCT                                                        %! CLOCK_TIME
    - \baca-start-lmn-left-only "10"                                           %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER
%@% - \baca-start-mn-left-only "209"                                           %! MEASURE_NUMBER
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER
    - \baca-start-ct-left-only "[8'21'']"                                      %! CLOCK_TIME
    \bacaStartTextSpanCT                                                       %! CLOCK_TIME

    % [H Global_Skips measure 210 / measure 11]                                %! _comment_measure_numbers
    #(ly:expect-warning "strange time signature found")                        %! EXPLICIT_TIME_SIGNATURE:_set_status_tag:_make_global_skips(2)
    \time 11/15                                                                %! EXPLICIT_TIME_SIGNATURE:_set_status_tag:_make_global_skips(2)
    \baca-time-signature-color #'blue                                          %! EXPLICIT_TIME_SIGNATURE_COLOR:_attach_color_literal(2)
    s1 * 11/15                                                                 %! _make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER
    \bacaStopTextSpanCT                                                        %! CLOCK_TIME
    - \baca-start-lmn-left-only "11"                                           %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER
%@% - \baca-start-mn-left-only "210"                                           %! MEASURE_NUMBER
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER
    - \baca-start-ct-left-only "[8'22'']"                                      %! CLOCK_TIME
    \bacaStartTextSpanCT                                                       %! CLOCK_TIME

    % [H Global_Skips measure 211 / measure 12]                                %! _comment_measure_numbers
    \time 1/2                                                                  %! EXPLICIT_TIME_SIGNATURE:_set_status_tag:_make_global_skips(2)
    \baca-time-signature-color #'blue                                          %! EXPLICIT_TIME_SIGNATURE_COLOR:_attach_color_literal(2)
    s1 * 1/2                                                                   %! _make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER
    \bacaStopTextSpanCT                                                        %! CLOCK_TIME
    - \baca-start-lmn-left-only "12"                                           %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER
%@% - \baca-start-mn-left-only "211"                                           %! MEASURE_NUMBER
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER
    - \baca-start-ct-left-only "[8'26'']"                                      %! CLOCK_TIME
    \bacaStartTextSpanCT                                                       %! CLOCK_TIME

    % [H Global_Skips measure 212 / measure 13]                                %! _comment_measure_numbers
    s1 * 1/2                                                                   %! _make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER
    \bacaStopTextSpanMM                                                        %! _attach_metronome_marks(1)
    \bacaStopTextSpanCT                                                        %! CLOCK_TIME
    - \baca-start-lmn-left-only "13"                                           %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER
%@% - \baca-start-mn-left-only "212"                                           %! MEASURE_NUMBER
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER
%@% - \abjad-dashed-line-with-arrow                                            %! EXPLICIT_METRONOME_MARK:_set_status_tag:_attach_metronome_marks(2)
%@% - \baca-metronome-mark-spanner-left-text 2 0 1 "44"                        %! EXPLICIT_METRONOME_MARK:_set_status_tag:_attach_metronome_marks(2)
%@% \bacaStartTextSpanMM                                                       %! EXPLICIT_METRONOME_MARK:_set_status_tag:_attach_metronome_marks(2)
    - \abjad-dashed-line-with-arrow                                            %! EXPLICIT_METRONOME_MARK_WITH_COLOR:_attach_metronome_marks(3)
    - \baca-metronome-mark-spanner-colored-left-text 2 0 1 "44" #'blue         %! EXPLICIT_METRONOME_MARK_WITH_COLOR:_attach_metronome_marks(3)
    \bacaStartTextSpanMM                                                       %! EXPLICIT_METRONOME_MARK_WITH_COLOR:_attach_metronome_marks(3)
    - \baca-start-ct-left-only "[8'29'']"                                      %! CLOCK_TIME
    \bacaStartTextSpanCT                                                       %! CLOCK_TIME

    % [H Global_Skips measure 213 / measure 14]                                %! _comment_measure_numbers
    s1 * 1/2                                                                   %! _make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER
    \bacaStopTextSpanCT                                                        %! CLOCK_TIME
    - \baca-start-lmn-left-only "14"                                           %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER
%@% - \baca-start-mn-left-only "213"                                           %! MEASURE_NUMBER
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER
    - \baca-start-ct-left-only "[8'32'']"                                      %! CLOCK_TIME
    \bacaStartTextSpanCT                                                       %! CLOCK_TIME

    % [H Global_Skips measure 214 / measure 15]                                %! _comment_measure_numbers
    s1 * 1/2                                                                   %! _make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER
    \bacaStopTextSpanCT                                                        %! CLOCK_TIME
    - \baca-start-lmn-left-only "15"                                           %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER
%@% - \baca-start-mn-left-only "214"                                           %! MEASURE_NUMBER
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER
    - \baca-start-ct-left-only "[8'35'']"                                      %! CLOCK_TIME
    \bacaStartTextSpanCT                                                       %! CLOCK_TIME

    % [H Global_Skips measure 215 / measure 16]                                %! _comment_measure_numbers
    s1 * 1/2                                                                   %! _make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER
    \bacaStopTextSpanMM                                                        %! _attach_metronome_marks(1)
    \bacaStopTextSpanCT                                                        %! CLOCK_TIME
    - \baca-start-lmn-left-only "16"                                           %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER
%@% - \baca-start-mn-left-only "215"                                           %! MEASURE_NUMBER
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER
%@% - \abjad-invisible-line                                                    %! EXPLICIT_METRONOME_MARK:_set_status_tag:_attach_metronome_marks(2)
%@% - \baca-metronome-mark-spanner-left-text 2 0 1 "66"                        %! EXPLICIT_METRONOME_MARK:_set_status_tag:_attach_metronome_marks(2)
%@% \bacaStartTextSpanMM                                                       %! EXPLICIT_METRONOME_MARK:_set_status_tag:_attach_metronome_marks(2)
    - \abjad-invisible-line                                                    %! EXPLICIT_METRONOME_MARK_WITH_COLOR:_attach_metronome_marks(3)
    - \baca-metronome-mark-spanner-colored-left-text 2 0 1 "66" #'blue         %! EXPLICIT_METRONOME_MARK_WITH_COLOR:_attach_metronome_marks(3)
    \bacaStartTextSpanMM                                                       %! EXPLICIT_METRONOME_MARK_WITH_COLOR:_attach_metronome_marks(3)
    - \baca-start-ct-left-only "[8'37'']"                                      %! CLOCK_TIME
    \bacaStartTextSpanCT                                                       %! CLOCK_TIME

    % [H Global_Skips measure 216 / measure 17]                                %! _comment_measure_numbers
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
%@% - \baca-start-mn-left-only "216"                                           %! MEASURE_NUMBER
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER
%@% - \abjad-invisible-line                                                    %! EXPLICIT_METRONOME_MARK:_set_status_tag:_attach_metronome_marks(2)
%@% - \baca-metronome-mark-spanner-left-text 2 0 1 "44"                        %! EXPLICIT_METRONOME_MARK:_set_status_tag:_attach_metronome_marks(2)
%@% \bacaStartTextSpanMM                                                       %! EXPLICIT_METRONOME_MARK:_set_status_tag:_attach_metronome_marks(2)
    - \abjad-invisible-line                                                    %! EXPLICIT_METRONOME_MARK_WITH_COLOR:_attach_metronome_marks(3)
    - \baca-metronome-mark-spanner-colored-left-text 2 0 1 "44" #'blue         %! EXPLICIT_METRONOME_MARK_WITH_COLOR:_attach_metronome_marks(3)
    \bacaStartTextSpanMM                                                       %! EXPLICIT_METRONOME_MARK_WITH_COLOR:_attach_metronome_marks(3)
    - \baca-start-ct-left-only "[8'39'']"                                      %! CLOCK_TIME
    \bacaStartTextSpanCT                                                       %! CLOCK_TIME

    % [H Global_Skips measure 217 / measure 18]                                %! _comment_measure_numbers
    \time 1/2                                                                  %! EXPLICIT_TIME_SIGNATURE:_set_status_tag:_make_global_skips(2)
    \baca-time-signature-color #'blue                                          %! EXPLICIT_TIME_SIGNATURE_COLOR:_attach_color_literal(2)
    s1 * 1/2                                                                   %! _make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER
    \bacaStopTextSpanCT                                                        %! CLOCK_TIME
    - \baca-start-lmn-left-only "18"                                           %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER
%@% - \baca-start-mn-left-only "217"                                           %! MEASURE_NUMBER
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER
    - \baca-start-ct-left-only "[8'40'']"                                      %! CLOCK_TIME
    \bacaStartTextSpanCT                                                       %! CLOCK_TIME

    % [H Global_Skips measure 218 / measure 19]                                %! _comment_measure_numbers
    #(ly:expect-warning "strange time signature found")                        %! EXPLICIT_TIME_SIGNATURE:_set_status_tag:_make_global_skips(2)
    \time 2/5                                                                  %! EXPLICIT_TIME_SIGNATURE:_set_status_tag:_make_global_skips(2)
    \baca-time-signature-color #'blue                                          %! EXPLICIT_TIME_SIGNATURE_COLOR:_attach_color_literal(2)
    s1 * 2/5                                                                   %! _make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER
    \bacaStopTextSpanCT                                                        %! CLOCK_TIME
    - \baca-start-lmn-left-only "19"                                           %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER
%@% - \baca-start-mn-left-only "218"                                           %! MEASURE_NUMBER
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER
    - \baca-start-ct-left-only "[8'43'']"                                      %! CLOCK_TIME
    \bacaStartTextSpanCT                                                       %! CLOCK_TIME

    % [H Global_Skips measure 219 / measure 20]                                %! _comment_measure_numbers
    \time 1/2                                                                  %! EXPLICIT_TIME_SIGNATURE:_set_status_tag:_make_global_skips(2)
    \baca-time-signature-color #'blue                                          %! EXPLICIT_TIME_SIGNATURE_COLOR:_attach_color_literal(2)
    s1 * 1/2                                                                   %! _make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER
    \bacaStopTextSpanCT                                                        %! CLOCK_TIME
    - \baca-start-lmn-left-only "20"                                           %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER
%@% - \baca-start-mn-left-only "219"                                           %! MEASURE_NUMBER
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER
    - \baca-start-ct-left-only "[8'45'']"                                      %! CLOCK_TIME
    \bacaStartTextSpanCT                                                       %! CLOCK_TIME

    % [H Global_Skips measure 220 / measure 21]                                %! _comment_measure_numbers
    s1 * 1/2                                                                   %! _make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER
    \bacaStopTextSpanMM                                                        %! _attach_metronome_marks(1)
    \bacaStopTextSpanCT                                                        %! CLOCK_TIME
    - \baca-start-lmn-left-only "21"                                           %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER
%@% - \baca-start-mn-left-only "220"                                           %! MEASURE_NUMBER
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER
%@% - \abjad-dashed-line-with-arrow                                            %! EXPLICIT_METRONOME_MARK:_set_status_tag:_attach_metronome_marks(2)
%@% - \baca-metronome-mark-spanner-left-text 2 0 1 "44"                        %! EXPLICIT_METRONOME_MARK:_set_status_tag:_attach_metronome_marks(2)
%@% \bacaStartTextSpanMM                                                       %! EXPLICIT_METRONOME_MARK:_set_status_tag:_attach_metronome_marks(2)
    - \abjad-dashed-line-with-arrow                                            %! EXPLICIT_METRONOME_MARK_WITH_COLOR:_attach_metronome_marks(3)
    - \baca-metronome-mark-spanner-colored-left-text 2 0 1 "44" #'blue         %! EXPLICIT_METRONOME_MARK_WITH_COLOR:_attach_metronome_marks(3)
    \bacaStartTextSpanMM                                                       %! EXPLICIT_METRONOME_MARK_WITH_COLOR:_attach_metronome_marks(3)
    - \baca-start-ct-left-only "[8'48'']"                                      %! CLOCK_TIME
    \bacaStartTextSpanCT                                                       %! CLOCK_TIME

    % [H Global_Skips measure 221 / measure 22]                                %! _comment_measure_numbers
    s1 * 1/2                                                                   %! _make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER
    \bacaStopTextSpanCT                                                        %! CLOCK_TIME
    - \baca-start-lmn-left-only "22"                                           %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER
%@% - \baca-start-mn-left-only "221"                                           %! MEASURE_NUMBER
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER
    - \baca-start-ct-left-only "[8'50'']"                                      %! CLOCK_TIME
    \bacaStartTextSpanCT                                                       %! CLOCK_TIME

    % [H Global_Skips measure 222 / measure 23]                                %! _comment_measure_numbers
    s1 * 1/2                                                                   %! _make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER
    \bacaStopTextSpanCT                                                        %! CLOCK_TIME
    - \baca-start-lmn-left-only "23"                                           %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER
%@% - \baca-start-mn-left-only "222"                                           %! MEASURE_NUMBER
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER
    - \baca-start-ct-left-only "[8'53'']"                                      %! CLOCK_TIME
    \bacaStartTextSpanCT                                                       %! CLOCK_TIME

    % [H Global_Skips measure 223 / measure 24]                                %! _comment_measure_numbers
    s1 * 1/2                                                                   %! _make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER
    \bacaStopTextSpanCT                                                        %! CLOCK_TIME
    - \baca-start-lmn-left-only "24"                                           %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER
%@% - \baca-start-mn-left-only "223"                                           %! MEASURE_NUMBER
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER
    - \baca-start-ct-left-only "[8'56'']"                                      %! CLOCK_TIME
    \bacaStartTextSpanCT                                                       %! CLOCK_TIME

    % [H Global_Skips measure 224 / measure 25]                                %! _comment_measure_numbers
    s1 * 1/2                                                                   %! _make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER
    \bacaStopTextSpanCT                                                        %! CLOCK_TIME
    - \baca-start-lmn-left-only "25"                                           %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER
%@% - \baca-start-mn-left-only "224"                                           %! MEASURE_NUMBER
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER
    - \baca-start-ct-left-only "[8'59'']"                                      %! CLOCK_TIME
    \bacaStartTextSpanCT                                                       %! CLOCK_TIME

    % [H Global_Skips measure 225 / measure 26]                                %! _comment_measure_numbers
    s1 * 1/2                                                                   %! _make_global_skips(1)
    \bacaStopTextSpanLMN                                                       %! LOCAL_MEASURE_NUMBER
%@% \bacaStopTextSpanMN                                                        %! MEASURE_NUMBER
    \bacaStopTextSpanMM                                                        %! _attach_metronome_marks(1)
    \bacaStopTextSpanCT                                                        %! CLOCK_TIME
    - \baca-start-lmn-left-only "26"                                           %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN                                                      %! LOCAL_MEASURE_NUMBER
%@% - \baca-start-mn-left-only "225"                                           %! MEASURE_NUMBER
%@% \bacaStartTextSpanMN                                                       %! MEASURE_NUMBER
%@% - \abjad-invisible-line                                                    %! EXPLICIT_METRONOME_MARK:_set_status_tag:_attach_metronome_marks(2)
%@% - \baca-metronome-mark-spanner-left-text 2 0 1 "88"                        %! EXPLICIT_METRONOME_MARK:_set_status_tag:_attach_metronome_marks(2)
%@% \bacaStartTextSpanMM                                                       %! EXPLICIT_METRONOME_MARK:_set_status_tag:_attach_metronome_marks(2)
    - \abjad-invisible-line                                                    %! EXPLICIT_METRONOME_MARK_WITH_COLOR:_attach_metronome_marks(3)
    - \baca-metronome-mark-spanner-colored-left-text 2 0 1 "88" #'blue         %! EXPLICIT_METRONOME_MARK_WITH_COLOR:_attach_metronome_marks(3)
    \bacaStartTextSpanMM                                                       %! EXPLICIT_METRONOME_MARK_WITH_COLOR:_attach_metronome_marks(3)
    - \baca-start-ct-both "[9'01'']" "[9'03'']"                                %! CLOCK_TIME
    \bacaStartTextSpanCT                                                       %! CLOCK_TIME
    \baca-bar-line-visible                                                     %! _attach_final_bar_line
    \bar "|"                                                                   %! _attach_final_bar_line

    % [H Global_Skips measure 226 / measure 27]                                %! PHANTOM:_style_phantom_measures(1):_comment_measure_numbers
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


H_RH_Music_Voice = {                                                           %! abjad.Path.extern

    % [H RH_Music_Voice measure 200 / measure 1]                               %! _comment_measure_numbers
    \override Staff.BarLine.bar-extent = #'(-4 . 4)                            %! REDUNDANT_PERSISTENT_OVERRIDE:_set_status_tag:baca_bar_extent_persistent:IndicatorCommand
    \stopStaff                                                                 %! EXPLICIT_STAFF_LINES:_set_status_tag:baca_staff_lines:IndicatorCommand
    \once \override RHStaff.StaffSymbol.line-count = 7                         %! EXPLICIT_STAFF_LINES:_set_status_tag:baca_staff_lines:IndicatorCommand
    \startStaff                                                                %! EXPLICIT_STAFF_LINES:_set_status_tag:baca_staff_lines:IndicatorCommand
    \override DynamicLineSpanner.staff-padding = 7                             %! baca_literal:IndicatorCommand
    \override TextScript.parent-alignment-X = #0                               %! baca_text_script_parent_alignment_x:OverrideCommand(1)
    \override TextScript.self-alignment-X = #0                                 %! baca_text_script_self_alignment_x:OverrideCommand(1)
    \override TextScript.staff-padding = #4                                    %! baca_script_staff_padding:OverrideCommand(1)
    \once \override RHStaff.StaffSymbol.line-positions = #'(8.2 8 7.8 6 4 2 0 -2 -4 -5.8 -6 -6.2) %! baca_literal:IndicatorCommand
    \clef "percussion"                                                         %! REAPPLIED_CLEF:_set_status_tag:_reapply_persistent_indicators(3)
    \once \override RHStaff.Clef.color = #(x11-color 'green4)                  %! REAPPLIED_CLEF_COLOR:_attach_color_literal(2)
%@% \override RHStaff.Clef.color = ##f                                         %! REAPPLIED_CLEF_COLOR_CANCELLATION:_attach_color_literal(1)
    \set RHStaff.forceClef = ##t                                               %! REAPPLIED_CLEF:_set_status_tag:_treat_persistent_wrapper(2):_reapply_persistent_indicators(3)
    \once \override RHStaff.StaffSymbol.color = #(x11-color 'blue)             %! EXPLICIT_STAFF_LINES_COLOR:_attach_color_literal(2)
    b'4
    :32                                                                        %! baca_stem_tremolo:IndicatorCommand
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mp                                                                        %! EXPLICIT_DYNAMIC:_set_status_tag:baca_dynamic:IndicatorCommand
    _ \baca-mfz-markup                                                         %! baca_markup:IndicatorCommand
    - \abjad-invisible-line                                                    %! baca_text_spanner:PiecewiseCommand(1)
    - \baca-text-spanner-left-text "trem. moderato"                            %! baca_text_spanner:PiecewiseCommand(1)
    - \tweak staff-padding #6                                                  %! baca_text_spanner:PiecewiseCommand(1)
    \startTextSpan                                                             %! baca_text_spanner:PiecewiseCommand(1)
    \override RHStaff.Clef.color = #(x11-color 'OliveDrab)                     %! REAPPLIED_CLEF_REDRAW_COLOR:_attach_color_literal(2)

    b'8
    :32                                                                        %! baca_stem_tremolo:IndicatorCommand
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak to-barline ##t                                                    %! EXPLICIT_DYNAMIC:_set_status_tag:baca_hairpin:PiecewiseCommand(1)
    \mp                                                                        %! EXPLICIT_DYNAMIC:_set_status_tag:baca_hairpin:PiecewiseCommand(1)
    _ \baca-mfz-markup                                                         %! baca_markup:IndicatorCommand
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    - \tweak to-barline ##t                                                    %! EXPLICIT_DYNAMIC:_set_status_tag:baca_hairpin:PiecewiseCommand(1)
    - \tweak stencil #constante-hairpin                                        %! EXPLICIT_DYNAMIC:_set_status_tag:baca_hairpin:PiecewiseCommand(1)
    \<                                                                         %! EXPLICIT_DYNAMIC:_set_status_tag:baca_hairpin:PiecewiseCommand(1)
    \glissando                                                                 %! baca_glissando

    g'8
    :32                                                                        %! baca_stem_tremolo:IndicatorCommand
    _ \baca-mfz-markup                                                         %! baca_markup:IndicatorCommand
    \glissando                                                                 %! baca_glissando

    % [H RH_Music_Voice measure 201 / measure 2]                               %! _comment_measure_numbers
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

    % [H RH_Music_Voice measure 202 / measure 3]                               %! _comment_measure_numbers
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

        % [H RH_Music_Voice measure 203 / measure 4]                           %! _comment_measure_numbers
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

    % [H RH_Music_Voice measure 204 / measure 5]                               %! _comment_measure_numbers
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

    % [H RH_Music_Voice measure 205 / measure 6]                               %! _comment_measure_numbers
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

    % [H RH_Music_Voice measure 206 / measure 7]                               %! _comment_measure_numbers
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

    % [H RH_Music_Voice measure 207 / measure 8]                               %! _comment_measure_numbers
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

    % [H RH_Music_Voice measure 208 / measure 9]                               %! _comment_measure_numbers
    e'4
    :32                                                                        %! baca_stem_tremolo:IndicatorCommand
    _ \baca-fz-markup                                                          %! baca_markup:IndicatorCommand

    e'8
    :32                                                                        %! baca_stem_tremolo:IndicatorCommand
    _ \baca-fz-markup                                                          %! baca_markup:IndicatorCommand
    \stopTextSpan                                                              %! baca_text_spanner:PiecewiseCommand(3)

    \tweak edge-height #'(0.7 . 0)
    \times 2/3 {

        % [H RH_Music_Voice measure 209 / measure 10]                          %! _comment_measure_numbers
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

        % [H RH_Music_Voice measure 210 / measure 11]                          %! _comment_measure_numbers
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

    % [H RH_Music_Voice measure 211 / measure 12]                              %! _comment_measure_numbers
    c'2
    :32                                                                        %! baca_stem_tremolo:IndicatorCommand
    _ \baca-ffz-markup                                                         %! baca_markup:IndicatorCommand

    % [H RH_Music_Voice measure 212 / measure 13]                              %! _comment_measure_numbers
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

    % [H RH_Music_Voice measure 213 / measure 14]                              %! _comment_measure_numbers
    a2
    :32                                                                        %! baca_stem_tremolo:IndicatorCommand
    _ \baca-ffz-markup                                                         %! baca_markup:IndicatorCommand
    \stopTextSpan                                                              %! baca_text_spanner:PiecewiseCommand(1)
    - \abjad-dashed-line-with-arrow                                            %! baca_text_spanner:PiecewiseCommand(1)
    - \baca-text-spanner-left-text "più stretto"                               %! baca_text_spanner:PiecewiseCommand(1)
    - \tweak staff-padding #6                                                  %! baca_text_spanner:PiecewiseCommand(1)
    \startTextSpan                                                             %! baca_text_spanner:PiecewiseCommand(1)

    % [H RH_Music_Voice measure 214 / measure 15]                              %! _comment_measure_numbers
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

    % [H RH_Music_Voice measure 215 / measure 16]                              %! _comment_measure_numbers
    f2
    :32                                                                        %! baca_stem_tremolo:IndicatorCommand
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \mf                                                                        %! EXPLICIT_DYNAMIC:_set_status_tag:baca_hairpin:PiecewiseCommand(2)
    _ \baca-ffz-markup                                                         %! baca_markup:IndicatorCommand
    \stopTextSpan                                                              %! baca_text_spanner:PiecewiseCommand(2)
    \glissando                                                                 %! baca_glissando

    \tweak edge-height #'(0.7 . 0)
    \times 2/3 {

        % [H RH_Music_Voice measure 216 / measure 17]                          %! _comment_measure_numbers
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

        % [H RH_Music_Voice measure 217 / measure 18]                          %! _comment_measure_numbers
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

        % [H RH_Music_Voice measure 218 / measure 19]                          %! _comment_measure_numbers
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

    % [H RH_Music_Voice measure 219 / measure 20]                              %! _comment_measure_numbers
    c'2
    :32                                                                        %! baca_stem_tremolo:IndicatorCommand
    _ \baca-ffz-markup                                                         %! baca_markup:IndicatorCommand

    % [H RH_Music_Voice measure 220 / measure 21]                              %! _comment_measure_numbers
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

    % [H RH_Music_Voice measure 221 / measure 22]                              %! _comment_measure_numbers
    a2
    :32                                                                        %! baca_stem_tremolo:IndicatorCommand
    _ \baca-ffz-markup                                                         %! baca_markup:IndicatorCommand
    \stopTextSpan                                                              %! baca_text_spanner:PiecewiseCommand(1)
    - \abjad-dashed-line-with-arrow                                            %! baca_text_spanner:PiecewiseCommand(1)
    - \baca-text-spanner-left-text "più stretto"                               %! baca_text_spanner:PiecewiseCommand(1)
    - \tweak staff-padding #6                                                  %! baca_text_spanner:PiecewiseCommand(1)
    \startTextSpan                                                             %! baca_text_spanner:PiecewiseCommand(1)

    % [H RH_Music_Voice measure 222 / measure 23]                              %! _comment_measure_numbers
    a2
    :32                                                                        %! baca_stem_tremolo:IndicatorCommand
    _ \baca-ffz-markup                                                         %! baca_markup:IndicatorCommand
    \stopTextSpan                                                              %! baca_text_spanner:PiecewiseCommand(1)
    - \abjad-dashed-line-with-arrow                                            %! baca_text_spanner:PiecewiseCommand(1)
    - \baca-text-spanner-left-text "più largo"                                 %! baca_text_spanner:PiecewiseCommand(1)
    - \tweak staff-padding #6                                                  %! baca_text_spanner:PiecewiseCommand(1)
    \startTextSpan                                                             %! baca_text_spanner:PiecewiseCommand(1)
    \glissando                                                                 %! baca_glissando

    % [H RH_Music_Voice measure 223 / measure 24]                              %! _comment_measure_numbers
    f2
    :32                                                                        %! baca_stem_tremolo:IndicatorCommand
    _ \baca-ffz-markup                                                         %! baca_markup:IndicatorCommand
    \stopTextSpan                                                              %! baca_text_spanner:PiecewiseCommand(1)
    - \abjad-dashed-line-with-arrow                                            %! baca_text_spanner:PiecewiseCommand(1)
    - \baca-text-spanner-left-text "più stretto"                               %! baca_text_spanner:PiecewiseCommand(1)
    - \tweak staff-padding #6                                                  %! baca_text_spanner:PiecewiseCommand(1)
    \startTextSpan                                                             %! baca_text_spanner:PiecewiseCommand(1)

    % [H RH_Music_Voice measure 224 / measure 25]                              %! _comment_measure_numbers
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

    % [H RH_Music_Voice measure 225 / measure 26]                              %! _comment_measure_numbers
    d2
    :32                                                                        %! baca_stem_tremolo:IndicatorCommand
    - \tweak color #(x11-color 'blue)                                          %! EXPLICIT_DYNAMIC_COLOR:_treat_persistent_wrapper(1)
    \f                                                                         %! EXPLICIT_DYNAMIC:_set_status_tag:baca_hairpin:PiecewiseCommand(2)
    _ \baca-ffz-markup                                                         %! baca_markup:IndicatorCommand
    \stopTextSpan                                                              %! baca_text_spanner:PiecewiseCommand(2)
    \revert TextScript.parent-alignment-X                                      %! baca_text_script_parent_alignment_x:OverrideCommand(2)
    \revert TextScript.self-alignment-X                                        %! baca_text_script_self_alignment_x:OverrideCommand(2)
    \revert TextScript.staff-padding                                           %! baca_script_staff_padding:OverrideCommand(2)

    <<                                                                         %! PHANTOM:_make_multimeasure_rest_container

        \context Voice = "RH_Music_Voice"                                      %! PHANTOM:_make_multimeasure_rest_container
        {                                                                      %! PHANTOM:_make_multimeasure_rest_container

            % [H RH_Music_Voice measure 226 / measure 27]                      %! PHANTOM:_style_phantom_measures(5):_comment_measure_numbers
            \baca-invisible-music                                              %! PHANTOM:_style_phantom_measures(5):_make_multimeasure_rest_container
            c'1 * 1/4                                                          %! PHANTOM:_make_multimeasure_rest_container

        }                                                                      %! PHANTOM:_make_multimeasure_rest_container

        \context Voice = "RH_Rest_Voice"                                       %! PHANTOM:_make_multimeasure_rest_container
        {                                                                      %! PHANTOM:_make_multimeasure_rest_container

            % [H RH_Rest_Voice measure 226 / measure 27]                       %! PHANTOM:_style_phantom_measures(5):_comment_measure_numbers
            \once \override Score.TimeSignature.X-extent = ##f                 %! PHANTOM:_style_phantom_measures(6)
            \once \override MultiMeasureRest.transparent = ##t                 %! PHANTOM:_style_phantom_measures(7)
            \stopStaff                                                         %! PHANTOM:_style_phantom_measures(8)
            \once \override Staff.StaffSymbol.transparent = ##t                %! PHANTOM:_style_phantom_measures(8)
            \startStaff                                                        %! PHANTOM:_style_phantom_measures(8)
            R1 * 1/4                                                           %! PHANTOM:_make_multimeasure_rest_container

        }                                                                      %! PHANTOM:_make_multimeasure_rest_container

    >>                                                                         %! PHANTOM:_make_multimeasure_rest_container

}                                                                              %! abjad.Path.extern


H_RH_Music_Staff = {                                                           %! abjad.Path.extern

    \context Voice = "RH_Music_Voice"                                          %! huitzil.ScoreTemplate.__call__
    \H_RH_Music_Voice                                                          %! abjad.Path.extern

}                                                                              %! abjad.Path.extern


H_Cello_Music_Voice = {                                                        %! abjad.Path.extern

    {

        % [H Cello_Music_Voice measure 200 / measure 1]                        %! _comment_measure_numbers
        \override Score.BarLine.transparent = ##t                              %! baca_bar_line_transparent:OverrideCommand(1)
        \override Score.SpanBar.transparent = ##t                              %! baca_span_bar_transparent:OverrideCommand(1)
        \override Score.TimeSignature.stencil = ##f                            %! baca_time_signature_stencil_false:OverrideCommand(1)
        \clef "bass"                                                           %! REAPPLIED_CLEF:_set_status_tag:_reapply_persistent_indicators(3)
        \once \override Staff.Clef.color = #(x11-color 'green4)                %! REAPPLIED_CLEF_COLOR:_attach_color_literal(2)
    %@% \override Staff.Clef.color = ##f                                       %! REAPPLIED_CLEF_COLOR_CANCELLATION:_attach_color_literal(1)
        \set Staff.forceClef = ##t                                             %! REAPPLIED_CLEF:_set_status_tag:_treat_persistent_wrapper(2):_reapply_persistent_indicators(3)
        a,,1 * 1/2
        ^ \baca-reapplied-indicator-markup "(“Cello”)"                         %! REAPPLIED_INSTRUMENT_ALERT:_attach_latent_indicator_alert
        \override Staff.Clef.color = #(x11-color 'OliveDrab)                   %! REAPPLIED_CLEF_REDRAW_COLOR:_attach_color_literal(2)

    }

    <<                                                                         %! _make_multimeasure_rest_container

        \context Voice = "Cello_Music_Voice"                                   %! _make_multimeasure_rest_container
        {                                                                      %! _make_multimeasure_rest_container

            % [H Cello_Music_Voice measure 201 / measure 2]                    %! _comment_measure_numbers
            \baca-invisible-music                                              %! _make_multimeasure_rest_container
            c'1 * 13/24                                                        %! _make_multimeasure_rest_container

        }                                                                      %! _make_multimeasure_rest_container

        \context Voice = "Cello_Rest_Voice"                                    %! _make_multimeasure_rest_container
        {                                                                      %! _make_multimeasure_rest_container

            % [H Cello_Rest_Voice measure 201 / measure 2]                     %! _comment_measure_numbers
            \once \override MultiMeasureRest.transparent = ##t                 %! baca_mmrest_transparent:OverrideCommand(1)
            R1 * 13/24                                                         %! _make_multimeasure_rest_container

        }                                                                      %! _make_multimeasure_rest_container

    >>                                                                         %! _make_multimeasure_rest_container

    % [H Cello_Music_Voice measure 202 / measure 3]                            %! _comment_measure_numbers
    \override MultiMeasureRest.transparent = ##t                               %! baca_mmrest_transparent:OverrideCommand(1)
    R1 * 1/2                                                                   %! _make_measure_silences

    % [H Cello_Music_Voice measure 203 / measure 4]                            %! _comment_measure_numbers
    R1 * 7/12                                                                  %! _make_measure_silences

    % [H Cello_Music_Voice measure 204 / measure 5]                            %! _comment_measure_numbers
    R1 * 53/60                                                                 %! _make_measure_silences

    % [H Cello_Music_Voice measure 205 / measure 6]                            %! _comment_measure_numbers
    R1 * 23/24                                                                 %! _make_measure_silences

    % [H Cello_Music_Voice measure 206 / measure 7]                            %! _comment_measure_numbers
    R1 * 1/2                                                                   %! _make_measure_silences

    % [H Cello_Music_Voice measure 207 / measure 8]                            %! _comment_measure_numbers
    R1 * 1/2                                                                   %! _make_measure_silences

    % [H Cello_Music_Voice measure 208 / measure 9]                            %! _comment_measure_numbers
    R1 * 3/8                                                                   %! _make_measure_silences

    % [H Cello_Music_Voice measure 209 / measure 10]                           %! _comment_measure_numbers
    R1 * 1/3                                                                   %! _make_measure_silences

    % [H Cello_Music_Voice measure 210 / measure 11]                           %! _comment_measure_numbers
    R1 * 11/15                                                                 %! _make_measure_silences

    % [H Cello_Music_Voice measure 211 / measure 12]                           %! _comment_measure_numbers
    R1 * 1/2                                                                   %! _make_measure_silences

    % [H Cello_Music_Voice measure 212 / measure 13]                           %! _comment_measure_numbers
    R1 * 1/2                                                                   %! _make_measure_silences

    % [H Cello_Music_Voice measure 213 / measure 14]                           %! _comment_measure_numbers
    R1 * 1/2                                                                   %! _make_measure_silences

    % [H Cello_Music_Voice measure 214 / measure 15]                           %! _comment_measure_numbers
    R1 * 1/2                                                                   %! _make_measure_silences

    % [H Cello_Music_Voice measure 215 / measure 16]                           %! _comment_measure_numbers
    R1 * 1/2                                                                   %! _make_measure_silences

    % [H Cello_Music_Voice measure 216 / measure 17]                           %! _comment_measure_numbers
    R1 * 1/6                                                                   %! _make_measure_silences

    % [H Cello_Music_Voice measure 217 / measure 18]                           %! _comment_measure_numbers
    R1 * 1/2                                                                   %! _make_measure_silences

    % [H Cello_Music_Voice measure 218 / measure 19]                           %! _comment_measure_numbers
    R1 * 2/5                                                                   %! _make_measure_silences

    % [H Cello_Music_Voice measure 219 / measure 20]                           %! _comment_measure_numbers
    R1 * 1/2                                                                   %! _make_measure_silences

    % [H Cello_Music_Voice measure 220 / measure 21]                           %! _comment_measure_numbers
    R1 * 1/2                                                                   %! _make_measure_silences

    % [H Cello_Music_Voice measure 221 / measure 22]                           %! _comment_measure_numbers
    R1 * 1/2                                                                   %! _make_measure_silences

    % [H Cello_Music_Voice measure 222 / measure 23]                           %! _comment_measure_numbers
    R1 * 1/2                                                                   %! _make_measure_silences

    % [H Cello_Music_Voice measure 223 / measure 24]                           %! _comment_measure_numbers
    R1 * 1/2                                                                   %! _make_measure_silences

    % [H Cello_Music_Voice measure 224 / measure 25]                           %! _comment_measure_numbers
    R1 * 1/2                                                                   %! _make_measure_silences

    % [H Cello_Music_Voice measure 225 / measure 26]                           %! _comment_measure_numbers
    R1 * 1/2                                                                   %! _make_measure_silences
    \revert MultiMeasureRest.transparent                                       %! baca_mmrest_transparent:OverrideCommand(2)
    \revert Score.BarLine.transparent                                          %! baca_bar_line_transparent:OverrideCommand(2)
    \revert Score.SpanBar.transparent                                          %! baca_span_bar_transparent:OverrideCommand(2)
    \revert Score.TimeSignature.stencil                                        %! baca_time_signature_stencil_false:OverrideCommand(2)

    <<                                                                         %! PHANTOM:_make_multimeasure_rest_container

        \context Voice = "Cello_Music_Voice"                                   %! PHANTOM:_make_multimeasure_rest_container
        {                                                                      %! PHANTOM:_make_multimeasure_rest_container

            % [H Cello_Music_Voice measure 226 / measure 27]                   %! PHANTOM:_style_phantom_measures(5):_comment_measure_numbers
            \baca-invisible-music                                              %! PHANTOM:_style_phantom_measures(5):_make_multimeasure_rest_container
            R1 * 1/4                                                           %! PHANTOM:_make_multimeasure_rest_container

        }                                                                      %! PHANTOM:_make_multimeasure_rest_container

        \context Voice = "Cello_Rest_Voice"                                    %! PHANTOM:_make_multimeasure_rest_container
        {                                                                      %! PHANTOM:_make_multimeasure_rest_container

            % [H Cello_Rest_Voice measure 226 / measure 27]                    %! PHANTOM:_style_phantom_measures(5):_comment_measure_numbers
            \once \override Score.TimeSignature.X-extent = ##f                 %! PHANTOM:_style_phantom_measures(6)
            \once \override MultiMeasureRest.transparent = ##t                 %! PHANTOM:_style_phantom_measures(7)
            \stopStaff                                                         %! PHANTOM:_style_phantom_measures(8)
            \once \override Staff.StaffSymbol.transparent = ##t                %! PHANTOM:_style_phantom_measures(8)
            \startStaff                                                        %! PHANTOM:_style_phantom_measures(8)
            R1 * 1/4                                                           %! PHANTOM:_make_multimeasure_rest_container

        }                                                                      %! PHANTOM:_make_multimeasure_rest_container

    >>                                                                         %! PHANTOM:_make_multimeasure_rest_container

}                                                                              %! abjad.Path.extern


H_Cello_Music_Staff = {                                                        %! abjad.Path.extern

    \context Voice = "Cello_Music_Voice"                                       %! huitzil.ScoreTemplate.__call__
    \H_Cello_Music_Voice                                                       %! abjad.Path.extern

}                                                                              %! abjad.Path.extern
