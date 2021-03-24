d_Global_Rests = {

    % [04 Global_Rests measure 106 / measure 1]
    R1 * 1/2

    % [04 Global_Rests measure 107 / measure 2]
    R1 * 1/2

    % [04 Global_Rests measure 108 / measure 3]
    R1 * 2/3

    % [04 Global_Rests measure 109 / measure 4]
    R1 * 1/2

    % [04 Global_Rests measure 110 / measure 5]
    R1 * 4/5

    % [04 Global_Rests measure 111 / measure 6]
    R1 * 1/2

    % [04 Global_Rests measure 112 / measure 7]
    R1 * 2/3

    % [04 Global_Rests measure 113 / measure 8]
    R1 * 1/2

    % [04 Global_Rests measure 114 / measure 9]
    R1 * 4/5

    % [04 Global_Rests measure 115 / measure 10]
    R1 * 1/2

    % [04 Global_Rests measure 116 / measure 11]
    R1 * 2/3

    % [04 Global_Rests measure 117 / measure 12]
    R1 * 1/2

    % [04 Global_Rests measure 118 / measure 13]
    R1 * 4/5

    % [04 Global_Rests measure 119 / measure 14]
    R1 * 1/2

    % [04 Global_Rests measure 120 / measure 15]
    R1 * 2/3

    % [04 Global_Rests measure 121 / measure 16]
    R1 * 1/2

    % [04 Global_Rests measure 122 / measure 17]
    R1 * 4/5

    % [04 Global_Rests measure 123 / measure 18]
    R1 * 1/2

    % [04 Global_Rests measure 124 / measure 19]
    R1 * 1/2

    % [04 Global_Rests measure 125 / measure 20]
    R1 * 1/2

    % [04 Global_Rests measure 126 / measure 21]
    R1 * 1/2

    % [04 Global_Rests measure 127 / measure 22]
    R1 * 1/2

    % [04 Global_Rests measure 128 / measure 23]
    R1 * 1/2

    % [04 Global_Rests measure 129 / measure 24]
    R1 * 1/4

}


