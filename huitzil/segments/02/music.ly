\version "2.23.1"
\language "english"
\include "../../stylesheet.ily"
\include "music.ily.tagged"
clock-time-extra-offset = #'(0 . 13)
spacing-extra-offset = #'(0 . 16)

\header { composer = ##f poet = ##f title = ##f }
\layout { indent = 0 }
\paper { print-first-page-number = ##t }
\paper { first-page-number = #2 }

\score
{

    <<

        {
            \include "layout.ly.tagged"
        }

        \context Score = "Score"
        <<

            \context GlobalContext = "Global_Context"
            <<

                \context GlobalRests = "Global_Rests"
                { \segment.02.Global.Rests }

                \context GlobalSkips = "Global_Skips"
                { \segment.02.Global.Skips }

            >>

            \context MusicContext = "Music_Context"
            {

                \context PianoStaff = "Cello_Staff_Group"
                <<

                    \context RHStaff = "RH_Music_Staff"
                    { \segment.02.RH.Music.Staff }

                    \context Staff = "Cello_Music_Staff"
                    { \segment.02.Cello.Music.Staff }

                >>

            }

        >>

    >>

}
