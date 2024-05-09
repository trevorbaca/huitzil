\version "2.25.15"
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
                { \number.8.Rests }

                \context GlobalSkips = "Skips"
                { \number.8.Skips }

            >>

            \context MusicContext = "MusicContext"
            {

                \context PianoStaff = "PianoStaff"
                <<

                    \context RHStaff = "RH.Staff"
                    { \number.8.RH.Staff }

                    \context Staff = "Cello.Staff"
                    { \number.8.Cello.Staff }

                >>

            }

        >>

    >>

}
