\version "2.23.0"                                                              %! baca.SegmentMaker._make_lilypond_file():abjad.LilyPondFile._get_format_pieces()
\language "english"                                                            %! baca.SegmentMaker._make_lilypond_file():abjad.LilyPondFile._get_format_pieces()
\include "../../stylesheet.ily"                                                %! baca.SegmentMaker._make_lilypond_file():abjad.LilyPondFile._get_formatted_includes()
\include "illustration.ily"                                                    %! ide.Path.extern()
clock-time-extra-offset = #'(0 . 13)                                           %! baca.SegmentMaker._make_lilypond_file():abjad.LilyPondFile._get_formatted_includes()
spacing-extra-offset = #'(0 . 16)                                              %! baca.SegmentMaker._make_lilypond_file():abjad.LilyPondFile._get_formatted_includes()

\header { composer = ##f poet = ##f title = ##f }                              %! baca.SegmentMaker._make_lilypond_file()
\layout { indent = 0 }                                                         %! baca.SegmentMaker._make_lilypond_file()
\paper { print-first-page-number = ##t }                                       %! baca.SegmentMaker._make_lilypond_file()
\paper { first-page-number = #2 }                                              %! __make_segment_pdf__

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
                \b_Global_Rests                                                %! ide.Path.extern()

                \context GlobalSkips = "Global_Skips"                          %! abjad.ScoreTemplate._make_global_context()
                \b_Global_Skips                                                %! ide.Path.extern()

            >>                                                                 %! abjad.ScoreTemplate._make_global_context()

            \context MusicContext = "Music_Context"                            %! huitzil.ScoreTemplate.__call__()
            {                                                                  %! huitzil.ScoreTemplate.__call__()

                \context PianoStaff = "Cello_Staff_Group"                      %! huitzil.ScoreTemplate.__call__()
                <<                                                             %! huitzil.ScoreTemplate.__call__()

                    \context RHStaff = "RH_Music_Staff"                        %! huitzil.ScoreTemplate.__call__()
                    \b_RH_Music_Staff                                          %! ide.Path.extern()

                    \context Staff = "Cello_Music_Staff"                       %! huitzil.ScoreTemplate.__call__()
                    \b_Cello_Music_Staff                                       %! ide.Path.extern()

                >>                                                             %! huitzil.ScoreTemplate.__call__()

            }                                                                  %! huitzil.ScoreTemplate.__call__()

        >>                                                                     %! huitzil.ScoreTemplate.__call__()

    >>                                                                         %! baca.SegmentMaker._make_lilypond_file()

}                                                                              %! baca.SegmentMaker._make_lilypond_file():abjad.LilyPondFile._get_formatted_blocks()