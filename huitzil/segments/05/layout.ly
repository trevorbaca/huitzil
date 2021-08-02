% first_page_number = 5
% page_count = 1
% measure_count = 22 + 1
% time_signatures = [
% '1/2', '13/24', '1/2', '7/12', '53/60', '23/24', '1/2', '1/2', '3/8', '1/3',
%  '11/15', '1/2', '1/2', '1/2', '1/2', '1/2', '1/2', '1/2', '1/2', '1/2',
%  '1/2', '1/2'
%  ]


\context Score = "Score"
\with
{
    currentBarNumber = 129
}
<<

    \context GlobalContext = "Global_Context"
    <<

        \context PageLayout = "Page_Layout"
        {   %*% segment.05.Page.Layout

            % [Page_Layout measure 129]
            \baca-new-spacing-section #1 #40
            \autoPageBreaksOff
            \noBreak
            \baca-lbsd #17 #'(10 15)
            \pageBreak
            s1 * 1/2

            % [Page_Layout measure 130]
            \baca-new-spacing-section #1 #40
            \noBreak
            s1 * 13/24

            % [Page_Layout measure 131]
            \baca-new-spacing-section #1 #40
            \noBreak
            s1 * 1/2

            % [Page_Layout measure 132]
            \baca-new-spacing-section #1 #40
            \noBreak
            s1 * 7/12

            % [Page_Layout measure 133]
            \baca-new-spacing-section #1 #40
            \noBreak
            s1 * 53/60

            % [Page_Layout measure 134]
            \baca-new-spacing-section #1 #40
            \noBreak
            s1 * 23/24

            % [Page_Layout measure 135]
            \baca-new-spacing-section #1 #40
            \noBreak
            s1 * 1/2

            % [Page_Layout measure 136]
            \baca-new-spacing-section #1 #40
            \noBreak
            s1 * 1/2

            % [Page_Layout measure 137]
            \baca-new-spacing-section #35 #960
            \noBreak
            s1 * 3/8

            % [Page_Layout measure 138]
            \baca-new-spacing-section #1 #40
            \noBreak
            \baca-lbsd #87 #'(10 15)
            \break
            s1 * 1/3

            % [Page_Layout measure 139]
            \baca-new-spacing-section #1 #40
            \noBreak
            s1 * 11/15

            % [Page_Layout measure 140]
            \baca-new-spacing-section #1 #40
            \noBreak
            s1 * 1/2

            % [Page_Layout measure 141]
            \baca-new-spacing-section #1 #40
            \noBreak
            s1 * 1/2

            % [Page_Layout measure 142]
            \baca-new-spacing-section #1 #40
            \noBreak
            s1 * 1/2

            % [Page_Layout measure 143]
            \baca-new-spacing-section #1 #40
            \noBreak
            s1 * 1/2

            % [Page_Layout measure 144]
            \baca-new-spacing-section #35 #960
            \noBreak
            s1 * 1/2

            % [Page_Layout measure 145]
            \baca-new-spacing-section #1 #40
            \noBreak
            \baca-lbsd #157 #'(10 15)
            \break
            s1 * 1/2

            % [Page_Layout measure 146]
            \baca-new-spacing-section #1 #40
            \noBreak
            s1 * 1/2

            % [Page_Layout measure 147]
            \baca-new-spacing-section #1 #40
            \noBreak
            s1 * 1/2

            % [Page_Layout measure 148]
            \baca-new-spacing-section #1 #40
            \noBreak
            s1 * 1/2

            % [Page_Layout measure 149]
            \baca-new-spacing-section #1 #40
            \noBreak
            s1 * 1/2

            % [Page_Layout measure 150]
            \baca-new-spacing-section #1 #40
            \noBreak
            s1 * 1/2

            % [Page_Layout measure 151]
            \baca-new-spacing-section #1 #4
            \noBreak
            \baca-time-signature-transparent
            s1 * 1/4
            \once \override Score.BarLine.transparent = ##t
            \once \override Score.SpanBar.transparent = ##t

        }   %*% segment.05.Page.Layout

    >>

>>
