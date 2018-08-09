\version "2.19.82"
\language "english"

#(ly:set-option 'relative-includes #t)

\include "../../stylesheets/flight-stylesheet.ily"
\include "illustration.ily"                                                    %! extern


\score {
    \context Score = "Score"                                                   %! ScoreTemplate
    <<                                                                         %! ScoreTemplate
        \context GlobalContext = "GlobalContext"                               %! _make_global_context
        <<                                                                     %! _make_global_context
            \context GlobalRests = "GlobalRests"                               %! _make_global_context
            \C_GlobalRests                                                     %! extern
            \context GlobalSkips = "GlobalSkips"                               %! _make_global_context
            \C_GlobalSkips                                                     %! extern
        >>                                                                     %! _make_global_context
        \context PianoStaff = "PianoStaff"                                     %! ScoreTemplate
        <<                                                                     %! ScoreTemplate
            \context BowStaff = "BowStaff"                                     %! ScoreTemplate
            \with                                                              %! ScoreTemplate
            {                                                                  %! ScoreTemplate
                \override StaffSymbol.line-count = #7                          %! ScoreTemplate
            }                                                                  %! ScoreTemplate
            \C_BowStaff                                                        %! extern
            \context PitchStaff = "PitchStaff"                                 %! ScoreTemplate
            \C_PitchStaff                                                      %! extern
        >>                                                                     %! ScoreTemplate
    >>                                                                         %! ScoreTemplate
}