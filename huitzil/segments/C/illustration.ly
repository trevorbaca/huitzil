\version "2.19.82"
\language "english"

#(ly:set-option 'relative-includes #t)

\include "../../stylesheets/flight-stylesheet.ily"
\include "illustration.ily"


\score {
    \context Score = "Score"
    <<
        \context GlobalContext = "GlobalContext"                                                   %! _make_global_context
        <<                                                                                         %! _make_global_context
            \context GlobalRests = "GlobalRests"                                                   %! _make_global_context
            \C_GlobalRests                                                                         %! extern
            \context GlobalSkips = "GlobalSkips"                                                   %! _make_global_context
            \C_GlobalSkips                                                                         %! extern
        >>                                                                                         %! _make_global_context
        \context PianoStaff = "PianoStaff"
        <<
            \context BowStaff = "BowStaff"
            \with
            {
                \override StaffSymbol.line-count = #7
            }
            \C_BowStaff                                                                            %! extern
            \context PitchStaff = "PitchStaff"
            \C_PitchStaff                                                                          %! extern
        >>
    >>
}