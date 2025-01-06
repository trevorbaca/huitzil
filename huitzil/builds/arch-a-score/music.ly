% Huitzil (2014/19) for cello

\version "2.25.22"

\include "stylesheet.ily"
\include "layout.ily"
\include "_sections/01.ily"
\include "_sections/02.ily"
\include "_sections/03.ily"
\include "_sections/04.ily"
\include "_sections/05.ily"
\include "_sections/06.ily"
\include "_sections/07.ily"
\include "_sections/08.ily"
\include "_sections/09.ily"
\include "_sections/10.ily"

\score
{
  <<
    {
      \page-layout-score
    }
    {
      \include "_sections/01.ly"
      \include "_sections/02.ly"
      \include "_sections/03.ly"
      \include "_sections/04.ly"
      \include "_sections/05.ly"
      \include "_sections/06.ly"
      \include "_sections/07.ly"
      \include "_sections/08.ly"
      \include "_sections/09.ly"
      \include "_sections/10.ly"
    }
  >>
}