d_Global_Skips = {

    % [04 Global_Skips measure 106 / measure 1]
    \time 1/2
    \bar ""
    \baca-time-signature-color #'green4
    s1 * 1/2
    - \baca-start-lmn-left-only "1"
    \bacaStartTextSpanLMN
    - \abjad-invisible-line
    - \baca-metronome-mark-spanner-colored-left-text 2 0 1 "88" #'green4
    \bacaStartTextSpanMM
    - \baca-start-ct-left-only "[5'12'']"
    \bacaStartTextSpanCT

    % [04 Global_Skips measure 107 / measure 2]
    s1 * 1/2
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "2"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[5'13'']"
    \bacaStartTextSpanCT

    % [04 Global_Skips measure 108 / measure 3]
    #(ly:expect-warning "strange time signature found")
    \time 2/3
    \baca-time-signature-color #'blue
    s1 * 2/3
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "3"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[5'14'']"
    \bacaStartTextSpanCT

    % [04 Global_Skips measure 109 / measure 4]
    \time 1/2
    \baca-time-signature-color #'blue
    s1 * 1/2
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "4"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[5'16'']"
    \bacaStartTextSpanCT

    % [04 Global_Skips measure 110 / measure 5]
    #(ly:expect-warning "strange time signature found")
    \time 4/5
    \baca-time-signature-color #'blue
    s1 * 4/5
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "5"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[5'17'']"
    \bacaStartTextSpanCT

    % [04 Global_Skips measure 111 / measure 6]
    \time 1/2
    \baca-time-signature-color #'blue
    s1 * 1/2
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "6"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[5'20'']"
    \bacaStartTextSpanCT

    % [04 Global_Skips measure 112 / measure 7]
    #(ly:expect-warning "strange time signature found")
    \time 2/3
    \baca-time-signature-color #'blue
    s1 * 2/3
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "7"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[5'21'']"
    \bacaStartTextSpanCT

    % [04 Global_Skips measure 113 / measure 8]
    \time 1/2
    \baca-time-signature-color #'blue
    s1 * 1/2
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "8"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[5'23'']"
    \bacaStartTextSpanCT

    % [04 Global_Skips measure 114 / measure 9]
    #(ly:expect-warning "strange time signature found")
    \time 4/5
    \baca-time-signature-color #'blue
    s1 * 4/5
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "9"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[5'24'']"
    \bacaStartTextSpanCT

    % [04 Global_Skips measure 115 / measure 10]
    \time 1/2
    \baca-time-signature-color #'blue
    s1 * 1/2
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "10"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[5'26'']"
    \bacaStartTextSpanCT

    % [04 Global_Skips measure 116 / measure 11]
    #(ly:expect-warning "strange time signature found")
    \time 2/3
    \baca-time-signature-color #'blue
    s1 * 2/3
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "11"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[5'28'']"
    \bacaStartTextSpanCT

    % [04 Global_Skips measure 117 / measure 12]
    \time 1/2
    \baca-time-signature-color #'blue
    s1 * 1/2
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "12"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[5'30'']"
    \bacaStartTextSpanCT

    % [04 Global_Skips measure 118 / measure 13]
    #(ly:expect-warning "strange time signature found")
    \time 4/5
    \baca-time-signature-color #'blue
    s1 * 4/5
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "13"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[5'31'']"
    \bacaStartTextSpanCT

    % [04 Global_Skips measure 119 / measure 14]
    \time 1/2
    \baca-time-signature-color #'blue
    s1 * 1/2
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "14"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[5'33'']"
    \bacaStartTextSpanCT

    % [04 Global_Skips measure 120 / measure 15]
    #(ly:expect-warning "strange time signature found")
    \time 2/3
    \baca-time-signature-color #'blue
    s1 * 2/3
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "15"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[5'34'']"
    \bacaStartTextSpanCT

    % [04 Global_Skips measure 121 / measure 16]
    \time 1/2
    \baca-time-signature-color #'blue
    s1 * 1/2
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "16"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[5'36'']"
    \bacaStartTextSpanCT

    % [04 Global_Skips measure 122 / measure 17]
    #(ly:expect-warning "strange time signature found")
    \time 4/5
    \baca-time-signature-color #'blue
    s1 * 4/5
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "17"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[5'38'']"
    \bacaStartTextSpanCT

    % [04 Global_Skips measure 123 / measure 18]
    \time 1/2
    \baca-time-signature-color #'blue
    s1 * 1/2
    \bacaStopTextSpanLMN
    \bacaStopTextSpanMM
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "18"
    \bacaStartTextSpanLMN
    - \abjad-dashed-line-with-arrow
    - \baca-metronome-mark-spanner-colored-left-text 2 0 1 "88" #'blue
    \bacaStartTextSpanMM
    - \baca-start-ct-left-only "[5'40'']"
    \bacaStartTextSpanCT

    % [04 Global_Skips measure 124 / measure 19]
    s1 * 1/2
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "19"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[5'41'']"
    \bacaStartTextSpanCT

    % [04 Global_Skips measure 125 / measure 20]
    s1 * 1/2
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "20"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[5'43'']"
    \bacaStartTextSpanCT

    % [04 Global_Skips measure 126 / measure 21]
    s1 * 1/2
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "21"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[5'44'']"
    \bacaStartTextSpanCT

    % [04 Global_Skips measure 127 / measure 22]
    s1 * 1/2
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "22"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[5'45'']"
    \bacaStartTextSpanCT

    % [04 Global_Skips measure 128 / measure 23]
    s1 * 1/2
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "23"
    \bacaStartTextSpanLMN
    - \baca-start-ct-both "[5'47'']" "[5'48'']"
    \bacaStartTextSpanCT

    % [04 Global_Skips measure 129 / measure 24]
    \time 1/4
    \baca-time-signature-transparent
    s1 * 1/4
    \bacaStopTextSpanLMN
    \bacaStopTextSpanMM
    \bacaStopTextSpanCT
    \once \override Score.BarLine.transparent = ##t
    \once \override Score.SpanBar.transparent = ##t

}


d_RH_Music_Voice = {

    % [04 RH_Music_Voice measure 106 / measure 1]
    \override Staff.BarLine.bar-extent = #'(-2 . 4)
    \stopStaff
    \once \override RHStaff.StaffSymbol.line-count = 7
    \startStaff
    \override DynamicLineSpanner.staff-padding = 7
    \stopStaff
    \once \override RHStaff.StaffSymbol.line-positions = #'(8.2 8 7.8 6 4 2 0 -2 -4 -5.8 -6 -6.2)
    \startStaff
    \override TextScript.parent-alignment-X = 0
    \override TextScript.self-alignment-X = 0
    \override TextScript.staff-padding = 4
    \clef "percussion"
    \once \override RHStaff.Clef.color = #(x11-color 'green4)
    \set RHStaff.forceClef = ##t
    \once \override RHStaff.StaffSymbol.color = #(x11-color 'green4)
    d8
    :32
    _ \baca-ffz-markup
    - \tweak color #(x11-color 'green4)
    - \tweak stencil #constante-hairpin
    \<
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "make_monads('1/8 1/8 1/8 1/8')"
    - \tweak bound-details.right.padding 2.75
    - \tweak color #darkcyan
    - \tweak staff-padding 8
    \bacaStartTextSpanRhythmAnnotation
    \glissando
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
    <> \bacaStopTextSpanRhythmAnnotation

    % [04 RH_Music_Voice measure 107 / measure 2]
    c'2
    :32
    - \tweak color #(x11-color 'blue)
    \mp
    _ \baca-ffz-markup
    - \tweak color #(x11-color 'blue)
    \>
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "make_monads('1/2')"
    - \tweak bound-details.right.padding 2.75
    - \tweak color #darkcyan
    - \tweak staff-padding 8
    \bacaStartTextSpanRhythmAnnotation
    <> \bacaStopTextSpanRhythmAnnotation

    \tweak edge-height #'(0.7 . 0)
    \times 2/3 {

        % [04 RH_Music_Voice measure 108 / measure 3]
        c'2
        :32
        _ \baca-fz-markup
        - \abjad-dashed-line-with-hook
        - \baca-text-spanner-left-text "make_monads('1/3 1/3')"
        - \tweak bound-details.right.padding 2.75
        - \tweak color #darkcyan
        - \tweak staff-padding 8
        \bacaStartTextSpanRhythmAnnotation

    }

    \tweak edge-height #'(0.7 . 0)
    \times 2/3 {

        c'2
        :32
        - \tweak color #(x11-color 'blue)
        \p
        _ \baca-fffz-markup
        - \tweak color #(x11-color 'blue)
        \<
        <> \bacaStopTextSpanRhythmAnnotation

    }

    % [04 RH_Music_Voice measure 109 / measure 4]
    c'2
    :32
    - \tweak color #(x11-color 'blue)
    \mp
    _ \baca-ffz-markup
    - \tweak color #(x11-color 'blue)
    \>
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "make_monads('1/2')"
    - \tweak bound-details.right.padding 2.75
    - \tweak color #darkcyan
    - \tweak staff-padding 8
    \bacaStartTextSpanRhythmAnnotation
    <> \bacaStopTextSpanRhythmAnnotation

    \tweak edge-height #'(0.7 . 0)
    \times 4/5 {

        % [04 RH_Music_Voice measure 110 / measure 5]
        c'4
        :32
        _ \baca-mfz-markup
        - \abjad-dashed-line-with-hook
        - \baca-text-spanner-left-text "make_monads('1/5 1/5 1/5 1/5')"
        - \tweak bound-details.right.padding 2.75
        - \tweak color #darkcyan
        - \tweak staff-padding 8
        \bacaStartTextSpanRhythmAnnotation

    }

    \tweak edge-height #'(0.7 . 0)
    \times 4/5 {

        c'4
        :32
        _ \baca-fz-markup

    }

    \tweak edge-height #'(0.7 . 0)
    \times 4/5 {

        c'4
        :32
        - \tweak color #(x11-color 'blue)
        \p
        _ \baca-ffz-markup
        - \tweak color #(x11-color 'blue)
        \<

    }

    \tweak edge-height #'(0.7 . 0)
    \times 4/5 {

        c'4
        :32
        _ \baca-fffz-markup
        <> \bacaStopTextSpanRhythmAnnotation

    }

    % [04 RH_Music_Voice measure 111 / measure 6]
    c'2
    :32
    - \tweak color #(x11-color 'blue)
    \mp
    _ \baca-ffz-markup
    - \tweak color #(x11-color 'blue)
    \>
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "make_monads('1/2')"
    - \tweak bound-details.right.padding 2.75
    - \tweak color #darkcyan
    - \tweak staff-padding 8
    \bacaStartTextSpanRhythmAnnotation
    <> \bacaStopTextSpanRhythmAnnotation

    \tweak edge-height #'(0.7 . 0)
    \times 2/3 {

        % [04 RH_Music_Voice measure 112 / measure 7]
        c'2
        :32
        _ \baca-fz-markup
        - \abjad-dashed-line-with-hook
        - \baca-text-spanner-left-text "make_monads('1/3 1/3')"
        - \tweak bound-details.right.padding 2.75
        - \tweak color #darkcyan
        - \tweak staff-padding 8
        \bacaStartTextSpanRhythmAnnotation

    }

    \tweak edge-height #'(0.7 . 0)
    \times 2/3 {

        c'2
        :32
        - \tweak color #(x11-color 'blue)
        \p
        _ \baca-fffz-markup
        - \tweak color #(x11-color 'blue)
        \<
        <> \bacaStopTextSpanRhythmAnnotation

    }

    % [04 RH_Music_Voice measure 113 / measure 8]
    c'2
    :32
    - \tweak color #(x11-color 'blue)
    \mp
    _ \baca-ffz-markup
    - \tweak color #(x11-color 'blue)
    \>
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "make_monads('1/2')"
    - \tweak bound-details.right.padding 2.75
    - \tweak color #darkcyan
    - \tweak staff-padding 8
    \bacaStartTextSpanRhythmAnnotation
    <> \bacaStopTextSpanRhythmAnnotation

    \tweak edge-height #'(0.7 . 0)
    \times 4/5 {

        % [04 RH_Music_Voice measure 114 / measure 9]
        c'4
        :32
        _ \baca-mfz-markup
        - \abjad-dashed-line-with-hook
        - \baca-text-spanner-left-text "make_monads('1/5 1/5 1/5 1/5')"
        - \tweak bound-details.right.padding 2.75
        - \tweak color #darkcyan
        - \tweak staff-padding 8
        \bacaStartTextSpanRhythmAnnotation

    }

    \tweak edge-height #'(0.7 . 0)
    \times 4/5 {

        c'4
        :32
        _ \baca-fz-markup

    }

    \tweak edge-height #'(0.7 . 0)
    \times 4/5 {

        c'4
        :32
        - \tweak color #(x11-color 'blue)
        \p
        _ \baca-ffz-markup
        - \tweak color #(x11-color 'blue)
        \<

    }

    \tweak edge-height #'(0.7 . 0)
    \times 4/5 {

        c'4
        :32
        _ \baca-fffz-markup
        <> \bacaStopTextSpanRhythmAnnotation

    }

    % [04 RH_Music_Voice measure 115 / measure 10]
    c'2
    :32
    - \tweak color #(x11-color 'blue)
    \mp
    _ \baca-ffz-markup
    - \tweak color #(x11-color 'blue)
    \>
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "make_monads('1/2')"
    - \tweak bound-details.right.padding 2.75
    - \tweak color #darkcyan
    - \tweak staff-padding 8
    \bacaStartTextSpanRhythmAnnotation
    <> \bacaStopTextSpanRhythmAnnotation

    \tweak edge-height #'(0.7 . 0)
    \times 2/3 {

        % [04 RH_Music_Voice measure 116 / measure 11]
        c'2
        :32
        _ \baca-fz-markup
        - \abjad-dashed-line-with-hook
        - \baca-text-spanner-left-text "make_monads('1/3 1/3')"
        - \tweak bound-details.right.padding 2.75
        - \tweak color #darkcyan
        - \tweak staff-padding 8
        \bacaStartTextSpanRhythmAnnotation

    }

    \tweak edge-height #'(0.7 . 0)
    \times 2/3 {

        c'2
        :32
        - \tweak color #(x11-color 'blue)
        \p
        _ \baca-fffz-markup
        - \tweak color #(x11-color 'blue)
        \<
        <> \bacaStopTextSpanRhythmAnnotation

    }

    % [04 RH_Music_Voice measure 117 / measure 12]
    c'2
    :32
    - \tweak color #(x11-color 'blue)
    \mp
    _ \baca-ffz-markup
    - \tweak color #(x11-color 'blue)
    \>
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "make_monads('1/2')"
    - \tweak bound-details.right.padding 2.75
    - \tweak color #darkcyan
    - \tweak staff-padding 8
    \bacaStartTextSpanRhythmAnnotation
    <> \bacaStopTextSpanRhythmAnnotation

    \tweak edge-height #'(0.7 . 0)
    \times 4/5 {

        % [04 RH_Music_Voice measure 118 / measure 13]
        c'4
        :32
        _ \baca-mfz-markup
        - \abjad-dashed-line-with-hook
        - \baca-text-spanner-left-text "make_monads('1/5 1/5 1/5 1/5')"
        - \tweak bound-details.right.padding 2.75
        - \tweak color #darkcyan
        - \tweak staff-padding 8
        \bacaStartTextSpanRhythmAnnotation

    }

    \tweak edge-height #'(0.7 . 0)
    \times 4/5 {

        c'4
        :32
        _ \baca-fz-markup

    }

    \tweak edge-height #'(0.7 . 0)
    \times 4/5 {

        c'4
        :32
        - \tweak color #(x11-color 'blue)
        \p
        _ \baca-ffz-markup

    }

    \tweak edge-height #'(0.7 . 0)
    \times 4/5 {

        c'4
        :32
        _ \baca-fffz-markup
        \glissando
        <> \bacaStopTextSpanRhythmAnnotation

    }

    % [04 RH_Music_Voice measure 119 / measure 14]
    \stopStaff
    \once \override RHStaff.StaffSymbol.line-positions = #'(8.2 8 7.8 -5.8 -6 -6.2)
    \startStaff
    d''2
    :32
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    \mp
    - \tweak self-alignment-X -0.85
    - \tweak staff-padding 2
    ^ \huitzil-directly-on-bridge-markup
    _ \baca-ffz-markup
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak stencil #constante-hairpin
    \<
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "make_monads('1/2')"
    - \tweak bound-details.right.padding 2.75
    - \tweak color #darkcyan
    - \tweak staff-padding 8
    \bacaStartTextSpanRhythmAnnotation
    <> \bacaStopTextSpanRhythmAnnotation

    \tweak edge-height #'(0.7 . 0)
    \times 2/3 {

        % [04 RH_Music_Voice measure 120 / measure 15]
        d''2
        :32
        _ \baca-fz-markup
        - \abjad-dashed-line-with-hook
        - \baca-text-spanner-left-text "make_monads('1/3 1/3')"
        - \tweak bound-details.right.padding 2.75
        - \tweak color #darkcyan
        - \tweak staff-padding 8
        \bacaStartTextSpanRhythmAnnotation

    }

    \tweak edge-height #'(0.7 . 0)
    \times 2/3 {

        d''2
        :32
        _ \baca-fffz-markup
        <> \bacaStopTextSpanRhythmAnnotation

    }

    % [04 RH_Music_Voice measure 121 / measure 16]
    d''2
    :32
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    \p
    _ \baca-ffz-markup
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak stencil #constante-hairpin
    \<
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "make_monads('1/2')"
    - \tweak bound-details.right.padding 2.75
    - \tweak color #darkcyan
    - \tweak staff-padding 8
    \bacaStartTextSpanRhythmAnnotation
    <> \bacaStopTextSpanRhythmAnnotation

    \tweak edge-height #'(0.7 . 0)
    \times 4/5 {

        % [04 RH_Music_Voice measure 122 / measure 17]
        d''4
        :32
        _ \baca-mfz-markup
        - \abjad-dashed-line-with-hook
        - \baca-text-spanner-left-text "make_monads('1/5 1/5 1/5 1/5')"
        - \tweak bound-details.right.padding 2.75
        - \tweak color #darkcyan
        - \tweak staff-padding 8
        \bacaStartTextSpanRhythmAnnotation

    }

    \tweak edge-height #'(0.7 . 0)
    \times 4/5 {

        d''4
        :32
        _ \baca-fz-markup

    }

    \tweak edge-height #'(0.7 . 0)
    \times 4/5 {

        d''4
        :32
        _ \baca-ffz-markup

    }

    \tweak edge-height #'(0.7 . 0)
    \times 4/5 {

        d''4
        :32
        _ \baca-fffz-markup
        <> \bacaStopTextSpanRhythmAnnotation

    }

    % [04 RH_Music_Voice measure 123 / measure 18]
%%% \override Hairpin.to-barline = ##t
    d''2
    :32
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    \pp
    _ \baca-ffz-markup
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak stencil #constante-hairpin
    \<
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "make_monads('1/2 1/2 1/2 1/2 1/2 1/2')"
    - \tweak bound-details.right.padding 2.75
    - \tweak color #darkcyan
    - \tweak staff-padding 8
    \bacaStartTextSpanRhythmAnnotation
    - \abjad-dashed-line-with-arrow
    - \baca-text-spanner-left-text "(trem. mod.)"
    - \tweak staff-padding 6
    \startTextSpan

    % [04 RH_Music_Voice measure 124 / measure 19]
    d''2
    :32
    _ \baca-fz-markup
    \stopTextSpan
    - \abjad-dashed-line-with-arrow
    - \baca-text-spanner-left-text "più stretto"
    - \tweak staff-padding 6
    \startTextSpan

    % [04 RH_Music_Voice measure 125 / measure 20]
    d''2
    :32
    _ \baca-fz-markup
    \stopTextSpan
    - \abjad-dashed-line-with-arrow
    - \baca-text-spanner-left-text "più largo"
    - \tweak staff-padding 6
    \startTextSpan

    % [04 RH_Music_Voice measure 126 / measure 21]
    d''2
    :32
    _ \baca-mfz-markup
    \stopTextSpan
    - \abjad-dashed-line-with-arrow
    - \baca-text-spanner-left-text "più stretto"
    - \baca-text-spanner-right-text "mod."
    - \tweak bound-details.right.padding 0.5
    - \tweak bound-details.right.stencil-align-dir-y #center
    - \tweak staff-padding 6
    \startTextSpan
%%% \revert Hairpin.to-barline

    % [04 RH_Music_Voice measure 127 / measure 22]
    \once \override Hairpin.to-barline = ##t
    d''2
    :32
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    \p
    _ \baca-mfz-markup
    \stopTextSpan

    % [04 RH_Music_Voice measure 128 / measure 23]
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
    <> \bacaStopTextSpanRhythmAnnotation

    <<

        \context Voice = "RH_Music_Voice"
        {

            % [04 RH_Music_Voice measure 129 / measure 24]
            \abjad-invisible-music-coloring
            b'1 * 1/4

        }

        \context Voice = "RH_Rest_Voice"
        {

            % [04 RH_Rest_Voice measure 129 / measure 24]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


d_RH_Music_Staff = {

    \context Voice = "RH_Music_Voice"
    \d_RH_Music_Voice

}


d_Cello_Music_Voice = {

    <<

        \context Voice = "Cello_Music_Voice"
        {

            % [04 Cello_Music_Voice measure 106 / measure 1]
            \abjad-invisible-music-coloring
            \override Score.BarLine.transparent = ##t
            \override Score.SpanBar.transparent = ##t
            \override Score.TimeSignature.stencil = ##f
            \baca-not-yet-pitched-coloring
            \clef "bass"
            \once \override Staff.Clef.color = #(x11-color 'green4)
            \set Staff.forceClef = ##t
            d1 * 1/2
            ^ \baca-reapplied-indicator-markup "(“Cello”)"
            \override Staff.Clef.color = #(x11-color 'OliveDrab)

        }

        \context Voice = "Cello_Rest_Voice"
        {

            % [04 Cello_Rest_Voice measure 106 / measure 1]
            \once \override MultiMeasureRest.transparent = ##t
            R1 * 1/2

        }

    >>

    % [04 Cello_Music_Voice measure 107 / measure 2]
    \override MultiMeasureRest.transparent = ##t
    R1 * 1/2

    % [04 Cello_Music_Voice measure 108 / measure 3]
    R1 * 2/3

    % [04 Cello_Music_Voice measure 109 / measure 4]
    R1 * 1/2

    % [04 Cello_Music_Voice measure 110 / measure 5]
    R1 * 4/5

    % [04 Cello_Music_Voice measure 111 / measure 6]
    R1 * 1/2

    % [04 Cello_Music_Voice measure 112 / measure 7]
    R1 * 2/3

    {

        % [04 Cello_Music_Voice measure 113 / measure 8]
        b,,1 * 107/30
        \repeatTie
        - \abjad-dashed-line-with-hook
        - \baca-text-spanner-left-text "baca.skeleton()"
        - \tweak bound-details.right.padding 2.75
        - \tweak color #darkcyan
        - \tweak staff-padding 8
        \bacaStartTextSpanRhythmAnnotation
        \glissando

        c,1 * 1/5
        \glissando
        <> \bacaStopTextSpanRhythmAnnotation

    }

    {

        % [04 Cello_Music_Voice measure 119 / measure 14]
        \stopStaff
        \once \override Staff.StaffSymbol.line-positions = #'(4 -4)\startStaff
        \once \override NoteHead.duration-log = 2
        \once \override NoteHead.no-ledgers = ##t
        \once \override NoteHead.style = #'do
        \once \override Staff.Clef.X-extent = ##f
        \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
        \clef "treble"
        \once \override Staff.Clef.color = #(x11-color 'blue)
        \set Staff.forceClef = ##t
        b''2
        - \abjad-dashed-line-with-hook
        - \baca-text-spanner-left-text "baca.skeleton()"
        - \tweak bound-details.right.padding 2.75
        - \tweak color #darkcyan
        - \tweak staff-padding 8
        \bacaStartTextSpanRhythmAnnotation
        \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)
        <> \bacaStopTextSpanRhythmAnnotation

    }

    <<

        \context Voice = "Cello_Music_Voice"
        {

            % [04 Cello_Music_Voice measure 120 / measure 15]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            b'1 * 2/3

        }

        \context Voice = "Cello_Rest_Voice"
        {

            % [04 Cello_Rest_Voice measure 120 / measure 15]
            \once \override MultiMeasureRest.transparent = ##t
            R1 * 2/3

        }

    >>

    % [04 Cello_Music_Voice measure 121 / measure 16]
    R1 * 1/2

    % [04 Cello_Music_Voice measure 122 / measure 17]
    R1 * 4/5

    % [04 Cello_Music_Voice measure 123 / measure 18]
    R1 * 1/2

    % [04 Cello_Music_Voice measure 124 / measure 19]
    R1 * 1/2

    % [04 Cello_Music_Voice measure 125 / measure 20]
    R1 * 1/2

    % [04 Cello_Music_Voice measure 126 / measure 21]
    R1 * 1/2

    % [04 Cello_Music_Voice measure 127 / measure 22]
    R1 * 1/2
    \revert MultiMeasureRest.transparent

    {

        % [04 Cello_Music_Voice measure 128 / measure 23]
        \stopStaff
        \once \override Staff.StaffSymbol.line-count = 5
        \startStaff
        \once \override Staff.Clef.X-extent = ##f
        \once \override Staff.Clef.extra-offset = #'(-2.75 . 0)
        \clef "bass"
        \once \override Staff.Clef.color = #(x11-color 'blue)
        \set Staff.forceClef = ##t
        bf,,!1 * 1/2
        - \abjad-dashed-line-with-hook
        - \baca-text-spanner-left-text "baca.skeleton()"
        - \tweak bound-details.right.padding 2.75
        - \tweak color #darkcyan
        - \tweak staff-padding 8
        \bacaStartTextSpanRhythmAnnotation
        \revert Score.BarLine.transparent
        \revert Score.SpanBar.transparent
        \revert Score.TimeSignature.stencil
        \override Staff.Clef.color = #(x11-color 'DeepSkyBlue2)
        <> \bacaStopTextSpanRhythmAnnotation

    }

    <<

        \context Voice = "Cello_Music_Voice"
        {

            % [04 Cello_Music_Voice measure 129 / measure 24]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            d1 * 1/4

        }

        \context Voice = "Cello_Rest_Voice"
        {

            % [04 Cello_Rest_Voice measure 129 / measure 24]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


d_Cello_Music_Staff = {

    \context Voice = "Cello_Music_Voice"
    \d_Cello_Music_Voice

}
