e_Global_Rests = {

    % [05 Global_Rests measure 129 / measure 1]
    R1 * 1/2

    % [05 Global_Rests measure 130 / measure 2]
    R1 * 13/24

    % [05 Global_Rests measure 131 / measure 3]
    R1 * 1/2

    % [05 Global_Rests measure 132 / measure 4]
    R1 * 7/12

    % [05 Global_Rests measure 133 / measure 5]
    R1 * 53/60

    % [05 Global_Rests measure 134 / measure 6]
    R1 * 23/24

    % [05 Global_Rests measure 135 / measure 7]
    R1 * 1/2

    % [05 Global_Rests measure 136 / measure 8]
    R1 * 1/2

    % [05 Global_Rests measure 137 / measure 9]
    R1 * 3/8

    % [05 Global_Rests measure 138 / measure 10]
    R1 * 1/3

    % [05 Global_Rests measure 139 / measure 11]
    R1 * 11/15

    % [05 Global_Rests measure 140 / measure 12]
    R1 * 1/2

    % [05 Global_Rests measure 141 / measure 13]
    R1 * 1/2

    % [05 Global_Rests measure 142 / measure 14]
    R1 * 1/2

    % [05 Global_Rests measure 143 / measure 15]
    R1 * 1/2

    % [05 Global_Rests measure 144 / measure 16]
    R1 * 1/2

    % [05 Global_Rests measure 145 / measure 17]
    R1 * 1/2

    % [05 Global_Rests measure 146 / measure 18]
    R1 * 1/2

    % [05 Global_Rests measure 147 / measure 19]
    R1 * 1/2

    % [05 Global_Rests measure 148 / measure 20]
    R1 * 1/2

    % [05 Global_Rests measure 149 / measure 21]
    R1 * 1/2

    % [05 Global_Rests measure 150 / measure 22]
    R1 * 1/2

    % [05 Global_Rests measure 151 / measure 23]
    R1 * 1/4

}


