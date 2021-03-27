\version "2.23.1"
\language "english"
\include "../../stylesheet.ily"
\include "illustration.ily"
clock-time-extra-offset = #'(0 . 13)

\header { composer = ##f poet = ##f title = ##f }
\layout { indent = 0 }
\paper { print-first-page-number = ##t }
\paper { first-page-number = #8 }

\score
{

    <<

        {
            \include "layout.ly"
        }

        \context Score = "Score"
        <<

            \context GlobalContext = "Global_Context"
            <<

                \context GlobalRests = "Global_Rests"
                \h_Global_Rests

                \context GlobalSkips = "Global_Skips"
                \h_Global_Skips

            >>

            \context MusicContext = "Music_Context"
            {

                \context PianoStaff = "Cello_Staff_Group"
                <<

                    \context RHStaff = "RH_Music_Staff"
                    \h_RH_Music_Staff

                    \context Staff = "Cello_Music_Staff"
                    \h_Cello_Music_Staff

                >>

            }

        >>

    >>

}