\version "2.19.82"                                                             %! _make_lilypond_file:LilyPondFile
\language "english"                                                            %! _make_lilypond_file:LilyPondFile

\include "../../stylesheets/stylesheet.ily"                                    %! _make_lilypond_file:LilyPondFile
\include "../../stylesheets/nonfirst-segment.ily"                              %! _make_lilypond_file:LilyPondFile
\include "illustration.ily"                                                    %! extern
\paper { first-page-number = #3 }                                              %! __make_segment_pdf__


\score {                                                                       %! _make_lilypond_file:LilyPondFile
    
    <<                                                                         %! _make_lilypond_file

        {                                                                      %! _make_lilypond_file
            \include "layout.ly"                                               %! _make_lilypond_file
        }                                                                      %! _make_lilypond_file

        \context Score = "Score"                                               %! huitzil.ScoreTemplate.__call__
        <<                                                                     %! huitzil.ScoreTemplate.__call__

            \context GlobalContext = "Global_Context"                          %! abjad.ScoreTemplate._make_global_context
            <<                                                                 %! abjad.ScoreTemplate._make_global_context

                \context GlobalRests = "Global_Rests"                          %! abjad.ScoreTemplate._make_global_context
                \N_Global_Rests                                                %! extern

                \context GlobalSkips = "Global_Skips"                          %! abjad.ScoreTemplate._make_global_context
                \N_Global_Skips                                                %! extern

            >>                                                                 %! abjad.ScoreTemplate._make_global_context

            \context MusicContext = "Music_Context"                            %! huitzil.ScoreTemplate.__call__
            {                                                                  %! huitzil.ScoreTemplate.__call__

                \context PianoStaff = "Cello_Staff_Group"                      %! huitzil.ScoreTemplate.__call__
                <<                                                             %! huitzil.ScoreTemplate.__call__

                    \context RHStaff = "RH_Music_Staff"                        %! huitzil.ScoreTemplate.__call__
                    \N_RH_Music_Staff                                          %! extern

                    \context Staff = "Cello_Music_Staff"                       %! huitzil.ScoreTemplate.__call__
                    \N_Cello_Music_Staff                                       %! extern

                >>                                                             %! huitzil.ScoreTemplate.__call__

            }                                                                  %! huitzil.ScoreTemplate.__call__

        >>                                                                     %! huitzil.ScoreTemplate.__call__

    >>                                                                         %! _make_lilypond_file
    
}                                                                              %! _make_lilypond_file:LilyPondFile