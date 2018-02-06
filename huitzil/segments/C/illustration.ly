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
            \C_GlobalRests
            \context GlobalSkips = "GlobalSkips"
            \C_GlobalSkips
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
                \C_MetronomeMarkVoice
                \context TremoloVoice = "TremoloVoice"
                \C_TremoloVoice
                \context StringContactPointVoice = "StringContactPointVoice"
                \C_StringContactPointVoice
                \context UnderlyingDynamicsVoice = "UnderlyingDynamicsVoice"
                \C_UnderlyingDynamicsVoice
            >>
            \context PitchStaff = "PitchStaff"
            {
                \context PitchVoice = "PitchVoice"
                \C_PitchVoice
            }
        >>
    >>
}