%! baca._make_lilypond_file()
%! abjad.LilyPondFile._get_format_pieces()
\version "2.22.1"
\include "../../stylesheet.ily"
%! baca.path.extern()
\include "music.ily"

\header { composer = ##f poet = ##f title = ##f }
\layout { indent = 0 }
\paper { print-first-page-number = ##t }
%! baca._add_nonfirst_segment_preamble()
\paper { first-page-number = #6 }

%! baca._make_lilypond_file()
%! abjad.LilyPondFile._get_format_pieces()
\score
%! baca._make_lilypond_file()
%! abjad.LilyPondFile._get_format_pieces()
{

    %! baca._make_lilypond_file()
    <<

        %! baca._make_lilypond_file()
        {
            %! baca._make_lilypond_file()
            \include "layout.ly"
        %! baca._make_lilypond_file()
        }

        %! huitzil.make_empty_score()
        \context Score = "Score"
        %! huitzil.make_empty_score()
        <<

            %! baca.make_global_context()
            \context GlobalContext = "Global_Context"
            %! baca.make_global_context()
            <<

                %! baca.make_global_context()
                \context GlobalRests = "Global_Rests"
                %! baca.make_global_context()
                %! baca.path.extern()
                { \segment.06.Global.Rests }

                %! baca.make_global_context()
                \context GlobalSkips = "Global_Skips"
                %! baca.make_global_context()
                %! baca.path.extern()
                { \segment.06.Global.Skips }

            %! baca.make_global_context()
            >>

            %! huitzil.make_empty_score()
            \context MusicContext = "Music_Context"
            %! huitzil.make_empty_score()
            {

                %! huitzil.make_empty_score()
                \context PianoStaff = "Cello_Staff_Group"
                %! huitzil.make_empty_score()
                <<

                    %! huitzil.make_empty_score()
                    \context RHStaff = "RH_Music_Staff"
                    %! huitzil.make_empty_score()
                    %! baca.path.extern()
                    { \segment.06.RH.Music.Staff }

                    %! huitzil.make_empty_score()
                    \context Staff = "Cello_Music_Staff"
                    %! huitzil.make_empty_score()
                    %! baca.path.extern()
                    { \segment.06.Cello.Music.Staff }

                %! huitzil.make_empty_score()
                >>

            %! huitzil.make_empty_score()
            }

        %! huitzil.make_empty_score()
        >>

    %! baca._make_lilypond_file()
    >>

%! baca._make_lilypond_file()
%! abjad.LilyPondFile._get_format_pieces()
}
