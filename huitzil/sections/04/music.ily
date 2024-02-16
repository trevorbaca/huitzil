number.4.Rests = {

    % [Rests measure 1]
    R1 * 1/2

    % [Rests measure 2]
    R1 * 1/2

    % [Rests measure 3]
    R1 * 2/3

    % [Rests measure 4]
    R1 * 1/2

    % [Rests measure 5]
    R1 * 4/5

    % [Rests measure 6]
    R1 * 1/2

    % [Rests measure 7]
    R1 * 2/3

    % [Rests measure 8]
    R1 * 1/2

    % [Rests measure 9]
    R1 * 4/5

    % [Rests measure 10]
    R1 * 1/2

    % [Rests measure 11]
    R1 * 2/3

    % [Rests measure 12]
    R1 * 1/2

    % [Rests measure 13]
    R1 * 4/5

    % [Rests measure 14]
    R1 * 1/2

    % [Rests measure 15]
    R1 * 2/3

    % [Rests measure 16]
    R1 * 1/2

    % [Rests measure 17]
    R1 * 4/5

    % [Rests measure 18]
    R1 * 1/2

    % [Rests measure 19]
    R1 * 1/2

    % [Rests measure 20]
    R1 * 1/2

    % [Rests measure 21]
    R1 * 1/2

    % [Rests measure 22]
    R1 * 1/2

    % [Rests measure 23]
    R1 * 1/2

}


