\version "2.19.82"                                                             %! LilyPondFile
\language "english"                                                            %! LilyPondFile

#(ly:set-option 'relative-includes #t)

\include "../../stylesheets/flight-stylesheet.ily"                             %! LilyPondFile
\include "illustration.ily"                                                    %! extern


\score {                                                                       %! LilyPondFile
    \context Score = "Score"                                                   %! ScoreTemplate
    <<                                                                         %! ScoreTemplate
        \context GlobalContext = "Global_Context"                              %! abjad.ScoreTemplate._make_global_context
        <<                                                                     %! abjad.ScoreTemplate._make_global_context
            \context GlobalRests = "Global_Rests"                              %! abjad.ScoreTemplate._make_global_context
            \F_Global_Rests                                                    %! extern
            \context GlobalSkips = "Global_Skips"                              %! abjad.ScoreTemplate._make_global_context
            \F_Global_Skips                                                    %! extern
        >>                                                                     %! abjad.ScoreTemplate._make_global_context
        \context PianoStaff = "Piano_Staff"                                    %! ScoreTemplate
        <<                                                                     %! ScoreTemplate
            \context BowStaff = "Bow_Staff"                                    %! ScoreTemplate
            \with                                                              %! ScoreTemplate
            {                                                                  %! ScoreTemplate
                \override StaffSymbol.line-count = #11                         %! ScoreTemplate
            }                                                                  %! ScoreTemplate
            \F_Bow_Staff                                                       %! extern
            \context PitchStaff = "Pitch_Staff"                                %! ScoreTemplate
            \F_Pitch_Staff                                                     %! extern
        >>                                                                     %! ScoreTemplate
    >>                                                                         %! ScoreTemplate
}                                                                              %! LilyPondFile