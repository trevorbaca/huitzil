% first_page_number = 9
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
    currentBarNumber = 226
}
<<

    \context GlobalContext = "Global_Context"
    <<

        \context PageLayout = "Page_Layout"
        {   %*% i_Page_Layout

            % [09 Page_Layout measure 226]
            \baca-new-spacing-section #1 #32
            \autoPageBreaksOff
            \noBreak
            \baca-lbsd #17 #'(10 17)
            \pageBreak
            s1 * 1/2

            % [09 Page_Layout measure 227]
            \baca-new-spacing-section #1 #32
            \noBreak
            s1 * 1/2

            % [09 Page_Layout measure 228]
            \baca-new-spacing-section #1 #32
            \noBreak
            s1 * 2/3

            % [09 Page_Layout measure 229]
            \baca-new-spacing-section #1 #32
            \noBreak
            s1 * 1/2

            % [09 Page_Layout measure 230]
            \baca-new-spacing-section #1 #32
            \noBreak
            s1 * 4/5

            % [09 Page_Layout measure 231]
            \baca-new-spacing-section #1 #32
            \noBreak
            s1 * 1/2

            % [09 Page_Layout measure 232]
            \baca-new-spacing-section #1 #32
            \noBreak
            s1 * 2/3

            % [09 Page_Layout measure 233]
            \baca-new-spacing-section #1 #32
            \noBreak
            s1 * 1/2

            % [09 Page_Layout measure 234]
            \baca-new-spacing-section #1 #32
            \noBreak
            s1 * 4/5

            % [09 Page_Layout measure 235]
            \baca-new-spacing-section #1 #32
            \noBreak
            s1 * 1/2

            % [09 Page_Layout measure 236]
            \baca-new-spacing-section #35 #768
            \noBreak
            s1 * 2/3

            % [09 Page_Layout measure 237]
            \baca-new-spacing-section #1 #32
            \noBreak
            \baca-lbsd #87 #'(10 17)
            \break
            s1 * 1/2

            % [09 Page_Layout measure 238]
            \baca-new-spacing-section #1 #32
            \noBreak
            s1 * 4/5

            % [09 Page_Layout measure 239]
            \baca-new-spacing-section #1 #32
            \noBreak
            s1 * 1/2

            % [09 Page_Layout measure 240]
            \baca-new-spacing-section #1 #32
            \noBreak
            s1 * 2/3

            % [09 Page_Layout measure 241]
            \baca-new-spacing-section #1 #32
            \noBreak
            s1 * 1/2

            % [09 Page_Layout measure 242]
            \baca-new-spacing-section #1 #32
            \noBreak
            s1 * 4/5

            % [09 Page_Layout measure 243]
            \baca-new-spacing-section #1 #32
            \noBreak
            s1 * 1/2

            % [09 Page_Layout measure 244]
            \baca-new-spacing-section #1 #32
            \noBreak
            s1 * 1/2

            % [09 Page_Layout measure 245]
            \baca-new-spacing-section #1 #32
            \noBreak
            s1 * 1/2

            % [09 Page_Layout measure 246]
            \baca-new-spacing-section #1 #32
            \noBreak
            s1 * 1/2

            % [09 Page_Layout measure 247]
            \baca-new-spacing-section #1 #32
            \noBreak
            s1 * 1/2

            % [09 Page_Layout measure 248]
            \baca-new-spacing-section #1 #32
            \noBreak
            s1 * 1/2

            % [09 Page_Layout measure 249]
            \baca-new-spacing-section #1 #4
            \noBreak
            \baca-time-signature-transparent
            s1 * 1/4
            \once \override Score.BarLine.transparent = ##t
            \once \override Score.SpanBar.transparent = ##t

        }   %*% i_Page_Layout

    >>

>>
