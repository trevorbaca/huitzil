% first_page_number = 3
% page_count = 1
% measure_count = 26 + 1
% time_signatures = [
% '1/2', '13/24', '1/2', '7/12', '53/60', '23/24', '1/2', '1/2', '3/8', '1/3',
%  '11/15', '1/2', '1/2', '1/2', '1/2', '1/2', '1/6', '1/2', '2/5', '1/2',
%  '1/2', '1/2', '1/2', '1/2', '1/2', '1/2'
%  ]


\context Score = "Score"
\with
{
    currentBarNumber = 80
}
<<

    \context GlobalContext = "Global_Context"
    <<

        \context PageLayout = "Page_Layout"
        {   %*% segment.03.Page.Layout

            % [Page_Layout measure 80]
            \baca-new-spacing-section #1 #44
            \autoPageBreaksOff
            \noBreak
            \baca-lbsd #17 #'(10 15)
            \pageBreak
            s1 * 1/2

            % [Page_Layout measure 81]
            \baca-new-spacing-section #1 #44
            \noBreak
            s1 * 13/24

            % [Page_Layout measure 82]
            \baca-new-spacing-section #1 #44
            \noBreak
            s1 * 1/2

            % [Page_Layout measure 83]
            \baca-new-spacing-section #1 #44
            \noBreak
            s1 * 7/12

            % [Page_Layout measure 84]
            \baca-new-spacing-section #1 #44
            \noBreak
            s1 * 53/60

            % [Page_Layout measure 85]
            \baca-new-spacing-section #35 #1056
            \noBreak
            s1 * 23/24

            % [Page_Layout measure 86]
            \baca-new-spacing-section #1 #44
            \noBreak
            \baca-lbsd #74 #'(10 15)
            \break
            s1 * 1/2

            % [Page_Layout measure 87]
            \baca-new-spacing-section #1 #44
            \noBreak
            s1 * 1/2

            % [Page_Layout measure 88]
            \baca-new-spacing-section #1 #44
            \noBreak
            s1 * 3/8

            % [Page_Layout measure 89]
            \baca-new-spacing-section #1 #44
            \noBreak
            s1 * 1/3

            % [Page_Layout measure 90]
            \baca-new-spacing-section #1 #44
            \noBreak
            s1 * 11/15

            % [Page_Layout measure 91]
            \baca-new-spacing-section #1 #44
            \noBreak
            s1 * 1/2

            % [Page_Layout measure 92]
            \baca-new-spacing-section #1 #44
            \noBreak
            s1 * 1/2

            % [Page_Layout measure 93]
            \baca-new-spacing-section #35 #1056
            \noBreak
            s1 * 1/2

            % [Page_Layout measure 94]
            \baca-new-spacing-section #1 #44
            \noBreak
            \baca-lbsd #131 #'(10 15)
            \break
            s1 * 1/2

            % [Page_Layout measure 95]
            \baca-new-spacing-section #1 #44
            \noBreak
            s1 * 1/2

            % [Page_Layout measure 96]
            \baca-new-spacing-section #1 #44
            \noBreak
            s1 * 1/6

            % [Page_Layout measure 97]
            \baca-new-spacing-section #1 #44
            \noBreak
            s1 * 1/2

            % [Page_Layout measure 98]
            \baca-new-spacing-section #1 #44
            \noBreak
            s1 * 2/5

            % [Page_Layout measure 99]
            \baca-new-spacing-section #1 #44
            \noBreak
            s1 * 1/2

            % [Page_Layout measure 100]
            \baca-new-spacing-section #1 #44
            \noBreak
            s1 * 1/2

            % [Page_Layout measure 101]
            \baca-new-spacing-section #35 #1056
            \noBreak
            s1 * 1/2

            % [Page_Layout measure 102]
            \baca-new-spacing-section #1 #44
            \noBreak
            \baca-lbsd #188 #'(10 15)
            \break
            s1 * 1/2

            % [Page_Layout measure 103]
            \baca-new-spacing-section #1 #44
            \noBreak
            s1 * 1/2

            % [Page_Layout measure 104]
            \baca-new-spacing-section #1 #44
            \noBreak
            s1 * 1/2

            % [Page_Layout measure 105]
            \baca-new-spacing-section #1 #44
            \noBreak
            s1 * 1/2

            % [Page_Layout measure 106]
            \baca-new-spacing-section #1 #4
            \noBreak
            \baca-time-signature-transparent
            s1 * 1/4
            \once \override Score.BarLine.transparent = ##t
            \once \override Score.SpanBar.transparent = ##t

        }   %*% segment.03.Page.Layout

    >>

>>
