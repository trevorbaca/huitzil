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
            \E_GlobalRests
            \context GlobalSkips = "GlobalSkips"
            \E_GlobalSkips
        >>
        \context PianoStaff = "PianoStaff"
        <<
            \context BowStaff = "BowStaff"
            \with
            {
                \override StaffSymbol.line-count = #11
            }
            <<
                \context MetronomeMarkVoice = "MetronomeMarkVoice"
                \with
                {
                    \override TextScript.staff-padding = #5
                    \override TextSpanner.staff-padding = #5.75
                }
                \E_MetronomeMarkVoice
                \context TremoloVoice = "TremoloVoice"
                \E_TremoloVoice
                \context StringContactPointVoice = "StringContactPointVoice"
                \E_StringContactPointVoice
                \context UnderlyingDynamicsVoice = "UnderlyingDynamicsVoice"
                \E_UnderlyingDynamicsVoice
            >>
            \context PitchStaff = "PitchStaff"
            {
                \context PitchVoice = "PitchVoice"
                \E_PitchVoice
            }
        >>
    >>
}