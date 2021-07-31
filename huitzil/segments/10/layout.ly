% first_page_number = 10
% page_count = 1
% measure_count = 10 + 1
% time_signatures = [
% '1/2', '1/2', '1/2', '1/2', '1/2', '1/2', '1/2', '1/2', '1/2', '3/2'
%  ]


\context Score = "Score"
\with
{
    currentBarNumber = 249
}
<<

    \context GlobalContext = "Global_Context"
    <<

        \context PageLayout = "Page_Layout"
        {   %*% j_Page_Layout

            % [Page_Layout measure 249]
            \baca-new-spacing-section #1 #32
            \autoPageBreaksOff
            \noBreak
            \baca-lbsd #17 #'(10 15)
            \pageBreak
            s1 * 1/2

            % [Page_Layout measure 250]
            \baca-new-spacing-section #1 #32
            \noBreak
            s1 * 1/2

            % [Page_Layout measure 251]
            \baca-new-spacing-section #1 #32
            \noBreak
            s1 * 1/2

            % [Page_Layout measure 252]
            \baca-new-spacing-section #1 #32
            \noBreak
            s1 * 1/2

            % [Page_Layout measure 253]
            \baca-new-spacing-section #1 #32
            \noBreak
            s1 * 1/2

            % [Page_Layout measure 254]
            \baca-new-spacing-section #1 #32
            \noBreak
            s1 * 1/2

            % [Page_Layout measure 255]
            \baca-new-spacing-section #1 #32
            \noBreak
            s1 * 1/2

            % [Page_Layout measure 256]
            \baca-new-spacing-section #1 #32
            \noBreak
            s1 * 1/2

            % [Page_Layout measure 257]
            \baca-new-spacing-section #1 #32
            \noBreak
            s1 * 1/2

            % [Page_Layout measure 258]
            \baca-new-spacing-section #1 #32
            \noBreak
            s1 * 3/2

            % [Page_Layout measure 259]
            \baca-new-spacing-section #1 #4
            \noBreak
            \baca-time-signature-transparent
            s1 * 1/4
            \once \override Score.BarLine.transparent = ##t
            \once \override Score.SpanBar.transparent = ##t

        }   %*% j_Page_Layout

    >>

>>
