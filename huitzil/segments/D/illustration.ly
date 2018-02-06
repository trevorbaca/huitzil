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
            \D_GlobalRests
            \context GlobalSkips = "GlobalSkips"
            \D_GlobalSkips
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
                \D_MetronomeMarkVoice
                \context TremoloVoice = "TremoloVoice"
                \D_TremoloVoice
                \context StringContactPointVoice = "StringContactPointVoice"
                \D_StringContactPointVoice
                \context UnderlyingDynamicsVoice = "UnderlyingDynamicsVoice"
                \D_UnderlyingDynamicsVoice
            >>
            \context PitchStaff = "PitchStaff"
            {
                \context PitchVoice = "PitchVoice"
                \D_PitchVoice
            }
        >>
    >>
}