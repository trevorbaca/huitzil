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
                    \number.10.Rests
                }

                \context GlobalSkips = "Skips"
                {
                    \number.10.Skips
                }

                \context GlobalSkips = "TimeSignatures"
                {
                    \number.10.TimeSignatures
                }

            >>

            \context MusicContext = "MusicContext"
            {

                \context PianoStaff = "PianoStaff"
                <<

                    \context RHStaff = "RH.Staff"
                    {
                        \number.10.RH.Staff
                    }

                    \context Staff = "Cello.Staff"
                    {
                        \number.10.Cello.Staff
                    }

                >>

            }

        >>

    >>

}
