c_Global_Rests = {

    % [03 Global_Rests measure 80 / measure 1]
    R1 * 1/2

    % [03 Global_Rests measure 81 / measure 2]
    R1 * 13/24

    % [03 Global_Rests measure 82 / measure 3]
    R1 * 1/2

    % [03 Global_Rests measure 83 / measure 4]
    R1 * 7/12

    % [03 Global_Rests measure 84 / measure 5]
    R1 * 53/60

    % [03 Global_Rests measure 85 / measure 6]
    R1 * 23/24

    % [03 Global_Rests measure 86 / measure 7]
    R1 * 1/2

    % [03 Global_Rests measure 87 / measure 8]
    R1 * 1/2

    % [03 Global_Rests measure 88 / measure 9]
    R1 * 3/8

    % [03 Global_Rests measure 89 / measure 10]
    R1 * 1/3

    % [03 Global_Rests measure 90 / measure 11]
    R1 * 11/15

    % [03 Global_Rests measure 91 / measure 12]
    R1 * 1/2

    % [03 Global_Rests measure 92 / measure 13]
    R1 * 1/2

    % [03 Global_Rests measure 93 / measure 14]
    R1 * 1/2

    % [03 Global_Rests measure 94 / measure 15]
    R1 * 1/2

    % [03 Global_Rests measure 95 / measure 16]
    R1 * 1/2

    % [03 Global_Rests measure 96 / measure 17]
    R1 * 1/6

    % [03 Global_Rests measure 97 / measure 18]
    R1 * 1/2

    % [03 Global_Rests measure 98 / measure 19]
    R1 * 2/5

    % [03 Global_Rests measure 99 / measure 20]
    R1 * 1/2

    % [03 Global_Rests measure 100 / measure 21]
    R1 * 1/2

    % [03 Global_Rests measure 101 / measure 22]
    R1 * 1/2

    % [03 Global_Rests measure 102 / measure 23]
    R1 * 1/2

    % [03 Global_Rests measure 103 / measure 24]
    R1 * 1/2

    % [03 Global_Rests measure 104 / measure 25]
    R1 * 1/2

    % [03 Global_Rests measure 105 / measure 26]
    R1 * 1/2

    % [03 Global_Rests measure 106 / measure 27]
    R1 * 1/4

}


