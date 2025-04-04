\version "2.25.25"

number.1.Rests =
{

    % [Rests measure 1]
    R1 * 7/8

    % [Rests measure 2]
    R1 * 15/16

    % [Rests measure 3]
    R1 * 11/16

    % [Rests measure 4]
    R1 * 7/8

    % [Rests measure 5]
    R1 * 15/16

    % [Rests measure 6]
    R1 * 15/16

    % [Rests measure 7]
    R1 * 3/8

    % [Rests measure 8]
    R1 * 4/4

    % [Rests measure 9]
    R1 * 3/4

    % [Rests measure 10]
    R1 * 7/8

    % [Rests measure 11]
    R1 * 4/4

    % [Rests measure 12]
    R1 * 3/4

    % [Rests measure 13]
    R1 * 6/4

    % [Rests measure 14]
    R1 * 5/4

    % [Rests measure 15]
    R1 * 1/4

    % [Rests measure 16]
    R1 * 8/4

    % [Rests measure 17]
    R1 * 9/8

    % [Rests measure 18]
    R1 * 7/8

    % [Rests measure 19]
    R1 * 3/4

    % [Rests measure 20]
    R1 * 5/8

    % [Rests measure 21]
    R1 * 7/8

    % [Rests measure 22]
    R1 * 2/4

    % [Rests measure 23]
    R1 * 5/4

    % [Rests measure 24]
    R1 * 4/4

    % [Rests measure 25]
    R1 * 2/4

    % [Rests measure 26]
    R1 * 5/4

    % [Rests measure 27]
    R1 * 4/4

    % [Rests measure 28]
    R1 * 2/4

    % [Rests measure 29]
    R1 * 4/4

    % [Rests measure 30]
    R1 * 4/4

    % [Rests measure 31]
    R1 * 3/4

    % [Rests measure 32]
    R1 * 3/4

    % [Rests measure 33]
    R1 * 2/4

    % [Rests measure 34]
    R1 * 5/4

    % [Rests measure 35]
    R1 * 13/16

    % [Rests measure 36]
    R1 * 5/8

    % [Rests measure 37]
    R1 * 5/4

    % [Rests measure 38]
    R1 * 4/4

    % [Rests measure 39]
    R1 * 5/16

    % [Rests measure 40]
    R1 * 4/4

    % [Rests measure 41]
    R1 * 9/16

    % [Rests measure 42]
    R1 * 3/4

    % [Rests measure 43]
    R1 * 7/8

    % [Rests measure 44]
    R1 * 3/4

    % [Rests measure 45]
    R1 * 7/8

    % [Rests measure 46]
    R1 * 4/4

    % [Rests measure 47]
    R1 * 1/4

    % [Rests measure 48]
    R1 * 6/4

    % [Rests measure 49]
    R1 * 4/4

    % [Rests measure 50]
    R1 * 4/4

    % [Rests measure 51]
    R1 * 9/4

    % [Rests measure 52]
    R1 * 6/4

    % [Rests measure 53]
    R1 * 4/4

    % [Rests measure 54]
    R1 * 3/4

}


