% first_page_number = 6
% page_count = 1
% measure_count = 23 + 1
% time_signatures = [
% '1/2', '1/2', '2/3', '1/2', '4/5', '1/2', '2/3', '1/2', '4/5', '1/2', '2/3',
%  '1/2', '4/5', '1/2', '2/3', '1/2', '4/5', '1/2', '1/2', '1/2', '1/2', '1/2',
%  '1/2'
%  ]


\context Score = "Score"
\with
{
    currentBarNumber = 151
}
<<

    \context GlobalContext = "Global_Context"
    <<

        \context PageLayout = "Page_Layout"
        {   %*% Page_Layout

            % [Page_Layout measure 151]
            \baca-new-spacing-section #1 #32
            \autoPageBreaksOff
            \noBreak
            \baca-lbsd #17 #'(10 17)
            \pageBreak
            s1 * 1/2

            % [Page_Layout measure 152]
            \baca-new-spacing-section #1 #32
            \noBreak
            s1 * 1/2

            % [Page_Layout measure 153]
            \baca-new-spacing-section #1 #32
            \noBreak
            s1 * 2/3

            % [Page_Layout measure 154]
            \baca-new-spacing-section #1 #32
            \noBreak
            s1 * 1/2

            % [Page_Layout measure 155]
            \baca-new-spacing-section #1 #32
            \noBreak
            s1 * 4/5

            % [Page_Layout measure 156]
            \baca-new-spacing-section #1 #32
            \noBreak
            s1 * 1/2

            % [Page_Layout measure 157]
            \baca-new-spacing-section #1 #32
            \noBreak
            s1 * 2/3

            % [Page_Layout measure 158]
            \baca-new-spacing-section #1 #32
            \noBreak
            s1 * 1/2

            % [Page_Layout measure 159]
            \baca-new-spacing-section #1 #32
            \noBreak
            s1 * 4/5

            % [Page_Layout measure 160]
            \baca-new-spacing-section #1 #32
            \noBreak
            s1 * 1/2

            % [Page_Layout measure 161]
            \baca-new-spacing-section #35 #768
            \noBreak
            s1 * 2/3

            % [Page_Layout measure 162]
            \baca-new-spacing-section #1 #32
            \noBreak
            \baca-lbsd #87 #'(10 17)
            \break
            s1 * 1/2

            % [Page_Layout measure 163]
            \baca-new-spacing-section #1 #32
            \noBreak
            s1 * 4/5

            % [Page_Layout measure 164]
            \baca-new-spacing-section #1 #32
            \noBreak
            s1 * 1/2

            % [Page_Layout measure 165]
            \baca-new-spacing-section #1 #32
            \noBreak
            s1 * 2/3

            % [Page_Layout measure 166]
            \baca-new-spacing-section #1 #32
            \noBreak
            s1 * 1/2

            % [Page_Layout measure 167]
            \baca-new-spacing-section #1 #32
            \noBreak
            s1 * 4/5

            % [Page_Layout measure 168]
            \baca-new-spacing-section #1 #32
            \noBreak
            s1 * 1/2

            % [Page_Layout measure 169]
            \baca-new-spacing-section #1 #32
            \noBreak
            s1 * 1/2

            % [Page_Layout measure 170]
            \baca-new-spacing-section #1 #32
            \noBreak
            s1 * 1/2

            % [Page_Layout measure 171]
            \baca-new-spacing-section #1 #32
            \noBreak
            s1 * 1/2

            % [Page_Layout measure 172]
            \baca-new-spacing-section #1 #32
            \noBreak
            s1 * 1/2

            % [Page_Layout measure 173]
            \baca-new-spacing-section #1 #32
            \noBreak
            s1 * 1/2

            % [Page_Layout measure 174]
            \baca-new-spacing-section #1 #4
            \noBreak
            \baca-time-signature-transparent
            s1 * 1/4
            \once \override Score.BarLine.transparent = ##t
            \once \override Score.SpanBar.transparent = ##t

        }   %*% Page_Layout

    >>

>>