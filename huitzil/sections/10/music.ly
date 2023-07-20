\version "2.25.6"
\include "../stylesheet.ily"
\include "music.ily"

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
                { \number.10.Rests }

                \context GlobalSkips = "Skips"
                { \number.10.Skips }

            >>

            \context MusicContext = "MusicContext"
            {

                \context PianoStaff = "PianoStaff"
                <<

                    \context RHStaff = "RH.Staff"
                    { \number.10.RH.Staff }

                    \context Staff = "Cello.Staff"
                    { \number.10.Cello.Staff }

                >>

            }

        >>

    >>

}
