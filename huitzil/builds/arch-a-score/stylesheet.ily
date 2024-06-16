\version "2.25.16"
\include "../../stylesheet.ily"

#(set-default-paper-size "arch a")
#(set-global-staff-size 12)

\layout
{
    \context
    {
        \Staff
        instrumentName = \markup \hcenter-in #12 \smallCaps Cello
    }

    ragged-right = ##f
    %ragged-right = ##t
}

clock-time-extra-offset = #'(0 . 4)
measure-number-extra-offset = #'(0 . 1)
