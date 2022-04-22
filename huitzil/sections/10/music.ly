%! abjad.LilyPondFile._get_format_pieces()
%! baca._make_lilypond_file()
\version "2.23.6"
\include "../stylesheet.ily"
%! baca.path.extern()
\include "music.ily"

%! abjad.LilyPondFile._get_format_pieces()
%! baca._make_lilypond_file()
\score
%! abjad.LilyPondFile._get_format_pieces()
%! baca._make_lilypond_file()
{
    % ABSOLUTE_BEFORE:
    % COMMANDS:

    % OPEN_BRACKETS:
    %! baca._make_lilypond_file()
    <<
        % ABSOLUTE_BEFORE:
        % COMMANDS:

        % OPEN_BRACKETS:
        %! baca._make_lilypond_file()
        {
        % OPENING:
            % COMMANDS:
            %! baca._make_lilypond_file()
            \include "layout.ly"
        % CLOSE_BRACKETS:
        %! baca._make_lilypond_file()
        }
        % ABSOLUTE_BEFORE:
        % COMMANDS:

        % OPEN_BRACKETS:
        %! huitzil.make_empty_score()
        \context Score = "Score"
        %! huitzil.make_empty_score()
        <<
            % ABSOLUTE_BEFORE:
            % COMMANDS:

            % OPEN_BRACKETS:
            %! baca.make_global_context()
            \context GlobalContext = "Global_Context"
            %! baca.make_global_context()
            <<
                % ABSOLUTE_BEFORE:
                % COMMANDS:

                % OPEN_BRACKETS:
                %! baca.make_global_context()
                \context GlobalRests = "Global_Rests"
                %! baca.make_global_context()
                %! baca.path.extern()
                { \segment.10.Global.Rests }
                % ABSOLUTE_BEFORE:
                % COMMANDS:

                % OPEN_BRACKETS:
                %! baca.make_global_context()
                \context GlobalSkips = "Global_Skips"
                %! baca.make_global_context()
                %! baca.path.extern()
                { \segment.10.Global.Skips }
                % CLOSING:
                % COMMANDS:

            % CLOSE_BRACKETS:
            %! baca.make_global_context()
            >>
            % ABSOLUTE_BEFORE:
            % COMMANDS:

            % OPEN_BRACKETS:
            %! huitzil.make_empty_score()
            \context MusicContext = "Music_Context"
            %! huitzil.make_empty_score()
            {
                % ABSOLUTE_BEFORE:
                % COMMANDS:

                % OPEN_BRACKETS:
                %! huitzil.make_empty_score()
                \context PianoStaff = "Cello_Staff_Group"
                %! huitzil.make_empty_score()
                <<
                    % ABSOLUTE_BEFORE:
                    % COMMANDS:

                    % OPEN_BRACKETS:
                    %! huitzil.make_empty_score()
                    \context RHStaff = "RH_Music_Staff"
                    %! huitzil.make_empty_score()
                    %! baca.path.extern()
                    { \segment.10.RH.Music.Staff }
                    % ABSOLUTE_BEFORE:
                    % COMMANDS:

                    % OPEN_BRACKETS:
                    %! huitzil.make_empty_score()
                    \context Staff = "Cello_Music_Staff"
                    %! huitzil.make_empty_score()
                    %! baca.path.extern()
                    { \segment.10.Cello.Music.Staff }
                    % CLOSING:
                    % COMMANDS:

                % CLOSE_BRACKETS:
                %! huitzil.make_empty_score()
                >>
                % CLOSING:
                % COMMANDS:

            % CLOSE_BRACKETS:
            %! huitzil.make_empty_score()
            }
            % CLOSING:
            % COMMANDS:

        % CLOSE_BRACKETS:
        %! huitzil.make_empty_score()
        >>
        % CLOSING:
        % COMMANDS:

    % CLOSE_BRACKETS:
    %! baca._make_lilypond_file()
    >>

%! abjad.LilyPondFile._get_format_pieces()
%! baca._make_lilypond_file()
}
