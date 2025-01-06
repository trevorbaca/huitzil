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
                { \number.7.Rests }

                \context GlobalSkips = "Skips"
                { \number.7.Skips }

                \context GlobalSkips = "TimeSignatures"
                { \number.7.TimeSignatures }

            >>

            \context MusicContext = "MusicContext"
            {

                \context PianoStaff = "PianoStaff"
                <<

                    \context RHStaff = "RH.Staff"
                    { \number.7.RH.Staff }

                    \context Staff = "Cello.Staff"
                    { \number.7.Cello.Staff }

                >>

            }

        >>

    >>

}
