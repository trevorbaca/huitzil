f_Global_Rests = {

    % [06 Global_Rests measure 151 / measure 1]
    R1 * 1/2

    % [06 Global_Rests measure 152 / measure 2]
    R1 * 1/2

    % [06 Global_Rests measure 153 / measure 3]
    R1 * 2/3

    % [06 Global_Rests measure 154 / measure 4]
    R1 * 1/2

    % [06 Global_Rests measure 155 / measure 5]
    R1 * 4/5

    % [06 Global_Rests measure 156 / measure 6]
    R1 * 1/2

    % [06 Global_Rests measure 157 / measure 7]
    R1 * 2/3

    % [06 Global_Rests measure 158 / measure 8]
    R1 * 1/2

    % [06 Global_Rests measure 159 / measure 9]
    R1 * 4/5

    % [06 Global_Rests measure 160 / measure 10]
    R1 * 1/2

    % [06 Global_Rests measure 161 / measure 11]
    R1 * 2/3

    % [06 Global_Rests measure 162 / measure 12]
    R1 * 1/2

    % [06 Global_Rests measure 163 / measure 13]
    R1 * 4/5

    % [06 Global_Rests measure 164 / measure 14]
    R1 * 1/2

    % [06 Global_Rests measure 165 / measure 15]
    R1 * 2/3

    % [06 Global_Rests measure 166 / measure 16]
    R1 * 1/2

    % [06 Global_Rests measure 167 / measure 17]
    R1 * 4/5

    % [06 Global_Rests measure 168 / measure 18]
    R1 * 1/2

    % [06 Global_Rests measure 169 / measure 19]
    R1 * 1/2

    % [06 Global_Rests measure 170 / measure 20]
    R1 * 1/2

    % [06 Global_Rests measure 171 / measure 21]
    R1 * 1/2

    % [06 Global_Rests measure 172 / measure 22]
    R1 * 1/2

    % [06 Global_Rests measure 173 / measure 23]
    R1 * 1/2

    % [06 Global_Rests measure 174 / measure 24]
    R1 * 1/4

}


