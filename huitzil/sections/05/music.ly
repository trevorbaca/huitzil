\version "2.25.2"
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
                { \number.5.Rests }

                \context GlobalSkips = "Skips"
                { \number.5.Skips }

            >>

            \context MusicContext = "MusicContext"
            {

                \context PianoStaff = "PianoStaff"
                <<

                    \context RHStaff = "RH.Staff"
                    { \number.5.RH.Staff }

                    \context Staff = "Cello.Staff"
                    { \number.5.Cello.Staff }

                >>

            }

        >>

    >>

}
