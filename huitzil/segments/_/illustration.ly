\version "2.19.82"                                                             %! LilyPondFile
\language "english"                                                            %! LilyPondFile

#(ly:set-option 'relative-includes #t)

\include "../../stylesheets/stylesheet.ily"                                    %! LilyPondFile

\header {                                                                      %! LilyPondFile
    title = ##f
    composer = ##f
}                                                                              %! LilyPondFile
\include "illustration.ily"                                                    %! extern


\score {                                                                       %! LilyPondFile
    \context Score = "Score"                                                   %! ScoreTemplate
    <<                                                                         %! ScoreTemplate
        \context GlobalContext = "Global_Context"                              %! _make_global_context
        <<                                                                     %! _make_global_context
            \context GlobalRests = "Global_Rests"                              %! _make_global_context
            \Global_Rests                                                      %! extern
            \context GlobalSkips = "Global_Skips"                              %! _make_global_context
            \Global_Skips                                                      %! extern
        >>                                                                     %! _make_global_context
        \context Staff = "Staff"                                               %! ScoreTemplate
        \Staff                                                                 %! extern
    >>                                                                         %! ScoreTemplate
}                                                                              %! LilyPondFile