number.1.Skips =
{

    % [Skips measure 1]
      %! LILYPOND_TEMPO_COMMAND
    \tempo 4=78
    s1 * 7/8
      %! EXPLICIT_METRONOME_MARK_WITH_COLOR
    - \baca-invisible-line
      %! EXPLICIT_METRONOME_MARK_WITH_COLOR
    - \baca-metronome-mark-spanner-colored-left-text 2 0 1 "78" #blue
      %! EXPLICIT_METRONOME_MARK_WITH_COLOR
    \bacaStartTextSpanMM
      %! EXPLICIT_METRONOME_MARK
    %@% - \baca-invisible-line
      %! EXPLICIT_METRONOME_MARK
    %@% - \baca-metronome-mark-spanner-left-text 2 0 1 "78"
      %! EXPLICIT_METRONOME_MARK
    %@% \bacaStartTextSpanMM
      %! CLOCK_TIME
    - \baca-start-ct-left-only "[0'00'']"
      %! CLOCK_TIME
    \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "1"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "1"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN

    % [Skips measure 2]
    s1 * 15/16
      %! CLOCK_TIME
    \bacaStopTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    \bacaStopTextSpanLMN
      %! MEASURE_NUMBER
    %@% \bacaStopTextSpanMN
      %! CLOCK_TIME
    - \baca-start-ct-left-only "[0'02'']"
      %! CLOCK_TIME
    \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "2"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "2"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN

    % [Skips measure 3]
    s1 * 11/16
      %! CLOCK_TIME
    \bacaStopTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    \bacaStopTextSpanLMN
      %! MEASURE_NUMBER
    %@% \bacaStopTextSpanMN
      %! CLOCK_TIME
    - \baca-start-ct-left-only "[0'05'']"
      %! CLOCK_TIME
    \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "3"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "3"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN

    % [Skips measure 4]
    s1 * 7/8
      %! CLOCK_TIME
    \bacaStopTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    \bacaStopTextSpanLMN
      %! MEASURE_NUMBER
    %@% \bacaStopTextSpanMN
      %! CLOCK_TIME
    - \baca-start-ct-left-only "[0'07'']"
      %! CLOCK_TIME
    \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "4"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "4"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN

    % [Skips measure 5]
    s1 * 15/16
      %! CLOCK_TIME
    \bacaStopTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    \bacaStopTextSpanLMN
      %! MEASURE_NUMBER
    %@% \bacaStopTextSpanMN
      %! CLOCK_TIME
    - \baca-start-ct-left-only "[0'10'']"
      %! CLOCK_TIME
    \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "5"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "5"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN

    % [Skips measure 6]
    s1 * 15/16
      %! CLOCK_TIME
    \bacaStopTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    \bacaStopTextSpanLMN
      %! MEASURE_NUMBER
    %@% \bacaStopTextSpanMN
      %! CLOCK_TIME
    - \baca-start-ct-left-only "[0'13'']"
      %! CLOCK_TIME
    \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "6"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "6"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN

    % [Skips measure 7]
    s1 * 3/8
      %! CLOCK_TIME
    \bacaStopTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    \bacaStopTextSpanLMN
      %! MEASURE_NUMBER
    %@% \bacaStopTextSpanMN
      %! CLOCK_TIME
    - \baca-start-ct-left-only "[0'16'']"
      %! CLOCK_TIME
    \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "7"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "7"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN

    % [Skips measure 8]
    s1 * 4/4
      %! CLOCK_TIME
    \bacaStopTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    \bacaStopTextSpanLMN
      %! MEASURE_NUMBER
    %@% \bacaStopTextSpanMN
      %! CLOCK_TIME
    - \baca-start-ct-left-only "[0'17'']"
      %! CLOCK_TIME
    \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "8"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "8"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN

    % [Skips measure 9]
    s1 * 3/4
      %! CLOCK_TIME
    \bacaStopTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    \bacaStopTextSpanLMN
      %! MEASURE_NUMBER
    %@% \bacaStopTextSpanMN
      %! CLOCK_TIME
    - \baca-start-ct-left-only "[0'20'']"
      %! CLOCK_TIME
    \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "9"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "9"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN

    % [Skips measure 10]
    s1 * 7/8
      %! CLOCK_TIME
    \bacaStopTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    \bacaStopTextSpanLMN
      %! MEASURE_NUMBER
    %@% \bacaStopTextSpanMN
      %! CLOCK_TIME
    - \baca-start-ct-left-only "[0'22'']"
      %! CLOCK_TIME
    \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "10"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "10"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN

    % [Skips measure 11]
    s1 * 4/4
      %! CLOCK_TIME
    \bacaStopTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    \bacaStopTextSpanLMN
      %! MEASURE_NUMBER
    %@% \bacaStopTextSpanMN
      %! CLOCK_TIME
    - \baca-start-ct-left-only "[0'25'']"
      %! CLOCK_TIME
    \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "11"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "11"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN

    % [Skips measure 12]
    s1 * 3/4
      %! CLOCK_TIME
    \bacaStopTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    \bacaStopTextSpanLMN
      %! MEASURE_NUMBER
    %@% \bacaStopTextSpanMN
      %! CLOCK_TIME
    - \baca-start-ct-left-only "[0'28'']"
      %! CLOCK_TIME
    \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "12"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "12"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN

    % [Skips measure 13]
    s1 * 6/4
      %! CLOCK_TIME
    \bacaStopTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    \bacaStopTextSpanLMN
      %! MEASURE_NUMBER
    %@% \bacaStopTextSpanMN
      %! CLOCK_TIME
    - \baca-start-ct-left-only "[0'30'']"
      %! CLOCK_TIME
    \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "13"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "13"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN

    % [Skips measure 14]
    s1 * 5/4
      %! CLOCK_TIME
    \bacaStopTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    \bacaStopTextSpanLMN
      %! MEASURE_NUMBER
    %@% \bacaStopTextSpanMN
      %! CLOCK_TIME
    - \baca-start-ct-left-only "[0'35'']"
      %! CLOCK_TIME
    \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "14"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "14"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN

    % [Skips measure 15]
    s1 * 1/4
      %! CLOCK_TIME
    \bacaStopTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    \bacaStopTextSpanLMN
      %! MEASURE_NUMBER
    %@% \bacaStopTextSpanMN
      %! CLOCK_TIME
    - \baca-start-ct-left-only "[0'39'']"
      %! CLOCK_TIME
    \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "15"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "15"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN

    % [Skips measure 16]
    s1 * 8/4
      %! CLOCK_TIME
    \bacaStopTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    \bacaStopTextSpanLMN
      %! MEASURE_NUMBER
    %@% \bacaStopTextSpanMN
      %! CLOCK_TIME
    - \baca-start-ct-left-only "[0'40'']"
      %! CLOCK_TIME
    \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "16"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "16"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN

    % [Skips measure 17]
    s1 * 9/8
      %! CLOCK_TIME
    \bacaStopTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    \bacaStopTextSpanLMN
      %! MEASURE_NUMBER
    %@% \bacaStopTextSpanMN
      %! CLOCK_TIME
    - \baca-start-ct-left-only "[0'46'']"
      %! CLOCK_TIME
    \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "17"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "17"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN

    % [Skips measure 18]
    s1 * 7/8
      %! CLOCK_TIME
    \bacaStopTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    \bacaStopTextSpanLMN
      %! MEASURE_NUMBER
    %@% \bacaStopTextSpanMN
      %! CLOCK_TIME
    - \baca-start-ct-left-only "[0'49'']"
      %! CLOCK_TIME
    \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "18"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "18"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN

    % [Skips measure 19]
    s1 * 3/4
      %! CLOCK_TIME
    \bacaStopTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    \bacaStopTextSpanLMN
      %! MEASURE_NUMBER
    %@% \bacaStopTextSpanMN
      %! CLOCK_TIME
    - \baca-start-ct-left-only "[0'52'']"
      %! CLOCK_TIME
    \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "19"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "19"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN

    % [Skips measure 20]
    s1 * 5/8
      %! CLOCK_TIME
    \bacaStopTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    \bacaStopTextSpanLMN
      %! MEASURE_NUMBER
    %@% \bacaStopTextSpanMN
      %! CLOCK_TIME
    - \baca-start-ct-left-only "[0'54'']"
      %! CLOCK_TIME
    \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "20"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "20"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN

    % [Skips measure 21]
    s1 * 7/8
      %! CLOCK_TIME
    \bacaStopTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    \bacaStopTextSpanLMN
      %! MEASURE_NUMBER
    %@% \bacaStopTextSpanMN
      %! CLOCK_TIME
    - \baca-start-ct-left-only "[0'56'']"
      %! CLOCK_TIME
    \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "21"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "21"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN

    % [Skips measure 22]
    s1 * 2/4
      %! CLOCK_TIME
    \bacaStopTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    \bacaStopTextSpanLMN
      %! MEASURE_NUMBER
    %@% \bacaStopTextSpanMN
      %! CLOCK_TIME
    - \baca-start-ct-left-only "[0'59'']"
      %! CLOCK_TIME
    \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "22"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "22"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN

    % [Skips measure 23]
    s1 * 5/4
      %! CLOCK_TIME
    \bacaStopTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    \bacaStopTextSpanLMN
      %! MEASURE_NUMBER
    %@% \bacaStopTextSpanMN
      %! CLOCK_TIME
    - \baca-start-ct-left-only "[1'00'']"
      %! CLOCK_TIME
    \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "23"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "23"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN

    % [Skips measure 24]
    s1 * 4/4
      %! CLOCK_TIME
    \bacaStopTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    \bacaStopTextSpanLMN
      %! MEASURE_NUMBER
    %@% \bacaStopTextSpanMN
      %! CLOCK_TIME
    - \baca-start-ct-left-only "[1'04'']"
      %! CLOCK_TIME
    \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "24"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "24"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN

    % [Skips measure 25]
    s1 * 2/4
      %! CLOCK_TIME
    \bacaStopTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    \bacaStopTextSpanLMN
      %! MEASURE_NUMBER
    %@% \bacaStopTextSpanMN
      %! CLOCK_TIME
    - \baca-start-ct-left-only "[1'07'']"
      %! CLOCK_TIME
    \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "25"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "25"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN

    % [Skips measure 26]
    s1 * 5/4
      %! CLOCK_TIME
    \bacaStopTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    \bacaStopTextSpanLMN
      %! MEASURE_NUMBER
    %@% \bacaStopTextSpanMN
      %! CLOCK_TIME
    - \baca-start-ct-left-only "[1'09'']"
      %! CLOCK_TIME
    \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "26"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "26"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN

    % [Skips measure 27]
    s1 * 4/4
      %! CLOCK_TIME
    \bacaStopTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    \bacaStopTextSpanLMN
      %! MEASURE_NUMBER
    %@% \bacaStopTextSpanMN
      %! CLOCK_TIME
    - \baca-start-ct-left-only "[1'13'']"
      %! CLOCK_TIME
    \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "27"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "27"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN

    % [Skips measure 28]
    s1 * 2/4
      %! CLOCK_TIME
    \bacaStopTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    \bacaStopTextSpanLMN
      %! MEASURE_NUMBER
    %@% \bacaStopTextSpanMN
      %! CLOCK_TIME
    - \baca-start-ct-left-only "[1'16'']"
      %! CLOCK_TIME
    \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "28"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "28"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN

    % [Skips measure 29]
    s1 * 4/4
      %! CLOCK_TIME
    \bacaStopTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    \bacaStopTextSpanLMN
      %! MEASURE_NUMBER
    %@% \bacaStopTextSpanMN
      %! CLOCK_TIME
    - \baca-start-ct-left-only "[1'17'']"
      %! CLOCK_TIME
    \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "29"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "29"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN

    % [Skips measure 30]
    s1 * 4/4
      %! CLOCK_TIME
    \bacaStopTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    \bacaStopTextSpanLMN
      %! MEASURE_NUMBER
    %@% \bacaStopTextSpanMN
      %! CLOCK_TIME
    - \baca-start-ct-left-only "[1'20'']"
      %! CLOCK_TIME
    \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "30"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "30"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN

    % [Skips measure 31]
    s1 * 3/4
      %! CLOCK_TIME
    \bacaStopTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    \bacaStopTextSpanLMN
      %! MEASURE_NUMBER
    %@% \bacaStopTextSpanMN
      %! CLOCK_TIME
    - \baca-start-ct-left-only "[1'23'']"
      %! CLOCK_TIME
    \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "31"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "31"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN

    % [Skips measure 32]
    s1 * 3/4
      %! CLOCK_TIME
    \bacaStopTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    \bacaStopTextSpanLMN
      %! MEASURE_NUMBER
    %@% \bacaStopTextSpanMN
      %! CLOCK_TIME
    - \baca-start-ct-left-only "[1'26'']"
      %! CLOCK_TIME
    \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "32"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "32"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN

    % [Skips measure 33]
    s1 * 2/4
      %! CLOCK_TIME
    \bacaStopTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    \bacaStopTextSpanLMN
      %! MEASURE_NUMBER
    %@% \bacaStopTextSpanMN
      %! CLOCK_TIME
    - \baca-start-ct-left-only "[1'28'']"
      %! CLOCK_TIME
    \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "33"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "33"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN

    % [Skips measure 34]
    s1 * 5/4
      %! CLOCK_TIME
    \bacaStopTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    \bacaStopTextSpanLMN
      %! MEASURE_NUMBER
    %@% \bacaStopTextSpanMN
      %! CLOCK_TIME
    - \baca-start-ct-left-only "[1'30'']"
      %! CLOCK_TIME
    \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "34"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "34"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN

    % [Skips measure 35]
    s1 * 13/16
      %! CLOCK_TIME
    \bacaStopTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    \bacaStopTextSpanLMN
      %! MEASURE_NUMBER
    %@% \bacaStopTextSpanMN
      %! CLOCK_TIME
    - \baca-start-ct-left-only "[1'33'']"
      %! CLOCK_TIME
    \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "35"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "35"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN

    % [Skips measure 36]
    s1 * 5/8
      %! CLOCK_TIME
    \bacaStopTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    \bacaStopTextSpanLMN
      %! MEASURE_NUMBER
    %@% \bacaStopTextSpanMN
      %! CLOCK_TIME
    - \baca-start-ct-left-only "[1'36'']"
      %! CLOCK_TIME
    \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "36"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "36"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN

    % [Skips measure 37]
    s1 * 5/4
      %! CLOCK_TIME
    \bacaStopTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    \bacaStopTextSpanLMN
      %! MEASURE_NUMBER
    %@% \bacaStopTextSpanMN
      %! CLOCK_TIME
    - \baca-start-ct-left-only "[1'38'']"
      %! CLOCK_TIME
    \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "37"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "37"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN

    % [Skips measure 38]
    s1 * 4/4
      %! CLOCK_TIME
    \bacaStopTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    \bacaStopTextSpanLMN
      %! MEASURE_NUMBER
    %@% \bacaStopTextSpanMN
      %! CLOCK_TIME
    - \baca-start-ct-left-only "[1'42'']"
      %! CLOCK_TIME
    \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "38"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "38"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN

    % [Skips measure 39]
    s1 * 5/16
      %! CLOCK_TIME
    \bacaStopTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    \bacaStopTextSpanLMN
      %! MEASURE_NUMBER
    %@% \bacaStopTextSpanMN
      %! CLOCK_TIME
    - \baca-start-ct-left-only "[1'45'']"
      %! CLOCK_TIME
    \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "39"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "39"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN

    % [Skips measure 40]
    s1 * 4/4
      %! CLOCK_TIME
    \bacaStopTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    \bacaStopTextSpanLMN
      %! MEASURE_NUMBER
    %@% \bacaStopTextSpanMN
      %! CLOCK_TIME
    - \baca-start-ct-left-only "[1'46'']"
      %! CLOCK_TIME
    \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "40"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "40"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN

    % [Skips measure 41]
    s1 * 9/16
      %! CLOCK_TIME
    \bacaStopTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    \bacaStopTextSpanLMN
      %! MEASURE_NUMBER
    %@% \bacaStopTextSpanMN
      %! CLOCK_TIME
    - \baca-start-ct-left-only "[1'49'']"
      %! CLOCK_TIME
    \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "41"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "41"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN

    % [Skips measure 42]
    s1 * 3/4
      %! CLOCK_TIME
    \bacaStopTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    \bacaStopTextSpanLMN
      %! MEASURE_NUMBER
    %@% \bacaStopTextSpanMN
      %! CLOCK_TIME
    - \baca-start-ct-left-only "[1'50'']"
      %! CLOCK_TIME
    \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "42"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "42"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN

    % [Skips measure 43]
    s1 * 7/8
      %! CLOCK_TIME
    \bacaStopTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    \bacaStopTextSpanLMN
      %! MEASURE_NUMBER
    %@% \bacaStopTextSpanMN
      %! CLOCK_TIME
    - \baca-start-ct-left-only "[1'53'']"
      %! CLOCK_TIME
    \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "43"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "43"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN

    % [Skips measure 44]
    s1 * 3/4
      %! CLOCK_TIME
    \bacaStopTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    \bacaStopTextSpanLMN
      %! MEASURE_NUMBER
    %@% \bacaStopTextSpanMN
      %! CLOCK_TIME
    - \baca-start-ct-left-only "[1'55'']"
      %! CLOCK_TIME
    \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "44"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "44"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN

    % [Skips measure 45]
    s1 * 7/8
      %! CLOCK_TIME
    \bacaStopTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    \bacaStopTextSpanLMN
      %! MEASURE_NUMBER
    %@% \bacaStopTextSpanMN
      %! CLOCK_TIME
    - \baca-start-ct-left-only "[1'58'']"
      %! CLOCK_TIME
    \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "45"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "45"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN

    % [Skips measure 46]
    s1 * 4/4
      %! CLOCK_TIME
    \bacaStopTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    \bacaStopTextSpanLMN
      %! MEASURE_NUMBER
    %@% \bacaStopTextSpanMN
      %! CLOCK_TIME
    - \baca-start-ct-left-only "[2'00'']"
      %! CLOCK_TIME
    \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "46"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "46"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN

    % [Skips measure 47]
    s1 * 1/4
      %! CLOCK_TIME
    \bacaStopTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    \bacaStopTextSpanLMN
      %! MEASURE_NUMBER
    %@% \bacaStopTextSpanMN
      %! CLOCK_TIME
    - \baca-start-ct-left-only "[2'04'']"
      %! CLOCK_TIME
    \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "47"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "47"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN

    % [Skips measure 48]
    s1 * 6/4
      %! CLOCK_TIME
    \bacaStopTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    \bacaStopTextSpanLMN
      %! MEASURE_NUMBER
    %@% \bacaStopTextSpanMN
      %! CLOCK_TIME
    - \baca-start-ct-left-only "[2'04'']"
      %! CLOCK_TIME
    \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "48"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "48"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN

    % [Skips measure 49]
    s1 * 4/4
      %! CLOCK_TIME
    \bacaStopTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    \bacaStopTextSpanLMN
      %! MEASURE_NUMBER
    %@% \bacaStopTextSpanMN
      %! CLOCK_TIME
    - \baca-start-ct-left-only "[2'09'']"
      %! CLOCK_TIME
    \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "49"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "49"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN

    % [Skips measure 50]
    s1 * 4/4
      %! CLOCK_TIME
    \bacaStopTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    \bacaStopTextSpanLMN
      %! MEASURE_NUMBER
    %@% \bacaStopTextSpanMN
      %! CLOCK_TIME
    - \baca-start-ct-left-only "[2'12'']"
      %! CLOCK_TIME
    \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "50"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "50"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN

    % [Skips measure 51]
    s1 * 9/4
      %! CLOCK_TIME
    \bacaStopTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    \bacaStopTextSpanLMN
      %! MEASURE_NUMBER
    %@% \bacaStopTextSpanMN
      %! CLOCK_TIME
    - \baca-start-ct-left-only "[2'15'']"
      %! CLOCK_TIME
    \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "51"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "51"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN

    % [Skips measure 52]
    s1 * 6/4
      %! CLOCK_TIME
    \bacaStopTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    \bacaStopTextSpanLMN
      %! MEASURE_NUMBER
    %@% \bacaStopTextSpanMN
      %! CLOCK_TIME
    - \baca-start-ct-left-only "[2'22'']"
      %! CLOCK_TIME
    \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "52"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "52"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN

    % [Skips measure 53]
    s1 * 4/4
      %! CLOCK_TIME
    \bacaStopTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    \bacaStopTextSpanLMN
      %! MEASURE_NUMBER
    %@% \bacaStopTextSpanMN
      %! CLOCK_TIME
    - \baca-start-ct-left-only "[2'27'']"
      %! CLOCK_TIME
    \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "53"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "53"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN

    % [Skips measure 54]
    s1 * 3/4
      %! CLOCK_TIME
    \bacaStopTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    \bacaStopTextSpanLMN
      %! MEASURE_NUMBER
    %@% \bacaStopTextSpanMN
      %! CLOCK_TIME
    - \baca-start-ct-both "[2'30'']" "[2'32'']"
      %! CLOCK_TIME
    \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "54"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "54"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN

      %! ANCHOR_SKIP
    % [anchor skip]
      %! ANCHOR_SKIP
    s1 * 1/4
      %! ANCHOR_SKIP
      %! CLOCK_TIME
    \bacaStopTextSpanCT
      %! ANCHOR_SKIP
      %! LOCAL_MEASURE_NUMBER
    \bacaStopTextSpanLMN
      %! ANCHOR_SKIP
      %! EOS_STOP_MM_SPANNER
    \bacaStopTextSpanMM
      %! ANCHOR_SKIP
      %! MEASURE_NUMBER
    %@% \bacaStopTextSpanMN
      %! ANCHOR_SKIP
    \once \override Score.BarLine.transparent = ##t
      %! ANCHOR_SKIP
    \once \override Score.SpanBar.transparent = ##t

}


