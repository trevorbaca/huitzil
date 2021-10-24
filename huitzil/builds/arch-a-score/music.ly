% Huitzil (2014/19) for cello

\version "2.19.82"
\language "english"

#(ly:set-option 'relative-includes #t)
\include "stylesheet.ily"
\include "_segments/01.ily"
\include "_segments/02.ily"
\include "_segments/03.ily"
\include "_segments/04.ily"
\include "_segments/05.ily"
\include "_segments/06.ily"
\include "_segments/07.ily"
\include "_segments/08.ily"
\include "_segments/09.ily"
\include "_segments/10.ily"


\score {
    <<
        {
        \include "layout.ly.tagged"
        }
        {
        \include "_segments/01.ly"
        \include "_segments/02.ly"
        \include "_segments/03.ly"
        \include "_segments/04.ly"
        \include "_segments/05.ly"
        \include "_segments/06.ly"
        \include "_segments/07.ly"
        \include "_segments/08.ly"
        \include "_segments/09.ly"
        \include "_segments/10.ly"
        }
    >>
}
