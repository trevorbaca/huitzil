i_Global_Rests = {

    % [09 Global_Rests measure 226 / measure 1]
    R1 * 1/2

    % [09 Global_Rests measure 227 / measure 2]
    R1 * 1/2

    % [09 Global_Rests measure 228 / measure 3]
    R1 * 2/3

    % [09 Global_Rests measure 229 / measure 4]
    R1 * 1/2

    % [09 Global_Rests measure 230 / measure 5]
    R1 * 4/5

    % [09 Global_Rests measure 231 / measure 6]
    R1 * 1/2

    % [09 Global_Rests measure 232 / measure 7]
    R1 * 2/3

    % [09 Global_Rests measure 233 / measure 8]
    R1 * 1/2

    % [09 Global_Rests measure 234 / measure 9]
    R1 * 4/5

    % [09 Global_Rests measure 235 / measure 10]
    R1 * 1/2

    % [09 Global_Rests measure 236 / measure 11]
    R1 * 2/3

    % [09 Global_Rests measure 237 / measure 12]
    R1 * 1/2

    % [09 Global_Rests measure 238 / measure 13]
    R1 * 4/5

    % [09 Global_Rests measure 239 / measure 14]
    R1 * 1/2

    % [09 Global_Rests measure 240 / measure 15]
    R1 * 2/3

    % [09 Global_Rests measure 241 / measure 16]
    R1 * 1/2

    % [09 Global_Rests measure 242 / measure 17]
    R1 * 4/5

    % [09 Global_Rests measure 243 / measure 18]
    R1 * 1/2

    % [09 Global_Rests measure 244 / measure 19]
    R1 * 1/2

    % [09 Global_Rests measure 245 / measure 20]
    R1 * 1/2

    % [09 Global_Rests measure 246 / measure 21]
    R1 * 1/2

    % [09 Global_Rests measure 247 / measure 22]
    R1 * 1/2

    % [09 Global_Rests measure 248 / measure 23]
    R1 * 1/2

    % [09 Global_Rests measure 249 / measure 24]
    R1 * 1/4

}