number.1.TimeSignatures =
{

    % [TimeSignatures measure 1]
      %! EXPLICIT_TIME_SIGNATURE_COLOR
    \baca-time-signature-color #blue
      %! EXPLICIT_TIME_SIGNATURE
    \time 7/8
    s1 * 7/8

    % [TimeSignatures measure 2]
      %! EXPLICIT_TIME_SIGNATURE_COLOR
    \baca-time-signature-color #blue
      %! EXPLICIT_TIME_SIGNATURE
    \time 15/16
    s1 * 15/16

    % [TimeSignatures measure 3]
      %! EXPLICIT_TIME_SIGNATURE_COLOR
    \baca-time-signature-color #blue
      %! EXPLICIT_TIME_SIGNATURE
    \time 11/16
    s1 * 11/16

    % [TimeSignatures measure 4]
      %! EXPLICIT_TIME_SIGNATURE_COLOR
    \baca-time-signature-color #blue
      %! EXPLICIT_TIME_SIGNATURE
    \time 7/8
    s1 * 7/8

    % [TimeSignatures measure 5]
      %! EXPLICIT_TIME_SIGNATURE_COLOR
    \baca-time-signature-color #blue
      %! EXPLICIT_TIME_SIGNATURE
    \time 15/16
    s1 * 15/16

    % [TimeSignatures measure 6]
    s1 * 15/16

    % [TimeSignatures measure 7]
      %! EXPLICIT_TIME_SIGNATURE_COLOR
    \baca-time-signature-color #blue
      %! EXPLICIT_TIME_SIGNATURE
    \time 3/8
    s1 * 3/8

    % [TimeSignatures measure 8]
      %! EXPLICIT_TIME_SIGNATURE_COLOR
    \baca-time-signature-color #blue
      %! EXPLICIT_TIME_SIGNATURE
    \time 4/4
    s1 * 4/4

    % [TimeSignatures measure 9]
      %! EXPLICIT_TIME_SIGNATURE_COLOR
    \baca-time-signature-color #blue
      %! EXPLICIT_TIME_SIGNATURE
    \time 3/4
    s1 * 3/4

    % [TimeSignatures measure 10]
      %! EXPLICIT_TIME_SIGNATURE_COLOR
    \baca-time-signature-color #blue
      %! EXPLICIT_TIME_SIGNATURE
    \time 7/8
    s1 * 7/8

    % [TimeSignatures measure 11]
      %! EXPLICIT_TIME_SIGNATURE_COLOR
    \baca-time-signature-color #blue
      %! EXPLICIT_TIME_SIGNATURE
    \time 4/4
    s1 * 4/4

    % [TimeSignatures measure 12]
      %! EXPLICIT_TIME_SIGNATURE_COLOR
    \baca-time-signature-color #blue
      %! EXPLICIT_TIME_SIGNATURE
    \time 3/4
    s1 * 3/4

    % [TimeSignatures measure 13]
      %! EXPLICIT_TIME_SIGNATURE_COLOR
    \baca-time-signature-color #blue
      %! EXPLICIT_TIME_SIGNATURE
    \time 6/4
    s1 * 6/4

    % [TimeSignatures measure 14]
      %! EXPLICIT_TIME_SIGNATURE_COLOR
    \baca-time-signature-color #blue
      %! EXPLICIT_TIME_SIGNATURE
    \time 5/4
    s1 * 5/4

    % [TimeSignatures measure 15]
      %! EXPLICIT_TIME_SIGNATURE_COLOR
    \baca-time-signature-color #blue
      %! EXPLICIT_TIME_SIGNATURE
    \time 1/4
    s1 * 1/4

    % [TimeSignatures measure 16]
      %! EXPLICIT_TIME_SIGNATURE_COLOR
    \baca-time-signature-color #blue
      %! EXPLICIT_TIME_SIGNATURE
    \time 8/4
    s1 * 8/4

    % [TimeSignatures measure 17]
      %! EXPLICIT_TIME_SIGNATURE_COLOR
    \baca-time-signature-color #blue
      %! EXPLICIT_TIME_SIGNATURE
    \time 9/8
    s1 * 9/8

    % [TimeSignatures measure 18]
      %! EXPLICIT_TIME_SIGNATURE_COLOR
    \baca-time-signature-color #blue
      %! EXPLICIT_TIME_SIGNATURE
    \time 7/8
    s1 * 7/8

    % [TimeSignatures measure 19]
      %! EXPLICIT_TIME_SIGNATURE_COLOR
    \baca-time-signature-color #blue
      %! EXPLICIT_TIME_SIGNATURE
    \time 3/4
    s1 * 3/4

    % [TimeSignatures measure 20]
      %! EXPLICIT_TIME_SIGNATURE_COLOR
    \baca-time-signature-color #blue
      %! EXPLICIT_TIME_SIGNATURE
    \time 5/8
    s1 * 5/8

    % [TimeSignatures measure 21]
      %! EXPLICIT_TIME_SIGNATURE_COLOR
    \baca-time-signature-color #blue
      %! EXPLICIT_TIME_SIGNATURE
    \time 7/8
    s1 * 7/8

    % [TimeSignatures measure 22]
      %! EXPLICIT_TIME_SIGNATURE_COLOR
    \baca-time-signature-color #blue
      %! EXPLICIT_TIME_SIGNATURE
    \time 2/4
    s1 * 2/4

    % [TimeSignatures measure 23]
      %! EXPLICIT_TIME_SIGNATURE_COLOR
    \baca-time-signature-color #blue
      %! EXPLICIT_TIME_SIGNATURE
    \time 5/4
    s1 * 5/4

    % [TimeSignatures measure 24]
      %! EXPLICIT_TIME_SIGNATURE_COLOR
    \baca-time-signature-color #blue
      %! EXPLICIT_TIME_SIGNATURE
    \time 4/4
    s1 * 4/4

    % [TimeSignatures measure 25]
      %! EXPLICIT_TIME_SIGNATURE_COLOR
    \baca-time-signature-color #blue
      %! EXPLICIT_TIME_SIGNATURE
    \time 2/4
    s1 * 2/4

    % [TimeSignatures measure 26]
      %! EXPLICIT_TIME_SIGNATURE_COLOR
    \baca-time-signature-color #blue
      %! EXPLICIT_TIME_SIGNATURE
    \time 5/4
    s1 * 5/4

    % [TimeSignatures measure 27]
      %! EXPLICIT_TIME_SIGNATURE_COLOR
    \baca-time-signature-color #blue
      %! EXPLICIT_TIME_SIGNATURE
    \time 4/4
    s1 * 4/4

    % [TimeSignatures measure 28]
      %! EXPLICIT_TIME_SIGNATURE_COLOR
    \baca-time-signature-color #blue
      %! EXPLICIT_TIME_SIGNATURE
    \time 2/4
    s1 * 2/4

    % [TimeSignatures measure 29]
      %! EXPLICIT_TIME_SIGNATURE_COLOR
    \baca-time-signature-color #blue
      %! EXPLICIT_TIME_SIGNATURE
    \time 4/4
    s1 * 4/4

    % [TimeSignatures measure 30]
    s1 * 4/4

    % [TimeSignatures measure 31]
      %! EXPLICIT_TIME_SIGNATURE_COLOR
    \baca-time-signature-color #blue
      %! EXPLICIT_TIME_SIGNATURE
    \time 3/4
    s1 * 3/4

    % [TimeSignatures measure 32]
    s1 * 3/4

    % [TimeSignatures measure 33]
      %! EXPLICIT_TIME_SIGNATURE_COLOR
    \baca-time-signature-color #blue
      %! EXPLICIT_TIME_SIGNATURE
    \time 2/4
    s1 * 2/4

    % [TimeSignatures measure 34]
      %! EXPLICIT_TIME_SIGNATURE_COLOR
    \baca-time-signature-color #blue
      %! EXPLICIT_TIME_SIGNATURE
    \time 5/4
    s1 * 5/4

    % [TimeSignatures measure 35]
      %! EXPLICIT_TIME_SIGNATURE_COLOR
    \baca-time-signature-color #blue
      %! EXPLICIT_TIME_SIGNATURE
    \time 13/16
    s1 * 13/16

    % [TimeSignatures measure 36]
      %! EXPLICIT_TIME_SIGNATURE_COLOR
    \baca-time-signature-color #blue
      %! EXPLICIT_TIME_SIGNATURE
    \time 5/8
    s1 * 5/8

    % [TimeSignatures measure 37]
      %! EXPLICIT_TIME_SIGNATURE_COLOR
    \baca-time-signature-color #blue
      %! EXPLICIT_TIME_SIGNATURE
    \time 5/4
    s1 * 5/4

    % [TimeSignatures measure 38]
      %! EXPLICIT_TIME_SIGNATURE_COLOR
    \baca-time-signature-color #blue
      %! EXPLICIT_TIME_SIGNATURE
    \time 4/4
    s1 * 4/4

    % [TimeSignatures measure 39]
      %! EXPLICIT_TIME_SIGNATURE_COLOR
    \baca-time-signature-color #blue
      %! EXPLICIT_TIME_SIGNATURE
    \time 5/16
    s1 * 5/16

    % [TimeSignatures measure 40]
      %! EXPLICIT_TIME_SIGNATURE_COLOR
    \baca-time-signature-color #blue
      %! EXPLICIT_TIME_SIGNATURE
    \time 4/4
    s1 * 4/4

    % [TimeSignatures measure 41]
      %! EXPLICIT_TIME_SIGNATURE_COLOR
    \baca-time-signature-color #blue
      %! EXPLICIT_TIME_SIGNATURE
    \time 9/16
    s1 * 9/16

    % [TimeSignatures measure 42]
      %! EXPLICIT_TIME_SIGNATURE_COLOR
    \baca-time-signature-color #blue
      %! EXPLICIT_TIME_SIGNATURE
    \time 3/4
    s1 * 3/4

    % [TimeSignatures measure 43]
      %! EXPLICIT_TIME_SIGNATURE_COLOR
    \baca-time-signature-color #blue
      %! EXPLICIT_TIME_SIGNATURE
    \time 7/8
    s1 * 7/8

    % [TimeSignatures measure 44]
      %! EXPLICIT_TIME_SIGNATURE_COLOR
    \baca-time-signature-color #blue
      %! EXPLICIT_TIME_SIGNATURE
    \time 3/4
    s1 * 3/4

    % [TimeSignatures measure 45]
      %! EXPLICIT_TIME_SIGNATURE_COLOR
    \baca-time-signature-color #blue
      %! EXPLICIT_TIME_SIGNATURE
    \time 7/8
    s1 * 7/8

    % [TimeSignatures measure 46]
      %! EXPLICIT_TIME_SIGNATURE_COLOR
    \baca-time-signature-color #blue
      %! EXPLICIT_TIME_SIGNATURE
    \time 4/4
    s1 * 4/4

    % [TimeSignatures measure 47]
      %! EXPLICIT_TIME_SIGNATURE_COLOR
    \baca-time-signature-color #blue
      %! EXPLICIT_TIME_SIGNATURE
    \time 1/4
    s1 * 1/4

    % [TimeSignatures measure 48]
      %! EXPLICIT_TIME_SIGNATURE_COLOR
    \baca-time-signature-color #blue
      %! EXPLICIT_TIME_SIGNATURE
    \time 6/4
    s1 * 6/4

    % [TimeSignatures measure 49]
      %! EXPLICIT_TIME_SIGNATURE_COLOR
    \baca-time-signature-color #blue
      %! EXPLICIT_TIME_SIGNATURE
    \time 4/4
    s1 * 4/4

    % [TimeSignatures measure 50]
    s1 * 4/4

    % [TimeSignatures measure 51]
      %! EXPLICIT_TIME_SIGNATURE_COLOR
    \baca-time-signature-color #blue
      %! EXPLICIT_TIME_SIGNATURE
    \time 9/4
    s1 * 9/4

    % [TimeSignatures measure 52]
      %! EXPLICIT_TIME_SIGNATURE_COLOR
    \baca-time-signature-color #blue
      %! EXPLICIT_TIME_SIGNATURE
    \time 6/4
    s1 * 6/4

    % [TimeSignatures measure 53]
      %! EXPLICIT_TIME_SIGNATURE_COLOR
    \baca-time-signature-color #blue
      %! EXPLICIT_TIME_SIGNATURE
    \time 4/4
    s1 * 4/4

    % [TimeSignatures measure 54]
      %! EXPLICIT_TIME_SIGNATURE_COLOR
    \baca-time-signature-color #blue
      %! EXPLICIT_TIME_SIGNATURE
    \time 3/4
    s1 * 3/4

      %! ANCHOR_SKIP
    % [anchor skip]
      %! ANCHOR_SKIP
    \baca-time-signature-transparent
      %! ANCHOR_SKIP
      %! EXPLICIT_TIME_SIGNATURE
    \time 1/4
      %! ANCHOR_SKIP
    s1 * 1/4
      %! ANCHOR_SKIP
    \once \override Score.BarLine.transparent = ##t
      %! ANCHOR_SKIP
    \once \override Score.SpanBar.transparent = ##t

}


