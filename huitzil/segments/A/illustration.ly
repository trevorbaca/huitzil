\version "2.19.82"                                                             %! LilyPondFile
\language "english"                                                            %! LilyPondFile

#(ly:set-option 'relative-includes #t)

\include "../../stylesheets/flight-stylesheet.ily"                             %! LilyPondFile
\include "illustration.ily"                                                    %! extern


\score {                                                                       %! LilyPondFile
    \context Score = "Score"                                                   %! ScoreTemplate
    <<                                                                         %! ScoreTemplate
        \context GlobalContext = "GlobalContext"                               %! _make_global_context
        <<                                                                     %! _make_global_context
            \context GlobalRests = "GlobalRests"                               %! _make_global_context
            \A_GlobalRests                                                     %! extern
            \context GlobalSkips = "GlobalSkips"                               %! _make_global_context
            \A_GlobalSkips                                                     %! extern
        >>                                                                     %! _make_global_context
        \context PianoStaff = "PianoStaff"                                     %! ScoreTemplate
        <<                                                                     %! ScoreTemplate
            \context BowStaff = "BowStaff"                                     %! ScoreTemplate
            \with                                                              %! ScoreTemplate
            {                                                                  %! ScoreTemplate
                \override StaffSymbol.line-count = #7                          %! ScoreTemplate
            }                                                                  %! ScoreTemplate
            \A_BowStaff                                                        %! extern
            \context PitchStaff = "PitchStaff"                                 %! ScoreTemplate
            \A_PitchStaff                                                      %! extern
        >>                                                                     %! ScoreTemplate
    >>                                                                         %! ScoreTemplate
}                                                                              %! LilyPondFile