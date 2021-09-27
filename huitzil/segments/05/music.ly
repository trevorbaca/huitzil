%! baca._make_lilypond_file()
%! abjad.LilyPondFile._get_format_pieces()
\version "2.23.1"
%! baca._make_lilypond_file()
%! abjad.LilyPondFile._get_format_pieces()
\language "english"
%! baca._make_lilypond_file()
%! abjad.LilyPondFile._get_formatted_includes()
\include "../../stylesheet.ily"
%! baca.path.extern()
\include "music.ily"

\header { composer = ##f poet = ##f title = ##f }
\layout { indent = 0 }
\paper { print-first-page-number = ##t }
clock-time-extra-offset = #'(0 . 13)
%! __make_segment_pdf__
\paper { first-page-number = #5 }

%! baca._make_lilypond_file()
%! abjad.LilyPondFile._get_formatted_blocks()
\score
%! baca._make_lilypond_file()
%! abjad.LilyPondFile._get_formatted_blocks()
{

    %! baca._make_lilypond_file()
    <<

        %! baca._make_lilypond_file()
        {
            %! baca._make_lilypond_file()
            \include "layout.ly"
        %! baca._make_lilypond_file()
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
                %! baca.path.extern()
                { \segment.05.Global.Rests }

                %! abjad.ScoreTemplate._make_global_context()
                \context GlobalSkips = "Global_Skips"
                %! abjad.ScoreTemplate._make_global_context()
                %! baca.path.extern()
                { \segment.05.Global.Skips }

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
                    %! baca.path.extern()
                    { \segment.05.RH.Music.Staff }

                    %! huitzil.ScoreTemplate.__call__()
                    \context Staff = "Cello_Music_Staff"
                    %! huitzil.ScoreTemplate.__call__()
                    %! baca.path.extern()
                    { \segment.05.Cello.Music.Staff }

                %! huitzil.ScoreTemplate.__call__()
                >>

            %! huitzil.ScoreTemplate.__call__()
            }

        %! huitzil.ScoreTemplate.__call__()
        >>

    %! baca._make_lilypond_file()
    >>

%! baca._make_lilypond_file()
%! abjad.LilyPondFile._get_formatted_blocks()
}
