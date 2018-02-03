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
            \FGlobalRests
            \context GlobalSkips = "GlobalSkips"
            \FGlobalSkips
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
                \FMetronomeMarkVoice
                \context TremoloVoice = "TremoloVoice"
                \FTremoloVoice
                \context StringContactPointVoice = "StringContactPointVoice"
                \FStringContactPointVoice
                \context UnderlyingDynamicsVoice = "UnderlyingDynamicsVoice"
                \FUnderlyingDynamicsVoice
            >>
            \context PitchStaff = "PitchStaff"
            {
                \context PitchVoice = "PitchVoice"
                \FPitchVoice
            }
        >>
    >>
}