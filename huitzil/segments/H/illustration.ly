\version "2.19.83"                                                             %! baca.SegmentMaker._make_lilypond_file:abjad.LilyPondFile
\language "english"                                                            %! baca.SegmentMaker._make_lilypond_file:abjad.LilyPondFile

\include "../../stylesheets/stylesheet.ily"                                    %! baca.SegmentMaker._make_lilypond_file:abjad.LilyPondFile
clock-time-extra-offset = #'(0 . 13)                                           %! baca.SegmentMaker._make_lilypond_file:abjad.LilyPondFile
\include "../../stylesheets/nonfirst-segment.ily"                              %! baca.SegmentMaker._make_lilypond_file:abjad.LilyPondFile
\include "illustration.ily"                                                    %! abjad.Path.extern
\paper { first-page-number = #8 }                                              %! __make_segment_pdf__


\score {                                                                       %! baca.SegmentMaker._make_lilypond_file:abjad.LilyPondFile
    
    <<                                                                         %! baca.SegmentMaker._make_lilypond_file

        {                                                                      %! baca.SegmentMaker._make_lilypond_file
            \include "layout.ly"                                               %! baca.SegmentMaker._make_lilypond_file
        }                                                                      %! baca.SegmentMaker._make_lilypond_file

        \context Score = "Score"                                               %! huitzil.ScoreTemplate.__call__
        <<                                                                     %! huitzil.ScoreTemplate.__call__

            \context GlobalContext = "Global_Context"                          %! abjad.ScoreTemplate._make_global_context
            <<                                                                 %! abjad.ScoreTemplate._make_global_context

                \context GlobalRests = "Global_Rests"                          %! abjad.ScoreTemplate._make_global_context
                \H_Global_Rests                                                %! abjad.Path.extern

                \context GlobalSkips = "Global_Skips"                          %! abjad.ScoreTemplate._make_global_context
                \H_Global_Skips                                                %! abjad.Path.extern

            >>                                                                 %! abjad.ScoreTemplate._make_global_context

            \context MusicContext = "Music_Context"                            %! huitzil.ScoreTemplate.__call__
            {                                                                  %! huitzil.ScoreTemplate.__call__

                \context PianoStaff = "Cello_Staff_Group"                      %! huitzil.ScoreTemplate.__call__
                <<                                                             %! huitzil.ScoreTemplate.__call__

                    \context RHStaff = "RH_Music_Staff"                        %! huitzil.ScoreTemplate.__call__
                    \H_RH_Music_Staff                                          %! abjad.Path.extern

                    \context Staff = "Cello_Music_Staff"                       %! huitzil.ScoreTemplate.__call__
                    \H_Cello_Music_Staff                                       %! abjad.Path.extern

                >>                                                             %! huitzil.ScoreTemplate.__call__

            }                                                                  %! huitzil.ScoreTemplate.__call__

        >>                                                                     %! huitzil.ScoreTemplate.__call__

    >>                                                                         %! baca.SegmentMaker._make_lilypond_file
    
}                                                                              %! baca.SegmentMaker._make_lilypond_file:abjad.LilyPondFile