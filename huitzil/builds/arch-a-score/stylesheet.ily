#(ly:set-option 'relative-includes #t)
\include "../../stylesheets/stylesheet.ily"

#(set-default-paper-size "arch a")
#(set-global-staff-size 12)

\layout
{
    ragged-right = ##f
    %ragged-right = ##t
}

clock-time-extra-offset = #'(0 . 4)
measure-number-extra-offset = #'(0 . 1)