c_Global_Skips = {

    % [03 Global_Skips measure 80 / measure 1]
    \time 1/2
    \bar ""
    \baca-time-signature-color #'blue
    s1 * 1/2
    - \baca-start-lmn-left-only "1"
    \bacaStartTextSpanLMN
    - \abjad-invisible-line
    - \baca-metronome-mark-spanner-colored-left-text 2 0 1 "44" #'green4
    \bacaStartTextSpanMM

    % [03 Global_Skips measure 81 / measure 2]
    #(ly:expect-warning "strange time signature found")
    \time 13/24
    \baca-time-signature-color #'blue
    s1 * 13/24
    \bacaStopTextSpanLMN
    - \baca-start-lmn-left-only "2"
    \bacaStartTextSpanLMN

    % [03 Global_Skips measure 82 / measure 3]
    \time 1/2
    \baca-time-signature-color #'blue
    s1 * 1/2
    \bacaStopTextSpanLMN
    - \baca-start-lmn-left-only "3"
    \bacaStartTextSpanLMN

    % [03 Global_Skips measure 83 / measure 4]
    #(ly:expect-warning "strange time signature found")
    \time 7/12
    \baca-time-signature-color #'blue
    s1 * 7/12
    \bacaStopTextSpanLMN
    - \baca-start-lmn-left-only "4"
    \bacaStartTextSpanLMN

    % [03 Global_Skips measure 84 / measure 5]
    #(ly:expect-warning "strange time signature found")
    \time 53/60
    \baca-time-signature-color #'blue
    s1 * 53/60
    \bacaStopTextSpanLMN
    - \baca-start-lmn-left-only "5"
    \bacaStartTextSpanLMN

    % [03 Global_Skips measure 85 / measure 6]
    #(ly:expect-warning "strange time signature found")
    \time 23/24
    \baca-time-signature-color #'blue
    s1 * 23/24
    \bacaStopTextSpanLMN
    - \baca-start-lmn-left-only "6"
    \bacaStartTextSpanLMN

    % [03 Global_Skips measure 86 / measure 7]
    \time 1/2
    \baca-time-signature-color #'blue
    s1 * 1/2
    \bacaStopTextSpanLMN
    - \baca-start-lmn-left-only "7"
    \bacaStartTextSpanLMN

    % [03 Global_Skips measure 87 / measure 8]
    s1 * 1/2
    \bacaStopTextSpanLMN
    - \baca-start-lmn-left-only "8"
    \bacaStartTextSpanLMN

    % [03 Global_Skips measure 88 / measure 9]
    \time 3/8
    \baca-time-signature-color #'blue
    s1 * 3/8
    \bacaStopTextSpanLMN
    - \baca-start-lmn-left-only "9"
    \bacaStartTextSpanLMN

    % [03 Global_Skips measure 89 / measure 10]
    #(ly:expect-warning "strange time signature found")
    \time 1/3
    \baca-time-signature-color #'blue
    s1 * 1/3
    \bacaStopTextSpanLMN
    - \baca-start-lmn-left-only "10"
    \bacaStartTextSpanLMN

    % [03 Global_Skips measure 90 / measure 11]
    #(ly:expect-warning "strange time signature found")
    \time 11/15
    \baca-time-signature-color #'blue
    s1 * 11/15
    \bacaStopTextSpanLMN
    - \baca-start-lmn-left-only "11"
    \bacaStartTextSpanLMN

    % [03 Global_Skips measure 91 / measure 12]
    \time 1/2
    \baca-time-signature-color #'blue
    s1 * 1/2
    \bacaStopTextSpanLMN
    - \baca-start-lmn-left-only "12"
    \bacaStartTextSpanLMN

    % [03 Global_Skips measure 92 / measure 13]
    s1 * 1/2
    \bacaStopTextSpanLMN
    \bacaStopTextSpanMM
    - \baca-start-lmn-left-only "13"
    \bacaStartTextSpanLMN
    - \abjad-dashed-line-with-arrow
    - \baca-metronome-mark-spanner-colored-left-text 2 0 1 "44" #'blue
    \bacaStartTextSpanMM

    % [03 Global_Skips measure 93 / measure 14]
    s1 * 1/2
    \bacaStopTextSpanLMN
    - \baca-start-lmn-left-only "14"
    \bacaStartTextSpanLMN

    % [03 Global_Skips measure 94 / measure 15]
    s1 * 1/2
    \bacaStopTextSpanLMN
    - \baca-start-lmn-left-only "15"
    \bacaStartTextSpanLMN

    % [03 Global_Skips measure 95 / measure 16]
    s1 * 1/2
    \bacaStopTextSpanLMN
    \bacaStopTextSpanMM
    - \baca-start-lmn-left-only "16"
    \bacaStartTextSpanLMN
    - \abjad-invisible-line
    - \baca-metronome-mark-spanner-colored-left-text 2 0 1 "66" #'blue
    \bacaStartTextSpanMM

    % [03 Global_Skips measure 96 / measure 17]
    #(ly:expect-warning "strange time signature found")
    \time 1/6
    \baca-time-signature-color #'blue
    s1 * 1/6
    \bacaStopTextSpanLMN
    \bacaStopTextSpanMM
    - \baca-start-lmn-left-only "17"
    \bacaStartTextSpanLMN
    - \abjad-invisible-line
    - \baca-metronome-mark-spanner-colored-left-text 2 0 1 "44" #'blue
    \bacaStartTextSpanMM

    % [03 Global_Skips measure 97 / measure 18]
    \time 1/2
    \baca-time-signature-color #'blue
    s1 * 1/2
    \bacaStopTextSpanLMN
    - \baca-start-lmn-left-only "18"
    \bacaStartTextSpanLMN

    % [03 Global_Skips measure 98 / measure 19]
    #(ly:expect-warning "strange time signature found")
    \time 2/5
    \baca-time-signature-color #'blue
    s1 * 2/5
    \bacaStopTextSpanLMN
    - \baca-start-lmn-left-only "19"
    \bacaStartTextSpanLMN

    % [03 Global_Skips measure 99 / measure 20]
    \time 1/2
    \baca-time-signature-color #'blue
    s1 * 1/2
    \bacaStopTextSpanLMN
    - \baca-start-lmn-left-only "20"
    \bacaStartTextSpanLMN

    % [03 Global_Skips measure 100 / measure 21]
    s1 * 1/2
    \bacaStopTextSpanLMN
    \bacaStopTextSpanMM
    - \baca-start-lmn-left-only "21"
    \bacaStartTextSpanLMN
    - \abjad-dashed-line-with-arrow
    - \baca-metronome-mark-spanner-colored-left-text 2 0 1 "44" #'blue
    \bacaStartTextSpanMM

    % [03 Global_Skips measure 101 / measure 22]
    s1 * 1/2
    \bacaStopTextSpanLMN
    - \baca-start-lmn-left-only "22"
    \bacaStartTextSpanLMN

    % [03 Global_Skips measure 102 / measure 23]
    s1 * 1/2
    \bacaStopTextSpanLMN
    - \baca-start-lmn-left-only "23"
    \bacaStartTextSpanLMN

    % [03 Global_Skips measure 103 / measure 24]
    s1 * 1/2
    \bacaStopTextSpanLMN
    - \baca-start-lmn-left-only "24"
    \bacaStartTextSpanLMN

    % [03 Global_Skips measure 104 / measure 25]
    s1 * 1/2
    \bacaStopTextSpanLMN
    - \baca-start-lmn-left-only "25"
    \bacaStartTextSpanLMN

    % [03 Global_Skips measure 105 / measure 26]
    s1 * 1/2
    \bacaStopTextSpanLMN
    \bacaStopTextSpanMM
    - \baca-start-lmn-left-only "26"
    \bacaStartTextSpanLMN
    - \abjad-invisible-line
    - \baca-metronome-mark-spanner-colored-left-text 2 0 1 "88" #'blue
    \bacaStartTextSpanMM

    % [03 Global_Skips measure 106 / measure 27]
    \time 1/4
    \baca-time-signature-transparent
    s1 * 1/4
    \bacaStopTextSpanLMN
    \bacaStopTextSpanMM
    \once \override Score.BarLine.transparent = ##t
    \once \override Score.SpanBar.transparent = ##t

}


