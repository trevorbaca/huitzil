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
                { \number.4.Rests }

                \context GlobalSkips = "Skips"
                { \number.4.Skips }

            >>

            \context MusicContext = "MusicContext"
            {

                \context PianoStaff = "PianoStaff"
                <<

                    \context RHStaff = "RH.Staff"
                    { \number.4.RH.Staff }

                    \context Staff = "Cello.Staff"
                    { \number.4.Cello.Staff }

                >>

            }

        >>

    >>

}
