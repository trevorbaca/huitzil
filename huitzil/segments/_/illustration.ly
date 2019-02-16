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
        \context Staff = "Staff"                                               %! ScoreTemplate
        \Staff                                                                 %! extern
    >>                                                                         %! ScoreTemplate
}                                                                              %! LilyPondFile
