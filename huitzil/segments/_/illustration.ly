\version "2.19.82"                                                             %! LilyPondFile
\language "english"                                                            %! LilyPondFile

#(ly:set-option 'relative-includes #t)

\include "../../stylesheets/stylesheet.ily"                                    %! LilyPondFile

\header {}
\include "illustration.ily"                                                    %! extern


\score {                                                                       %! LilyPondFile
    \context Score = "Score"                                                   %! ScoreTemplate
    <<                                                                         %! ScoreTemplate
        \context GlobalContext = "Global_Context"                              %! abjad.ScoreTemplate._make_global_context
        <<                                                                     %! abjad.ScoreTemplate._make_global_context
            \context GlobalRests = "Global_Rests"                              %! abjad.ScoreTemplate._make_global_context
            \Global_Rests                                                      %! extern
            \context GlobalSkips = "Global_Skips"                              %! abjad.ScoreTemplate._make_global_context
            \Global_Skips                                                      %! extern
        >>                                                                     %! abjad.ScoreTemplate._make_global_context
        \context Staff = "Staff"                                               %! ScoreTemplate
        \Staff                                                                 %! extern
    >>                                                                         %! ScoreTemplate
}                                                                              %! LilyPondFile