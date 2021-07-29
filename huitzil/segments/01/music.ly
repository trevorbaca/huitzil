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
                \a_Global_Rests

                \context GlobalSkips = "Global_Skips"
                \a_Global_Skips

            >>

            \context MusicContext = "Music_Context"
            {

                \context PianoStaff = "Cello_Staff_Group"
                <<

                    \context RHStaff = "RH_Music_Staff"
                    \a_RH_Music_Staff

                    \context Staff = "Cello_Music_Staff"
                    \a_Cello_Music_Staff

                >>

            }

        >>

    >>

}
