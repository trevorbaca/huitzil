\version "2.19.82"                                                             %! _make_lilypond_file:LilyPondFile
\language "english"                                                            %! _make_lilypond_file:LilyPondFile

\include "../../stylesheets/stylesheet.ily"                                    %! _make_lilypond_file:LilyPondFile
\include "illustration.ily"                                                    %! extern
\paper { first-page-number = #1 }                                              %! __make_segment_pdf__


\score {                                                                       %! _make_lilypond_file:LilyPondFile
    
    <<                                                                         %! _make_lilypond_file

        {                                                                      %! _make_lilypond_file
            \include "layout.ly"                                               %! _make_lilypond_file
        }                                                                      %! _make_lilypond_file

        \context Score = "Score"                                               %! huitzil.ScoreTemplate
        <<                                                                     %! huitzil.ScoreTemplate

            \context GlobalContext = "Global_Context"                          %! abjad.ScoreTemplate._make_global_context
            <<                                                                 %! abjad.ScoreTemplate._make_global_context

                \context GlobalRests = "Global_Rests"                          %! abjad.ScoreTemplate._make_global_context
                \J_Global_Rests                                                %! extern

                \context GlobalSkips = "Global_Skips"                          %! abjad.ScoreTemplate._make_global_context
                \J_Global_Skips                                                %! extern

            >>                                                                 %! abjad.ScoreTemplate._make_global_context

            \context MusicContext = "Music_Context"                            %! huitzil.ScoreTemplate
            {                                                                  %! huitzil.ScoreTemplate

                \context PianoStaff = "Cello_Staff_Group"                      %! huitzil.ScoreTemplate
                <<                                                             %! huitzil.ScoreTemplate

                    \context Staff = "RH_Music_Staff"                          %! huitzil.ScoreTemplate
                    \J_RH_Music_Staff                                          %! extern

                    \context Staff = "Cello_Music_Staff"                       %! huitzil.ScoreTemplate
                    \J_Cello_Music_Staff                                       %! extern

                >>                                                             %! huitzil.ScoreTemplate

            }                                                                  %! huitzil.ScoreTemplate

        >>                                                                     %! huitzil.ScoreTemplate

    >>                                                                         %! _make_lilypond_file
    
}                                                                              %! _make_lilypond_file:LilyPondFile