i_Global_Skips = {

    % [09 Global_Skips measure 226 / measure 1]
    \time 1/2
    \bar ""
    \baca-time-signature-color #'green4
    s1 * 1/2
    - \baca-start-lmn-left-only "1"
    \bacaStartTextSpanLMN
    - \abjad-invisible-line
    - \baca-metronome-mark-spanner-colored-left-text 2 0 1 "88" #'green4
    \bacaStartTextSpanMM
    - \baca-start-ct-left-only "[9'03'']"
    \bacaStartTextSpanCT

    % [09 Global_Skips measure 227 / measure 2]
    s1 * 1/2
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "2"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[9'04'']"
    \bacaStartTextSpanCT

    % [09 Global_Skips measure 228 / measure 3]
    #(ly:expect-warning "strange time signature found")
    \time 2/3
    \baca-time-signature-color #'blue
    s1 * 2/3
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "3"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[9'05'']"
    \bacaStartTextSpanCT

    % [09 Global_Skips measure 229 / measure 4]
    \time 1/2
    \baca-time-signature-color #'blue
    s1 * 1/2
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "4"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[9'07'']"
    \bacaStartTextSpanCT

    % [09 Global_Skips measure 230 / measure 5]
    #(ly:expect-warning "strange time signature found")
    \time 4/5
    \baca-time-signature-color #'blue
    s1 * 4/5
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "5"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[9'08'']"
    \bacaStartTextSpanCT

    % [09 Global_Skips measure 231 / measure 6]
    \time 1/2
    \baca-time-signature-color #'blue
    s1 * 1/2
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "6"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[9'11'']"
    \bacaStartTextSpanCT

    % [09 Global_Skips measure 232 / measure 7]
    #(ly:expect-warning "strange time signature found")
    \time 2/3
    \baca-time-signature-color #'blue
    s1 * 2/3
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "7"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[9'12'']"
    \bacaStartTextSpanCT

    % [09 Global_Skips measure 233 / measure 8]
    \time 1/2
    \baca-time-signature-color #'blue
    s1 * 1/2
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "8"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[9'14'']"
    \bacaStartTextSpanCT

    % [09 Global_Skips measure 234 / measure 9]
    #(ly:expect-warning "strange time signature found")
    \time 4/5
    \baca-time-signature-color #'blue
    s1 * 4/5
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "9"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[9'15'']"
    \bacaStartTextSpanCT

    % [09 Global_Skips measure 235 / measure 10]
    \time 1/2
    \baca-time-signature-color #'blue
    s1 * 1/2
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "10"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[9'17'']"
    \bacaStartTextSpanCT

    % [09 Global_Skips measure 236 / measure 11]
    #(ly:expect-warning "strange time signature found")
    \time 2/3
    \baca-time-signature-color #'blue
    s1 * 2/3
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "11"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[9'19'']"
    \bacaStartTextSpanCT

    % [09 Global_Skips measure 237 / measure 12]
    \time 1/2
    \baca-time-signature-color #'blue
    s1 * 1/2
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "12"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[9'21'']"
    \bacaStartTextSpanCT

    % [09 Global_Skips measure 238 / measure 13]
    #(ly:expect-warning "strange time signature found")
    \time 4/5
    \baca-time-signature-color #'blue
    s1 * 4/5
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "13"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[9'22'']"
    \bacaStartTextSpanCT

    % [09 Global_Skips measure 239 / measure 14]
    \time 1/2
    \baca-time-signature-color #'blue
    s1 * 1/2
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "14"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[9'24'']"
    \bacaStartTextSpanCT

    % [09 Global_Skips measure 240 / measure 15]
    #(ly:expect-warning "strange time signature found")
    \time 2/3
    \baca-time-signature-color #'blue
    s1 * 2/3
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "15"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[9'25'']"
    \bacaStartTextSpanCT

    % [09 Global_Skips measure 241 / measure 16]
    \time 1/2
    \baca-time-signature-color #'blue
    s1 * 1/2
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "16"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[9'27'']"
    \bacaStartTextSpanCT

    % [09 Global_Skips measure 242 / measure 17]
    #(ly:expect-warning "strange time signature found")
    \time 4/5
    \baca-time-signature-color #'blue
    s1 * 4/5
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "17"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[9'29'']"
    \bacaStartTextSpanCT

    % [09 Global_Skips measure 243 / measure 18]
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
    - \baca-start-ct-left-only "[9'31'']"
    \bacaStartTextSpanCT

    % [09 Global_Skips measure 244 / measure 19]
    s1 * 1/2
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "19"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[9'32'']"
    \bacaStartTextSpanCT

    % [09 Global_Skips measure 245 / measure 20]
    s1 * 1/2
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "20"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[9'34'']"
    \bacaStartTextSpanCT

    % [09 Global_Skips measure 246 / measure 21]
    s1 * 1/2
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "21"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[9'35'']"
    \bacaStartTextSpanCT

    % [09 Global_Skips measure 247 / measure 22]
    s1 * 1/2
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "22"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[9'36'']"
    \bacaStartTextSpanCT

    % [09 Global_Skips measure 248 / measure 23]
    s1 * 1/2
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "23"
    \bacaStartTextSpanLMN
    - \baca-start-ct-both "[9'38'']" "[9'39'']"
    \bacaStartTextSpanCT

    % [09 Global_Skips measure 249 / measure 24]
    \time 1/4
    \baca-time-signature-transparent
    s1 * 1/4
    \bacaStopTextSpanLMN
    \bacaStopTextSpanMM
    \bacaStopTextSpanCT
    \once \override Score.BarLine.transparent = ##t
    \once \override Score.SpanBar.transparent = ##t

}


i_RH_Music_Voice = {

    % [09 RH_Music_Voice measure 226 / measure 1]
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

    % [09 RH_Music_Voice measure 227 / measure 2]
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
    \times 2/3
    {

        % [09 RH_Music_Voice measure 228 / measure 3]
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
    \times 2/3
    {

        c'2
        :32
        - \tweak color #(x11-color 'blue)
        \p
        _ \baca-fffz-markup
        - \tweak color #(x11-color 'blue)
        \<
        <> \bacaStopTextSpanRhythmAnnotation

    }

    % [09 RH_Music_Voice measure 229 / measure 4]
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
    \times 4/5
    {

        % [09 RH_Music_Voice measure 230 / measure 5]
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
        - \tweak color #(x11-color 'blue)
        \p
        _ \baca-ffz-markup
        - \tweak color #(x11-color 'blue)
        \<

    }

    \tweak edge-height #'(0.7 . 0)
    \times 4/5
    {

        c'4
        :32
        _ \baca-fffz-markup
        <> \bacaStopTextSpanRhythmAnnotation

    }

    % [09 RH_Music_Voice measure 231 / measure 6]
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
    \times 2/3
    {

        % [09 RH_Music_Voice measure 232 / measure 7]
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
    \times 2/3
    {

        c'2
        :32
        - \tweak color #(x11-color 'blue)
        \p
        _ \baca-fffz-markup
        - \tweak color #(x11-color 'blue)
        \<
        <> \bacaStopTextSpanRhythmAnnotation

    }

    % [09 RH_Music_Voice measure 233 / measure 8]
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
    \times 4/5
    {

        % [09 RH_Music_Voice measure 234 / measure 9]
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
        - \tweak color #(x11-color 'blue)
        \p
        _ \baca-ffz-markup
        - \tweak color #(x11-color 'blue)
        \<

    }

    \tweak edge-height #'(0.7 . 0)
    \times 4/5
    {

        c'4
        :32
        _ \baca-fffz-markup
        <> \bacaStopTextSpanRhythmAnnotation

    }

    % [09 RH_Music_Voice measure 235 / measure 10]
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
    \times 2/3
    {

        % [09 RH_Music_Voice measure 236 / measure 11]
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
    \times 2/3
    {

        c'2
        :32
        - \tweak color #(x11-color 'blue)
        \p
        _ \baca-fffz-markup
        - \tweak color #(x11-color 'blue)
        \<
        <> \bacaStopTextSpanRhythmAnnotation

    }

    % [09 RH_Music_Voice measure 237 / measure 12]
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
    \times 4/5
    {

        % [09 RH_Music_Voice measure 238 / measure 13]
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
        - \tweak color #(x11-color 'blue)
        \p
        _ \baca-ffz-markup

    }

    \tweak edge-height #'(0.7 . 0)
    \times 4/5
    {

        c'4
        :32
        _ \baca-fffz-markup
        \glissando
        <> \bacaStopTextSpanRhythmAnnotation

    }

    % [09 RH_Music_Voice measure 239 / measure 14]
    \stopStaff
    \once \override RHStaff.StaffSymbol.line-positions = #'(8.2 8 7.8 -5.8 -6 -6.2)
    \startStaff
    d''2
    :32
    - \tweak color #(x11-color 'blue)
    \mp
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
    \times 2/3
    {

        % [09 RH_Music_Voice measure 240 / measure 15]
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
    \times 2/3
    {

        d''2
        :32
        _ \baca-fffz-markup
        <> \bacaStopTextSpanRhythmAnnotation

    }

    % [09 RH_Music_Voice measure 241 / measure 16]
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
    \times 4/5
    {

        % [09 RH_Music_Voice measure 242 / measure 17]
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
        <> \bacaStopTextSpanRhythmAnnotation

    }

    % [09 RH_Music_Voice measure 243 / measure 18]
%%% \once \override Hairpin.to-barline = ##t
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

    % [09 RH_Music_Voice measure 244 / measure 19]
    d''2
    :32
    _ \baca-fz-markup
    \stopTextSpan
    - \abjad-dashed-line-with-arrow
    - \baca-text-spanner-left-text "stretto"
    - \tweak staff-padding 6
    \startTextSpan

    % [09 RH_Music_Voice measure 245 / measure 20]
    d''2
    :32
    _ \baca-fz-markup
    \stopTextSpan
    - \abjad-dashed-line-with-arrow
    - \baca-text-spanner-left-text "largo"
    - \tweak staff-padding 6
    \startTextSpan

    % [09 RH_Music_Voice measure 246 / measure 21]
    d''2
    :32
    _ \baca-mfz-markup
    \stopTextSpan
    - \abjad-dashed-line-with-arrow
    - \baca-text-spanner-left-text "stretto"
    - \tweak staff-padding 6
    \startTextSpan

    % [09 RH_Music_Voice measure 247 / measure 22]
    \once \override Hairpin.to-barline = ##t
    d''2
    :32
    - \tweak color #(x11-color 'blue)
    \p
    _ \baca-mfz-markup
    - \tweak color #(x11-color 'blue)
    - \tweak stencil #constante-hairpin
    \<
    \stopTextSpan
    - \abjad-dashed-line-with-arrow
    - \baca-text-spanner-left-text "largo"
    - \tweak staff-padding 6
    \startTextSpan

    % [09 RH_Music_Voice measure 248 / measure 23]
    d''2
    :32
    _ \baca-mpz-markup
    \stopTextSpan
    - \abjad-dashed-line-with-arrow
    - \baca-text-spanner-left-text "stretto"
    - \tweak staff-padding 6
    \startTextSpan
    \revert TextScript.parent-alignment-X
    \revert TextScript.self-alignment-X
    \revert TextScript.staff-padding
    <> \bacaStopTextSpanRhythmAnnotation

    <<

        \context Voice = "RH_Music_Voice"
        {

            % [09 RH_Music_Voice measure 249 / measure 24]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            c'1 * 1/4
            \!
            \stopTextSpan

        }

        \context Voice = "RH_Rest_Voice"
        {

            % [09 RH_Rest_Voice measure 249 / measure 24]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


i_RH_Music_Staff = {

    \context Voice = "RH_Music_Voice"
    \i_RH_Music_Voice

}


i_Cello_Music_Voice = {

    <<

        \context Voice = "Cello_Music_Voice"
        {

            % [09 Cello_Music_Voice measure 226 / measure 1]
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

            % [09 Cello_Rest_Voice measure 226 / measure 1]
            \once \override MultiMeasureRest.transparent = ##t
            R1 * 1/2

        }

    >>

    % [09 Cello_Music_Voice measure 227 / measure 2]
    \override MultiMeasureRest.transparent = ##t
    R1 * 1/2

    % [09 Cello_Music_Voice measure 228 / measure 3]
    R1 * 2/3

    % [09 Cello_Music_Voice measure 229 / measure 4]
    R1 * 1/2

    % [09 Cello_Music_Voice measure 230 / measure 5]
    R1 * 4/5

    % [09 Cello_Music_Voice measure 231 / measure 6]
    R1 * 1/2

    % [09 Cello_Music_Voice measure 232 / measure 7]
    R1 * 2/3

    {

        % [09 Cello_Music_Voice measure 233 / measure 8]
        a,,1 * 107/30
        \repeatTie
        - \abjad-dashed-line-with-hook
        - \baca-text-spanner-left-text "baca.skeleton()"
        - \tweak bound-details.right.padding 2.75
        - \tweak color #darkcyan
        - \tweak staff-padding 8
        \bacaStartTextSpanRhythmAnnotation
        \glissando

        bf,,!1 * 1/5
        \glissando
        <> \bacaStopTextSpanRhythmAnnotation

    }

    {

        % [09 Cello_Music_Voice measure 239 / measure 14]
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

            % [09 Cello_Music_Voice measure 240 / measure 15]
            \abjad-invisible-music-coloring
            \baca-not-yet-pitched-coloring
            b'1 * 2/3

        }

        \context Voice = "Cello_Rest_Voice"
        {

            % [09 Cello_Rest_Voice measure 240 / measure 15]
            \once \override MultiMeasureRest.transparent = ##t
            R1 * 2/3

        }

    >>

    % [09 Cello_Music_Voice measure 241 / measure 16]
    R1 * 1/2

    % [09 Cello_Music_Voice measure 242 / measure 17]
    R1 * 4/5

    % [09 Cello_Music_Voice measure 243 / measure 18]
    R1 * 1/2

    % [09 Cello_Music_Voice measure 244 / measure 19]
    R1 * 1/2

    % [09 Cello_Music_Voice measure 245 / measure 20]
    R1 * 1/2

    % [09 Cello_Music_Voice measure 246 / measure 21]
    R1 * 1/2

    % [09 Cello_Music_Voice measure 247 / measure 22]
    R1 * 1/2

    % [09 Cello_Music_Voice measure 248 / measure 23]
    R1 * 1/2
    \revert MultiMeasureRest.transparent
    \revert Score.BarLine.transparent
    \revert Score.SpanBar.transparent
    \revert Score.TimeSignature.stencil

    <<

        \context Voice = "Cello_Music_Voice"
        {

            % [09 Cello_Music_Voice measure 249 / measure 24]
            \abjad-invisible-music-coloring
            R1 * 1/4

        }

        \context Voice = "Cello_Rest_Voice"
        {

            % [09 Cello_Rest_Voice measure 249 / measure 24]
            \once \override Score.TimeSignature.X-extent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \stopStaff
            \once \override Staff.StaffSymbol.transparent = ##t
            \startStaff
            R1 * 1/4

        }

    >>

}


i_Cello_Music_Staff = {

    \context Voice = "Cello_Music_Voice"
    \i_Cello_Music_Voice

}
