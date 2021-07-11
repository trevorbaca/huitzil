%! baca.SegmentMaker._make_lilypond_file()
%! abjad.LilyPondFile._get_format_pieces()
\version "2.23.1"
%! baca.SegmentMaker._make_lilypond_file()
%! abjad.LilyPondFile._get_format_pieces()
\language "english"
%! baca.SegmentMaker._make_lilypond_file()
%! abjad.LilyPondFile._get_formatted_includes()
\include "../../stylesheet.ily"
%! baca.Path.extern()
\include "illustration.ily"
%! baca.SegmentMaker._make_lilypond_file()
%! abjad.LilyPondFile._get_formatted_includes()
clock-time-extra-offset = #'(0 . 13)

%! baca.SegmentMaker._make_lilypond_file()
\header { composer = ##f poet = ##f title = ##f }
%! baca.SegmentMaker._make_lilypond_file()
\layout { indent = 0 }
%! baca.SegmentMaker._make_lilypond_file()
\paper { print-first-page-number = ##t }
%! __make_segment_pdf__
\paper { first-page-number = #8 }

%! baca.SegmentMaker._make_lilypond_file()
%! abjad.LilyPondFile._get_formatted_blocks()
\score
%! baca.SegmentMaker._make_lilypond_file()
%! abjad.LilyPondFile._get_formatted_blocks()
{

    %! baca.SegmentMaker._make_lilypond_file()
    <<

        %! baca.SegmentMaker._make_lilypond_file()
        {
            %! baca.SegmentMaker._make_lilypond_file()
            \include "layout.ly"
        %! baca.SegmentMaker._make_lilypond_file()
        }

        %! huitzil.ScoreTemplate.__call__()
        \context Score = "Score"
        %! huitzil.ScoreTemplate.__call__()
        <<

            %! abjad.ScoreTemplate._make_global_context()
            \context GlobalContext = "Global_Context"
            %! abjad.ScoreTemplate._make_global_context()
            <<

                %! abjad.ScoreTemplate._make_global_context()
                \context GlobalRests = "Global_Rests"
                %! abjad.ScoreTemplate._make_global_context()
                %! baca.Path.extern()
                \h_Global_Rests

                %! abjad.ScoreTemplate._make_global_context()
                \context GlobalSkips = "Global_Skips"
                %! abjad.ScoreTemplate._make_global_context()
                %! baca.Path.extern()
                \h_Global_Skips

            %! abjad.ScoreTemplate._make_global_context()
            >>

            %! huitzil.ScoreTemplate.__call__()
            \context MusicContext = "Music_Context"
            %! huitzil.ScoreTemplate.__call__()
            {

                %! huitzil.ScoreTemplate.__call__()
                \context PianoStaff = "Cello_Staff_Group"
                %! huitzil.ScoreTemplate.__call__()
                <<

                    %! huitzil.ScoreTemplate.__call__()
                    \context RHStaff = "RH_Music_Staff"
                    %! huitzil.ScoreTemplate.__call__()
                    %! baca.Path.extern()
                    \h_RH_Music_Staff

                    %! huitzil.ScoreTemplate.__call__()
                    \context Staff = "Cello_Music_Staff"
                    %! huitzil.ScoreTemplate.__call__()
                    %! baca.Path.extern()
                    \h_Cello_Music_Staff

                %! huitzil.ScoreTemplate.__call__()
                >>

            %! huitzil.ScoreTemplate.__call__()
            }

        %! huitzil.ScoreTemplate.__call__()
        >>

    %! baca.SegmentMaker._make_lilypond_file()
    >>

%! baca.SegmentMaker._make_lilypond_file()
%! abjad.LilyPondFile._get_formatted_blocks()
}
