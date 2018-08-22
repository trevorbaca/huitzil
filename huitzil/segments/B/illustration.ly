\version "2.19.82"                                                             %! LilyPondFile
\language "english"                                                            %! LilyPondFile

#(ly:set-option 'relative-includes #t)

\include "../../stylesheets/flight-stylesheet.ily"                             %! LilyPondFile
\include "illustration.ily"                                                    %! extern


\score {                                                                       %! LilyPondFile
    \context Score = "Score"                                                   %! ScoreTemplate
    <<                                                                         %! ScoreTemplate
        \context GlobalContext = "Global_Context"                              %! _make_global_context
        <<                                                                     %! _make_global_context
            \context GlobalRests = "Global_Rests"                              %! _make_global_context
            \B_Global_Rests                                                    %! extern
            \context GlobalSkips = "Global_Skips"                              %! _make_global_context
            \B_Global_Skips                                                    %! extern
        >>                                                                     %! _make_global_context
        \context PianoStaff = "Piano_Staff"                                    %! ScoreTemplate
        <<                                                                     %! ScoreTemplate
            \context BowStaff = "Bow_Staff"                                    %! ScoreTemplate
            \with                                                              %! ScoreTemplate
            {                                                                  %! ScoreTemplate
                \override StaffSymbol.line-count = #7                          %! ScoreTemplate
            }                                                                  %! ScoreTemplate
            \B_Bow_Staff                                                       %! extern
            \context PitchStaff = "Pitch_Staff"                                %! ScoreTemplate
            \B_Pitch_Staff                                                     %! extern
        >>                                                                     %! ScoreTemplate
    >>                                                                         %! ScoreTemplate
}                                                                              %! LilyPondFile