c_RH_Music_Voice = {

    % [03 RH_Music_Voice measure 80 / measure 1]
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
    _ \baca-mfz-markup
    - \tweak color #(x11-color 'green4)
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

    % [03 RH_Music_Voice measure 81 / measure 2]
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

    % [03 RH_Music_Voice measure 82 / measure 3]
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

        % [03 RH_Music_Voice measure 83 / measure 4]
        g'2
        :32
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

    % [03 RH_Music_Voice measure 84 / measure 5]
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

    % [03 RH_Music_Voice measure 85 / measure 6]
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

    % [03 RH_Music_Voice measure 86 / measure 7]
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

    % [03 RH_Music_Voice measure 87 / measure 8]
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

    % [03 RH_Music_Voice measure 88 / measure 9]
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

        % [03 RH_Music_Voice measure 89 / measure 10]
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

        % [03 RH_Music_Voice measure 90 / measure 11]
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

    % [03 RH_Music_Voice measure 91 / measure 12]
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

    % [03 RH_Music_Voice measure 92 / measure 13]
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

    % [03 RH_Music_Voice measure 93 / measure 14]
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

    % [03 RH_Music_Voice measure 94 / measure 15]
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

    % [03 RH_Music_Voice measure 95 / measure 16]
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

        % [03 RH_Music_Voice measure 96 / measure 17]
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

        % [03 RH_Music_Voice measure 97 / measure 18]
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

        % [03 RH_Music_Voice measure 98 / measure 19]
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

    % [03 RH_Music_Voice measure 99 / measure 20]
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

    % [03 RH_Music_Voice measure 100 / measure 21]
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

    % [03 RH_Music_Voice measure 101 / measure 22]
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

    % [03 RH_Music_Voice measure 102 / measure 23]
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

    % [03 RH_Music_Voice measure 103 / measure 24]
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

    % [03 RH_Music_Voice measure 104 / measure 25]
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

    % [03 RH_Music_Voice measure 105 / measure 26]
%%% \once \override Hairpin.to-barline = ##t
    d2
    :32
    - \tweak color #(x11-color 'blue)
    \f
    - \tweak self-alignment-X -0.75
    - \tweak staff-padding 2
    ^ \huitzil-directly-above-end-of-fingerboard-markup
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

            % [03 RH_Music_Voice measure 106 / measure 27]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            c'1 * 1/4
            \!

        }

        \context Voice = "RH_Rest_Voice"
        {

            % [03 RH_Rest_Voice measure 106 / measure 27]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


c_RH_Music_Staff = {

    \context Voice = "RH_Music_Voice"
    \c_RH_Music_Voice

}


c_Cello_Music_Voice = {

    % [03 Cello_Music_Voice measure 80 / measure 1]
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

    % [03 Cello_Music_Voice measure 81 / measure 2]
    R1 * 13/24

    % [03 Cello_Music_Voice measure 82 / measure 3]
    R1 * 1/2

    % [03 Cello_Music_Voice measure 83 / measure 4]
    R1 * 7/12

    % [03 Cello_Music_Voice measure 84 / measure 5]
    R1 * 53/60

    % [03 Cello_Music_Voice measure 85 / measure 6]
    R1 * 23/24

    % [03 Cello_Music_Voice measure 86 / measure 7]
    R1 * 1/2

    % [03 Cello_Music_Voice measure 87 / measure 8]
    R1 * 1/2

    % [03 Cello_Music_Voice measure 88 / measure 9]
    R1 * 3/8

    % [03 Cello_Music_Voice measure 89 / measure 10]
    R1 * 1/3

    % [03 Cello_Music_Voice measure 90 / measure 11]
    R1 * 11/15

    % [03 Cello_Music_Voice measure 91 / measure 12]
    R1 * 1/2

    % [03 Cello_Music_Voice measure 92 / measure 13]
    R1 * 1/2

    % [03 Cello_Music_Voice measure 93 / measure 14]
    R1 * 1/2

    % [03 Cello_Music_Voice measure 94 / measure 15]
    R1 * 1/2

    % [03 Cello_Music_Voice measure 95 / measure 16]
    R1 * 1/2

    % [03 Cello_Music_Voice measure 96 / measure 17]
    R1 * 1/6

    % [03 Cello_Music_Voice measure 97 / measure 18]
    R1 * 1/2

    % [03 Cello_Music_Voice measure 98 / measure 19]
    R1 * 2/5

    % [03 Cello_Music_Voice measure 99 / measure 20]
    R1 * 1/2

    % [03 Cello_Music_Voice measure 100 / measure 21]
    R1 * 1/2

    % [03 Cello_Music_Voice measure 101 / measure 22]
    R1 * 1/2

    % [03 Cello_Music_Voice measure 102 / measure 23]
    R1 * 1/2

    % [03 Cello_Music_Voice measure 103 / measure 24]
    R1 * 1/2

    % [03 Cello_Music_Voice measure 104 / measure 25]
    R1 * 1/2

    % [03 Cello_Music_Voice measure 105 / measure 26]
    R1 * 1/2
    \revert MultiMeasureRest.transparent
    \revert Score.BarLine.transparent
    \revert Score.SpanBar.transparent
    \revert Score.TimeSignature.stencil

    <<

        \context Voice = "Cello_Music_Voice"
        {

            % [03 Cello_Music_Voice measure 106 / measure 27]
            \abjad-invisible-music-coloring
            R1 * 1/4

        }

        \context Voice = "Cello_Rest_Voice"
        {

            % [03 Cello_Rest_Voice measure 106 / measure 27]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


c_Cello_Music_Staff = {

    \context Voice = "Cello_Music_Voice"
    \c_Cello_Music_Voice

}
