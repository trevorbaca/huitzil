\version "2.21.1"                                                              %! baca.SegmentMaker._make_lilypond_file():abjad.LilyPondFile._get_format_pieces()
\language "english"                                                            %! baca.SegmentMaker._make_lilypond_file():abjad.LilyPondFile._get_format_pieces()

\include "../../stylesheets/stylesheet.ily"                                    %! baca.SegmentMaker._make_lilypond_file():abjad.LilyPondFile._get_formatted_includes()
clock-time-extra-offset = #'(0 . -2)                                           %! baca.SegmentMaker._make_lilypond_file():abjad.LilyPondFile._get_formatted_includes()
local-measure-number-extra-offset = #'(0 . -5)                                 %! baca.SegmentMaker._make_lilypond_file():abjad.LilyPondFile._get_formatted_includes()
spacing-extra-offset = #'(0 . 1)                                               %! baca.SegmentMaker._make_lilypond_file():abjad.LilyPondFile._get_formatted_includes()
\include "illustration.ily"                                                    %! abjad.Path.extern()


\score {                                                                       %! baca.SegmentMaker._make_lilypond_file():abjad.LilyPondFile._get_formatted_blocks()
    
    <<                                                                         %! baca.SegmentMaker._make_lilypond_file()

        {                                                                      %! baca.SegmentMaker._make_lilypond_file()
            \include "layout.ly"                                               %! baca.SegmentMaker._make_lilypond_file()
        }                                                                      %! baca.SegmentMaker._make_lilypond_file()

        \context Score = "Score"                                               %! huitzil.ScoreTemplate.__call__()
        <<                                                                     %! huitzil.ScoreTemplate.__call__()

            \context GlobalContext = "Global_Context"                          %! abjad.ScoreTemplate._make_global_context()
            <<                                                                 %! abjad.ScoreTemplate._make_global_context()

                \context GlobalRests = "Global_Rests"                          %! abjad.ScoreTemplate._make_global_context()
                \A_Global_Rests                                                %! abjad.Path.extern()

                \context GlobalSkips = "Global_Skips"                          %! abjad.ScoreTemplate._make_global_context()
                \A_Global_Skips                                                %! abjad.Path.extern()

            >>                                                                 %! abjad.ScoreTemplate._make_global_context()

            \context MusicContext = "Music_Context"                            %! huitzil.ScoreTemplate.__call__()
            {                                                                  %! huitzil.ScoreTemplate.__call__()

                \context PianoStaff = "Cello_Staff_Group"                      %! huitzil.ScoreTemplate.__call__()
                <<                                                             %! huitzil.ScoreTemplate.__call__()

                    \context RHStaff = "RH_Music_Staff"                        %! huitzil.ScoreTemplate.__call__()
                    \A_RH_Music_Staff                                          %! abjad.Path.extern()

                    \context Staff = "Cello_Music_Staff"                       %! huitzil.ScoreTemplate.__call__()
                    \A_Cello_Music_Staff                                       %! abjad.Path.extern()

                >>                                                             %! huitzil.ScoreTemplate.__call__()

            }                                                                  %! huitzil.ScoreTemplate.__call__()

        >>                                                                     %! huitzil.ScoreTemplate.__call__()

    >>                                                                         %! baca.SegmentMaker._make_lilypond_file()
    
}                                                                              %! baca.SegmentMaker._make_lilypond_file():abjad.LilyPondFile._get_formatted_blocks()