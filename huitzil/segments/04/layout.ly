% first_page_number = 4
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
    currentBarNumber = 106
}
<<

    \context GlobalContext = "Global_Context"
    <<

        \context PageLayout = "Page_Layout"
        {   %*% segment.04.Page.Layout

            % [Page_Layout measure 106]
            \baca-new-spacing-section #1 #32
            \autoPageBreaksOff
            \noBreak
            \baca-lbsd #17 #'(10 17)
            \pageBreak
            s1 * 1/2

            % [Page_Layout measure 107]
            \baca-new-spacing-section #1 #32
            \noBreak
            s1 * 1/2

            % [Page_Layout measure 108]
            \baca-new-spacing-section #1 #32
            \noBreak
            s1 * 2/3

            % [Page_Layout measure 109]
            \baca-new-spacing-section #1 #32
            \noBreak
            s1 * 1/2

            % [Page_Layout measure 110]
            \baca-new-spacing-section #1 #32
            \noBreak
            s1 * 4/5

            % [Page_Layout measure 111]
            \baca-new-spacing-section #1 #32
            \noBreak
            s1 * 1/2

            % [Page_Layout measure 112]
            \baca-new-spacing-section #1 #32
            \noBreak
            s1 * 2/3

            % [Page_Layout measure 113]
            \baca-new-spacing-section #1 #32
            \noBreak
            s1 * 1/2

            % [Page_Layout measure 114]
            \baca-new-spacing-section #1 #32
            \noBreak
            s1 * 4/5

            % [Page_Layout measure 115]
            \baca-new-spacing-section #1 #32
            \noBreak
            s1 * 1/2

            % [Page_Layout measure 116]
            \baca-new-spacing-section #35 #768
            \noBreak
            s1 * 2/3

            % [Page_Layout measure 117]
            \baca-new-spacing-section #1 #32
            \noBreak
            \baca-lbsd #87 #'(10 17)
            \break
            s1 * 1/2

            % [Page_Layout measure 118]
            \baca-new-spacing-section #1 #32
            \noBreak
            s1 * 4/5

            % [Page_Layout measure 119]
            \baca-new-spacing-section #1 #32
            \noBreak
            s1 * 1/2

            % [Page_Layout measure 120]
            \baca-new-spacing-section #1 #32
            \noBreak
            s1 * 2/3

            % [Page_Layout measure 121]
            \baca-new-spacing-section #1 #32
            \noBreak
            s1 * 1/2

            % [Page_Layout measure 122]
            \baca-new-spacing-section #1 #32
            \noBreak
            s1 * 4/5

            % [Page_Layout measure 123]
            \baca-new-spacing-section #1 #32
            \noBreak
            s1 * 1/2

            % [Page_Layout measure 124]
            \baca-new-spacing-section #1 #32
            \noBreak
            s1 * 1/2

            % [Page_Layout measure 125]
            \baca-new-spacing-section #1 #32
            \noBreak
            s1 * 1/2

            % [Page_Layout measure 126]
            \baca-new-spacing-section #1 #32
            \noBreak
            s1 * 1/2

            % [Page_Layout measure 127]
            \baca-new-spacing-section #1 #32
            \noBreak
            s1 * 1/2

            % [Page_Layout measure 128]
            \baca-new-spacing-section #1 #32
            \noBreak
            s1 * 1/2

            % [Page_Layout measure 129]
            \baca-new-spacing-section #1 #4
            \noBreak
            \baca-time-signature-transparent
            s1 * 1/4
            \once \override Score.BarLine.transparent = ##t
            \once \override Score.SpanBar.transparent = ##t

        }   %*% segment.04.Page.Layout

    >>

>>
