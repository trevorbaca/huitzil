% lilypond rh-tablature.ly; pdfcrop rh-tablature.pdf rh-tablature.pdf

\version "2.19.82"
\language "english"
\include "../../stylesheets/markups.ily"
\include "stylesheet.ily"

note-head-extra-offset = #'(-2.5 . 0)

#(define-markup-command
    (huitzil-ponticello-annotation layout props numerator)
    (string?)
    (interpret-markup layout props
    #{
    \markup
    \override #'(baseline-skip . 2.2)
    \column
    {
        \line
            {
            p \hspace #-0.4 o \hspace #-0.4 i \hspace #-0.4 n \hspace #-0.4 t
            \hspace #0.35
            #numerator \hspace #-0.2 / \hspace #-0.3 7
            }
        \line { of way from }
        \line
            {
            finger \hspace #-0.4 board
            }
        \line { to bridge. }
    }
    #}))

#(define-markup-command
    (huitzil-scp-circle layout props abbreviation)
    (string?)
    (interpret-markup layout props
    #{
    \markup
    \override #'(circle-padding . 0.6)
    \override #'(font-size . -5)
    \circle #abbreviation
    #}))

\new Staff
\with
{
    \override BarLine.transparent = ##t
    \override Clef.stencil = ##f
    \override NoteHead.extra-offset = #note-head-extra-offset
    \override TextScript.extra-offset = #note-head-extra-offset
    \override TextScript.font-size = -3
    \override TextScript.parent-alignment-X = 0
    \override TextScript.self-alignment-X = 0
    \override TimeSignature.stencil = ##f
}
{

    \override Score.SystemStartBar.stencil = ##f
    \set Score.proportionalNotationDuration = #(ly:make-moment 3 16)
    \override Staff.StaffSymbol.line-positions = #'(8.2 8 7.8 -5.8 -6 -6.2)
    c'''1
    _ \tweak staff-padding 4
    _ \markup \huitzil-scp-circle #"OB"
    _ \tweak staff-padding #8
    _
    \markup
    \override #'(baseline-skip . 2)
    \column
    {
        \line
            {
            d \hspace #-0.4
            i \hspace #-0.4
            r \hspace #-0.4
            e \hspace #-0.4
            c \hspace #-0.4
            t \hspace #-0.4
            l \hspace #-0.4
            y
            \hspace #0.5
            o \hspace #-0.4
            n
            }
        \line { bridge \hspace #0.4 where }
        \line { string crosses }
        \line { wood. }
    }

    \stopStaff
    \override Staff.StaffSymbol.line-positions = #'(
        8.2 8 7.8 6 4 2 0 -2 -4 -5.8 -6 -6.2
        )
    \startStaff
    a''1
    - \tweak staff-padding 4
    _ \markup \huitzil-scp-circle #"P6"
    - \tweak staff-padding 8
    _ \markup \huitzil-ponticello-annotation #"6"

    f''1
    - \tweak staff-padding 4
    _ \markup \huitzil-scp-circle #"P5"
    - \tweak staff-padding 8
    _ \markup \huitzil-ponticello-annotation #"5"

    d''1
    - \tweak staff-padding 4
    _ \markup \huitzil-scp-circle #"P4"
    - \tweak staff-padding 8
    _ \markup \huitzil-ponticello-annotation #"4"

    b'1
    - \tweak staff-padding 4
    _ \markup \huitzil-scp-circle #"P3"
    - \tweak staff-padding 8
    _ \markup \huitzil-ponticello-annotation #"3"

    g'1
    - \tweak staff-padding 4
    _ \markup \huitzil-scp-circle #"P2"
    - \tweak staff-padding 8
    _ \markup \huitzil-ponticello-annotation #"2"

    e'1
    - \tweak staff-padding 4
    _ \markup \huitzil-scp-circle #"P1"
    - \tweak staff-padding 8
    _ \markup \huitzil-ponticello-annotation #"1"
    
    \stopStaff
    \override Staff.StaffSymbol.line-positions = #'(
        8.2 8  7.8 -5.8 -6 -6.2 -8 -10 -12 -14 -16 -17.8 -18 -18.2
        )
    \morleyDashedStaffSymbolLines #'(
        #f  #f #f  #f   #f #f   #t #t  #t  #t  #t  #f    #f  #f
        )
    \startStaff
    \once \override Staff.BarLine.color = #red
    c'1

    a1

    f1

    d1

    b,1

    g,1

    e,1

}
