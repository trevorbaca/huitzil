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
        \context GlobalContext = "GlobalContext"                               %! _make_global_context
        <<                                                                     %! _make_global_context
            \context GlobalRests = "GlobalRests"                               %! _make_global_context
            \GlobalRests                                                       %! extern
            \context GlobalSkips = "GlobalSkips"                               %! _make_global_context
            \GlobalSkips                                                       %! extern
        >>                                                                     %! _make_global_context
        \context Staff = "Staff"                                               %! ScoreTemplate
        \Staff                                                                 %! extern
    >>                                                                         %! ScoreTemplate
}                                                                              %! LilyPondFile