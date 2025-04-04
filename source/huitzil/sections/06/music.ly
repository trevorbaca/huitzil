\version "2.25.25"
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
                    \number.6.Rests
                }

                \context GlobalSkips = "Skips"
                {
                    \number.6.Skips
                }

                \context GlobalSkips = "TimeSignatures"
                {
                    \number.6.TimeSignatures
                }

            >>

            \context MusicContext = "MusicContext"
            {

                \context PianoStaff = "PianoStaff"
                <<

                    \context RHStaff = "RH.Staff"
                    {
                        \number.6.RH.Staff
                    }

                    \context Staff = "Cello.Staff"
                    {
                        \number.6.Cello.Staff
                    }

                >>

            }

        >>

    >>

}