number.1.RH.Music =
{

    % [RH.Music measure 1]
      %! EXPLICIT_CLEF
    \clef "percussion"
      %! MEASURE_1
      %! SHIFTED_CLEF
%%% \once \override RHStaff.Clef.X-extent = ##f
      %! EXPLICIT_CLEF_COLOR
    \once \override RHStaff.Clef.color = #blue
      %! MEASURE_1
      %! SHIFTED_CLEF
%%% \once \override RHStaff.Clef.extra-offset = #'(-2.5 . 0)
    \override MultiMeasureRest.transparent = ##t
      %! EXPLICIT_CLEF_COLOR_CANCELLATION
    %@% \override RHStaff.Clef.color = ##f
      %! EXPLICIT_CLEF
    \set RHStaff.forceClef = ##t
    \stopStaff
    R1 * 7/8
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"7" #"8"
      %! EXPLICIT_CLEF_REDRAW_COLOR
    \override RHStaff.Clef.color = #(x11-color 'DeepSkyBlue2)

    % [RH.Music measure 2]
    R1 * 15/16
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"15" #"16"

    % [RH.Music measure 3]
    R1 * 11/16
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"11" #"16"

    % [RH.Music measure 4]
    R1 * 7/8
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"7" #"8"

    % [RH.Music measure 5]
    R1 * 15/16
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"15" #"16"

    % [RH.Music measure 6]
    R1 * 15/16
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"15" #"16"

    % [RH.Music measure 7]
    R1 * 3/8
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"3" #"8"

    % [RH.Music measure 8]
    R1 * 4/4
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"4" #"4"

    % [RH.Music measure 9]
    R1 * 3/4
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"3" #"4"

    % [RH.Music measure 10]
    R1 * 7/8
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"7" #"8"

    % [RH.Music measure 11]
    R1 * 4/4
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"4" #"4"

    % [RH.Music measure 12]
    R1 * 3/4
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"3" #"4"

    % [RH.Music measure 13]
    R1 * 6/4
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"6" #"4"

    % [RH.Music measure 14]
    R1 * 5/4
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"5" #"4"

    % [RH.Music measure 15]
    R1 * 1/4
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"4"

    % [RH.Music measure 16]
    R1 * 8/4
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"8" #"4"

    % [RH.Music measure 17]
    R1 * 9/8
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"9" #"8"

    % [RH.Music measure 18]
    R1 * 7/8
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"7" #"8"

    % [RH.Music measure 19]
    R1 * 3/4
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"3" #"4"

    % [RH.Music measure 20]
    R1 * 5/8
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"5" #"8"

    % [RH.Music measure 21]
    R1 * 7/8
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"7" #"8"

    % [RH.Music measure 22]
    R1 * 2/4
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"2" #"4"

    % [RH.Music measure 23]
    R1 * 5/4
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"5" #"4"

    % [RH.Music measure 24]
    R1 * 4/4
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"4" #"4"

    % [RH.Music measure 25]
    R1 * 2/4
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"2" #"4"

    % [RH.Music measure 26]
    R1 * 5/4
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"5" #"4"

    % [RH.Music measure 27]
    R1 * 4/4
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"4" #"4"

    % [RH.Music measure 28]
    R1 * 2/4
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"2" #"4"

    % [RH.Music measure 29]
    R1 * 4/4
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"4" #"4"

    % [RH.Music measure 30]
    R1 * 4/4
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"4" #"4"

    % [RH.Music measure 31]
    R1 * 3/4
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"3" #"4"

    % [RH.Music measure 32]
    R1 * 3/4
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"3" #"4"

    % [RH.Music measure 33]
    R1 * 2/4
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"2" #"4"

    % [RH.Music measure 34]
    R1 * 5/4
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"5" #"4"

    % [RH.Music measure 35]
    R1 * 13/16
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"13" #"16"

    % [RH.Music measure 36]
    R1 * 5/8
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"5" #"8"

    % [RH.Music measure 37]
    R1 * 5/4
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"5" #"4"

    % [RH.Music measure 38]
    R1 * 4/4
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"4" #"4"

    % [RH.Music measure 39]
    R1 * 5/16
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"5" #"16"

    % [RH.Music measure 40]
    R1 * 4/4
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"4" #"4"

    % [RH.Music measure 41]
    R1 * 9/16
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"9" #"16"

    % [RH.Music measure 42]
    R1 * 3/4
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"3" #"4"

    % [RH.Music measure 43]
    R1 * 7/8
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"7" #"8"

    % [RH.Music measure 44]
    R1 * 3/4
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"3" #"4"

    % [RH.Music measure 45]
    R1 * 7/8
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"7" #"8"

    % [RH.Music measure 46]
    R1 * 4/4
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"4" #"4"

    % [RH.Music measure 47]
    R1 * 1/4
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"4"

    % [RH.Music measure 48]
    R1 * 6/4
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"6" #"4"

    % [RH.Music measure 49]
    R1 * 4/4
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"4" #"4"

    % [RH.Music measure 50]
    R1 * 4/4
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"4" #"4"

    % [RH.Music measure 51]
    R1 * 9/4
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"9" #"4"

    % [RH.Music measure 52]
    R1 * 6/4
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"6" #"4"

    % [RH.Music measure 53]
    R1 * 4/4
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"4" #"4"

    % [RH.Music measure 54]
    R1 * 3/4
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"3" #"4"
    \revert MultiMeasureRest.transparent

}


