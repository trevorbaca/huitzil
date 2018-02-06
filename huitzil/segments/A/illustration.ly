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
            \A_GlobalRests
            \context GlobalSkips = "GlobalSkips"
            \A_GlobalSkips
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
                \A_MetronomeMarkVoice
                \context TremoloVoice = "TremoloVoice"
                \A_TremoloVoice
                \context StringContactPointVoice = "StringContactPointVoice"
                \A_StringContactPointVoice
                \context UnderlyingDynamicsVoice = "UnderlyingDynamicsVoice"
                \A_UnderlyingDynamicsVoice
            >>
            \context PitchStaff = "PitchStaff"
            {
                \context PitchVoice = "PitchVoice"
                \A_PitchVoice
            }
        >>
    >>
}