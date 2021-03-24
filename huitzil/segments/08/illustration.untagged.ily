h_Global_Rests = {

    % [08 Global_Rests measure 200 / measure 1]
    R1 * 1/2

    % [08 Global_Rests measure 201 / measure 2]
    R1 * 13/24

    % [08 Global_Rests measure 202 / measure 3]
    R1 * 1/2

    % [08 Global_Rests measure 203 / measure 4]
    R1 * 7/12

    % [08 Global_Rests measure 204 / measure 5]
    R1 * 53/60

    % [08 Global_Rests measure 205 / measure 6]
    R1 * 23/24

    % [08 Global_Rests measure 206 / measure 7]
    R1 * 1/2

    % [08 Global_Rests measure 207 / measure 8]
    R1 * 1/2

    % [08 Global_Rests measure 208 / measure 9]
    R1 * 3/8

    % [08 Global_Rests measure 209 / measure 10]
    R1 * 1/3

    % [08 Global_Rests measure 210 / measure 11]
    R1 * 11/15

    % [08 Global_Rests measure 211 / measure 12]
    R1 * 1/2

    % [08 Global_Rests measure 212 / measure 13]
    R1 * 1/2

    % [08 Global_Rests measure 213 / measure 14]
    R1 * 1/2

    % [08 Global_Rests measure 214 / measure 15]
    R1 * 1/2

    % [08 Global_Rests measure 215 / measure 16]
    R1 * 1/2

    % [08 Global_Rests measure 216 / measure 17]
    R1 * 1/6

    % [08 Global_Rests measure 217 / measure 18]
    R1 * 1/2

    % [08 Global_Rests measure 218 / measure 19]
    R1 * 2/5

    % [08 Global_Rests measure 219 / measure 20]
    R1 * 1/2

    % [08 Global_Rests measure 220 / measure 21]
    R1 * 1/2

    % [08 Global_Rests measure 221 / measure 22]
    R1 * 1/2

    % [08 Global_Rests measure 222 / measure 23]
    R1 * 1/2

    % [08 Global_Rests measure 223 / measure 24]
    R1 * 1/2

    % [08 Global_Rests measure 224 / measure 25]
    R1 * 1/2

    % [08 Global_Rests measure 225 / measure 26]
    R1 * 1/2

    % [08 Global_Rests measure 226 / measure 27]
    R1 * 1/4

}


