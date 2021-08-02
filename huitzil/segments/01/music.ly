\version "2.23.1"
\language "english"
\include "../../stylesheet.ily"
\include "music.ily.tagged"
clock-time-extra-offset = #'(0 . -2)
local-measure-number-extra-offset = #'(0 . -5)
spacing-extra-offset = #'(0 . 1)

\score
{

    <<

        {
            \include "layout.ly.tagged"
        }

        \context Score = "Score"
        <<

            \context GlobalContext = "Global_Context"
            <<

                \context GlobalRests = "Global_Rests"
                { \segment.01.Global.Rests }

                \context GlobalSkips = "Global_Skips"
                { \segment.01.Global.Skips }

            >>

            \context MusicContext = "Music_Context"
            {

                \context PianoStaff = "Cello_Staff_Group"
                <<

                    \context RHStaff = "RH_Music_Staff"
                    { \segment.01.RH.Music.Staff }

                    \context Staff = "Cello_Music_Staff"
                    { \segment.01.Cello.Music.Staff }

                >>

            }

        >>

    >>

}
