\version "2.23.1"
\language "english"
\include "../../stylesheet.ily"
\include "illustration.ily"
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
            \include "layout.ly"
        }

        \context Score = "Score"
        <<

            \context GlobalContext = "Global_Context"
            <<

                \context GlobalRests = "Global_Rests"
                \b_Global_Rests

                \context GlobalSkips = "Global_Skips"
                \b_Global_Skips

            >>

            \context MusicContext = "Music_Context"
            {

                \context PianoStaff = "Cello_Staff_Group"
                <<

                    \context RHStaff = "RH_Music_Staff"
                    \b_RH_Music_Staff

                    \context Staff = "Cello_Music_Staff"
                    \b_Cello_Music_Staff

                >>

            }

        >>

    >>

}