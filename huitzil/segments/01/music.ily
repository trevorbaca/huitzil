a_Global_Rests = {

    % [01 Global_Rests measure 1]
    R1 * 7/8

    % [01 Global_Rests measure 2]
    R1 * 15/16

    % [01 Global_Rests measure 3]
    R1 * 11/16

    % [01 Global_Rests measure 4]
    R1 * 7/8

    % [01 Global_Rests measure 5]
    R1 * 15/16

    % [01 Global_Rests measure 6]
    R1 * 15/16

    % [01 Global_Rests measure 7]
    R1 * 3/8

    % [01 Global_Rests measure 8]
    R1 * 1

    % [01 Global_Rests measure 9]
    R1 * 3/4

    % [01 Global_Rests measure 10]
    R1 * 7/8

    % [01 Global_Rests measure 11]
    R1 * 1

    % [01 Global_Rests measure 12]
    R1 * 3/4

    % [01 Global_Rests measure 13]
    R1 * 3/2

    % [01 Global_Rests measure 14]
    R1 * 5/4

    % [01 Global_Rests measure 15]
    R1 * 1/4

    % [01 Global_Rests measure 16]
    R1 * 2

    % [01 Global_Rests measure 17]
    R1 * 9/8

    % [01 Global_Rests measure 18]
    R1 * 7/8

    % [01 Global_Rests measure 19]
    R1 * 3/4

    % [01 Global_Rests measure 20]
    R1 * 5/8

    % [01 Global_Rests measure 21]
    R1 * 7/8

    % [01 Global_Rests measure 22]
    R1 * 1/2

    % [01 Global_Rests measure 23]
    R1 * 5/4

    % [01 Global_Rests measure 24]
    R1 * 1

    % [01 Global_Rests measure 25]
    R1 * 1/2

    % [01 Global_Rests measure 26]
    R1 * 5/4

    % [01 Global_Rests measure 27]
    R1 * 1

    % [01 Global_Rests measure 28]
    R1 * 1/2

    % [01 Global_Rests measure 29]
    R1 * 1

    % [01 Global_Rests measure 30]
    R1 * 1

    % [01 Global_Rests measure 31]
    R1 * 3/4

    % [01 Global_Rests measure 32]
    R1 * 3/4

    % [01 Global_Rests measure 33]
    R1 * 1/2

    % [01 Global_Rests measure 34]
    R1 * 5/4

    % [01 Global_Rests measure 35]
    R1 * 13/16

    % [01 Global_Rests measure 36]
    R1 * 5/8

    % [01 Global_Rests measure 37]
    R1 * 5/4

    % [01 Global_Rests measure 38]
    R1 * 1

    % [01 Global_Rests measure 39]
    R1 * 5/16

    % [01 Global_Rests measure 40]
    R1 * 1

    % [01 Global_Rests measure 41]
    R1 * 9/16

    % [01 Global_Rests measure 42]
    R1 * 3/4

    % [01 Global_Rests measure 43]
    R1 * 7/8

    % [01 Global_Rests measure 44]
    R1 * 3/4

    % [01 Global_Rests measure 45]
    R1 * 7/8

    % [01 Global_Rests measure 46]
    R1 * 1

    % [01 Global_Rests measure 47]
    R1 * 1/4

    % [01 Global_Rests measure 48]
    R1 * 3/2

    % [01 Global_Rests measure 49]
    R1 * 1

    % [01 Global_Rests measure 50]
    R1 * 1

    % [01 Global_Rests measure 51]
    R1 * 9/4

    % [01 Global_Rests measure 52]
    R1 * 3/2

    % [01 Global_Rests measure 53]
    R1 * 1

    % [01 Global_Rests measure 54]
    R1 * 3/4

    % [01 Global_Rests measure 55]
    R1 * 1/4

}