number.4.Skips = {

    % [Skips measure 1]
      %! RED_START_BAR
    %@% \baca-thick-red-bar-line
      %! REAPPLIED_TIME_SIGNATURE_COLOR
    \baca-time-signature-color  #(x11-color 'green4)
      %! REAPPLIED_TIME_SIGNATURE
    \time 1/2
      %! RED_START_BAR
    %@% \tweak break-visibility ##(#t #t #f)
      %! RED_START_BAR
    %@% \tweak color #red
      %! RED_START_BAR
    %@% \mark \markup \with-dimensions-from \null "04"
    s1 * 1/2
      %! REAPPLIED_METRONOME_MARK_WITH_COLOR
    - \baca-invisible-line
      %! REAPPLIED_METRONOME_MARK_WITH_COLOR
    - \baca-metronome-mark-spanner-colored-left-text 2 0 1 "88" #(x11-color 'green4)
      %! REAPPLIED_METRONOME_MARK_WITH_COLOR
    \bacaStartTextSpanMM
      %! REAPPLIED_METRONOME_MARK
    %@% - \baca-invisible-line
      %! REAPPLIED_METRONOME_MARK
    %@% - \baca-metronome-mark-spanner-left-text 2 0 1 "88"
      %! REAPPLIED_METRONOME_MARK
    %@% \bacaStartTextSpanMM
      %! CLOCK_TIME
    - \baca-start-ct-left-only "[5'12'']"
      %! CLOCK_TIME
    \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "1"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "106"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN

    % [Skips measure 2]
    s1 * 1/2
      %! CLOCK_TIME
    \bacaStopTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    \bacaStopTextSpanLMN
      %! MEASURE_NUMBER
    %@% \bacaStopTextSpanMN
      %! CLOCK_TIME
    - \baca-start-ct-left-only "[5'13'']"
      %! CLOCK_TIME
    \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "2"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "107"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN

    % [Skips measure 3]
      %! EXPLICIT_TIME_SIGNATURE
    #(ly:expect-warning "strange time signature found")
      %! EXPLICIT_TIME_SIGNATURE
    \time 2/3
      %! EXPLICIT_TIME_SIGNATURE_COLOR
    \baca-time-signature-color #blue
    s1 * 2/3
      %! CLOCK_TIME
    \bacaStopTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    \bacaStopTextSpanLMN
      %! MEASURE_NUMBER
    %@% \bacaStopTextSpanMN
      %! CLOCK_TIME
    - \baca-start-ct-left-only "[5'14'']"
      %! CLOCK_TIME
    \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "3"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "108"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN

    % [Skips measure 4]
      %! EXPLICIT_TIME_SIGNATURE_COLOR
    \baca-time-signature-color #blue
      %! EXPLICIT_TIME_SIGNATURE
    \time 1/2
    s1 * 1/2
      %! CLOCK_TIME
    \bacaStopTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    \bacaStopTextSpanLMN
      %! MEASURE_NUMBER
    %@% \bacaStopTextSpanMN
      %! CLOCK_TIME
    - \baca-start-ct-left-only "[5'16'']"
      %! CLOCK_TIME
    \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "4"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "109"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN

    % [Skips measure 5]
      %! EXPLICIT_TIME_SIGNATURE
    #(ly:expect-warning "strange time signature found")
      %! EXPLICIT_TIME_SIGNATURE
    \time 4/5
      %! EXPLICIT_TIME_SIGNATURE_COLOR
    \baca-time-signature-color #blue
    s1 * 4/5
      %! CLOCK_TIME
    \bacaStopTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    \bacaStopTextSpanLMN
      %! MEASURE_NUMBER
    %@% \bacaStopTextSpanMN
      %! CLOCK_TIME
    - \baca-start-ct-left-only "[5'17'']"
      %! CLOCK_TIME
    \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "5"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "110"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN

    % [Skips measure 6]
      %! EXPLICIT_TIME_SIGNATURE_COLOR
    \baca-time-signature-color #blue
      %! EXPLICIT_TIME_SIGNATURE
    \time 1/2
    s1 * 1/2
      %! CLOCK_TIME
    \bacaStopTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    \bacaStopTextSpanLMN
      %! MEASURE_NUMBER
    %@% \bacaStopTextSpanMN
      %! CLOCK_TIME
    - \baca-start-ct-left-only "[5'20'']"
      %! CLOCK_TIME
    \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "6"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "111"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN

    % [Skips measure 7]
      %! EXPLICIT_TIME_SIGNATURE
    #(ly:expect-warning "strange time signature found")
      %! EXPLICIT_TIME_SIGNATURE
    \time 2/3
      %! EXPLICIT_TIME_SIGNATURE_COLOR
    \baca-time-signature-color #blue
    s1 * 2/3
      %! CLOCK_TIME
    \bacaStopTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    \bacaStopTextSpanLMN
      %! MEASURE_NUMBER
    %@% \bacaStopTextSpanMN
      %! CLOCK_TIME
    - \baca-start-ct-left-only "[5'21'']"
      %! CLOCK_TIME
    \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "7"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "112"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN

    % [Skips measure 8]
      %! EXPLICIT_TIME_SIGNATURE_COLOR
    \baca-time-signature-color #blue
      %! EXPLICIT_TIME_SIGNATURE
    \time 1/2
    s1 * 1/2
      %! CLOCK_TIME
    \bacaStopTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    \bacaStopTextSpanLMN
      %! MEASURE_NUMBER
    %@% \bacaStopTextSpanMN
      %! CLOCK_TIME
    - \baca-start-ct-left-only "[5'23'']"
      %! CLOCK_TIME
    \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "8"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "113"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN

    % [Skips measure 9]
      %! EXPLICIT_TIME_SIGNATURE
    #(ly:expect-warning "strange time signature found")
      %! EXPLICIT_TIME_SIGNATURE
    \time 4/5
      %! EXPLICIT_TIME_SIGNATURE_COLOR
    \baca-time-signature-color #blue
    s1 * 4/5
      %! CLOCK_TIME
    \bacaStopTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    \bacaStopTextSpanLMN
      %! MEASURE_NUMBER
    %@% \bacaStopTextSpanMN
      %! CLOCK_TIME
    - \baca-start-ct-left-only "[5'24'']"
      %! CLOCK_TIME
    \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "9"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "114"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN

    % [Skips measure 10]
      %! EXPLICIT_TIME_SIGNATURE_COLOR
    \baca-time-signature-color #blue
      %! EXPLICIT_TIME_SIGNATURE
    \time 1/2
    s1 * 1/2
      %! CLOCK_TIME
    \bacaStopTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    \bacaStopTextSpanLMN
      %! MEASURE_NUMBER
    %@% \bacaStopTextSpanMN
      %! CLOCK_TIME
    - \baca-start-ct-left-only "[5'26'']"
      %! CLOCK_TIME
    \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "10"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "115"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN

    % [Skips measure 11]
      %! EXPLICIT_TIME_SIGNATURE
    #(ly:expect-warning "strange time signature found")
      %! EXPLICIT_TIME_SIGNATURE
    \time 2/3
      %! EXPLICIT_TIME_SIGNATURE_COLOR
    \baca-time-signature-color #blue
    s1 * 2/3
      %! CLOCK_TIME
    \bacaStopTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    \bacaStopTextSpanLMN
      %! MEASURE_NUMBER
    %@% \bacaStopTextSpanMN
      %! CLOCK_TIME
    - \baca-start-ct-left-only "[5'28'']"
      %! CLOCK_TIME
    \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "11"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "116"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN

    % [Skips measure 12]
      %! EXPLICIT_TIME_SIGNATURE_COLOR
    \baca-time-signature-color #blue
      %! EXPLICIT_TIME_SIGNATURE
    \time 1/2
    s1 * 1/2
      %! CLOCK_TIME
    \bacaStopTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    \bacaStopTextSpanLMN
      %! MEASURE_NUMBER
    %@% \bacaStopTextSpanMN
      %! CLOCK_TIME
    - \baca-start-ct-left-only "[5'30'']"
      %! CLOCK_TIME
    \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "12"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "117"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN

    % [Skips measure 13]
      %! EXPLICIT_TIME_SIGNATURE
    #(ly:expect-warning "strange time signature found")
      %! EXPLICIT_TIME_SIGNATURE
    \time 4/5
      %! EXPLICIT_TIME_SIGNATURE_COLOR
    \baca-time-signature-color #blue
    s1 * 4/5
      %! CLOCK_TIME
    \bacaStopTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    \bacaStopTextSpanLMN
      %! MEASURE_NUMBER
    %@% \bacaStopTextSpanMN
      %! CLOCK_TIME
    - \baca-start-ct-left-only "[5'31'']"
      %! CLOCK_TIME
    \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "13"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "118"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN

    % [Skips measure 14]
      %! EXPLICIT_TIME_SIGNATURE_COLOR
    \baca-time-signature-color #blue
      %! EXPLICIT_TIME_SIGNATURE
    \time 1/2
    s1 * 1/2
      %! CLOCK_TIME
    \bacaStopTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    \bacaStopTextSpanLMN
      %! MEASURE_NUMBER
    %@% \bacaStopTextSpanMN
      %! CLOCK_TIME
    - \baca-start-ct-left-only "[5'33'']"
      %! CLOCK_TIME
    \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "14"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "119"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN

    % [Skips measure 15]
      %! EXPLICIT_TIME_SIGNATURE
    #(ly:expect-warning "strange time signature found")
      %! EXPLICIT_TIME_SIGNATURE
    \time 2/3
      %! EXPLICIT_TIME_SIGNATURE_COLOR
    \baca-time-signature-color #blue
    s1 * 2/3
      %! CLOCK_TIME
    \bacaStopTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    \bacaStopTextSpanLMN
      %! MEASURE_NUMBER
    %@% \bacaStopTextSpanMN
      %! CLOCK_TIME
    - \baca-start-ct-left-only "[5'34'']"
      %! CLOCK_TIME
    \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "15"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "120"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN

    % [Skips measure 16]
      %! EXPLICIT_TIME_SIGNATURE_COLOR
    \baca-time-signature-color #blue
      %! EXPLICIT_TIME_SIGNATURE
    \time 1/2
    s1 * 1/2
      %! CLOCK_TIME
    \bacaStopTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    \bacaStopTextSpanLMN
      %! MEASURE_NUMBER
    %@% \bacaStopTextSpanMN
      %! CLOCK_TIME
    - \baca-start-ct-left-only "[5'36'']"
      %! CLOCK_TIME
    \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "16"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "121"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN

    % [Skips measure 17]
      %! EXPLICIT_TIME_SIGNATURE
    #(ly:expect-warning "strange time signature found")
      %! EXPLICIT_TIME_SIGNATURE
    \time 4/5
      %! EXPLICIT_TIME_SIGNATURE_COLOR
    \baca-time-signature-color #blue
    s1 * 4/5
      %! CLOCK_TIME
    \bacaStopTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    \bacaStopTextSpanLMN
      %! MEASURE_NUMBER
    %@% \bacaStopTextSpanMN
      %! CLOCK_TIME
    - \baca-start-ct-left-only "[5'38'']"
      %! CLOCK_TIME
    \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "17"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "122"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN

    % [Skips measure 18]
      %! EXPLICIT_TIME_SIGNATURE_COLOR
    \baca-time-signature-color #blue
      %! EXPLICIT_TIME_SIGNATURE
    \time 1/2
    s1 * 1/2
      %! CLOCK_TIME
    \bacaStopTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    \bacaStopTextSpanLMN
    \bacaStopTextSpanMM
      %! MEASURE_NUMBER
    %@% \bacaStopTextSpanMN
      %! EXPLICIT_METRONOME_MARK_WITH_COLOR
    - \baca-dashed-line-with-arrow
      %! EXPLICIT_METRONOME_MARK_WITH_COLOR
    - \baca-metronome-mark-spanner-colored-left-text 2 0 1 "88" #blue
      %! EXPLICIT_METRONOME_MARK_WITH_COLOR
    \bacaStartTextSpanMM
      %! EXPLICIT_METRONOME_MARK
    %@% - \baca-dashed-line-with-arrow
      %! EXPLICIT_METRONOME_MARK
    %@% - \baca-metronome-mark-spanner-left-text 2 0 1 "88"
      %! EXPLICIT_METRONOME_MARK
    %@% \bacaStartTextSpanMM
      %! CLOCK_TIME
    - \baca-start-ct-left-only "[5'40'']"
      %! CLOCK_TIME
    \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "18"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "123"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN

    % [Skips measure 19]
    s1 * 1/2
      %! CLOCK_TIME
    \bacaStopTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    \bacaStopTextSpanLMN
      %! MEASURE_NUMBER
    %@% \bacaStopTextSpanMN
      %! CLOCK_TIME
    - \baca-start-ct-left-only "[5'41'']"
      %! CLOCK_TIME
    \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "19"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "124"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN

    % [Skips measure 20]
    s1 * 1/2
      %! CLOCK_TIME
    \bacaStopTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    \bacaStopTextSpanLMN
      %! MEASURE_NUMBER
    %@% \bacaStopTextSpanMN
      %! CLOCK_TIME
    - \baca-start-ct-left-only "[5'43'']"
      %! CLOCK_TIME
    \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "20"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "125"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN

    % [Skips measure 21]
    s1 * 1/2
      %! CLOCK_TIME
    \bacaStopTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    \bacaStopTextSpanLMN
      %! MEASURE_NUMBER
    %@% \bacaStopTextSpanMN
      %! CLOCK_TIME
    - \baca-start-ct-left-only "[5'44'']"
      %! CLOCK_TIME
    \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "21"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "126"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN

    % [Skips measure 22]
    s1 * 1/2
      %! CLOCK_TIME
    \bacaStopTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    \bacaStopTextSpanLMN
      %! MEASURE_NUMBER
    %@% \bacaStopTextSpanMN
      %! CLOCK_TIME
    - \baca-start-ct-left-only "[5'45'']"
      %! CLOCK_TIME
    \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "22"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "127"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN

    % [Skips measure 23]
    s1 * 1/2
      %! CLOCK_TIME
    \bacaStopTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    \bacaStopTextSpanLMN
      %! MEASURE_NUMBER
    %@% \bacaStopTextSpanMN
      %! CLOCK_TIME
    - \baca-start-ct-both "[5'47'']" "[5'48'']"
      %! CLOCK_TIME
    \bacaStartTextSpanCT
      %! LOCAL_MEASURE_NUMBER
    - \baca-start-lmn-left-only "23"
      %! LOCAL_MEASURE_NUMBER
    \bacaStartTextSpanLMN
      %! MEASURE_NUMBER
    %@% - \baca-start-mn-left-only "128"
      %! MEASURE_NUMBER
    %@% \bacaStartTextSpanMN

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


number.4.RH.Music = {

    % [RH.Music measure 1]
      %! REAPPLIED_CLEF
    \clef "percussion"
      %! REAPPLIED_CLEF_COLOR
    \once \override RHStaff.Clef.color = #(x11-color 'green4)
      %! REAPPLIED_STAFF_LINES_COLOR
    \once \override RHStaff.StaffSymbol.color = #(x11-color 'green4)
      %! +SECTION
    \override DynamicLineSpanner.staff-padding = 7
      %! REAPPLIED_CLEF_COLOR_CANCELLATION
    %@% \override RHStaff.Clef.color = ##f
      %! -PARTS
      %! EXPLICIT_BAR_EXTENT
      %! REAPPLIED_BAR_EXTENT
    \override Staff.BarLine.bar-extent = #'(-2 . 4)
    \override TextScript.parent-alignment-X = 0
    \override TextScript.self-alignment-X = 0
    \override TextScript.staff-padding = 4
      %! REAPPLIED_CLEF
    \set RHStaff.forceClef = ##t
      %! REAPPLIED_STAFF_LINES
    \stopStaff
      %! REAPPLIED_STAFF_LINES
    \once \override RHStaff.StaffSymbol.line-count = 7
      %! REAPPLIED_STAFF_LINES
    \startStaff
      %! +SECTION
    \stopStaff
      %! +SECTION
    \once \override RHStaff.StaffSymbol.line-positions = #'(8.2 8 7.8 6 4 2 0 -2 -4 -5.8 -6 -6.2)
      %! +SECTION
    \startStaff
    d8
    :32
    _ \baca-ffz-markup
    \glissando
      %! REAPPLIED_CLEF_REDRAW_COLOR
    \override RHStaff.Clef.color = #(x11-color 'OliveDrab)

    f8
    :32
    _ \baca-ffz-markup
    \glissando

    a8
    :32
    _ \baca-ffz-markup
    \glissando

    c'8
    :32
    _ \baca-ffz-markup

    % [RH.Music measure 2]
    c'2
    :32
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \mp
    _ \baca-ffz-markup
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    \>

    \tweak edge-height #'(0.7 . 0)
    \times 2/3
    {

        % [RH.Music measure 3]
        c'2
        :32
        _ \baca-fz-markup

    }

    \tweak edge-height #'(0.7 . 0)
    \times 2/3
    {

        c'2
        :32
          %! EXPLICIT_DYNAMIC_COLOR
          %! EXPLICIT_DYNAMIC
        - \tweak color #blue
          %! EXPLICIT_DYNAMIC
        \p
        _ \baca-fffz-markup
          %! EXPLICIT_DYNAMIC_COLOR
          %! EXPLICIT_DYNAMIC
          %! SPANNER_START
        - \tweak color #blue
          %! EXPLICIT_DYNAMIC
          %! SPANNER_START
        \<

    }

    % [RH.Music measure 4]
    c'2
    :32
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \mp
    _ \baca-ffz-markup
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    \>

    \tweak edge-height #'(0.7 . 0)
    \times 4/5
    {

        % [RH.Music measure 5]
        c'4
        :32
        _ \baca-mfz-markup

    }

    \tweak edge-height #'(0.7 . 0)
    \times 4/5
    {

        c'4
        :32
        _ \baca-fz-markup

    }

    \tweak edge-height #'(0.7 . 0)
    \times 4/5
    {

        c'4
        :32
          %! EXPLICIT_DYNAMIC_COLOR
          %! EXPLICIT_DYNAMIC
        - \tweak color #blue
          %! EXPLICIT_DYNAMIC
        \p
        _ \baca-ffz-markup
          %! EXPLICIT_DYNAMIC_COLOR
          %! EXPLICIT_DYNAMIC
          %! SPANNER_START
        - \tweak color #blue
          %! EXPLICIT_DYNAMIC
          %! SPANNER_START
        \<

    }

    \tweak edge-height #'(0.7 . 0)
    \times 4/5
    {

        c'4
        :32
        _ \baca-fffz-markup

    }

    % [RH.Music measure 6]
    c'2
    :32
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \mp
    _ \baca-ffz-markup
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    \>

    \tweak edge-height #'(0.7 . 0)
    \times 2/3
    {

        % [RH.Music measure 7]
        c'2
        :32
        _ \baca-fz-markup

    }

    \tweak edge-height #'(0.7 . 0)
    \times 2/3
    {

        c'2
        :32
          %! EXPLICIT_DYNAMIC_COLOR
          %! EXPLICIT_DYNAMIC
        - \tweak color #blue
          %! EXPLICIT_DYNAMIC
        \p
        _ \baca-fffz-markup
          %! EXPLICIT_DYNAMIC_COLOR
          %! EXPLICIT_DYNAMIC
          %! SPANNER_START
        - \tweak color #blue
          %! EXPLICIT_DYNAMIC
          %! SPANNER_START
        \<

    }

    % [RH.Music measure 8]
    c'2
    :32
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \mp
    _ \baca-ffz-markup
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    \>

    \tweak edge-height #'(0.7 . 0)
    \times 4/5
    {

        % [RH.Music measure 9]
        c'4
        :32
        _ \baca-mfz-markup

    }

    \tweak edge-height #'(0.7 . 0)
    \times 4/5
    {

        c'4
        :32
        _ \baca-fz-markup

    }

    \tweak edge-height #'(0.7 . 0)
    \times 4/5
    {

        c'4
        :32
          %! EXPLICIT_DYNAMIC_COLOR
          %! EXPLICIT_DYNAMIC
        - \tweak color #blue
          %! EXPLICIT_DYNAMIC
        \p
        _ \baca-ffz-markup
          %! EXPLICIT_DYNAMIC_COLOR
          %! EXPLICIT_DYNAMIC
          %! SPANNER_START
        - \tweak color #blue
          %! EXPLICIT_DYNAMIC
          %! SPANNER_START
        \<

    }

    \tweak edge-height #'(0.7 . 0)
    \times 4/5
    {

        c'4
        :32
        _ \baca-fffz-markup

    }

    % [RH.Music measure 10]
    c'2
    :32
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \mp
    _ \baca-ffz-markup
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    \>

    \tweak edge-height #'(0.7 . 0)
    \times 2/3
    {

        % [RH.Music measure 11]
        c'2
        :32
        _ \baca-fz-markup

    }

    \tweak edge-height #'(0.7 . 0)
    \times 2/3
    {

        c'2
        :32
          %! EXPLICIT_DYNAMIC_COLOR
          %! EXPLICIT_DYNAMIC
        - \tweak color #blue
          %! EXPLICIT_DYNAMIC
        \p
        _ \baca-fffz-markup
          %! EXPLICIT_DYNAMIC_COLOR
          %! EXPLICIT_DYNAMIC
          %! SPANNER_START
        - \tweak color #blue
          %! EXPLICIT_DYNAMIC
          %! SPANNER_START
        \<

    }

    % [RH.Music measure 12]
    c'2
    :32
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \mp
    _ \baca-ffz-markup
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    \>

    \tweak edge-height #'(0.7 . 0)
    \times 4/5
    {

        % [RH.Music measure 13]
        c'4
        :32
        _ \baca-mfz-markup

    }

    \tweak edge-height #'(0.7 . 0)
    \times 4/5
    {

        c'4
        :32
        _ \baca-fz-markup

    }

    \tweak edge-height #'(0.7 . 0)
    \times 4/5
    {

        c'4
        :32
          %! EXPLICIT_DYNAMIC_COLOR
          %! EXPLICIT_DYNAMIC
        - \tweak color #blue
          %! EXPLICIT_DYNAMIC
        \p
        _ \baca-ffz-markup
          %! EXPLICIT_DYNAMIC_COLOR
          %! EXPLICIT_DYNAMIC
          %! SPANNER_START
        - \tweak color #blue
          %! EXPLICIT_DYNAMIC
          %! SPANNER_START
        \<

    }

    \tweak edge-height #'(0.7 . 0)
    \times 4/5
    {

        c'4
        :32
        _ \baca-fffz-markup
        \glissando

    }

    % [RH.Music measure 14]
    \stopStaff
    \once \override RHStaff.StaffSymbol.line-positions = #'(8.2 8 7.8 -5.8 -6 -6.2)
    \startStaff
    d''2
    :32
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \mp
    - \tweak self-alignment-X -0.85
    - \tweak staff-padding 2
    ^ \huitzil-directly-on-bridge-markup
    _ \baca-ffz-markup
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    - \tweak stencil #constante-hairpin
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    - \tweak to-barline ##t
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    \<

    \tweak edge-height #'(0.7 . 0)
    \times 2/3
    {

        % [RH.Music measure 15]
        d''2
        :32
        _ \baca-fz-markup

    }

    \tweak edge-height #'(0.7 . 0)
    \times 2/3
    {

        d''2
        :32
        _ \baca-fffz-markup

    }

    % [RH.Music measure 16]
    d''2
    :32
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \p
    _ \baca-ffz-markup
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    - \tweak stencil #constante-hairpin
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    - \tweak to-barline ##t
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    \<

    \tweak edge-height #'(0.7 . 0)
    \times 4/5
    {

        % [RH.Music measure 17]
        d''4
        :32
        _ \baca-mfz-markup

    }

    \tweak edge-height #'(0.7 . 0)
    \times 4/5
    {

        d''4
        :32
        _ \baca-fz-markup

    }

    \tweak edge-height #'(0.7 . 0)
    \times 4/5
    {

        d''4
        :32
        _ \baca-ffz-markup

    }

    \tweak edge-height #'(0.7 . 0)
    \times 4/5
    {

        d''4
        :32
        _ \baca-fffz-markup

    }

    % [RH.Music measure 18]
      %! +SCORE
%%% \override Hairpin.to-barline = ##t
    d''2
    :32
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \pp
    _ \baca-ffz-markup
      %! SPANNER_START
    - \baca-dashed-line-with-arrow
      %! SPANNER_START
    - \baca-text-spanner-left-text "(trem. mod.)"
      %! SPANNER_START
    - \tweak staff-padding 6
      %! SPANNER_START
    \startTextSpan
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    - \tweak stencil #constante-hairpin
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    - \tweak to-barline ##t
      %! EXPLICIT_DYNAMIC
      %! SPANNER_START
    \<

    % [RH.Music measure 19]
    d''2
    :32
    _ \baca-fz-markup
      %! SPANNER_STOP
    \stopTextSpan
      %! SPANNER_START
    - \baca-dashed-line-with-arrow
      %! SPANNER_START
    - \baca-text-spanner-left-text "più stretto"
      %! SPANNER_START
    - \tweak staff-padding 6
      %! SPANNER_START
    \startTextSpan

    % [RH.Music measure 20]
    d''2
    :32
    _ \baca-fz-markup
      %! SPANNER_STOP
    \stopTextSpan
      %! SPANNER_START
    - \baca-dashed-line-with-arrow
      %! SPANNER_START
    - \baca-text-spanner-left-text "più largo"
      %! SPANNER_START
    - \tweak staff-padding 6
      %! SPANNER_START
    \startTextSpan

    % [RH.Music measure 21]
    d''2
    :32
    _ \baca-mfz-markup
      %! SPANNER_STOP
    \stopTextSpan
      %! SPANNER_START
    - \baca-dashed-line-with-arrow
      %! SPANNER_START
    - \baca-text-spanner-left-text "più stretto"
      %! SPANNER_START
    - \baca-text-spanner-right-text "mod."
      %! SPANNER_START
    - \tweak bound-details.right.padding 0.5
      %! SPANNER_START
    - \tweak bound-details.right.stencil-align-dir-y #center
      %! SPANNER_START
    - \tweak staff-padding 6
      %! SPANNER_START
    \startTextSpan
      %! +SCORE
%%% \revert Hairpin.to-barline

    % [RH.Music measure 22]
      %! +SECTION
    \once \override Hairpin.to-barline = ##t
    d''2
    :32
      %! EXPLICIT_DYNAMIC_COLOR
      %! EXPLICIT_DYNAMIC
    - \tweak color #blue
      %! EXPLICIT_DYNAMIC
    \p
    _ \baca-mfz-markup
      %! SPANNER_STOP
    \stopTextSpan

    % [RH.Music measure 23]
    \stopStaff
    \once \override RHStaff.StaffSymbol.line-positions = #'(8.2 8 7.8 6 4 2 0 -2 -4 -5.8 -6 -6.2)
    \startStaff
    d''2
    :32
    - \tweak self-alignment-X -0.85
    - \tweak staff-padding 6
    ^ \huitzil-sliding-back-onto-string-markup
    _ \baca-mpz-markup
    \glissando
    \revert TextScript.parent-alignment-X
    \revert TextScript.self-alignment-X
    \revert TextScript.staff-padding

      %! ANCHOR_NOTE
    % [RH.Music anchor note]
      %! ANCHOR_NOTE
      %! INVISIBLE_MUSIC_COMMAND
      %! NOTE
    %@% \abjad-invisible-music
      %! ANCHOR_NOTE
      %! INVISIBLE_MUSIC_COLORING
      %! NOTE
    \abjad-invisible-music-coloring
      %! ANCHOR_NOTE
    \once \override Accidental.stencil = ##f
      %! ANCHOR_NOTE
    \stopStaff
      %! ANCHOR_NOTE
    \once \override Staff.StaffSymbol.transparent = ##t
      %! ANCHOR_NOTE
    \startStaff
      %! ANCHOR_NOTE
      %! HIDDEN
      %! NOTE
    b'1 * 1/4
      %! ANCHOR_NOTE
      %! DURATION_MULTIPLIER
      %! HIDDEN
      %! NOTE
    %@% ^ \baca-duration-multiplier-markup #"1" #"4"
      %! ANCHOR_NOTE
      %! SHOW_TO_JOIN_BROKEN_SPANNERS
    %@% \glissando

}


number.4.RH.Staff = {

    \context Voice = "RH.Music"
    { \number.4.RH.Music }

}


number.4.Cello.Music = {

    % [Cello.Music measure 1]
      %! REAPPLIED_CLEF
    \clef "bass"
      %! REAPPLIED_CLEF_COLOR
    \once \override Staff.Clef.color = #(x11-color 'green4)
    \override MultiMeasureRest.transparent = ##t
    \override Score.BarLine.transparent = ##t
    \override Score.SpanBar.transparent = ##t
    \override Score.TimeSignature.stencil = ##f
      %! REAPPLIED_CLEF_COLOR_CANCELLATION
    %@% \override Staff.Clef.color = ##f
      %! REAPPLIED_CLEF
    \set Staff.forceClef = ##t
    R1 * 1/2
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
      %! REAPPLIED_INSTRUMENT_ALERT
    ^ \baca-reapplied-instrument-markup "(“Cello”)"
      %! REAPPLIED_CLEF_REDRAW_COLOR
    \override Staff.Clef.color = #(x11-color 'OliveDrab)

    % [Cello.Music measure 2]
    R1 * 1/2
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"

    % [Cello.Music measure 3]
    R1 * 2/3
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"2" #"3"

    % [Cello.Music measure 4]
    R1 * 1/2
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"

    % [Cello.Music measure 5]
    R1 * 4/5
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"4" #"5"

    % [Cello.Music measure 6]
    R1 * 1/2
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"

    % [Cello.Music measure 7]
    R1 * 2/3
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"2" #"3"

    {

        % [Cello.Music measure 8]
        b,,1 * 107/30
          %! DURATION_MULTIPLIER
        %@% ^ \baca-duration-multiplier-markup #"107" #"30"
        \glissando
        \repeatTie

        c,1 * 1/5
          %! DURATION_MULTIPLIER
        %@% ^ \baca-duration-multiplier-markup #"1" #"5"
        \glissando

    }

    {

        % [Cello.Music measure 14]
          %! EXPLICIT_CLEF
        \clef "treble"
        \once \override NoteHead.duration-log = 2
        \once \override NoteHead.no-ledgers = ##t
        \once \override NoteHead.style = #'do
          %! MEASURE_119
          %! SHIFTED_CLEF
        \once \override Staff.Clef.X-extent = ##f
          %! EXPLICIT_CLEF_COLOR
        \once \override Staff.Clef.color = #blue
          %! MEASURE_119
          %! SHIFTED_CLEF
        \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
          %! EXPLICIT_CLEF_COLOR_CANCELLATION
        %@% \override Staff.Clef.color = ##f
          %! EXPLICIT_CLEF
        \set Staff.forceClef = ##t
        \stopStaff
        \once \override Staff.StaffSymbol.line-positions = #'(4 -4)\startStaff
        b''2
          %! EXPLICIT_CLEF_REDRAW_COLOR
        \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    }

    % [Cello.Music measure 15]
    R1 * 2/3
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"2" #"3"

    % [Cello.Music measure 16]
    R1 * 1/2
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"

    % [Cello.Music measure 17]
    R1 * 4/5
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"4" #"5"

    % [Cello.Music measure 18]
    R1 * 1/2
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"

    % [Cello.Music measure 19]
    R1 * 1/2
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"

    % [Cello.Music measure 20]
    R1 * 1/2
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"

    % [Cello.Music measure 21]
    R1 * 1/2
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"

    % [Cello.Music measure 22]
    R1 * 1/2
      %! DURATION_MULTIPLIER
    %@% ^ \baca-duration-multiplier-markup #"1" #"2"
    \revert MultiMeasureRest.transparent

    {

        % [Cello.Music measure 23]
          %! EXPLICIT_CLEF
        \clef "bass"
          %! MEASURE_128
          %! SHIFTED_CLEF
        \once \override Staff.Clef.X-extent = ##f
          %! EXPLICIT_CLEF_COLOR
        \once \override Staff.Clef.color = #blue
          %! MEASURE_128
          %! SHIFTED_CLEF
        \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
          %! EXPLICIT_CLEF_COLOR_CANCELLATION
        %@% \override Staff.Clef.color = ##f
          %! EXPLICIT_CLEF
        \set Staff.forceClef = ##t
        \stopStaff
        \once \override Staff.StaffSymbol.line-count = 5
        \startStaff
        bf,,!1 * 1/2
          %! DURATION_MULTIPLIER
        %@% ^ \baca-duration-multiplier-markup #"1" #"2"
        \revert Score.BarLine.transparent
        \revert Score.SpanBar.transparent
        \revert Score.TimeSignature.stencil
          %! EXPLICIT_CLEF_REDRAW_COLOR
        \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)

    }

}


number.4.Cello.Staff = {

    \context Voice = "Cello.Music"
    { \number.4.Cello.Music }

}
