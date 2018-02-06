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
            \B_GlobalRests
            \context GlobalSkips = "GlobalSkips"
            \B_GlobalSkips
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
                \B_MetronomeMarkVoice
                \context TremoloVoice = "TremoloVoice"
                \B_TremoloVoice
                \context StringContactPointVoice = "StringContactPointVoice"
                \B_StringContactPointVoice
                \context UnderlyingDynamicsVoice = "UnderlyingDynamicsVoice"
                \B_UnderlyingDynamicsVoice
            >>
            \context PitchStaff = "PitchStaff"
            {
                \context PitchVoice = "PitchVoice"
                \B_PitchVoice
            }
        >>
    >>
}