\version "2.25.6"
\include "../stylesheet.ily"
\include "header.ily"
\include "music.ily"

local-measure-number-extra-offset = #'(0 . -5)
spacing-extra-offset = #'(0 . 1)
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
                { \number.1.Rests }

                \context GlobalSkips = "Skips"
                { \number.1.Skips }

            >>

            \context MusicContext = "MusicContext"
            {

                \context PianoStaff = "PianoStaff"
                <<

                    \context RHStaff = "RH.Staff"
                    { \number.1.RH.Staff }

                    \context Staff = "Cello.Staff"
                    { \number.1.Cello.Staff }

                >>

            }

        >>

    >>

}
