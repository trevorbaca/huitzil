\version "2.25.22"
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
                { \number.9.Rests }

                \context GlobalSkips = "Skips"
                { \number.9.Skips }

                \context GlobalSkips = "TimeSignatures"
                { \number.9.TimeSignatures }

            >>

            \context MusicContext = "MusicContext"
            {

                \context PianoStaff = "PianoStaff"
                <<

                    \context RHStaff = "RH.Staff"
                    { \number.9.RH.Staff }

                    \context Staff = "Cello.Staff"
                    { \number.9.Cello.Staff }

                >>

            }

        >>

    >>

}