f_Global_Skips = {

    % [06 Global_Skips measure 151 / measure 1]
    \time 1/2
    \bar ""
    \baca-time-signature-color #'green4
    s1 * 1/2
    - \baca-start-lmn-left-only "1"
    \bacaStartTextSpanLMN
    - \abjad-invisible-line
    - \baca-metronome-mark-spanner-colored-left-text 2 0 1 "88" #'green4
    \bacaStartTextSpanMM
    - \baca-start-ct-left-only "[6'52'']"
    \bacaStartTextSpanCT

    % [06 Global_Skips measure 152 / measure 2]
    s1 * 1/2
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "2"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[6'53'']"
    \bacaStartTextSpanCT

    % [06 Global_Skips measure 153 / measure 3]
    #(ly:expect-warning "strange time signature found")
    \time 2/3
    \baca-time-signature-color #'blue
    s1 * 2/3
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "3"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[6'54'']"
    \bacaStartTextSpanCT

    % [06 Global_Skips measure 154 / measure 4]
    \time 1/2
    \baca-time-signature-color #'blue
    s1 * 1/2
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "4"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[6'56'']"
    \bacaStartTextSpanCT

    % [06 Global_Skips measure 155 / measure 5]
    #(ly:expect-warning "strange time signature found")
    \time 4/5
    \baca-time-signature-color #'blue
    s1 * 4/5
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "5"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[6'57'']"
    \bacaStartTextSpanCT

    % [06 Global_Skips measure 156 / measure 6]
    \time 1/2
    \baca-time-signature-color #'blue
    s1 * 1/2
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "6"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[7'00'']"
    \bacaStartTextSpanCT

    % [06 Global_Skips measure 157 / measure 7]
    #(ly:expect-warning "strange time signature found")
    \time 2/3
    \baca-time-signature-color #'blue
    s1 * 2/3
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "7"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[7'01'']"
    \bacaStartTextSpanCT

    % [06 Global_Skips measure 158 / measure 8]
    \time 1/2
    \baca-time-signature-color #'blue
    s1 * 1/2
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "8"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[7'03'']"
    \bacaStartTextSpanCT

    % [06 Global_Skips measure 159 / measure 9]
    #(ly:expect-warning "strange time signature found")
    \time 4/5
    \baca-time-signature-color #'blue
    s1 * 4/5
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "9"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[7'04'']"
    \bacaStartTextSpanCT

    % [06 Global_Skips measure 160 / measure 10]
    \time 1/2
    \baca-time-signature-color #'blue
    s1 * 1/2
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "10"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[7'06'']"
    \bacaStartTextSpanCT

    % [06 Global_Skips measure 161 / measure 11]
    #(ly:expect-warning "strange time signature found")
    \time 2/3
    \baca-time-signature-color #'blue
    s1 * 2/3
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "11"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[7'08'']"
    \bacaStartTextSpanCT

    % [06 Global_Skips measure 162 / measure 12]
    \time 1/2
    \baca-time-signature-color #'blue
    s1 * 1/2
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "12"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[7'10'']"
    \bacaStartTextSpanCT

    % [06 Global_Skips measure 163 / measure 13]
    #(ly:expect-warning "strange time signature found")
    \time 4/5
    \baca-time-signature-color #'blue
    s1 * 4/5
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "13"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[7'11'']"
    \bacaStartTextSpanCT

    % [06 Global_Skips measure 164 / measure 14]
    \time 1/2
    \baca-time-signature-color #'blue
    s1 * 1/2
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "14"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[7'13'']"
    \bacaStartTextSpanCT

    % [06 Global_Skips measure 165 / measure 15]
    #(ly:expect-warning "strange time signature found")
    \time 2/3
    \baca-time-signature-color #'blue
    s1 * 2/3
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "15"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[7'14'']"
    \bacaStartTextSpanCT

    % [06 Global_Skips measure 166 / measure 16]
    \time 1/2
    \baca-time-signature-color #'blue
    s1 * 1/2
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "16"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[7'16'']"
    \bacaStartTextSpanCT

    % [06 Global_Skips measure 167 / measure 17]
    #(ly:expect-warning "strange time signature found")
    \time 4/5
    \baca-time-signature-color #'blue
    s1 * 4/5
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "17"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[7'18'']"
    \bacaStartTextSpanCT

    % [06 Global_Skips measure 168 / measure 18]
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
    - \baca-start-ct-left-only "[7'20'']"
    \bacaStartTextSpanCT

    % [06 Global_Skips measure 169 / measure 19]
    s1 * 1/2
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "19"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[7'21'']"
    \bacaStartTextSpanCT

    % [06 Global_Skips measure 170 / measure 20]
    s1 * 1/2
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "20"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[7'23'']"
    \bacaStartTextSpanCT

    % [06 Global_Skips measure 171 / measure 21]
    s1 * 1/2
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "21"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[7'24'']"
    \bacaStartTextSpanCT

    % [06 Global_Skips measure 172 / measure 22]
    s1 * 1/2
    \bacaStopTextSpanLMN
    \bacaStopTextSpanMM
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "22"
    \bacaStartTextSpanLMN
    - \abjad-invisible-line
    - \baca-metronome-mark-spanner-colored-left-text 2 0 1 "44" #'blue
    \bacaStartTextSpanMM
    - \baca-start-ct-left-only "[7'25'']"
    \bacaStartTextSpanCT

    % [06 Global_Skips measure 173 / measure 23]
    s1 * 1/2
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "23"
    \bacaStartTextSpanLMN
    - \baca-start-ct-both "[7'28'']" "[7'31'']"
    \bacaStartTextSpanCT

    % [06 Global_Skips measure 174 / measure 24]
    \time 1/4
    \baca-time-signature-transparent
    s1 * 1/4
    \bacaStopTextSpanLMN
    \bacaStopTextSpanMM
    \bacaStopTextSpanCT
    \once \override Score.BarLine.transparent = ##t
    \once \override Score.SpanBar.transparent = ##t

}


f_RH_Music_Voice = {

    % [06 RH_Music_Voice measure 151 / measure 1]
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

    % [06 RH_Music_Voice measure 152 / measure 2]
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

        % [06 RH_Music_Voice measure 153 / measure 3]
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

    % [06 RH_Music_Voice measure 154 / measure 4]
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

        % [06 RH_Music_Voice measure 155 / measure 5]
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

    % [06 RH_Music_Voice measure 156 / measure 6]
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

        % [06 RH_Music_Voice measure 157 / measure 7]
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

    % [06 RH_Music_Voice measure 158 / measure 8]
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

        % [06 RH_Music_Voice measure 159 / measure 9]
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

    % [06 RH_Music_Voice measure 160 / measure 10]
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

        % [06 RH_Music_Voice measure 161 / measure 11]
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

    % [06 RH_Music_Voice measure 162 / measure 12]
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

        % [06 RH_Music_Voice measure 163 / measure 13]
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

    % [06 RH_Music_Voice measure 164 / measure 14]
    \stopStaff
    \once \override RHStaff.StaffSymbol.line-positions = #'(8.2 8 7.8 -5.8 -6 -6.2)
    \startStaff
    d''2
    :32
    - \tweak color #(x11-color 'blue)
    \mp
    - \tweak self-alignment-X -0.9
    - \tweak staff-padding 2
    ^ \huitzil-directly-on-bridge-markup
    _ \baca-ffz-markup
    - \tweak color #(x11-color 'blue)
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

        % [06 RH_Music_Voice measure 165 / measure 15]
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

    % [06 RH_Music_Voice measure 166 / measure 16]
    d''2
    :32
    - \tweak color #(x11-color 'blue)
    \p
    _ \baca-ffz-markup
    - \tweak color #(x11-color 'blue)
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

        % [06 RH_Music_Voice measure 167 / measure 17]
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

    % [06 RH_Music_Voice measure 168 / measure 18]
    d''2
    :32
    - \tweak color #(x11-color 'blue)
    \pp
    _ \baca-ffz-markup
    - \tweak color #(x11-color 'blue)
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

    % [06 RH_Music_Voice measure 169 / measure 19]
    d''2
    :32
    _ \baca-fz-markup
    \stopTextSpan
    - \abjad-dashed-line-with-arrow
    - \baca-text-spanner-left-text "più stretto"
    - \tweak staff-padding 6
    \startTextSpan

    % [06 RH_Music_Voice measure 170 / measure 20]
    d''2
    :32
    _ \baca-fz-markup
    \stopTextSpan
    - \abjad-dashed-line-with-arrow
    - \baca-text-spanner-left-text "più largo"
    - \tweak staff-padding 6
    \startTextSpan

    % [06 RH_Music_Voice measure 171 / measure 21]
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

    % [06 RH_Music_Voice measure 172 / measure 22]
    \once \override Hairpin.to-barline = ##t
    d''2
    :32
    - \tweak color #(x11-color 'blue)
    \p
    _ \baca-mfz-markup
    \stopTextSpan

    % [06 RH_Music_Voice measure 173 / measure 23]
    d''2
    :32
    _ \baca-mpz-markup
%%% \tweak X-extent ##f
%%% \tweak extra-offset #'(0 . 5)
%%% \breathe
    \tweak X-extent ##f
    \tweak extra-offset #'(-1.5 . 2)
    \breathe
    \revert TextScript.parent-alignment-X
    \revert TextScript.self-alignment-X
    \revert TextScript.staff-padding
    <> \bacaStopTextSpanRhythmAnnotation

    <<

        \context Voice = "RH_Music_Voice"
        {

            % [06 RH_Music_Voice measure 174 / measure 24]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            c'1 * 1/4

        }

        \context Voice = "RH_Rest_Voice"
        {

            % [06 RH_Rest_Voice measure 174 / measure 24]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


f_RH_Music_Staff = {

    \context Voice = "RH_Music_Voice"
    \f_RH_Music_Voice

}


f_Cello_Music_Voice = {

    <<

        \context Voice = "Cello_Music_Voice"
        {

            % [06 Cello_Music_Voice measure 151 / measure 1]
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

            % [06 Cello_Rest_Voice measure 151 / measure 1]
            \once \override MultiMeasureRest.transparent = ##t
            R1 * 1/2

        }

    >>

    % [06 Cello_Music_Voice measure 152 / measure 2]
    \override MultiMeasureRest.transparent = ##t
    R1 * 1/2

    % [06 Cello_Music_Voice measure 153 / measure 3]
    R1 * 2/3

    % [06 Cello_Music_Voice measure 154 / measure 4]
    R1 * 1/2

    % [06 Cello_Music_Voice measure 155 / measure 5]
    R1 * 4/5

    % [06 Cello_Music_Voice measure 156 / measure 6]
    R1 * 1/2

    % [06 Cello_Music_Voice measure 157 / measure 7]
    R1 * 2/3

    {

        % [06 Cello_Music_Voice measure 158 / measure 8]
        \once \override RepeatTie.extra-offset = #'(-1.5 . 0)
        bf,,!1 * 107/30
        \repeatTie
        - \abjad-dashed-line-with-hook
        - \baca-text-spanner-left-text "baca.skeleton()"
        - \tweak bound-details.right.padding 2.75
        - \tweak color #darkcyan
        - \tweak staff-padding 8
        \bacaStartTextSpanRhythmAnnotation
        \glissando

        cf,!1 * 1/5
        \glissando
        <> \bacaStopTextSpanRhythmAnnotation

    }

    {

        % [06 Cello_Music_Voice measure 164 / measure 14]
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

            % [06 Cello_Music_Voice measure 165 / measure 15]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            b'1 * 2/3

        }

        \context Voice = "Cello_Rest_Voice"
        {

            % [06 Cello_Rest_Voice measure 165 / measure 15]
            \once \override MultiMeasureRest.transparent = ##t
            R1 * 2/3

        }

    >>

    % [06 Cello_Music_Voice measure 166 / measure 16]
    R1 * 1/2

    % [06 Cello_Music_Voice measure 167 / measure 17]
    R1 * 4/5

    % [06 Cello_Music_Voice measure 168 / measure 18]
    R1 * 1/2

    % [06 Cello_Music_Voice measure 169 / measure 19]
    R1 * 1/2

    % [06 Cello_Music_Voice measure 170 / measure 20]
    R1 * 1/2

    % [06 Cello_Music_Voice measure 171 / measure 21]
    R1 * 1/2

    % [06 Cello_Music_Voice measure 172 / measure 22]
    R1 * 1/2

    % [06 Cello_Music_Voice measure 173 / measure 23]
    R1 * 1/2
    \revert MultiMeasureRest.transparent
    \revert Score.BarLine.transparent
    \revert Score.SpanBar.transparent
    \revert Score.TimeSignature.stencil

    <<

        \context Voice = "Cello_Music_Voice"
        {

            % [06 Cello_Music_Voice measure 174 / measure 24]
            \abjad-invisible-music-coloring
            R1 * 1/4

        }

        \context Voice = "Cello_Rest_Voice"
        {

            % [06 Cello_Rest_Voice measure 174 / measure 24]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


f_Cello_Music_Staff = {

    \context Voice = "Cello_Music_Voice"
    \f_Cello_Music_Voice

}
