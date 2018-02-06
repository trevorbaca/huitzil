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
            \G_GlobalRests
            \context GlobalSkips = "GlobalSkips"
            \G_GlobalSkips
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
                \G_MetronomeMarkVoice
                \context TremoloVoice = "TremoloVoice"
                \G_TremoloVoice
                \context StringContactPointVoice = "StringContactPointVoice"
                \G_StringContactPointVoice
                \context UnderlyingDynamicsVoice = "UnderlyingDynamicsVoice"
                \G_UnderlyingDynamicsVoice
            >>
            \context PitchStaff = "PitchStaff"
            {
                \context PitchVoice = "PitchVoice"
                \G_PitchVoice
            }
        >>
    >>
}