a_Global_Skips = {

    % [01 Global_Skips measure 1]
    \time 7/8
    \baca-time-signature-color #'blue
    s1 * 7/8
    - \baca-start-lmn-left-only "1"
    \bacaStartTextSpanLMN
    - \abjad-invisible-line
    - \baca-metronome-mark-spanner-colored-left-text 2 0 1 "78" #'blue
    \bacaStartTextSpanMM
    - \baca-start-ct-left-only "[0'00'']"
    \bacaStartTextSpanCT

    % [01 Global_Skips measure 2]
    \time 15/16
    \baca-time-signature-color #'blue
    s1 * 15/16
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "2"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[0'02'']"
    \bacaStartTextSpanCT

    % [01 Global_Skips measure 3]
    \time 11/16
    \baca-time-signature-color #'blue
    s1 * 11/16
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "3"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[0'05'']"
    \bacaStartTextSpanCT

    % [01 Global_Skips measure 4]
    \time 7/8
    \baca-time-signature-color #'blue
    s1 * 7/8
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "4"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[0'07'']"
    \bacaStartTextSpanCT

    % [01 Global_Skips measure 5]
    \time 15/16
    \baca-time-signature-color #'blue
    s1 * 15/16
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "5"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[0'10'']"
    \bacaStartTextSpanCT

    % [01 Global_Skips measure 6]
    s1 * 15/16
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "6"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[0'13'']"
    \bacaStartTextSpanCT

    % [01 Global_Skips measure 7]
    \time 3/8
    \baca-time-signature-color #'blue
    s1 * 3/8
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "7"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[0'16'']"
    \bacaStartTextSpanCT

    % [01 Global_Skips measure 8]
    \time 4/4
    \baca-time-signature-color #'blue
    s1 * 1
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "8"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[0'17'']"
    \bacaStartTextSpanCT

    % [01 Global_Skips measure 9]
    \time 3/4
    \baca-time-signature-color #'blue
    s1 * 3/4
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "9"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[0'20'']"
    \bacaStartTextSpanCT

    % [01 Global_Skips measure 10]
    \time 7/8
    \baca-time-signature-color #'blue
    s1 * 7/8
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "10"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[0'22'']"
    \bacaStartTextSpanCT

    % [01 Global_Skips measure 11]
    \time 4/4
    \baca-time-signature-color #'blue
    s1 * 1
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "11"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[0'25'']"
    \bacaStartTextSpanCT

    % [01 Global_Skips measure 12]
    \time 3/4
    \baca-time-signature-color #'blue
    s1 * 3/4
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "12"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[0'28'']"
    \bacaStartTextSpanCT

    % [01 Global_Skips measure 13]
    \time 6/4
    \baca-time-signature-color #'blue
    s1 * 3/2
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "13"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[0'30'']"
    \bacaStartTextSpanCT

    % [01 Global_Skips measure 14]
    \time 5/4
    \baca-time-signature-color #'blue
    s1 * 5/4
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "14"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[0'35'']"
    \bacaStartTextSpanCT

    % [01 Global_Skips measure 15]
    \time 1/4
    \baca-time-signature-color #'blue
    s1 * 1/4
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "15"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[0'39'']"
    \bacaStartTextSpanCT

    % [01 Global_Skips measure 16]
    \time 8/4
    \baca-time-signature-color #'blue
    s1 * 2
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "16"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[0'40'']"
    \bacaStartTextSpanCT

    % [01 Global_Skips measure 17]
    \time 9/8
    \baca-time-signature-color #'blue
    s1 * 9/8
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "17"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[0'46'']"
    \bacaStartTextSpanCT

    % [01 Global_Skips measure 18]
    \time 7/8
    \baca-time-signature-color #'blue
    s1 * 7/8
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "18"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[0'49'']"
    \bacaStartTextSpanCT

    % [01 Global_Skips measure 19]
    \time 3/4
    \baca-time-signature-color #'blue
    s1 * 3/4
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "19"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[0'52'']"
    \bacaStartTextSpanCT

    % [01 Global_Skips measure 20]
    \time 5/8
    \baca-time-signature-color #'blue
    s1 * 5/8
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "20"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[0'54'']"
    \bacaStartTextSpanCT

    % [01 Global_Skips measure 21]
    \time 7/8
    \baca-time-signature-color #'blue
    s1 * 7/8
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "21"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[0'56'']"
    \bacaStartTextSpanCT

    % [01 Global_Skips measure 22]
    \time 2/4
    \baca-time-signature-color #'blue
    s1 * 1/2
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "22"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[0'59'']"
    \bacaStartTextSpanCT

    % [01 Global_Skips measure 23]
    \time 5/4
    \baca-time-signature-color #'blue
    s1 * 5/4
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "23"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[1'00'']"
    \bacaStartTextSpanCT

    % [01 Global_Skips measure 24]
    \time 4/4
    \baca-time-signature-color #'blue
    s1 * 1
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "24"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[1'04'']"
    \bacaStartTextSpanCT

    % [01 Global_Skips measure 25]
    \time 2/4
    \baca-time-signature-color #'blue
    s1 * 1/2
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "25"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[1'07'']"
    \bacaStartTextSpanCT

    % [01 Global_Skips measure 26]
    \time 5/4
    \baca-time-signature-color #'blue
    s1 * 5/4
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "26"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[1'09'']"
    \bacaStartTextSpanCT

    % [01 Global_Skips measure 27]
    \time 4/4
    \baca-time-signature-color #'blue
    s1 * 1
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "27"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[1'13'']"
    \bacaStartTextSpanCT

    % [01 Global_Skips measure 28]
    \time 2/4
    \baca-time-signature-color #'blue
    s1 * 1/2
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "28"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[1'16'']"
    \bacaStartTextSpanCT

    % [01 Global_Skips measure 29]
    \time 4/4
    \baca-time-signature-color #'blue
    s1 * 1
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "29"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[1'17'']"
    \bacaStartTextSpanCT

    % [01 Global_Skips measure 30]
    s1 * 1
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "30"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[1'20'']"
    \bacaStartTextSpanCT

    % [01 Global_Skips measure 31]
    \time 3/4
    \baca-time-signature-color #'blue
    s1 * 3/4
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "31"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[1'23'']"
    \bacaStartTextSpanCT

    % [01 Global_Skips measure 32]
    s1 * 3/4
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "32"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[1'26'']"
    \bacaStartTextSpanCT

    % [01 Global_Skips measure 33]
    \time 2/4
    \baca-time-signature-color #'blue
    s1 * 1/2
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "33"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[1'28'']"
    \bacaStartTextSpanCT

    % [01 Global_Skips measure 34]
    \time 5/4
    \baca-time-signature-color #'blue
    s1 * 5/4
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "34"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[1'30'']"
    \bacaStartTextSpanCT

    % [01 Global_Skips measure 35]
    \time 13/16
    \baca-time-signature-color #'blue
    s1 * 13/16
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "35"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[1'33'']"
    \bacaStartTextSpanCT

    % [01 Global_Skips measure 36]
    \time 5/8
    \baca-time-signature-color #'blue
    s1 * 5/8
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "36"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[1'36'']"
    \bacaStartTextSpanCT

    % [01 Global_Skips measure 37]
    \time 5/4
    \baca-time-signature-color #'blue
    s1 * 5/4
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "37"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[1'38'']"
    \bacaStartTextSpanCT

    % [01 Global_Skips measure 38]
    \time 4/4
    \baca-time-signature-color #'blue
    s1 * 1
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "38"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[1'42'']"
    \bacaStartTextSpanCT

    % [01 Global_Skips measure 39]
    \time 5/16
    \baca-time-signature-color #'blue
    s1 * 5/16
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "39"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[1'45'']"
    \bacaStartTextSpanCT

    % [01 Global_Skips measure 40]
    \time 4/4
    \baca-time-signature-color #'blue
    s1 * 1
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "40"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[1'46'']"
    \bacaStartTextSpanCT

    % [01 Global_Skips measure 41]
    \time 9/16
    \baca-time-signature-color #'blue
    s1 * 9/16
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "41"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[1'49'']"
    \bacaStartTextSpanCT

    % [01 Global_Skips measure 42]
    \time 3/4
    \baca-time-signature-color #'blue
    s1 * 3/4
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "42"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[1'50'']"
    \bacaStartTextSpanCT

    % [01 Global_Skips measure 43]
    \time 7/8
    \baca-time-signature-color #'blue
    s1 * 7/8
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "43"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[1'53'']"
    \bacaStartTextSpanCT

    % [01 Global_Skips measure 44]
    \time 3/4
    \baca-time-signature-color #'blue
    s1 * 3/4
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "44"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[1'55'']"
    \bacaStartTextSpanCT

    % [01 Global_Skips measure 45]
    \time 7/8
    \baca-time-signature-color #'blue
    s1 * 7/8
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "45"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[1'58'']"
    \bacaStartTextSpanCT

    % [01 Global_Skips measure 46]
    \time 4/4
    \baca-time-signature-color #'blue
    s1 * 1
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "46"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[2'00'']"
    \bacaStartTextSpanCT

    % [01 Global_Skips measure 47]
    \time 1/4
    \baca-time-signature-color #'blue
    s1 * 1/4
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "47"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[2'04'']"
    \bacaStartTextSpanCT

    % [01 Global_Skips measure 48]
    \time 6/4
    \baca-time-signature-color #'blue
    s1 * 3/2
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "48"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[2'04'']"
    \bacaStartTextSpanCT

    % [01 Global_Skips measure 49]
    \time 4/4
    \baca-time-signature-color #'blue
    s1 * 1
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "49"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[2'09'']"
    \bacaStartTextSpanCT

    % [01 Global_Skips measure 50]
    s1 * 1
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "50"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[2'12'']"
    \bacaStartTextSpanCT

    % [01 Global_Skips measure 51]
    \time 9/4
    \baca-time-signature-color #'blue
    s1 * 9/4
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "51"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[2'15'']"
    \bacaStartTextSpanCT

    % [01 Global_Skips measure 52]
    \time 6/4
    \baca-time-signature-color #'blue
    s1 * 3/2
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "52"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[2'22'']"
    \bacaStartTextSpanCT

    % [01 Global_Skips measure 53]
    \time 4/4
    \baca-time-signature-color #'blue
    s1 * 1
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "53"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[2'27'']"
    \bacaStartTextSpanCT

    % [01 Global_Skips measure 54]
    \time 3/4
    \baca-time-signature-color #'blue
    s1 * 3/4
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "54"
    \bacaStartTextSpanLMN
    - \baca-start-ct-both "[2'30'']" "[2'32'']"
    \bacaStartTextSpanCT

    % [01 Global_Skips measure 55]
    \time 1/4
    \baca-time-signature-transparent
    s1 * 1/4
    \bacaStopTextSpanLMN
    \bacaStopTextSpanMM
    \bacaStopTextSpanCT
    \once \override Score.BarLine.transparent = ##t
    \once \override Score.SpanBar.transparent = ##t

}


a_RH_Music_Voice = {

    % [01 RH_Music_Voice measure 1]
    \stopStaff
    \override MultiMeasureRest.transparent = ##t
    \clef "percussion"
    \once \override RHStaff.Clef.color = #(x11-color 'DarkViolet)
    \set RHStaff.forceClef = ##t
    R1 * 7/8
    \override RHStaff.Clef.color = #(x11-color 'violet)

    % [01 RH_Music_Voice measure 2]
    R1 * 15/16

    % [01 RH_Music_Voice measure 3]
    R1 * 11/16

    % [01 RH_Music_Voice measure 4]
    R1 * 7/8

    % [01 RH_Music_Voice measure 5]
    R1 * 15/16

    % [01 RH_Music_Voice measure 6]
    R1 * 15/16

    % [01 RH_Music_Voice measure 7]
    R1 * 3/8

    % [01 RH_Music_Voice measure 8]
    R1 * 4/4

    % [01 RH_Music_Voice measure 9]
    R1 * 3/4

    % [01 RH_Music_Voice measure 10]
    R1 * 7/8

    % [01 RH_Music_Voice measure 11]
    R1 * 4/4

    % [01 RH_Music_Voice measure 12]
    R1 * 3/4

    % [01 RH_Music_Voice measure 13]
    R1 * 6/4

    % [01 RH_Music_Voice measure 14]
    R1 * 5/4

    % [01 RH_Music_Voice measure 15]
    R1 * 1/4

    % [01 RH_Music_Voice measure 16]
    R1 * 8/4

    % [01 RH_Music_Voice measure 17]
    R1 * 9/8

    % [01 RH_Music_Voice measure 18]
    R1 * 7/8

    % [01 RH_Music_Voice measure 19]
    R1 * 3/4

    % [01 RH_Music_Voice measure 20]
    R1 * 5/8

    % [01 RH_Music_Voice measure 21]
    R1 * 7/8

    % [01 RH_Music_Voice measure 22]
    R1 * 2/4

    % [01 RH_Music_Voice measure 23]
    R1 * 5/4

    % [01 RH_Music_Voice measure 24]
    R1 * 4/4

    % [01 RH_Music_Voice measure 25]
    R1 * 2/4

    % [01 RH_Music_Voice measure 26]
    R1 * 5/4

    % [01 RH_Music_Voice measure 27]
    R1 * 4/4

    % [01 RH_Music_Voice measure 28]
    R1 * 2/4

    % [01 RH_Music_Voice measure 29]
    R1 * 4/4

    % [01 RH_Music_Voice measure 30]
    R1 * 4/4

    % [01 RH_Music_Voice measure 31]
    R1 * 3/4

    % [01 RH_Music_Voice measure 32]
    R1 * 3/4

    % [01 RH_Music_Voice measure 33]
    R1 * 2/4

    % [01 RH_Music_Voice measure 34]
    R1 * 5/4

    % [01 RH_Music_Voice measure 35]
    R1 * 13/16

    % [01 RH_Music_Voice measure 36]
    R1 * 5/8

    % [01 RH_Music_Voice measure 37]
    R1 * 5/4

    % [01 RH_Music_Voice measure 38]
    R1 * 4/4

    % [01 RH_Music_Voice measure 39]
    R1 * 5/16

    % [01 RH_Music_Voice measure 40]
    R1 * 4/4

    % [01 RH_Music_Voice measure 41]
    R1 * 9/16

    % [01 RH_Music_Voice measure 42]
    R1 * 3/4

    % [01 RH_Music_Voice measure 43]
    R1 * 7/8

    % [01 RH_Music_Voice measure 44]
    R1 * 3/4

    % [01 RH_Music_Voice measure 45]
    R1 * 7/8

    % [01 RH_Music_Voice measure 46]
    R1 * 4/4

    % [01 RH_Music_Voice measure 47]
    R1 * 1/4

    % [01 RH_Music_Voice measure 48]
    R1 * 6/4

    % [01 RH_Music_Voice measure 49]
    R1 * 4/4

    % [01 RH_Music_Voice measure 50]
    R1 * 4/4

    % [01 RH_Music_Voice measure 51]
    R1 * 9/4

    % [01 RH_Music_Voice measure 52]
    R1 * 6/4

    % [01 RH_Music_Voice measure 53]
    R1 * 4/4

    % [01 RH_Music_Voice measure 54]
    R1 * 3/4
    \revert MultiMeasureRest.transparent

    <<

        \context Voice = "RH_Music_Voice"
        {

            % [01 RH_Music_Voice measure 55]
            \abjad-invisible-music-coloring
            R1 * 1/4

        }

        \context Voice = "RH_Rest_Voice"
        {

            % [01 RH_Rest_Voice measure 55]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


a_RH_Music_Staff = {

    \context Voice = "RH_Music_Voice"
    \a_RH_Music_Voice

}


a_Cello_Music_Voice = {

    \tweak text #tuplet-number::calc-fraction-text
    \times 3/5
    {

        % [01 Cello_Music_Voice measure 1]
        \override TupletBracket.staff-padding = 3
        \clef "bass"
        \once \override Staff.Clef.color = #(x11-color 'DarkViolet)
        \set Staff.forceClef = ##t
        fs!8
        - \tweak staff-padding 9
        _ \huitzil-phrasing-dynamics-see-preface-markup
        [
        - \abjad-dashed-line-with-hook
        - \baca-text-spanner-left-text "baca.music()"
        - \tweak bound-details.right.padding 2.75
        - \tweak color #darkcyan
        - \tweak staff-padding 8
        \bacaStartTextSpanRhythmAnnotation
        \override Staff.Clef.color = #(x11-color 'violet)

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
    \times 9/16
    {

        % [01 Cello_Music_Voice measure 2]
        bf,!4

        a,4

        b,4

        c4

    }

    \tweak text #tuplet-number::calc-fraction-text
    \times 3/5
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

        % [01 Cello_Music_Voice measure 3]
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

    \times 4/5
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
    \times 7/8
    {

        % [01 Cello_Music_Voice measure 4]
        b,4

        c4

    }

    \times 2/3
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

        % [01 Cello_Music_Voice measure 5]
        af!16
        [

        fs!16

        e16

        f16
        ]

    }

    \times 4/5
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
    \times 7/8
    {

        f,4

        g,4

    }

    \times 2/3
    {

        % [01 Cello_Music_Voice measure 6]
        af,!8
        [

        fs,!8

        e8
        ]

    }

    \tweak text #tuplet-number::calc-fraction-text
    \times 3/4
    {

        cs!8
        [

        d8
        ]

    }

    \times 2/3
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

        % [01 Cello_Music_Voice measure 7]
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
    \times 33/36
    {

        % [01 Cello_Music_Voice measure 8]
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
    \times 3/4
    {

        % [01 Cello_Music_Voice measure 9]
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
    \times 7/9
    {

        % [01 Cello_Music_Voice measure 10]
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
    \times 3/5
    {

        % [01 Cello_Music_Voice measure 11]
        ef!8
        [

        f8

        fs!8

        bf,!8

        e8
        ]

    }

    \tweak text #tuplet-number::calc-fraction-text
    \times 15/24
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

        % [01 Cello_Music_Voice measure 12]
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
    \times 3/4
    {

        % [01 Cello_Music_Voice measure 13]
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

        % [01 Cello_Music_Voice measure 14]
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

        % [01 Cello_Music_Voice measure 15]
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

    \times 2/3
    {

        % [01 Cello_Music_Voice measure 16]
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
    \times 9/14
    {

        % [01 Cello_Music_Voice measure 17]
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
    \times 7/12
    {

        % [01 Cello_Music_Voice measure 18]
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

        % [01 Cello_Music_Voice measure 19]
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
    \times 15/24
    {

        % [01 Cello_Music_Voice measure 20]
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
    \times 7/10
    {

        % [01 Cello_Music_Voice measure 21]
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

        % [01 Cello_Music_Voice measure 22]
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

    \times 2/3
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

        % [01 Cello_Music_Voice measure 23]
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
    \times 3/4
    {

        % [01 Cello_Music_Voice measure 24]
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
    \times 15/18
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

        % [01 Cello_Music_Voice measure 25]
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
    \times 3/4
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

        % [01 Cello_Music_Voice measure 26]
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

    \times 2/3
    {

        % [01 Cello_Music_Voice measure 27]
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

        % [01 Cello_Music_Voice measure 28]
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

    \times 2/3
    {

        % [01 Cello_Music_Voice measure 29]
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

    \times 2/3
    {

        % [01 Cello_Music_Voice measure 30]
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

        % [01 Cello_Music_Voice measure 31]
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
    \times 3/4
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
    \times 3/4
    {

        % [01 Cello_Music_Voice measure 32]
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

        % [01 Cello_Music_Voice measure 33]
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

        % [01 Cello_Music_Voice measure 34]
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

        % [01 Cello_Music_Voice measure 35]
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
    \times 9/10
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

        % [01 Cello_Music_Voice measure 36]
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

        % [01 Cello_Music_Voice measure 37]
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

    \times 2/3
    {

        % [01 Cello_Music_Voice measure 38]
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

        % [01 Cello_Music_Voice measure 39]
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

    \times 2/3
    {

        % [01 Cello_Music_Voice measure 40]
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
    \times 9/14
    {

        % [01 Cello_Music_Voice measure 41]
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
    \times 3/4
    {

        % [01 Cello_Music_Voice measure 42]
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

        % [01 Cello_Music_Voice measure 43]
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
    \times 3/4
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

        % [01 Cello_Music_Voice measure 44]
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

    \times 4/5
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
    \times 7/9
    {

        % [01 Cello_Music_Voice measure 45]
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
    \times 9/16
    {

        % [01 Cello_Music_Voice measure 46]
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
    \times 7/10
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

        % [01 Cello_Music_Voice measure 47]
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
    \times 3/5
    {

        % [01 Cello_Music_Voice measure 48]
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

        % [01 Cello_Music_Voice measure 49]
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

        % [01 Cello_Music_Voice measure 50]
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
    \times 9/16
    {

        % [01 Cello_Music_Voice measure 51]
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
    \times 3/5
    {

        % [01 Cello_Music_Voice measure 52]
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

        % [01 Cello_Music_Voice measure 53]
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

        % [01 Cello_Music_Voice measure 54]
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
        \revert TupletBracket.staff-padding
    %%% \tweak extra-offset #'(0 . 2)
    %%% \breathe
        \breathe
        <> \bacaStopTextSpanRhythmAnnotation

    }

    <<

        \context Voice = "Cello_Music_Voice"
        {

            % [01 Cello_Music_Voice measure 55]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            d1 * 1/4

        }

        \context Voice = "Cello_Rest_Voice"
        {

            % [01 Cello_Rest_Voice measure 55]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


a_Cello_Music_Staff = {

    \context Voice = "Cello_Music_Voice"
    \a_Cello_Music_Voice

}