h_Global_Skips = {

    % [08 Global_Skips measure 200 / measure 1]
    \time 1/2
    \bar ""
    \baca-time-signature-color #'blue
    s1 * 1/2
    - \baca-start-lmn-left-only "1"
    \bacaStartTextSpanLMN
    - \abjad-invisible-line
    - \baca-metronome-mark-spanner-colored-left-text 2 0 1 "44" #'blue
    \bacaStartTextSpanMM
    - \baca-start-ct-left-only "[7'52'']"
    \bacaStartTextSpanCT

    % [08 Global_Skips measure 201 / measure 2]
    #(ly:expect-warning "strange time signature found")
    \time 13/24
    \baca-time-signature-color #'blue
    s1 * 13/24
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "2"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[7'54'']"
    \bacaStartTextSpanCT

    % [08 Global_Skips measure 202 / measure 3]
    \time 1/2
    \baca-time-signature-color #'blue
    s1 * 1/2
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "3"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[7'57'']"
    \bacaStartTextSpanCT

    % [08 Global_Skips measure 203 / measure 4]
    #(ly:expect-warning "strange time signature found")
    \time 7/12
    \baca-time-signature-color #'blue
    s1 * 7/12
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "4"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[8'00'']"
    \bacaStartTextSpanCT

    % [08 Global_Skips measure 204 / measure 5]
    #(ly:expect-warning "strange time signature found")
    \time 53/60
    \baca-time-signature-color #'blue
    s1 * 53/60
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "5"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[8'03'']"
    \bacaStartTextSpanCT

    % [08 Global_Skips measure 205 / measure 6]
    #(ly:expect-warning "strange time signature found")
    \time 23/24
    \baca-time-signature-color #'blue
    s1 * 23/24
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "6"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[8'08'']"
    \bacaStartTextSpanCT

    % [08 Global_Skips measure 206 / measure 7]
    \time 1/2
    \baca-time-signature-color #'blue
    s1 * 1/2
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "7"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[8'13'']"
    \bacaStartTextSpanCT

    % [08 Global_Skips measure 207 / measure 8]
    s1 * 1/2
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "8"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[8'16'']"
    \bacaStartTextSpanCT

    % [08 Global_Skips measure 208 / measure 9]
    \time 3/8
    \baca-time-signature-color #'blue
    s1 * 3/8
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "9"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[8'19'']"
    \bacaStartTextSpanCT

    % [08 Global_Skips measure 209 / measure 10]
    #(ly:expect-warning "strange time signature found")
    \time 1/3
    \baca-time-signature-color #'blue
    s1 * 1/3
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "10"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[8'21'']"
    \bacaStartTextSpanCT

    % [08 Global_Skips measure 210 / measure 11]
    #(ly:expect-warning "strange time signature found")
    \time 11/15
    \baca-time-signature-color #'blue
    s1 * 11/15
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "11"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[8'22'']"
    \bacaStartTextSpanCT

    % [08 Global_Skips measure 211 / measure 12]
    \time 1/2
    \baca-time-signature-color #'blue
    s1 * 1/2
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "12"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[8'26'']"
    \bacaStartTextSpanCT

    % [08 Global_Skips measure 212 / measure 13]
    s1 * 1/2
    \bacaStopTextSpanLMN
    \bacaStopTextSpanMM
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "13"
    \bacaStartTextSpanLMN
    - \abjad-dashed-line-with-arrow
    - \baca-metronome-mark-spanner-colored-left-text 2 0 1 "44" #'blue
    \bacaStartTextSpanMM
    - \baca-start-ct-left-only "[8'29'']"
    \bacaStartTextSpanCT

    % [08 Global_Skips measure 213 / measure 14]
    s1 * 1/2
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "14"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[8'32'']"
    \bacaStartTextSpanCT

    % [08 Global_Skips measure 214 / measure 15]
    s1 * 1/2
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "15"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[8'35'']"
    \bacaStartTextSpanCT

    % [08 Global_Skips measure 215 / measure 16]
    s1 * 1/2
    \bacaStopTextSpanLMN
    \bacaStopTextSpanMM
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "16"
    \bacaStartTextSpanLMN
    - \abjad-invisible-line
    - \baca-metronome-mark-spanner-colored-left-text 2 0 1 "66" #'blue
    \bacaStartTextSpanMM
    - \baca-start-ct-left-only "[8'37'']"
    \bacaStartTextSpanCT

    % [08 Global_Skips measure 216 / measure 17]
    #(ly:expect-warning "strange time signature found")
    \time 1/6
    \baca-time-signature-color #'blue
    s1 * 1/6
    \bacaStopTextSpanLMN
    \bacaStopTextSpanMM
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "17"
    \bacaStartTextSpanLMN
    - \abjad-invisible-line
    - \baca-metronome-mark-spanner-colored-left-text 2 0 1 "44" #'blue
    \bacaStartTextSpanMM
    - \baca-start-ct-left-only "[8'39'']"
    \bacaStartTextSpanCT

    % [08 Global_Skips measure 217 / measure 18]
    \time 1/2
    \baca-time-signature-color #'blue
    s1 * 1/2
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "18"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[8'40'']"
    \bacaStartTextSpanCT

    % [08 Global_Skips measure 218 / measure 19]
    #(ly:expect-warning "strange time signature found")
    \time 2/5
    \baca-time-signature-color #'blue
    s1 * 2/5
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "19"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[8'43'']"
    \bacaStartTextSpanCT

    % [08 Global_Skips measure 219 / measure 20]
    \time 1/2
    \baca-time-signature-color #'blue
    s1 * 1/2
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "20"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[8'45'']"
    \bacaStartTextSpanCT

    % [08 Global_Skips measure 220 / measure 21]
    s1 * 1/2
    \bacaStopTextSpanLMN
    \bacaStopTextSpanMM
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "21"
    \bacaStartTextSpanLMN
    - \abjad-dashed-line-with-arrow
    - \baca-metronome-mark-spanner-colored-left-text 2 0 1 "44" #'blue
    \bacaStartTextSpanMM
    - \baca-start-ct-left-only "[8'48'']"
    \bacaStartTextSpanCT

    % [08 Global_Skips measure 221 / measure 22]
    s1 * 1/2
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "22"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[8'50'']"
    \bacaStartTextSpanCT

    % [08 Global_Skips measure 222 / measure 23]
    s1 * 1/2
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "23"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[8'53'']"
    \bacaStartTextSpanCT

    % [08 Global_Skips measure 223 / measure 24]
    s1 * 1/2
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "24"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[8'56'']"
    \bacaStartTextSpanCT

    % [08 Global_Skips measure 224 / measure 25]
    s1 * 1/2
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "25"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[8'59'']"
    \bacaStartTextSpanCT

    % [08 Global_Skips measure 225 / measure 26]
    s1 * 1/2
    \bacaStopTextSpanLMN
    \bacaStopTextSpanMM
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "26"
    \bacaStartTextSpanLMN
    - \abjad-invisible-line
    - \baca-metronome-mark-spanner-colored-left-text 2 0 1 "88" #'blue
    \bacaStartTextSpanMM
    - \baca-start-ct-both "[9'01'']" "[9'03'']"
    \bacaStartTextSpanCT

    % [08 Global_Skips measure 226 / measure 27]
    \time 1/4
    \baca-time-signature-transparent
    s1 * 1/4
    \bacaStopTextSpanLMN
    \bacaStopTextSpanMM
    \bacaStopTextSpanCT
    \once \override Score.BarLine.transparent = ##t
    \once \override Score.SpanBar.transparent = ##t

}


h_RH_Music_Voice = {

    % [08 RH_Music_Voice measure 200 / measure 1]
    \override Staff.BarLine.bar-extent = #'(-2 . 4)
    \stopStaff
    \once \override RHStaff.StaffSymbol.line-count = 7
    \startStaff
    \override DynamicLineSpanner.staff-padding = 7
    \override TextScript.parent-alignment-X = 0
    \override TextScript.self-alignment-X = 0
    \override TextScript.staff-padding = 4
    \once \override RHStaff.StaffSymbol.line-positions = #'(8.2 8 7.8 6 4 2 0 -2 -4 -5.8 -6 -6.2)
    \clef "percussion"
    \once \override RHStaff.Clef.color = #(x11-color 'green4)
    \set RHStaff.forceClef = ##t
    \once \override RHStaff.StaffSymbol.color = #(x11-color 'blue)
    b'4
    :32
    - \tweak color #(x11-color 'blue)
    \mp
    _ \baca-mfz-markup
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "make_monads('1/4 1/8 1/8')"
    - \tweak bound-details.right.padding 2.75
    - \tweak color #darkcyan
    - \tweak staff-padding 8
    \bacaStartTextSpanRhythmAnnotation
    \override RHStaff.Clef.color = #(x11-color 'OliveDrab)

    b'8
    :32
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    \mp
    _ \baca-mfz-markup
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    - \tweak stencil #constante-hairpin
    \<
    \glissando

    g'8
    :32
    _ \baca-mfz-markup
    \glissando
    <> \bacaStopTextSpanRhythmAnnotation

    % [08 RH_Music_Voice measure 201 / measure 2]
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
    \times 2/3
    {

        g'4
        :32
        _ \baca-mfz-markup
        \glissando
        <> \bacaStopTextSpanRhythmAnnotation

    }

    % [08 RH_Music_Voice measure 202 / measure 3]
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
    \times 2/3
    {

        % [08 RH_Music_Voice measure 203 / measure 4]
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

    % [08 RH_Music_Voice measure 204 / measure 5]
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
    \times 2/3
    {

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
    \times 2/3
    {

        e'4
        :32
        _ \baca-mpz-markup
        \glissando

    }

    \tweak edge-height #'(0.7 . 0)
    \times 4/5
    {

        b'8
        :32
        _ \baca-mfz-markup
        \glissando

    }

    \tweak edge-height #'(0.7 . 0)
    \times 4/5
    {

        g'8
        :32
        _ \baca-mfz-markup
        \glissando

    }

    \tweak edge-height #'(0.7 . 0)
    \times 4/5
    {

        e'8
        :32
        - \tweak color #(x11-color 'blue)
        \mf
        _ \baca-mfz-markup
        \glissando
        <> \bacaStopTextSpanRhythmAnnotation

    }

    % [08 RH_Music_Voice measure 205 / measure 6]
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
    \times 2/3
    {

        g'4
        :32
        _ \baca-mpz-markup
        \glissando

    }

    \tweak edge-height #'(0.7 . 0)
    \times 2/3
    {

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

    % [08 RH_Music_Voice measure 206 / measure 7]
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

    % [08 RH_Music_Voice measure 207 / measure 8]
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

    % [08 RH_Music_Voice measure 208 / measure 9]
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
    \times 2/3
    {

        % [08 RH_Music_Voice measure 209 / measure 10]
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
    \times 2/3
    {

        b'4
        :32
        _ \baca-mfz-markup
        \glissando
        <> \bacaStopTextSpanRhythmAnnotation

    }

    \tweak edge-height #'(0.7 . 0)
    \times 2/3
    {

        % [08 RH_Music_Voice measure 210 / measure 11]
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
    \times 2/3
    {

        e'4
        :32
        _ \baca-mfz-markup
        \glissando

    }

    \tweak edge-height #'(0.7 . 0)
    \times 4/5
    {

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
    \times 4/5
    {

        g'8
        :32
        _ \baca-mpz-markup
        \glissando

    }

    \tweak edge-height #'(0.7 . 0)
    \times 4/5
    {

        e'8
        :32
        _ \baca-mpz-markup
        \glissando

    }

    \tweak edge-height #'(0.7 . 0)
    \times 4/5
    {

        c'8
        :32
        _ \baca-mpz-markup
        <> \bacaStopTextSpanRhythmAnnotation

    }

    % [08 RH_Music_Voice measure 211 / measure 12]
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

    % [08 RH_Music_Voice measure 212 / measure 13]
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
    - \baca-text-spanner-left-text "sub. trem. mod."
    - \tweak staff-padding 6
    \startTextSpan
    \glissando
    <> \bacaStopTextSpanRhythmAnnotation

    % [08 RH_Music_Voice measure 213 / measure 14]
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

    % [08 RH_Music_Voice measure 214 / measure 15]
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

    % [08 RH_Music_Voice measure 215 / measure 16]
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

    \tweak edge-height #'(0.7 . 0)
    \times 2/3
    {

        % [08 RH_Music_Voice measure 216 / measure 17]
        c'4
        :32
        - \tweak color #(x11-color 'blue)
        \mp
        _ \baca-fz-markup
        - \tweak color #(x11-color 'blue)
        \>
        - \abjad-dashed-line-with-hook
        - \baca-text-spanner-left-text "make_monads('1/6')"
        - \tweak bound-details.right.padding 2.75
        - \tweak color #darkcyan
        - \tweak staff-padding 8
        \bacaStartTextSpanRhythmAnnotation
        - \abjad-dashed-line-with-arrow
        - \baca-text-spanner-left-text "sub. trem. mod."
        - \baca-text-spanner-right-text "trem. stretto"
        - \tweak bound-details.right.padding 0.5
        - \tweak bound-details.right.stencil-align-dir-y #center
        - \tweak staff-padding 6
        \startTextSpan
        \glissando
        <> \bacaStopTextSpanRhythmAnnotation

    }

    \tweak edge-height #'(0.7 . 0)
    \times 2/3
    {

        % [08 RH_Music_Voice measure 217 / measure 18]
        b'4
        :32
        _ \baca-mfz-markup
        - \abjad-dashed-line-with-hook
        - \baca-text-spanner-left-text "make_monads('1/6 1/6 1/6')"
        - \tweak bound-details.right.padding 2.75
        - \tweak color #darkcyan
        - \tweak staff-padding 8
        \bacaStartTextSpanRhythmAnnotation
        \glissando

    }

    \tweak edge-height #'(0.7 . 0)
    \times 2/3
    {

        g'4
        :32
        _ \baca-mfz-markup
        \glissando

    }

    \tweak edge-height #'(0.7 . 0)
    \times 2/3
    {

        e'4
        :32
        _ \baca-mfz-markup
        \glissando
        <> \bacaStopTextSpanRhythmAnnotation

    }

    \tweak edge-height #'(0.7 . 0)
    \times 4/5
    {

        % [08 RH_Music_Voice measure 218 / measure 19]
    %%% \override Hairpin.to-barline = ##t
        b'8
        :32
        - \tweak color #(x11-color 'blue)
        \ppp
        _ \baca-mpz-markup
        - \tweak color #(x11-color 'blue)
        - \tweak stencil #constante-hairpin
        \<
        \stopTextSpan
        - \abjad-dashed-line-with-hook
        - \baca-text-spanner-left-text "make_monads('1/10 1/10 1/10 1/10')"
        - \tweak bound-details.right.padding 2.75
        - \tweak color #darkcyan
        - \tweak staff-padding 8
        \bacaStartTextSpanRhythmAnnotation
        \glissando

    }

    \tweak edge-height #'(0.7 . 0)
    \times 4/5
    {

        g'8
        :32
        _ \baca-mpz-markup
        \glissando

    }

    \tweak edge-height #'(0.7 . 0)
    \times 4/5
    {

        e'8
        :32
        _ \baca-mpz-markup
        \glissando

    }

    \tweak edge-height #'(0.7 . 0)
    \times 4/5
    {

        c'8
        :32
        _ \baca-mpz-markup
    %%% \revert Hairpin.to-barline
        <> \bacaStopTextSpanRhythmAnnotation

    }

    % [08 RH_Music_Voice measure 219 / measure 20]
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

    % [08 RH_Music_Voice measure 220 / measure 21]
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
    - \baca-text-spanner-left-text "sub. trem. mod."
    - \tweak staff-padding 6
    \startTextSpan
    \glissando
    <> \bacaStopTextSpanRhythmAnnotation

    % [08 RH_Music_Voice measure 221 / measure 22]
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

    % [08 RH_Music_Voice measure 222 / measure 23]
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

    % [08 RH_Music_Voice measure 223 / measure 24]
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

    % [08 RH_Music_Voice measure 224 / measure 25]
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
    - \baca-text-spanner-right-text "mod."
    - \tweak bound-details.right.padding 0.5
    - \tweak bound-details.right.stencil-align-dir-y #center
    - \tweak staff-padding 6
    \startTextSpan
    \glissando
    <> \bacaStopTextSpanRhythmAnnotation

    % [08 RH_Music_Voice measure 225 / measure 26]
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

            % [08 RH_Music_Voice measure 226 / measure 27]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            c'1 * 1/4
            \!

        }

        \context Voice = "RH_Rest_Voice"
        {

            % [08 RH_Rest_Voice measure 226 / measure 27]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


h_RH_Music_Staff = {

    \context Voice = "RH_Music_Voice"
    \h_RH_Music_Voice

}


h_Cello_Music_Voice = {

    {

        % [08 Cello_Music_Voice measure 200 / measure 1]
        \override Score.BarLine.transparent = ##t
        \override Score.SpanBar.transparent = ##t
        \override Score.TimeSignature.stencil = ##f
        \clef "bass"
        \once \override Staff.Clef.color = #(x11-color 'green4)
        \set Staff.forceClef = ##t
        a,,1 * 1/2
        ^ \baca-reapplied-indicator-markup "(“Cello”)"
        - \abjad-dashed-line-with-hook
        - \baca-text-spanner-left-text "baca.skeleton()"
        - \tweak bound-details.right.padding 2.75
        - \tweak color #darkcyan
        - \tweak staff-padding 8
        \bacaStartTextSpanRhythmAnnotation
        \override Staff.Clef.color = #(x11-color 'OliveDrab)
        <> \bacaStopTextSpanRhythmAnnotation

    }

    <<

        \context Voice = "Cello_Music_Voice"
        {

            % [08 Cello_Music_Voice measure 201 / measure 2]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            d1 * 13/24

        }

        \context Voice = "Cello_Rest_Voice"
        {

            % [08 Cello_Rest_Voice measure 201 / measure 2]
            \once \override MultiMeasureRest.transparent = ##t
            R1 * 13/24

        }

    >>

    % [08 Cello_Music_Voice measure 202 / measure 3]
    \override MultiMeasureRest.transparent = ##t
    R1 * 1/2

    % [08 Cello_Music_Voice measure 203 / measure 4]
    R1 * 7/12

    % [08 Cello_Music_Voice measure 204 / measure 5]
    R1 * 53/60

    % [08 Cello_Music_Voice measure 205 / measure 6]
    R1 * 23/24

    % [08 Cello_Music_Voice measure 206 / measure 7]
    R1 * 1/2

    % [08 Cello_Music_Voice measure 207 / measure 8]
    R1 * 1/2

    % [08 Cello_Music_Voice measure 208 / measure 9]
    R1 * 3/8

    % [08 Cello_Music_Voice measure 209 / measure 10]
    R1 * 1/3

    % [08 Cello_Music_Voice measure 210 / measure 11]
    R1 * 11/15

    % [08 Cello_Music_Voice measure 211 / measure 12]
    R1 * 1/2

    % [08 Cello_Music_Voice measure 212 / measure 13]
    R1 * 1/2

    % [08 Cello_Music_Voice measure 213 / measure 14]
    R1 * 1/2

    % [08 Cello_Music_Voice measure 214 / measure 15]
    R1 * 1/2

    % [08 Cello_Music_Voice measure 215 / measure 16]
    R1 * 1/2

    % [08 Cello_Music_Voice measure 216 / measure 17]
    R1 * 1/6

    % [08 Cello_Music_Voice measure 217 / measure 18]
    R1 * 1/2

    % [08 Cello_Music_Voice measure 218 / measure 19]
    R1 * 2/5

    % [08 Cello_Music_Voice measure 219 / measure 20]
    R1 * 1/2

    % [08 Cello_Music_Voice measure 220 / measure 21]
    R1 * 1/2

    % [08 Cello_Music_Voice measure 221 / measure 22]
    R1 * 1/2

    % [08 Cello_Music_Voice measure 222 / measure 23]
    R1 * 1/2

    % [08 Cello_Music_Voice measure 223 / measure 24]
    R1 * 1/2

    % [08 Cello_Music_Voice measure 224 / measure 25]
    R1 * 1/2

    % [08 Cello_Music_Voice measure 225 / measure 26]
    R1 * 1/2
    \revert MultiMeasureRest.transparent
    \revert Score.BarLine.transparent
    \revert Score.SpanBar.transparent
    \revert Score.TimeSignature.stencil

    <<

        \context Voice = "Cello_Music_Voice"
        {

            % [08 Cello_Music_Voice measure 226 / measure 27]
            \abjad-invisible-music-coloring
            R1 * 1/4

        }

        \context Voice = "Cello_Rest_Voice"
        {

            % [08 Cello_Rest_Voice measure 226 / measure 27]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


h_Cello_Music_Staff = {

    \context Voice = "Cello_Music_Voice"
    \h_Cello_Music_Voice

}
