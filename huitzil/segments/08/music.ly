\version "2.23.1"
\language "english"
\include "../../stylesheet.ily"
\include "music.ily.tagged"
clock-time-extra-offset = #'(0 . 13)

\header { composer = ##f poet = ##f title = ##f }
\layout { indent = 0 }
\paper { print-first-page-number = ##t }
\paper { first-page-number = #8 }

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
                { \segment.08.Global.Rests }

                \context GlobalSkips = "Global_Skips"
                { \segment.08.Global.Skips }

            >>

            \context MusicContext = "Music_Context"
            {

                \context PianoStaff = "Cello_Staff_Group"
                <<

                    \context RHStaff = "RH_Music_Staff"
                    { \segment.08.RH.Music.Staff }

                    \context Staff = "Cello_Music_Staff"
                    { \segment.08.Cello.Music.Staff }

                >>

            }

        >>

    >>

}
