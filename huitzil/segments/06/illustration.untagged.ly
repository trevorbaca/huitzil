\version "2.23.1"
\language "english"
\include "../../stylesheet.ily"
\include "illustration.ily"
clock-time-extra-offset = #'(0 . 13)

\header { composer = ##f poet = ##f title = ##f }
\layout { indent = 0 }
\paper { print-first-page-number = ##t }
\paper { first-page-number = #6 }

\score {

    <<

        {
            \include "layout.ly"
        }

        \context Score = "Score"
        <<

            \context GlobalContext = "Global_Context"
            <<

                \context GlobalRests = "Global_Rests"
                \f_Global_Rests

                \context GlobalSkips = "Global_Skips"
                \f_Global_Skips

            >>

            \context MusicContext = "Music_Context"
            {

                \context PianoStaff = "Cello_Staff_Group"
                <<

                    \context RHStaff = "RH_Music_Staff"
                    \f_RH_Music_Staff

                    \context Staff = "Cello_Music_Staff"
                    \f_Cello_Music_Staff

                >>

            }

        >>

    >>

}