\version "2.19.81"
\language "english"

#(ly:set-option 'relative-includes #t)

\include "../../stylesheets/flight-stylesheet.ily"
\include "illustration.ily"


\score {
    \context Score = "Score"
    <<
        \context GlobalContext = "GlobalContext"
        <<
            \context GlobalRests = "GlobalRests"
            \E_GlobalRests
            \context GlobalSkips = "GlobalSkips"
            \E_GlobalSkips
        >>
        \context PianoStaff = "PianoStaff"
        <<
            \context BowStaff = "BowStaff"
            \with
            {
                \override StaffSymbol.line-count = #11
            }
            \E_BowStaff
            \context PitchStaff = "PitchStaff"
            \E_PitchStaff
        >>
    >>
}