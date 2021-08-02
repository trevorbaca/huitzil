segment.10.Global.Rests = {

    % [Global_Rests measure 249 / measure 1]
    R1 * 1/2

    % [Global_Rests measure 250 / measure 2]
    R1 * 1/2

    % [Global_Rests measure 251 / measure 3]
    R1 * 1/2

    % [Global_Rests measure 252 / measure 4]
    R1 * 1/2

    % [Global_Rests measure 253 / measure 5]
    R1 * 1/2

    % [Global_Rests measure 254 / measure 6]
    R1 * 1/2

    % [Global_Rests measure 255 / measure 7]
    R1 * 1/2

    % [Global_Rests measure 256 / measure 8]
    R1 * 1/2

    % [Global_Rests measure 257 / measure 9]
    R1 * 1/2

    % [Global_Rests measure 258 / measure 10]
    R1 * 3/2

}


segment.10.Global.Skips = {

    % [Global_Skips measure 249 / measure 1]
    \time 1/2
    \bar ""
    \baca-time-signature-color #'green4
    s1 * 1/2
    - \baca-start-lmn-left-only "1"
    \bacaStartTextSpanLMN
    - \abjad-invisible-line
    - \baca-metronome-mark-spanner-colored-left-text 2 0 1 "66" #'blue
    \bacaStartTextSpanMM
    - \baca-start-ct-left-only "[9'40'']"
    \bacaStartTextSpanCT

    % [Global_Skips measure 250 / measure 2]
    s1 * 1/2
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "2"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[9'41'']"
    \bacaStartTextSpanCT

    % [Global_Skips measure 251 / measure 3]
    s1 * 1/2
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "3"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[9'43'']"
    \bacaStartTextSpanCT

    % [Global_Skips measure 252 / measure 4]
    s1 * 1/2
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "4"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[9'45'']"
    \bacaStartTextSpanCT

    % [Global_Skips measure 253 / measure 5]
    s1 * 1/2
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "5"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[9'47'']"
    \bacaStartTextSpanCT

    % [Global_Skips measure 254 / measure 6]
    s1 * 1/2
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "6"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[9'49'']"
    \bacaStartTextSpanCT

    % [Global_Skips measure 255 / measure 7]
    s1 * 1/2
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "7"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[9'50'']"
    \bacaStartTextSpanCT

    % [Global_Skips measure 256 / measure 8]
    s1 * 1/2
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "8"
    \bacaStartTextSpanLMN
    - \baca-start-ct-left-only "[9'52'']"
    \bacaStartTextSpanCT

    % [Global_Skips measure 257 / measure 9]
    s1 * 1/2
    \bacaStopTextSpanLMN
    \bacaStopTextSpanCT
    - \baca-start-lmn-left-only "9"
    \bacaStartTextSpanLMN
    - \baca-start-ct-both "[9'54'']" "[9'56'']"
    \bacaStartTextSpanCT

    % [Global_Skips measure 258 / measure 10]
    \time 3/2
    \baca-time-signature-color #'blue
    s1 * 3/2
    \bacaStopTextSpanLMN
    \bacaStopTextSpanMM
    \bacaStopTextSpanCT
    \bar "|."

}


segment.10.RH.Music.Voice = {

    % [RH_Music_Voice measure 249 / measure 1]
    \override Staff.BarLine.bar-extent = #'(-2 . 4)
    \stopStaff
    \once \override RHStaff.StaffSymbol.line-count = 7
    \startStaff
    <> \stopTextSpan
    \override DynamicLineSpanner.staff-padding = 7
    \stopStaff
    \once \override RHStaff.StaffSymbol.line-positions = #'(8.2 8 7.8 -5.8 -6 -6.2)
    \startStaff
    \override TextScript.parent-alignment-X = 0
    \override TextScript.self-alignment-X = 0
    \override TextScript.staff-padding = 4
    \clef "percussion"
    \once \override RHStaff.Clef.color = #(x11-color 'green4)
    \set RHStaff.forceClef = ##t
    \once \override RHStaff.StaffSymbol.color = #(x11-color 'green4)
    d''2
    :32
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    \mp
    _ \baca-mpz-markup
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    \>
    - \abjad-dashed-line-with-hook
    - \baca-text-spanner-left-text "make_monads('1/2 1/2 1/2 1/2 1/2 1/2 1/2 1/2 1/2 3/2')"
    - \tweak bound-details.right.padding 2.75
    - \tweak color #darkcyan
    - \tweak staff-padding 8
    \bacaStartTextSpanRhythmAnnotation
    - \abjad-dashed-line-with-arrow
    - \baca-text-spanner-left-text "larg."
    - \tweak staff-padding 6
    \startTextSpan
    - \tweak stencil ##f
    ~
    \override RHStaff.Clef.color = #(x11-color 'OliveDrab)

    % [RH_Music_Voice measure 250 / measure 2]
    d''2
    :32
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    \pp
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    \<
    \repeatTie
    \stopTextSpan
    - \abjad-dashed-line-with-arrow
    - \baca-text-spanner-left-text "strett."
    - \tweak staff-padding 6
    \startTextSpan
    - \tweak stencil ##f
    ~

    % [RH_Music_Voice measure 251 / measure 3]
    d''2
    :32
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    \mp
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    \>
    \repeatTie
    \stopTextSpan
    - \abjad-dashed-line-with-arrow
    - \baca-text-spanner-left-text "larg."
    - \tweak staff-padding 6
    \startTextSpan
    - \tweak stencil ##f
    ~

    % [RH_Music_Voice measure 252 / measure 4]
    d''2
    :32
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    \pp
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    \<
    \repeatTie
    \stopTextSpan
    - \abjad-dashed-line-with-arrow
    - \baca-text-spanner-left-text "strett."
    - \tweak staff-padding 6
    \startTextSpan
    - \tweak stencil ##f
    ~

    % [RH_Music_Voice measure 253 / measure 5]
    d''2
    :32
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    \mp
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    \>
    \repeatTie
    \stopTextSpan
    - \abjad-dashed-line-with-arrow
    - \baca-text-spanner-left-text "larg."
    - \tweak staff-padding 6
    \startTextSpan
    - \tweak stencil ##f
    ~

    % [RH_Music_Voice measure 254 / measure 6]
    d''2
    :32
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    \pp
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    \<
    \repeatTie
    \stopTextSpan
    - \abjad-dashed-line-with-arrow
    - \baca-text-spanner-left-text "strett."
    - \tweak staff-padding 6
    \startTextSpan
    - \tweak stencil ##f
    ~

    % [RH_Music_Voice measure 255 / measure 7]
    d''2
    :32
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    \mp
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    \>
    \repeatTie
    \stopTextSpan
    - \abjad-dashed-line-with-arrow
    - \baca-text-spanner-left-text "larg."
    - \tweak staff-padding 6
    \startTextSpan
    - \tweak stencil ##f
    ~

    % [RH_Music_Voice measure 256 / measure 8]
    d''2
    :32
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    \pp
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    \<
    \repeatTie
    \stopTextSpan
    - \abjad-dashed-line-with-arrow
    - \baca-text-spanner-left-text "strett."
    - \tweak staff-padding 6
    \startTextSpan
    - \tweak stencil ##f
    ~

    % [RH_Music_Voice measure 257 / measure 9]
    d''2
    :32
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    \mp
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    \>
    \repeatTie
    \stopTextSpan
    - \abjad-dashed-line-with-arrow
    - \baca-text-spanner-left-text "larg."
    - \baca-text-spanner-right-text "strett."
    - \tweak bound-details.right.padding 0.5
    - \tweak bound-details.right.stencil-align-dir-y #center
    - \tweak staff-padding 6
    \startTextSpan
    - \tweak stencil ##f
    ~

    % [RH_Music_Voice measure 258 / measure 10]
    d''1.
    :32
    - \tweak color #(x11-color 'blue)
    - \tweak to-barline ##t
    \pp
    \repeatTie
    \stopTextSpan
    \revert TextScript.parent-alignment-X
    \revert TextScript.self-alignment-X
    \revert TextScript.staff-padding
    <> \bacaStopTextSpanRhythmAnnotation

}


segment.10.RH.Music.Staff = {

    \context Voice = "RH_Music_Voice"
    { \segment.10.RH.Music.Voice }

}


segment.10.Cello.Music.Voice = {

    % [Cello_Music_Voice measure 249 / measure 1]
    \override MultiMeasureRest.transparent = ##t
    \override Score.BarLine.transparent = ##t
    \override Score.SpanBar.transparent = ##t
    \stopStaff
    \once \override Staff.StaffSymbol.line-positions = #'(4 -4)
    \startStaff
    \override Score.TimeSignature.stencil = ##f
    \clef "treble"
    \once \override Staff.Clef.color = #(x11-color 'green4)
    \set Staff.forceClef = ##t
    R1 * 1/2
    ^ \baca-reapplied-indicator-markup "(“Cello”)"
    \override Staff.Clef.color = #(x11-color 'OliveDrab)

    % [Cello_Music_Voice measure 250 / measure 2]
    R1 * 1/2

    % [Cello_Music_Voice measure 251 / measure 3]
    R1 * 1/2

    % [Cello_Music_Voice measure 252 / measure 4]
    R1 * 1/2

    % [Cello_Music_Voice measure 253 / measure 5]
    R1 * 1/2

    % [Cello_Music_Voice measure 254 / measure 6]
    R1 * 1/2

    % [Cello_Music_Voice measure 255 / measure 7]
    R1 * 1/2

    % [Cello_Music_Voice measure 256 / measure 8]
    R1 * 1/2

    % [Cello_Music_Voice measure 257 / measure 9]
    R1 * 1/2

    % [Cello_Music_Voice measure 258 / measure 10]
    \override Score.BarLine.X-extent = #'(0 . 8)
    \override Score.BarLine.extra-offset = #'(8 . 0)
    \override Score.RehearsalMark.extra-offset = #'(4 . 0)
    \override Score.SpanBar.extra-offset = #'(8 . 0)
    R1 * 3/2
    \revert MultiMeasureRest.transparent
    \revert Score.BarLine.transparent
    \revert Score.SpanBar.transparent
    \revert Score.TimeSignature.stencil
    \once \override Score.RehearsalMark.direction = #down
    \once \override Score.RehearsalMark.padding = 4
    \mark \huitzil-colophon-markup

}


segment.10.Cello.Music.Staff = {

    \context Voice = "Cello_Music_Voice"
    { \segment.10.Cello.Music.Voice }

}