e_Global_Skips = {

    % [05 Global_Skips measure 129 / measure 1]
    \time 1/2
    \bar ""
    \baca-time-signature-color #'green4
    s1 * 1/2
    - \baca-start-lmn-left-only "1"
    \bacaStartTextSpanLMN
    - \abjad-invisible-line
    - \baca-metronome-mark-spanner-colored-left-text 2 0 1 "44" #'blue
    \bacaStartTextSpanMM
    - \baca-start-ct-left-only "[5'49'']"
    \bacaStartTextSpanCT

    % [05 Global_Skips measure 130 / measure 2]
    #(ly:expect-warning "strange time signature found")
    \time 13/24
    \baca-time-signature-color #'blue
    s1 * 13/24
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "2"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[5'51'']"
    \bacaStartTextSpanCT

    % [05 Global_Skips measure 131 / measure 3]
    \time 1/2
    \baca-time-signature-color #'blue
    s1 * 1/2
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "3"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[5'54'']"
    \bacaStartTextSpanCT

    % [05 Global_Skips measure 132 / measure 4]
    #(ly:expect-warning "strange time signature found")
    \time 7/12
    \baca-time-signature-color #'blue
    s1 * 7/12
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "4"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[5'57'']"
    \bacaStartTextSpanCT

    % [05 Global_Skips measure 133 / measure 5]
    #(ly:expect-warning "strange time signature found")
    \time 53/60
    \baca-time-signature-color #'blue
    s1 * 53/60
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "5"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[6'00'']"
    \bacaStartTextSpanCT

    % [05 Global_Skips measure 134 / measure 6]
    #(ly:expect-warning "strange time signature found")
    \time 23/24
    \baca-time-signature-color #'blue
    s1 * 23/24
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "6"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[6'05'']"
    \bacaStartTextSpanCT

    % [05 Global_Skips measure 135 / measure 7]
    \time 1/2
    \baca-time-signature-color #'blue
    s1 * 1/2
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "7"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[6'10'']"
    \bacaStartTextSpanCT

    % [05 Global_Skips measure 136 / measure 8]
    s1 * 1/2
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "8"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[6'13'']"
    \bacaStartTextSpanCT

    % [05 Global_Skips measure 137 / measure 9]
    \time 3/8
    \baca-time-signature-color #'blue
    s1 * 3/8
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "9"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[6'16'']"
    \bacaStartTextSpanCT

    % [05 Global_Skips measure 138 / measure 10]
    #(ly:expect-warning "strange time signature found")
    \time 1/3
    \baca-time-signature-color #'blue
    s1 * 1/3
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "10"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[6'18'']"
    \bacaStartTextSpanCT

    % [05 Global_Skips measure 139 / measure 11]
    #(ly:expect-warning "strange time signature found")
    \time 11/15
    \baca-time-signature-color #'blue
    s1 * 11/15
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "11"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[6'19'']"
    \bacaStartTextSpanCT

    % [05 Global_Skips measure 140 / measure 12]
    \time 1/2
    \baca-time-signature-color #'blue
    s1 * 1/2
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "12"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[6'23'']"
    \bacaStartTextSpanCT

    % [05 Global_Skips measure 141 / measure 13]
    s1 * 1/2
    \bacaStopTextSpanLMN
    \bacaStopTextSpanMM
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "13"
    \bacaStartTextSpanLMN
    - \abjad-dashed-line-with-arrow
    - \baca-metronome-mark-spanner-colored-left-text 2 0 1 "44" #'blue
    \bacaStartTextSpanMM
    - \baca-start-ct-left-only "[6'26'']"
    \bacaStartTextSpanCT

    % [05 Global_Skips measure 142 / measure 14]
    s1 * 1/2
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "14"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[6'29'']"
    \bacaStartTextSpanCT

    % [05 Global_Skips measure 143 / measure 15]
    s1 * 1/2
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "15"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[6'32'']"
    \bacaStartTextSpanCT

    % [05 Global_Skips measure 144 / measure 16]
    s1 * 1/2
    \bacaStopTextSpanLMN
    \bacaStopTextSpanMM
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "16"
    \bacaStartTextSpanLMN
    - \abjad-invisible-line
    - \baca-metronome-mark-spanner-colored-left-text 2 0 1 "66" #'blue
    \bacaStartTextSpanMM
    - \baca-start-ct-left-only "[6'34'']"
    \bacaStartTextSpanCT

    % [05 Global_Skips measure 145 / measure 17]
    s1 * 1/2
    \bacaStopTextSpanLMN
    \bacaStopTextSpanMM
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "17"
    \bacaStartTextSpanLMN
    - \abjad-dashed-line-with-arrow
    - \baca-metronome-mark-spanner-colored-left-text 2 0 1 "44" #'blue
    \bacaStartTextSpanMM
    - \baca-start-ct-left-only "[6'36'']"
    \bacaStartTextSpanCT

    % [05 Global_Skips measure 146 / measure 18]
    s1 * 1/2
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "18"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[6'39'']"
    \bacaStartTextSpanCT

    % [05 Global_Skips measure 147 / measure 19]
    s1 * 1/2
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "19"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[6'42'']"
    \bacaStartTextSpanCT

    % [05 Global_Skips measure 148 / measure 20]
    s1 * 1/2
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "20"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[6'44'']"
    \bacaStartTextSpanCT

    % [05 Global_Skips measure 149 / measure 21]
    s1 * 1/2
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "21"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[6'47'']"
    \bacaStartTextSpanCT

    % [05 Global_Skips measure 150 / measure 22]
    s1 * 1/2
    \bacaStopTextSpanLMN
    \bacaStopTextSpanMM
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "22"
    \bacaStartTextSpanLMN
    - \abjad-invisible-line
    - \baca-metronome-mark-spanner-colored-left-text 2 0 1 "88" #'blue
    \bacaStartTextSpanMM
    - \baca-start-ct-both "[6'50'']" "[6'51'']"
    \bacaStartTextSpanCT

    % [05 Global_Skips measure 151 / measure 23]
    \time 1/4
    \baca-time-signature-transparent
    s1 * 1/4
    \bacaStopTextSpanLMN
    \bacaStopTextSpanMM
    \bacaStopTextSpanCT
    \once \override Score.BarLine.transparent = ##t
    \once \override Score.SpanBar.transparent = ##t

}


e_RH_Music_Voice = {

    % [05 RH_Music_Voice measure 129 / measure 1]
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
    b'4
    :32
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    \mp
    _ \baca-mfz-markup
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak stencil #constante-hairpin
    \<
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "make_monads('1/4 1/8 1/8')"
    - \tweak bound-details.right.padding 2.75
    - \tweak color #darkcyan
    - \tweak staff-padding 8
    \bacaStartTextSpanRhythmAnnotation
    \override RHStaff.Clef.color = #(x11-color 'OliveDrab)

    b'8
    :32
    _ \baca-mfz-markup
    \glissando

    g'8
    :32
    _ \baca-mfz-markup
    \glissando
    <> \bacaStopTextSpanRhythmAnnotation

    % [05 RH_Music_Voice measure 130 / measure 2]
    b'4
    :32
    _ \baca-mfz-markup
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "make_monads('1/4 1/8 1/6')"
    - \tweak bound-details.right.padding 2.75
    - \tweak color #darkcyan
    - \tweak staff-padding 8
    \bacaStartTextSpanRhythmAnnotation

    b'8
    :32
    _ \baca-mfz-markup
    \glissando

    \tweak edge-height #'(0.7 . 0)
    \times 2/3 {

        g'4
        :32
        _ \baca-mfz-markup
        \glissando
        <> \bacaStopTextSpanRhythmAnnotation

    }

    % [05 RH_Music_Voice measure 131 / measure 3]
    b'4
    :32
    _ \baca-mfz-markup
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "make_monads('1/4 1/8 1/8')"
    - \tweak bound-details.right.padding 2.75
    - \tweak color #darkcyan
    - \tweak staff-padding 8
    \bacaStartTextSpanRhythmAnnotation

    b'8
    :32
    _ \baca-mfz-markup
    \glissando

    g'8
    :32
    _ \baca-mfz-markup
    <> \bacaStopTextSpanRhythmAnnotation

    \tweak edge-height #'(0.7 . 0)
    \times 2/3 {

        % [05 RH_Music_Voice measure 132 / measure 4]
        g'2
        :32
        \!
        - \tweak color #(x11-color 'blue)
        \p
        _ \baca-fz-markup
        - \tweak color #(x11-color 'blue)
        - \tweak stencil #constante-hairpin
        \<
        - \abjad-dashed-line-with-hook
        - \baca-text-spanner-left-text "make_monads('1/3 1/8 1/8')"
        - \tweak bound-details.right.padding 2.75
        - \tweak color #darkcyan
        - \tweak staff-padding 8
        \bacaStartTextSpanRhythmAnnotation

    }

    g'8
    :32
    _ \baca-mpz-markup
    \glissando

    e'8
    :32
    _ \baca-mpz-markup
    \glissando
    <> \bacaStopTextSpanRhythmAnnotation

    % [05 RH_Music_Voice measure 133 / measure 5]
    g'4
    :32
    _ \baca-mpz-markup
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "make_monads('1/4 1/6 1/6 1/10 1/10 1/10')"
    - \tweak bound-details.right.padding 2.75
    - \tweak color #darkcyan
    - \tweak staff-padding 8
    \bacaStartTextSpanRhythmAnnotation

    \tweak edge-height #'(0.7 . 0)
    \times 2/3 {

        g'4
        :32
        \!
        - \tweak color #(x11-color 'blue)
        \pp
        _ \baca-mpz-markup
        - \tweak color #(x11-color 'blue)
        \<
        \glissando

    }

    \tweak edge-height #'(0.7 . 0)
    \times 2/3 {

        e'4
        :32
        _ \baca-mpz-markup
        \glissando

    }

    \tweak edge-height #'(0.7 . 0)
    \times 4/5 {

        b'8
        :32
        _ \baca-mfz-markup
        \glissando

    }

    \tweak edge-height #'(0.7 . 0)
    \times 4/5 {

        g'8
        :32
        _ \baca-mfz-markup
        \glissando

    }

    \tweak edge-height #'(0.7 . 0)
    \times 4/5 {

        e'8
        :32
        - \tweak color #(x11-color 'blue)
        \mf
        _ \baca-mfz-markup
        \glissando
        <> \bacaStopTextSpanRhythmAnnotation

    }

    % [05 RH_Music_Voice measure 134 / measure 6]
    g'4
    :32
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    \p
    _ \baca-fz-markup
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak stencil #constante-hairpin
    \<
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "make_monads('1/4 1/6 1/6 1/8 1/8 1/8')"
    - \tweak bound-details.right.padding 2.75
    - \tweak color #darkcyan
    - \tweak staff-padding 8
    \bacaStartTextSpanRhythmAnnotation

    \tweak edge-height #'(0.7 . 0)
    \times 2/3 {

        g'4
        :32
        _ \baca-mpz-markup
        \glissando

    }

    \tweak edge-height #'(0.7 . 0)
    \times 2/3 {

        e'4
        :32
        _ \baca-mpz-markup
        \glissando

    }

    b'8
    :32
    _ \baca-mpz-markup
    \glissando

    g'8
    :32
    _ \baca-mpz-markup
    \glissando

    e'8
    :32
    _ \baca-mpz-markup
    <> \bacaStopTextSpanRhythmAnnotation

    % [05 RH_Music_Voice measure 135 / measure 7]
    e'2
    :32
    \!
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    \mf
    _ \baca-fz-markup
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

    % [05 RH_Music_Voice measure 136 / measure 8]
    e'4
    :32
    _ \baca-fz-markup
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "make_monads('1/4 1/8 1/8')"
    - \tweak bound-details.right.padding 2.75
    - \tweak color #darkcyan
    - \tweak staff-padding 8
    \bacaStartTextSpanRhythmAnnotation

    e'8
    :32
    _ \baca-fz-markup
    \glissando

    c'8
    :32
    _ \baca-fz-markup
    \glissando
    <> \bacaStopTextSpanRhythmAnnotation

    % [05 RH_Music_Voice measure 137 / measure 9]
    e'4
    :32
    _ \baca-fz-markup
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "make_monads('1/4 1/8')"
    - \tweak bound-details.right.padding 2.75
    - \tweak color #darkcyan
    - \tweak staff-padding 8
    \bacaStartTextSpanRhythmAnnotation

    e'8
    :32
    _ \baca-fz-markup
    <> \bacaStopTextSpanRhythmAnnotation

    \tweak edge-height #'(0.7 . 0)
    \times 2/3 {

        % [05 RH_Music_Voice measure 138 / measure 10]
        e'4
        :32
        \!
        - \tweak color #(x11-color 'blue)
        - \tweak to-barline ##t
        \mp
        _ \baca-mfz-markup
        - \tweak color #(x11-color 'blue)
        - \tweak to-barline ##t
        \>
        - \abjad-dashed-line-with-hook
        - \baca-text-spanner-left-text "make_monads('1/6 1/6')"
        - \tweak bound-details.right.padding 2.75
        - \tweak color #darkcyan
        - \tweak staff-padding 8
        \bacaStartTextSpanRhythmAnnotation
        - \abjad-dashed-line-with-arrow
        - \baca-text-spanner-left-text "(trem. mod.)"
        - \baca-text-spanner-right-text "trem. stretto"
        - \tweak bound-details.right.padding 0.5
        - \tweak bound-details.right.stencil-align-dir-y #center
        - \tweak staff-padding 6
        \startTextSpan
        \glissando

    }

    \tweak edge-height #'(0.7 . 0)
    \times 2/3 {

        b'4
        :32
        _ \baca-mfz-markup
        \glissando
        <> \bacaStopTextSpanRhythmAnnotation

    }

    \tweak edge-height #'(0.7 . 0)
    \times 2/3 {

        % [05 RH_Music_Voice measure 139 / measure 11]
        g'4
        :32
        _ \baca-mfz-markup
        - \abjad-dashed-line-with-hook
        - \baca-text-spanner-left-text "make_monads('1/6 1/6 1/10 1/10 1/10 1/10')"
        - \tweak bound-details.right.padding 2.75
        - \tweak color #darkcyan
        - \tweak staff-padding 8
        \bacaStartTextSpanRhythmAnnotation
        \glissando

    }

    \tweak edge-height #'(0.7 . 0)
    \times 2/3 {

        e'4
        :32
        _ \baca-mfz-markup
        \glissando

    }

    \tweak edge-height #'(0.7 . 0)
    \times 4/5 {

        b'8
        :32
        - \tweak color #(x11-color 'blue)
        - \tweak to-barline ##t
        \ppp
        _ \baca-mpz-markup
        - \tweak color #(x11-color 'blue)
        - \tweak to-barline ##t
        - \tweak stencil #constante-hairpin
        \<
        \stopTextSpan
        \glissando

    }

    \tweak edge-height #'(0.7 . 0)
    \times 4/5 {

        g'8
        :32
        _ \baca-mpz-markup
        \glissando

    }

    \tweak edge-height #'(0.7 . 0)
    \times 4/5 {

        e'8
        :32
        _ \baca-mpz-markup
        \glissando

    }

    \tweak edge-height #'(0.7 . 0)
    \times 4/5 {

        c'8
        :32
        _ \baca-mpz-markup
        <> \bacaStopTextSpanRhythmAnnotation

    }

    % [05 RH_Music_Voice measure 140 / measure 12]
    c'2
    :32
    _ \baca-ffz-markup
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "make_monads('1/2')"
    - \tweak bound-details.right.padding 2.75
    - \tweak color #darkcyan
    - \tweak staff-padding 8
    \bacaStartTextSpanRhythmAnnotation
    <> \bacaStopTextSpanRhythmAnnotation

    % [05 RH_Music_Voice measure 141 / measure 13]
    c'2
    :32
    \!
    - \tweak color #(x11-color 'blue)
    \p
    _ \baca-ffz-markup
    - \tweak color #(x11-color 'blue)
    \<
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "make_monads('1/2')"
    - \tweak bound-details.right.padding 2.75
    - \tweak color #darkcyan
    - \tweak staff-padding 8
    \bacaStartTextSpanRhythmAnnotation
    - \abjad-dashed-line-with-arrow
    - \baca-text-spanner-left-text "sub. mod."
    - \tweak staff-padding 6
    \startTextSpan
    \glissando
    <> \bacaStopTextSpanRhythmAnnotation

    % [05 RH_Music_Voice measure 142 / measure 14]
    a2
    :32
    _ \baca-ffz-markup
    \stopTextSpan
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "make_monads('1/2')"
    - \tweak bound-details.right.padding 2.75
    - \tweak color #darkcyan
    - \tweak staff-padding 8
    \bacaStartTextSpanRhythmAnnotation
    - \abjad-dashed-line-with-arrow
    - \baca-text-spanner-left-text "più stretto"
    - \tweak staff-padding 6
    \startTextSpan
    <> \bacaStopTextSpanRhythmAnnotation

    % [05 RH_Music_Voice measure 143 / measure 15]
    a2
    :32
    _ \baca-ffz-markup
    \stopTextSpan
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "make_monads('1/2')"
    - \tweak bound-details.right.padding 2.75
    - \tweak color #darkcyan
    - \tweak staff-padding 8
    \bacaStartTextSpanRhythmAnnotation
    - \abjad-dashed-line-with-arrow
    - \baca-text-spanner-left-text "più largo"
    - \baca-text-spanner-right-text "più stretto"
    - \tweak bound-details.right.padding 0.5
    - \tweak bound-details.right.stencil-align-dir-y #center
    - \tweak staff-padding 6
    \startTextSpan
    \glissando
    <> \bacaStopTextSpanRhythmAnnotation

    % [05 RH_Music_Voice measure 144 / measure 16]
    f2
    :32
    - \tweak color #(x11-color 'blue)
    \mf
    _ \baca-ffz-markup
    \stopTextSpan
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "make_monads('1/2')"
    - \tweak bound-details.right.padding 2.75
    - \tweak color #darkcyan
    - \tweak staff-padding 8
    \bacaStartTextSpanRhythmAnnotation
    \glissando
    <> \bacaStopTextSpanRhythmAnnotation

    % [05 RH_Music_Voice measure 145 / measure 17]
    c'2
    :32
    - \tweak color #(x11-color 'blue)
    \p
    _ \baca-ffz-markup
    - \tweak color #(x11-color 'blue)
    \<
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "make_monads('1/2')"
    - \tweak bound-details.right.padding 2.75
    - \tweak color #darkcyan
    - \tweak staff-padding 8
    \bacaStartTextSpanRhythmAnnotation
    - \abjad-dashed-line-with-arrow
    - \baca-text-spanner-left-text "sub. mod."
    - \tweak staff-padding 6
    \startTextSpan
    \glissando
    <> \bacaStopTextSpanRhythmAnnotation

    % [05 RH_Music_Voice measure 146 / measure 18]
    a2
    :32
    _ \baca-ffz-markup
    \stopTextSpan
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "make_monads('1/2')"
    - \tweak bound-details.right.padding 2.75
    - \tweak color #darkcyan
    - \tweak staff-padding 8
    \bacaStartTextSpanRhythmAnnotation
    - \abjad-dashed-line-with-arrow
    - \baca-text-spanner-left-text "più stretto"
    - \tweak staff-padding 6
    \startTextSpan
    <> \bacaStopTextSpanRhythmAnnotation

    % [05 RH_Music_Voice measure 147 / measure 19]
    a2
    :32
    _ \baca-ffz-markup
    \stopTextSpan
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "make_monads('1/2')"
    - \tweak bound-details.right.padding 2.75
    - \tweak color #darkcyan
    - \tweak staff-padding 8
    \bacaStartTextSpanRhythmAnnotation
    - \abjad-dashed-line-with-arrow
    - \baca-text-spanner-left-text "più largo"
    - \tweak staff-padding 6
    \startTextSpan
    \glissando
    <> \bacaStopTextSpanRhythmAnnotation

    % [05 RH_Music_Voice measure 148 / measure 20]
    f2
    :32
    _ \baca-ffz-markup
    \stopTextSpan
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "make_monads('1/2')"
    - \tweak bound-details.right.padding 2.75
    - \tweak color #darkcyan
    - \tweak staff-padding 8
    \bacaStartTextSpanRhythmAnnotation
    - \abjad-dashed-line-with-arrow
    - \baca-text-spanner-left-text "più stretto"
    - \tweak staff-padding 6
    \startTextSpan
    <> \bacaStopTextSpanRhythmAnnotation

    % [05 RH_Music_Voice measure 149 / measure 21]
    f2
    :32
    _ \baca-ffz-markup
    \stopTextSpan
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "make_monads('1/2')"
    - \tweak bound-details.right.padding 2.75
    - \tweak color #darkcyan
    - \tweak staff-padding 8
    \bacaStartTextSpanRhythmAnnotation
    - \abjad-dashed-line-with-arrow
    - \baca-text-spanner-left-text "più largo"
    - \baca-text-spanner-right-text "trem. mod."
    - \tweak bound-details.right.padding 0.5
    - \tweak bound-details.right.stencil-align-dir-y #center
    - \tweak staff-padding 6
    \startTextSpan
    \glissando
    <> \bacaStopTextSpanRhythmAnnotation

    % [05 RH_Music_Voice measure 150 / measure 22]
%%% \once \override Hairpin.to-barline = ##t
    d2
    :32
    - \tweak color #(x11-color 'blue)
    \f
    _ \baca-ffz-markup
    - \tweak color #(x11-color 'blue)
    - \tweak stencil #constante-hairpin
    \<
    \stopTextSpan
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "make_monads('1/2')"
    - \tweak bound-details.right.padding 2.75
    - \tweak color #darkcyan
    - \tweak staff-padding 8
    \bacaStartTextSpanRhythmAnnotation
    \revert TextScript.parent-alignment-X
    \revert TextScript.self-alignment-X
    \revert TextScript.staff-padding
    <> \bacaStopTextSpanRhythmAnnotation

    <<

        \context Voice = "RH_Music_Voice"
        {

            % [05 RH_Music_Voice measure 151 / measure 23]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            c'1 * 1/4
            \!

        }

        \context Voice = "RH_Rest_Voice"
        {

            % [05 RH_Rest_Voice measure 151 / measure 23]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


e_RH_Music_Staff = {

    \context Voice = "RH_Music_Voice"
    \e_RH_Music_Voice

}


e_Cello_Music_Voice = {

    % [05 Cello_Music_Voice measure 129 / measure 1]
    \override MultiMeasureRest.transparent = ##t
    \override Score.BarLine.transparent = ##t
    \override Score.SpanBar.transparent = ##t
    \override Score.TimeSignature.stencil = ##f
    \clef "bass"
    \once \override Staff.Clef.color = #(x11-color 'green4)
    \set Staff.forceClef = ##t
    R1 * 1/2
    ^ \baca-reapplied-indicator-markup "(“Cello”)"
    \override Staff.Clef.color = #(x11-color 'OliveDrab)

    % [05 Cello_Music_Voice measure 130 / measure 2]
    R1 * 13/24

    % [05 Cello_Music_Voice measure 131 / measure 3]
    R1 * 1/2

    % [05 Cello_Music_Voice measure 132 / measure 4]
    R1 * 7/12

    % [05 Cello_Music_Voice measure 133 / measure 5]
    R1 * 53/60

    % [05 Cello_Music_Voice measure 134 / measure 6]
    R1 * 23/24

    % [05 Cello_Music_Voice measure 135 / measure 7]
    R1 * 1/2

    % [05 Cello_Music_Voice measure 136 / measure 8]
    R1 * 1/2

    % [05 Cello_Music_Voice measure 137 / measure 9]
    R1 * 3/8

    % [05 Cello_Music_Voice measure 138 / measure 10]
    R1 * 1/3

    % [05 Cello_Music_Voice measure 139 / measure 11]
    R1 * 11/15

    % [05 Cello_Music_Voice measure 140 / measure 12]
    R1 * 1/2

    % [05 Cello_Music_Voice measure 141 / measure 13]
    R1 * 1/2

    % [05 Cello_Music_Voice measure 142 / measure 14]
    R1 * 1/2

    % [05 Cello_Music_Voice measure 143 / measure 15]
    R1 * 1/2

    % [05 Cello_Music_Voice measure 144 / measure 16]
    R1 * 1/2

    % [05 Cello_Music_Voice measure 145 / measure 17]
    R1 * 1/2

    % [05 Cello_Music_Voice measure 146 / measure 18]
    R1 * 1/2

    % [05 Cello_Music_Voice measure 147 / measure 19]
    R1 * 1/2

    % [05 Cello_Music_Voice measure 148 / measure 20]
    R1 * 1/2

    % [05 Cello_Music_Voice measure 149 / measure 21]
    R1 * 1/2

    % [05 Cello_Music_Voice measure 150 / measure 22]
    R1 * 1/2
    \revert MultiMeasureRest.transparent
    \revert Score.BarLine.transparent
    \revert Score.SpanBar.transparent
    \revert Score.TimeSignature.stencil

    <<

        \context Voice = "Cello_Music_Voice"
        {

            % [05 Cello_Music_Voice measure 151 / measure 23]
            \abjad-invisible-music-coloring
            R1 * 1/4

        }

        \context Voice = "Cello_Rest_Voice"
        {

            % [05 Cello_Rest_Voice measure 151 / measure 23]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


e_Cello_Music_Staff = {

    \context Voice = "Cello_Music_Voice"
    \e_Cello_Music_Voice

}