number.1.RH.Staff =
{

    \context Voice = "RH.Music"
    {
        \number.1.RH.Music
    }

}


number.1.Cello.Music =
{

    \tweak text #tuplet-number::calc-fraction-text
    \tuplet 5/3
    {

        % [Cello.Music measure 1]
          %! EXPLICIT_CLEF
        \clef "bass"
          %! MEASURE_1
          %! SHIFTED_CLEF
    %%% \once \override Staff.Clef.X-extent = ##f
          %! EXPLICIT_CLEF_COLOR
        \once \override Staff.Clef.color = #blue
          %! MEASURE_1
          %! SHIFTED_CLEF
    %%% \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
          %! EXPLICIT_CLEF_COLOR_CANCELLATION
        %@% \override Staff.Clef.color = ##f
        \override TupletBracket.staff-padding = 3
          %! EXPLICIT_CLEF
        \set Staff.forceClef = ##t
        fs!8
        - \tweak staff-padding 9
        _ \huitzil-phrasing-dynamics-see-preface-markup
          %! EXPLICIT_INSTRUMENT_ALERT
        %@% ^ \baca-explicit-instrument-markup "(“Cello”)"
        [
          %! EXPLICIT_CLEF_REDRAW_COLOR
        \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

        e8

        f8

        g8

        af!8
        ]

    }

    \scaleDurations #'(1 . 1)
    {

        a,8
        [

        ef!8
        ]

    }

    \scaleDurations #'(1 . 1)
    {

        d16
        [

        e16

        f16
        ]

    }

    \scaleDurations #'(1 . 1)
    {

        cs!16

    }

    \tweak text #tuplet-number::calc-fraction-text
    \tuplet 16/9
    {

        % [Cello.Music measure 2]
        bf,!4

        a,4

        b,4

        c4

    }

    \tweak text #tuplet-number::calc-fraction-text
    \tuplet 5/3
    {

        f,8
        [

        a,8

        ef!8

        d8

        e8
        ]

    }

    \scaleDurations #'(1 . 1)
    {

        % [Cello.Music measure 3]
        c8
        [

        cs!8
        ]

    }

    \scaleDurations #'(1 . 1)
    {

        bf,!16
        [

        a,16

        b,16
        ]

    }

    \tuplet 5/4
    {

        af,!16
        [

        fs,!16

        e16

        f,16

        g,16
        ]

    }

    \tweak text #tuplet-number::calc-fraction-text
    \tuplet 8/7
    {

        % [Cello.Music measure 4]
        b,4

        c4

    }

    \tuplet 3/2
    {

        cs!8
        [

        bf,!8

        a,8
        ]

    }

    \scaleDurations #'(1 . 1)
    {

        g8.

    }

    \scaleDurations #'(1 . 1)
    {

        % [Cello.Music measure 5]
        af!16
        [

        fs!16

        e16

        f16
        ]

    }

    \tuplet 5/4
    {

        e16
        [

        f16

        a,16

        ef!16

        d16
        ]

    }

    \tweak text #tuplet-number::calc-fraction-text
    \tuplet 8/7
    {

        f,4

        g,4

    }

    \tuplet 3/2
    {

        % [Cello.Music measure 6]
        af,!8
        [

        fs,!8

        e8
        ]

    }

    \tweak text #tuplet-number::calc-fraction-text
    \tuplet 4/3
    {

        cs!8
        [

        d8
        ]

    }

    \tuplet 3/2
    {

        b,8
        [

        bf,!8
        ]

        \once \override Accidental.color = #blue
        \once \override Beam.color = #blue
        \once \override Dots.color = #blue
        \once \override NoteHead.color = #blue
        \once \override RepeatTie.color = #blue
        \once \override Slur.color = #blue
        \once \override Stem.color = #blue
        \once \override Tie.color = #blue
        c2

    }

    \scaleDurations #'(1 . 1)
    {

        % [Cello.Music measure 7]
        a,16
        [

        g16

        f16

        fs!16

        af!16
        ]

    }

    \scaleDurations #'(1 . 1)
    {

        c32
        [

        cs!32
        ]

    }

    \tweak text #tuplet-number::calc-fraction-text
    \tuplet 12/11
    {

        % [Cello.Music measure 8]
        d8
        [

        b,8
        ]

        \once \override Accidental.color = #blue
        \once \override Beam.color = #blue
        \once \override Dots.color = #blue
        \once \override NoteHead.color = #blue
        \once \override RepeatTie.color = #blue
        \once \override Slur.color = #blue
        \once \override Stem.color = #blue
        \once \override Tie.color = #blue
        bf,!2

    }

    \scaleDurations #'(1 . 1)
    {

        \once \override Accidental.color = #blue
        \once \override Beam.color = #blue
        \once \override Dots.color = #blue
        \once \override NoteHead.color = #blue
        \once \override RepeatTie.color = #blue
        \once \override Slur.color = #blue
        \once \override Stem.color = #blue
        \once \override Tie.color = #blue
        af,!4
        - \tweak stencil ##f
        ~

        \once \override RepeatTie.extra-offset = #'(-1.5 . 0)
        \once \override Accidental.color = #blue
        \once \override Beam.color = #blue
        \once \override Dots.color = #blue
        \once \override NoteHead.color = #blue
        \once \override RepeatTie.color = #blue
        \once \override Slur.color = #blue
        \once \override Stem.color = #blue
        \once \override Tie.color = #blue
        af,16
        \repeatTie

    }

    \tweak text #tuplet-number::calc-fraction-text
    \tuplet 4/3
    {

        % [Cello.Music measure 9]
        a,8
        [

        g,8

        f,8

        fs,!8
        ]

    }

    \scaleDurations #'(1 . 1)
    {

        f,16
        [

        fs,!16

        bf,!16

        e16

        ef!16
        ]

    }

    \scaleDurations #'(1 . 1)
    {

        fs,!32
        [

        af,!32
        ]

    }

    \tweak text #tuplet-number::calc-fraction-text
    \tuplet 9/7
    {

        % [Cello.Music measure 10]
        a,8

        \once \override Accidental.color = #blue
        \once \override Beam.color = #blue
        \once \override Dots.color = #blue
        \once \override NoteHead.color = #blue
        \once \override RepeatTie.color = #blue
        \once \override Slur.color = #blue
        \once \override Stem.color = #blue
        \once \override Tie.color = #blue
        g,2

        \once \override Accidental.color = #blue
        \once \override Beam.color = #blue
        \once \override Dots.color = #blue
        \once \override NoteHead.color = #blue
        \once \override RepeatTie.color = #blue
        \once \override Slur.color = #blue
        \once \override Stem.color = #blue
        \once \override Tie.color = #blue
        f,2

    }

    \tweak text #tuplet-number::calc-fraction-text
    \tuplet 5/3
    {

        % [Cello.Music measure 11]
        ef!8
        [

        f8

        fs!8

        bf,!8

        e8
        ]

    }

    \tweak text #tuplet-number::calc-fraction-text
    \tuplet 8/5
    {

        \once \override Accidental.color = #blue
        \once \override Beam.color = #blue
        \once \override Dots.color = #blue
        \once \override NoteHead.color = #blue
        \once \override RepeatTie.color = #blue
        \once \override Slur.color = #blue
        \once \override Stem.color = #blue
        \once \override Tie.color = #blue
        bf,!2

        \once \override Accidental.color = #blue
        \once \override Beam.color = #blue
        \once \override Dots.color = #blue
        \once \override NoteHead.color = #blue
        \once \override RepeatTie.color = #blue
        \once \override Slur.color = #blue
        \once \override Stem.color = #blue
        \once \override Tie.color = #blue
        c2

    }

    \scaleDurations #'(1 . 1)
    {

        % [Cello.Music measure 12]
        cs!16
        [

        d16

        b,16
        ]

    }

    \scaleDurations #'(1 . 1)
    {

        e16

    }

    \scaleDurations #'(1 . 1)
    {

        \once \override Accidental.color = #blue
        \once \override Beam.color = #blue
        \once \override Dots.color = #blue
        \once \override NoteHead.color = #blue
        \once \override RepeatTie.color = #blue
        \once \override Slur.color = #blue
        \once \override Stem.color = #blue
        \once \override Tie.color = #blue
        ef,!2

    }

    \tweak text #tuplet-number::calc-fraction-text
    \tuplet 4/3
    {

        % [Cello.Music measure 13]
        \once \override Accidental.color = #blue
        \once \override Beam.color = #blue
        \once \override Dots.color = #blue
        \once \override NoteHead.color = #blue
        \once \override RepeatTie.color = #blue
        \once \override Slur.color = #blue
        \once \override Stem.color = #blue
        \once \override Tie.color = #blue
        d2

        \once \override Accidental.color = #blue
        \once \override Beam.color = #blue
        \once \override Dots.color = #blue
        \once \override NoteHead.color = #blue
        \once \override RepeatTie.color = #blue
        \once \override Slur.color = #blue
        \once \override Stem.color = #blue
        \once \override Tie.color = #blue
        e,2

        \once \override Accidental.color = #blue
        \once \override Beam.color = #blue
        \once \override Dots.color = #blue
        \once \override NoteHead.color = #blue
        \once \override RepeatTie.color = #blue
        \once \override Slur.color = #blue
        \once \override Stem.color = #blue
        \once \override Tie.color = #blue
        fs,!2

        \once \override Accidental.color = #blue
        \once \override Beam.color = #blue
        \once \override Dots.color = #blue
        \once \override NoteHead.color = #blue
        \once \override RepeatTie.color = #blue
        \once \override Slur.color = #blue
        \once \override Stem.color = #blue
        \once \override Tie.color = #blue
        f,2

    }

    \scaleDurations #'(1 . 1)
    {

        % [Cello.Music measure 14]
        \once \override Accidental.color = #blue
        \once \override Beam.color = #blue
        \once \override Dots.color = #blue
        \once \override NoteHead.color = #blue
        \once \override RepeatTie.color = #blue
        \once \override Slur.color = #blue
        \once \override Stem.color = #blue
        \once \override Tie.color = #blue
        fs,!4

        \once \override Accidental.color = #blue
        \once \override Beam.color = #blue
        \once \override Dots.color = #blue
        \once \override NoteHead.color = #blue
        \once \override RepeatTie.color = #blue
        \once \override Slur.color = #blue
        \once \override Stem.color = #blue
        \once \override Tie.color = #blue
        f,4

        \once \override Accidental.color = #blue
        \once \override Beam.color = #blue
        \once \override Dots.color = #blue
        \once \override NoteHead.color = #blue
        \once \override RepeatTie.color = #blue
        \once \override Slur.color = #blue
        \once \override Stem.color = #blue
        \once \override Tie.color = #blue
        cs!4

        \once \override Accidental.color = #blue
        \once \override Beam.color = #blue
        \once \override Dots.color = #blue
        \once \override NoteHead.color = #blue
        \once \override RepeatTie.color = #blue
        \once \override Slur.color = #blue
        \once \override Stem.color = #blue
        \once \override Tie.color = #blue
        g,4

        \once \override Accidental.color = #blue
        \once \override Beam.color = #blue
        \once \override Dots.color = #blue
        \once \override NoteHead.color = #blue
        \once \override RepeatTie.color = #blue
        \once \override Slur.color = #blue
        \once \override Stem.color = #blue
        \once \override Tie.color = #blue
        af,!4

    }

    \scaleDurations #'(1 . 1)
    {

        % [Cello.Music measure 15]
        \once \override Accidental.color = #blue
        \once \override Beam.color = #blue
        \once \override Dots.color = #blue
        \once \override NoteHead.color = #blue
        \once \override RepeatTie.color = #blue
        \once \override Slur.color = #blue
        \once \override Stem.color = #blue
        \once \override Tie.color = #blue
        f,8
        [

        \once \override Accidental.color = #blue
        \once \override Beam.color = #blue
        \once \override Dots.color = #blue
        \once \override NoteHead.color = #blue
        \once \override RepeatTie.color = #blue
        \once \override Slur.color = #blue
        \once \override Stem.color = #blue
        \once \override Tie.color = #blue
        ef,!8
        ]

    }

    \tuplet 3/2
    {

        % [Cello.Music measure 16]
        \once \override Accidental.color = #blue
        \once \override Beam.color = #blue
        \once \override Dots.color = #blue
        \once \override NoteHead.color = #blue
        \once \override RepeatTie.color = #blue
        \once \override Slur.color = #blue
        \once \override Stem.color = #blue
        \once \override Tie.color = #blue
        d1

        \once \override Accidental.color = #blue
        \once \override Beam.color = #blue
        \once \override Dots.color = #blue
        \once \override NoteHead.color = #blue
        \once \override RepeatTie.color = #blue
        \once \override Slur.color = #blue
        \once \override Stem.color = #blue
        \once \override Tie.color = #blue
        e,1

        \once \override Accidental.color = #blue
        \once \override Beam.color = #blue
        \once \override Dots.color = #blue
        \once \override NoteHead.color = #blue
        \once \override RepeatTie.color = #blue
        \once \override Slur.color = #blue
        \once \override Stem.color = #blue
        \once \override Tie.color = #blue
        fs,!1

    }

    \tweak text #tuplet-number::calc-fraction-text
    \tuplet 14/9
    {

        % [Cello.Music measure 17]
        \once \override Accidental.color = #blue
        \once \override Beam.color = #blue
        \once \override Dots.color = #blue
        \once \override NoteHead.color = #blue
        \once \override RepeatTie.color = #blue
        \once \override Slur.color = #blue
        \once \override Stem.color = #blue
        \once \override Tie.color = #blue
        f,2

        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override RepeatTie.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        \once \override Tie.color = #red
        g4

        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override RepeatTie.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        \once \override Tie.color = #red
        af!4

        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override RepeatTie.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        \once \override Tie.color = #red
        c'4

        \once \override Accidental.color = #blue
        \once \override Beam.color = #blue
        \once \override Dots.color = #blue
        \once \override NoteHead.color = #blue
        \once \override RepeatTie.color = #blue
        \once \override Slur.color = #blue
        \once \override Stem.color = #blue
        \once \override Tie.color = #blue
        fs,!2

    }

    \tweak text #tuplet-number::calc-fraction-text
    \tuplet 12/7
    {

        % [Cello.Music measure 18]
        \once \override Accidental.color = #blue
        \once \override Beam.color = #blue
        \once \override Dots.color = #blue
        \once \override NoteHead.color = #blue
        \once \override RepeatTie.color = #blue
        \once \override Slur.color = #blue
        \once \override Stem.color = #blue
        \once \override Tie.color = #blue
        c1

        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override RepeatTie.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        \once \override Tie.color = #red
        d'2

    }

    \scaleDurations #'(1 . 1)
    {

        % [Cello.Music measure 19]
        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override RepeatTie.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        \once \override Tie.color = #red
        ef!8

        \once \override Accidental.color = #blue
        \once \override Beam.color = #blue
        \once \override Dots.color = #blue
        \once \override NoteHead.color = #blue
        \once \override RepeatTie.color = #blue
        \once \override Slur.color = #blue
        \once \override Stem.color = #blue
        \once \override Tie.color = #blue
        e,4

        \once \override Accidental.color = #blue
        \once \override Beam.color = #blue
        \once \override Dots.color = #blue
        \once \override NoteHead.color = #blue
        \once \override RepeatTie.color = #blue
        \once \override Slur.color = #blue
        \once \override Stem.color = #blue
        \once \override Tie.color = #blue
        cs!4

    }

    \scaleDurations #'(1 . 1)
    {

        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override RepeatTie.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        \once \override Tie.color = #red
        fs!8
        - \tweak stencil ##f
        ~

    }

    \tweak text #tuplet-number::calc-fraction-text
    \tuplet 8/5
    {

        % [Cello.Music measure 20]
        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override RepeatTie.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        \once \override Tie.color = #red
        fs4
        \repeatTie

        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override RepeatTie.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        \once \override Tie.color = #red
        af!4

        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override RepeatTie.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        \once \override Tie.color = #red
        a4

        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override RepeatTie.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        \once \override Tie.color = #red
        cs!4

    }

    \tweak text #tuplet-number::calc-fraction-text
    \tuplet 10/7
    {

        % [Cello.Music measure 21]
        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override RepeatTie.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        \once \override Tie.color = #red
        d4

        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override RepeatTie.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        \once \override Tie.color = #red
        cs!4

        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override RepeatTie.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        \once \override Tie.color = #red
        ef!4

        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override RepeatTie.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        \once \override Tie.color = #red
        e4

        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override RepeatTie.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        \once \override Tie.color = #red
        f4

    }

    \scaleDurations #'(1 . 1)
    {

        % [Cello.Music measure 22]
        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override RepeatTie.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        \once \override Tie.color = #red
        af!8
        [

        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override RepeatTie.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        \once \override Tie.color = #red
        a8
        ]

    }

    \tuplet 3/2
    {

        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override RepeatTie.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        \once \override Tie.color = #red
        b8
        [

        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override RepeatTie.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        \once \override Tie.color = #red
        c'8

        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override RepeatTie.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        \once \override Tie.color = #red
        bf!8
        ]

    }

    \scaleDurations #'(1 . 1)
    {

        % [Cello.Music measure 23]
        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override RepeatTie.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        \once \override Tie.color = #red
        f4

        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override RepeatTie.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        \once \override Tie.color = #red
        d'4

        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override RepeatTie.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        \once \override Tie.color = #red
        cs'!4

        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override RepeatTie.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        \once \override Tie.color = #red
        ef!4

        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override RepeatTie.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        \once \override Tie.color = #red
        e4

    }

    \tweak text #tuplet-number::calc-fraction-text
    \tuplet 4/3
    {

        % [Cello.Music measure 24]
        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override RepeatTie.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        \once \override Tie.color = #red
        bf!4

        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override RepeatTie.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        \once \override Tie.color = #red
        af!4

    }

    \tweak text #tuplet-number::calc-fraction-text
    \tuplet 6/5
    {

        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override RepeatTie.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        \once \override Tie.color = #red
        a4

        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override RepeatTie.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        \once \override Tie.color = #red
        b,4

        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override RepeatTie.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        \once \override Tie.color = #red
        c4

    }

    \scaleDurations #'(1 . 1)
    {

        % [Cello.Music measure 25]
        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override RepeatTie.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        \once \override Tie.color = #red
        cs!8

    }

    \tweak text #tuplet-number::calc-fraction-text
    \tuplet 4/3
    {

        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override RepeatTie.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        \once \override Tie.color = #red
        g8
        [

        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override RepeatTie.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        \once \override Tie.color = #red
        fs!8

        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override RepeatTie.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        \once \override Tie.color = #red
        af!8

        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override RepeatTie.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        \once \override Tie.color = #red
        a8
        ]

    }

    \scaleDurations #'(1 . 1)
    {

        % [Cello.Music measure 26]
        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override RepeatTie.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        \once \override Tie.color = #red
        c4

        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override RepeatTie.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        \once \override Tie.color = #red
        bf!4

        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override RepeatTie.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        \once \override Tie.color = #red
        af!4

        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override RepeatTie.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        \once \override Tie.color = #red
        a4

        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override RepeatTie.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        \once \override Tie.color = #red
        b4

    }

    \tuplet 3/2
    {

        % [Cello.Music measure 27]
        fs!8
        [

        a,8

        bf,!8

        af!8
        ]

        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override RepeatTie.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        \once \override Tie.color = #red
        g4

    }

    \scaleDurations #'(1 . 1)
    {

        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override RepeatTie.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        \once \override Tie.color = #red
        cs'!4

        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override RepeatTie.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        \once \override Tie.color = #red
        ef!4

    }

    \scaleDurations #'(1 . 1)
    {

        % [Cello.Music measure 28]
        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override RepeatTie.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        \once \override Tie.color = #red
        d'8
        [

        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override RepeatTie.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        \once \override Tie.color = #red
        c'8

        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override RepeatTie.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        \once \override Tie.color = #red
        b8
        ]

    }

    \scaleDurations #'(1 . 1)
    {

        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override RepeatTie.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        \once \override Tie.color = #red
        bf!8

    }

    \tuplet 3/2
    {

        % [Cello.Music measure 29]
        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override RepeatTie.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        \once \override Tie.color = #red
        e2

        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override RepeatTie.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        \once \override Tie.color = #red
        f2

        ef!4

        d4

    }

    \tuplet 3/2
    {

        % [Cello.Music measure 30]
        b,8
        [

        cs!8

        ef!8

        d8
        ]

        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override RepeatTie.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        \once \override Tie.color = #red
        c4

    }

    \scaleDurations #'(1 . 1)
    {

        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override RepeatTie.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        \once \override Tie.color = #red
        d'4

        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override RepeatTie.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        \once \override Tie.color = #red
        bf!4

    }

    \scaleDurations #'(1 . 1)
    {

        % [Cello.Music measure 31]
        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override RepeatTie.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        \once \override Tie.color = #red
        e8
        [

        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override RepeatTie.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        \once \override Tie.color = #red
        f8

        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override RepeatTie.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        \once \override Tie.color = #red
        ef!8
        ]

    }

    \tweak text #tuplet-number::calc-fraction-text
    \tuplet 4/3
    {

        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override RepeatTie.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        \once \override Tie.color = #red
        b,4

        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override RepeatTie.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        \once \override Tie.color = #red
        ef!4

    }

    \tweak text #tuplet-number::calc-fraction-text
    \tuplet 4/3
    {

        % [Cello.Music measure 32]
        \once \override Accidental.color = #blue
        \once \override Beam.color = #blue
        \once \override Dots.color = #blue
        \once \override NoteHead.color = #blue
        \once \override RepeatTie.color = #blue
        \once \override Slur.color = #blue
        \once \override Stem.color = #blue
        \once \override Tie.color = #blue
        a,2

        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override RepeatTie.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        \once \override Tie.color = #red
        af!4

        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override RepeatTie.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        \once \override Tie.color = #red
        bf!4

    }

    \scaleDurations #'(1 . 1)
    {

        % [Cello.Music measure 33]
        fs,!16
        [

        g,16

        e16

        ef!16
        ]

        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override RepeatTie.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        \once \override Tie.color = #red
        f8

    }

    \scaleDurations #'(1 . 1)
    {

        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override RepeatTie.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        \once \override Tie.color = #red
        bf!16
        [

        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override RepeatTie.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        \once \override Tie.color = #red
        b16
        ]

    }

    \scaleDurations #'(1 . 1)
    {

        % [Cello.Music measure 34]
        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override RepeatTie.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        \once \override Tie.color = #red
        ef!4

        \once \override Accidental.color = #blue
        \once \override Beam.color = #blue
        \once \override Dots.color = #blue
        \once \override NoteHead.color = #blue
        \once \override RepeatTie.color = #blue
        \once \override Slur.color = #blue
        \once \override Stem.color = #blue
        \once \override Tie.color = #blue
        a,2

        \once \override Accidental.color = #blue
        \once \override Beam.color = #blue
        \once \override Dots.color = #blue
        \once \override NoteHead.color = #blue
        \once \override RepeatTie.color = #blue
        \once \override Slur.color = #blue
        \once \override Stem.color = #blue
        \once \override Tie.color = #blue
        af,!2

    }

    \scaleDurations #'(1 . 1)
    {

        % [Cello.Music measure 35]
        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override RepeatTie.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        \once \override Tie.color = #red
        f4

    }

    \tweak text #tuplet-number::calc-fraction-text
    \tuplet 10/9
    {

        fs!8
        [

        g8

        e8
        ]

        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override RepeatTie.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        \once \override Tie.color = #red
        ef!4

    }

    \scaleDurations #'(1 . 1)
    {

        % [Cello.Music measure 36]
        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override RepeatTie.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        \once \override Tie.color = #red
        cs!8
        [

        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override RepeatTie.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        \once \override Tie.color = #red
        d8

        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override RepeatTie.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        \once \override Tie.color = #red
        c8
        ]

        bf,!16
        [

        b,16
        ]

    }

    \scaleDurations #'(1 . 1)
    {

        ef!16
        [

        f,16
        ]

    }

    \scaleDurations #'(1 . 1)
    {

        % [Cello.Music measure 37]
        \once \override Accidental.color = #blue
        \once \override Beam.color = #blue
        \once \override Dots.color = #blue
        \once \override NoteHead.color = #blue
        \once \override RepeatTie.color = #blue
        \once \override Slur.color = #blue
        \once \override Stem.color = #blue
        \once \override Tie.color = #blue
        fs,!2

        \once \override Accidental.color = #blue
        \once \override Beam.color = #blue
        \once \override Dots.color = #blue
        \once \override NoteHead.color = #blue
        \once \override RepeatTie.color = #blue
        \once \override Slur.color = #blue
        \once \override Stem.color = #blue
        \once \override Tie.color = #blue
        g,2

        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override RepeatTie.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        \once \override Tie.color = #red
        e4

    }

    \tuplet 3/2
    {

        % [Cello.Music measure 38]
        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override RepeatTie.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        \once \override Tie.color = #red
        b4

        cs!8
        [

        d8

        c8

        bf,!8
        ]

    }

    \scaleDurations #'(1 . 1)
    {

        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override RepeatTie.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        \once \override Tie.color = #red
        af!4

        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override RepeatTie.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        \once \override Tie.color = #red
        bf!4

    }

    \scaleDurations #'(1 . 1)
    {

        % [Cello.Music measure 39]
        b,16
        [

        ef!16

        a,16
        ]

    }

    \scaleDurations #'(1 . 1)
    {

        \once \override Accidental.color = #blue
        \once \override Beam.color = #blue
        \once \override Dots.color = #blue
        \once \override NoteHead.color = #blue
        \once \override RepeatTie.color = #blue
        \once \override Slur.color = #blue
        \once \override Stem.color = #blue
        \once \override Tie.color = #blue
        bf,!8

    }

    \tuplet 3/2
    {

        % [Cello.Music measure 40]
        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override RepeatTie.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        \once \override Tie.color = #red
        b,2

        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override RepeatTie.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        \once \override Tie.color = #red
        cs!2

        d4

        c4

    }

    \tweak text #tuplet-number::calc-fraction-text
    \tuplet 14/9
    {

        % [Cello.Music measure 41]
        a,8
        [

        af,!8

        bf,!8
        ]

        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override RepeatTie.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        \once \override Tie.color = #red
        b,4

        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override RepeatTie.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        \once \override Tie.color = #red
        ef!4

    }

    \tweak text #tuplet-number::calc-fraction-text
    \tuplet 4/3
    {

        % [Cello.Music measure 42]
        \once \override Accidental.color = #blue
        \once \override Beam.color = #blue
        \once \override Dots.color = #blue
        \once \override NoteHead.color = #blue
        \once \override RepeatTie.color = #blue
        \once \override Slur.color = #blue
        \once \override Stem.color = #blue
        \once \override Tie.color = #blue
        e,2

        \once \override Accidental.color = #blue
        \once \override Beam.color = #blue
        \once \override Dots.color = #blue
        \once \override NoteHead.color = #blue
        \once \override RepeatTie.color = #blue
        \once \override Slur.color = #blue
        \once \override Stem.color = #blue
        \once \override Tie.color = #blue
        ef,!2

    }

    \scaleDurations #'(1 . 1)
    {

        % [Cello.Music measure 43]
        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override RepeatTie.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        \once \override Tie.color = #red
        f8
        [

        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override RepeatTie.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        \once \override Tie.color = #red
        fs!8

        \once \override Accidental.color = #red
        \once \override Beam.color = #red
        \once \override Dots.color = #red
        \once \override NoteHead.color = #red
        \once \override RepeatTie.color = #red
        \once \override Slur.color = #red
        \once \override Stem.color = #red
        \once \override Tie.color = #red
        g8
        ]

    }

    \scaleDurations #'(1 . 1)
    {

        fs!8

    }

    \tweak text #tuplet-number::calc-fraction-text
    \tuplet 4/3
    {

        g8
        [

        af!8

        f8

        e8
        ]

    }

    \scaleDurations #'(1 . 1)
    {

        % [Cello.Music measure 44]
        \once \override Accidental.color = #blue
        \once \override Beam.color = #blue
        \once \override Dots.color = #blue
        \once \override NoteHead.color = #blue
        \once \override RepeatTie.color = #blue
        \once \override Slur.color = #blue
        \once \override Stem.color = #blue
        \once \override Tie.color = #blue
        d4

        ef!16
        [

        cs!16

        b,16

        c16
        ]

    }

    \tuplet 5/4
    {

        e16

        \once \override Accidental.color = #blue
        \once \override Beam.color = #blue
        \once \override Dots.color = #blue
        \once \override NoteHead.color = #blue
        \once \override RepeatTie.color = #blue
        \once \override Slur.color = #blue
        \once \override Stem.color = #blue
        \once \override Tie.color = #blue
        fs,!4

    }

    \tweak text #tuplet-number::calc-fraction-text
    \tuplet 9/7
    {

        % [Cello.Music measure 45]
        \once \override Accidental.color = #blue
        \once \override Beam.color = #blue
        \once \override Dots.color = #blue
        \once \override NoteHead.color = #blue
        \once \override RepeatTie.color = #blue
        \once \override Slur.color = #blue
        \once \override Stem.color = #blue
        \once \override Tie.color = #blue
        g,2

        \once \override Accidental.color = #blue
        \once \override Beam.color = #blue
        \once \override Dots.color = #blue
        \once \override NoteHead.color = #blue
        \once \override RepeatTie.color = #blue
        \once \override Slur.color = #blue
        \once \override Stem.color = #blue
        \once \override Tie.color = #blue
        af,!2

        f8

    }

    \tweak text #tuplet-number::calc-fraction-text
    \tuplet 16/9
    {

        % [Cello.Music measure 46]
        c8
        [

        d8

        ef!8

        cs!8
        ]

        \once \override Accidental.color = #blue
        \once \override Beam.color = #blue
        \once \override Dots.color = #blue
        \once \override NoteHead.color = #blue
        \once \override RepeatTie.color = #blue
        \once \override Slur.color = #blue
        \once \override Stem.color = #blue
        \once \override Tie.color = #blue
        b,2

    }

    \tweak text #tuplet-number::calc-fraction-text
    \tuplet 10/7
    {

        \once \override Accidental.color = #blue
        \once \override Beam.color = #blue
        \once \override Dots.color = #blue
        \once \override NoteHead.color = #blue
        \once \override RepeatTie.color = #blue
        \once \override Slur.color = #blue
        \once \override Stem.color = #blue
        \once \override Tie.color = #blue
        a,2

        b,8

    }

    \scaleDurations #'(1 . 1)
    {

        % [Cello.Music measure 47]
        c16
        [

        e16

        bf,!16
        ]

    }

    \scaleDurations #'(1 . 1)
    {

        b,16
        - \tweak stencil ##f
        ~

    }

    \tweak text #tuplet-number::calc-fraction-text
    \tuplet 5/3
    {

        % [Cello.Music measure 48]
        \once \override Accidental.color = #blue
        \once \override Beam.color = #blue
        \once \override Dots.color = #blue
        \once \override NoteHead.color = #blue
        \once \override RepeatTie.color = #blue
        \once \override Slur.color = #blue
        \once \override Stem.color = #blue
        \once \override Tie.color = #blue
        b,2
        \repeatTie

        \once \override Accidental.color = #blue
        \once \override Beam.color = #blue
        \once \override Dots.color = #blue
        \once \override NoteHead.color = #blue
        \once \override RepeatTie.color = #blue
        \once \override Slur.color = #blue
        \once \override Stem.color = #blue
        \once \override Tie.color = #blue
        a,2

        \once \override Accidental.color = #blue
        \once \override Beam.color = #blue
        \once \override Dots.color = #blue
        \once \override NoteHead.color = #blue
        \once \override RepeatTie.color = #blue
        \once \override Slur.color = #blue
        \once \override Stem.color = #blue
        \once \override Tie.color = #blue
        af,!2

        \once \override Accidental.color = #blue
        \once \override Beam.color = #blue
        \once \override Dots.color = #blue
        \once \override NoteHead.color = #blue
        \once \override RepeatTie.color = #blue
        \once \override Slur.color = #blue
        \once \override Stem.color = #blue
        \once \override Tie.color = #blue
        bf,!2

        \once \override Accidental.color = #blue
        \once \override Beam.color = #blue
        \once \override Dots.color = #blue
        \once \override NoteHead.color = #blue
        \once \override RepeatTie.color = #blue
        \once \override Slur.color = #blue
        \once \override Stem.color = #blue
        \once \override Tie.color = #blue
        c2

    }

    \scaleDurations #'(1 . 1)
    {

        % [Cello.Music measure 49]
        \once \override Accidental.color = #blue
        \once \override Beam.color = #blue
        \once \override Dots.color = #blue
        \once \override NoteHead.color = #blue
        \once \override RepeatTie.color = #blue
        \once \override Slur.color = #blue
        \once \override Stem.color = #blue
        \once \override Tie.color = #blue
        d,2

        \once \override Accidental.color = #blue
        \once \override Beam.color = #blue
        \once \override Dots.color = #blue
        \once \override NoteHead.color = #blue
        \once \override RepeatTie.color = #blue
        \once \override Slur.color = #blue
        \once \override Stem.color = #blue
        \once \override Tie.color = #blue
        c,2

    }

    \scaleDurations #'(1 . 1)
    {

        % [Cello.Music measure 50]
        \once \override Accidental.color = #blue
        \once \override Beam.color = #blue
        \once \override Dots.color = #blue
        \once \override NoteHead.color = #blue
        \once \override RepeatTie.color = #blue
        \once \override Slur.color = #blue
        \once \override Stem.color = #blue
        \once \override Tie.color = #blue
        b,,4

        \once \override Accidental.color = #blue
        \once \override Beam.color = #blue
        \once \override Dots.color = #blue
        \once \override NoteHead.color = #blue
        \once \override RepeatTie.color = #blue
        \once \override Slur.color = #blue
        \once \override Stem.color = #blue
        \once \override Tie.color = #blue
        g,4

        \once \override Accidental.color = #blue
        \once \override Beam.color = #blue
        \once \override Dots.color = #blue
        \once \override NoteHead.color = #blue
        \once \override RepeatTie.color = #blue
        \once \override Slur.color = #blue
        \once \override Stem.color = #blue
        \once \override Tie.color = #blue
        cs,!4

    }

    \scaleDurations #'(1 . 1)
    {

        \once \override Accidental.color = #blue
        \once \override Beam.color = #blue
        \once \override Dots.color = #blue
        \once \override NoteHead.color = #blue
        \once \override RepeatTie.color = #blue
        \once \override Slur.color = #blue
        \once \override Stem.color = #blue
        \once \override Tie.color = #blue
        c4

    }

    \tweak text #tuplet-number::calc-fraction-text
    \tuplet 16/9
    {

        % [Cello.Music measure 51]
        \once \override Accidental.color = #blue
        \once \override Beam.color = #blue
        \once \override Dots.color = #blue
        \once \override NoteHead.color = #blue
        \once \override RepeatTie.color = #blue
        \once \override Slur.color = #blue
        \once \override Stem.color = #blue
        \once \override Tie.color = #blue
        b,1

        \once \override Accidental.color = #blue
        \once \override Beam.color = #blue
        \once \override Dots.color = #blue
        \once \override NoteHead.color = #blue
        \once \override RepeatTie.color = #blue
        \once \override Slur.color = #blue
        \once \override Stem.color = #blue
        \once \override Tie.color = #blue
        a,1

        \once \override Accidental.color = #blue
        \once \override Beam.color = #blue
        \once \override Dots.color = #blue
        \once \override NoteHead.color = #blue
        \once \override RepeatTie.color = #blue
        \once \override Slur.color = #blue
        \once \override Stem.color = #blue
        \once \override Tie.color = #blue
        af,!1

        \once \override Accidental.color = #blue
        \once \override Beam.color = #blue
        \once \override Dots.color = #blue
        \once \override NoteHead.color = #blue
        \once \override RepeatTie.color = #blue
        \once \override Slur.color = #blue
        \once \override Stem.color = #blue
        \once \override Tie.color = #blue
        bf,!1
        \revert TupletBracket.staff-padding

    }

    \tweak text #tuplet-number::calc-fraction-text
    \tuplet 5/3
    {

        % [Cello.Music measure 52]
        \override TupletBracket.staff-padding = 4
        \once \override Accidental.color = #blue
        \once \override Beam.color = #blue
        \once \override Dots.color = #blue
        \once \override NoteHead.color = #blue
        \once \override RepeatTie.color = #blue
        \once \override Slur.color = #blue
        \once \override Stem.color = #blue
        \once \override Tie.color = #blue
        cs,!2

        \once \override Accidental.color = #blue
        \once \override Beam.color = #blue
        \once \override Dots.color = #blue
        \once \override NoteHead.color = #blue
        \once \override RepeatTie.color = #blue
        \once \override Slur.color = #blue
        \once \override Stem.color = #blue
        \once \override Tie.color = #blue
        d,2

        \once \override Accidental.color = #blue
        \once \override Beam.color = #blue
        \once \override Dots.color = #blue
        \once \override NoteHead.color = #blue
        \once \override RepeatTie.color = #blue
        \once \override Slur.color = #blue
        \once \override Stem.color = #blue
        \once \override Tie.color = #blue
        c,2

        \once \override Accidental.color = #blue
        \once \override Beam.color = #blue
        \once \override Dots.color = #blue
        \once \override NoteHead.color = #blue
        \once \override RepeatTie.color = #blue
        \once \override Slur.color = #blue
        \once \override Stem.color = #blue
        \once \override Tie.color = #blue
        b,,2

        \once \override Accidental.color = #blue
        \once \override Beam.color = #blue
        \once \override Dots.color = #blue
        \once \override NoteHead.color = #blue
        \once \override RepeatTie.color = #blue
        \once \override Slur.color = #blue
        \once \override Stem.color = #blue
        \once \override Tie.color = #blue
        g,2

    }

    \scaleDurations #'(1 . 1)
    {

        % [Cello.Music measure 53]
        \once \override Accidental.color = #blue
        \once \override Beam.color = #blue
        \once \override Dots.color = #blue
        \once \override NoteHead.color = #blue
        \once \override RepeatTie.color = #blue
        \once \override Slur.color = #blue
        \once \override Stem.color = #blue
        \once \override Tie.color = #blue
        fs,!2

        \once \override Accidental.color = #blue
        \once \override Beam.color = #blue
        \once \override Dots.color = #blue
        \once \override NoteHead.color = #blue
        \once \override RepeatTie.color = #blue
        \once \override Slur.color = #blue
        \once \override Stem.color = #blue
        \once \override Tie.color = #blue
        g,2
        \breathe

    }

    \scaleDurations #'(1 . 1)
    {

        % [Cello.Music measure 54]
        \once \override Accidental.color = #blue
        \once \override Beam.color = #blue
        \once \override Dots.color = #blue
        \once \override NoteHead.color = #blue
        \once \override RepeatTie.color = #blue
        \once \override Slur.color = #blue
        \once \override Stem.color = #blue
        \once \override Tie.color = #blue
        f,4

        \once \override Accidental.color = #blue
        \once \override Beam.color = #blue
        \once \override Dots.color = #blue
        \once \override NoteHead.color = #blue
        \once \override RepeatTie.color = #blue
        \once \override Slur.color = #blue
        \once \override Stem.color = #blue
        \once \override Tie.color = #blue
        e,4

        \once \override Accidental.color = #blue
        \once \override Beam.color = #blue
        \once \override Dots.color = #blue
        \once \override NoteHead.color = #blue
        \once \override RepeatTie.color = #blue
        \once \override Slur.color = #blue
        \once \override Stem.color = #blue
        \once \override Tie.color = #blue
        ef,!4
          %! +SECTION
        \breathe
        \revert TupletBracket.staff-padding
          %! +SCORE
    %%% \tweak extra-offset #'(0 . 2)
          %! +SCORE
    %%% \breathe

    }

}


number.1.Cello.Staff =
{

    \context Voice = "Cello.Music"
    {
        \number.1.Cello.Music
    }

}
