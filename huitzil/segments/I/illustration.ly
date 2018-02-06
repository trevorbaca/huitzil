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
            \I_GlobalRests
            \context GlobalSkips = "GlobalSkips"
            \I_GlobalSkips
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
                \I_MetronomeMarkVoice
                \context TremoloVoice = "TremoloVoice"
                \I_TremoloVoice
                \context StringContactPointVoice = "StringContactPointVoice"
                \I_StringContactPointVoice
                \context UnderlyingDynamicsVoice = "UnderlyingDynamicsVoice"
                \I_UnderlyingDynamicsVoice
            >>
            \context PitchStaff = "PitchStaff"
            {
                \context PitchVoice = "PitchVoice"
                \I_PitchVoice
            }
        >>
    >>
}