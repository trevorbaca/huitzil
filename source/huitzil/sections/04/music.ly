\version "2.25.24"
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
                    \number.4.Rests
                }

                \context GlobalSkips = "Skips"
                {
                    \number.4.Skips
                }

                \context GlobalSkips = "TimeSignatures"
                {
                    \number.4.TimeSignatures
                }

            >>

            \context MusicContext = "MusicContext"
            {

                \context PianoStaff = "PianoStaff"
                <<

                    \context RHStaff = "RH.Staff"
                    {
                        \number.4.RH.Staff
                    }

                    \context Staff = "Cello.Staff"
                    {
                        \number.4.Cello.Staff
                    }

                >>

            }

        >>

    >>

}
