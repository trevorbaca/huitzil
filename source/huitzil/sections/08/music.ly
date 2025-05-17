\version "2.25.26"
\include "../stylesheet.ily"
\include "music.ily"

\score
{

    <<

        {
            \include "layout.ily"
        }

        \context Score = "Score"
        <<

            \context GlobalContext = "GlobalContext"
            <<

                \context GlobalRests = "Rests"
                {
                    \number.8.Rests
                }

                \context GlobalSkips = "Skips"
                {
                    \number.8.Skips
                }

                \context GlobalSkips = "TimeSignatures"
                {
                    \number.8.TimeSignatures
                }

            >>

            \context MusicContext = "MusicContext"
            {

                \context PianoStaff = "PianoStaff"
                <<

                    \context RHStaff = "RH.Staff"
                    {
                        \number.8.RH.Staff
                    }

                    \context Staff = "Cello.Staff"
                    {
                        \number.8.Cello.Staff
                    }

                >>

            }

        >>

    >>

}
