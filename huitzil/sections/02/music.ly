\version "2.25.2"
\include "../stylesheet.ily"
\include "music.ily"

spacing-extra-offset = #'(0 . 16)
\score
{

    <<

        {
            \include "layout.ly"
        }

        \context Score = "Score"
        <<

            \context GlobalContext = "GlobalContext"
            <<

                \context GlobalRests = "Rests"
                { \number.2.Rests }

                \context GlobalSkips = "Skips"
                { \number.2.Skips }

            >>

            \context MusicContext = "MusicContext"
            {

                \context PianoStaff = "PianoStaff"
                <<

                    \context RHStaff = "RH.Staff"
                    { \number.2.RH.Staff }

                    \context Staff = "Cello.Staff"
                    { \number.2.Cello.Staff }

                >>

            }

        >>

    >>

}
