\version "2.19.81"
\language "english"

#(ly:set-option 'relative-includes #t)

\include "../../stylesheets/flight-stylesheet.ily"
\include "illustration.ily"


\score {
    \context Score = "Score"
    <<
        \context GlobalContext = "GlobalContext"
        <<
            \context GlobalRests = "GlobalRests"
            \IGlobalRests
            \context GlobalSkips = "GlobalSkips"
            \IGlobalSkips
        >>
        \context PianoStaff = "PianoStaff"
        <<
            \context BowStaff = "BowStaff"
            \with
            {
                \override StaffSymbol.line-count = #7
            }
            <<
                \context MetronomeMarkVoice = "MetronomeMarkVoice"
                \with
                {
                    \override TextScript.staff-padding = #5
                    \override TextSpanner.staff-padding = #5.75
                }
                \IMetronomeMarkVoice
                \context TremoloVoice = "TremoloVoice"
                \ITremoloVoice
                \context StringContactPointVoice = "StringContactPointVoice"
                \IStringContactPointVoice
                \context UnderlyingDynamicsVoice = "UnderlyingDynamicsVoice"
                \IUnderlyingDynamicsVoice
            >>
            \context PitchStaff = "PitchStaff"
            {
                \context PitchVoice = "PitchVoice"
                \IPitchVoice
            }
        >>
    >>
}