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
            \E_GlobalRests                                                     %! extern
            \context GlobalSkips = "GlobalSkips"                               %! _make_global_context
            \E_GlobalSkips                                                     %! extern
        >>                                                                     %! _make_global_context
        \context PianoStaff = "Piano_Staff"                                    %! ScoreTemplate
        <<                                                                     %! ScoreTemplate
            \context BowStaff = "Bow_Staff"                                    %! ScoreTemplate
            \with                                                              %! ScoreTemplate
            {                                                                  %! ScoreTemplate
                \override StaffSymbol.line-count = #11                         %! ScoreTemplate
            }                                                                  %! ScoreTemplate
            \E_Bow_Staff                                                       %! extern
            \context PitchStaff = "Pitch_Staff"                                %! ScoreTemplate
            \E_Pitch_Staff                                                     %! extern
        >>                                                                     %! ScoreTemplate
    >>                                                                         %! ScoreTemplate
}                                                                              %! LilyPondFile