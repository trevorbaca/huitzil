% first_page_number = 8
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
    currentBarNumber = 200
}
<<

    \context GlobalContext = "Global_Context"
    <<

        \context PageLayout = "Page_Layout"
        {   %*% segment.08.Page.Layout

            % [Page_Layout measure 200]
            \baca-new-spacing-section #1 #40
            \autoPageBreaksOff
            \noBreak
            \baca-lbsd #17 #'(10 15)
            \pageBreak
            s1 * 1/2

            % [Page_Layout measure 201]
            \baca-new-spacing-section #1 #40
            \noBreak
            s1 * 13/24

            % [Page_Layout measure 202]
            \baca-new-spacing-section #1 #40
            \noBreak
            s1 * 1/2

            % [Page_Layout measure 203]
            \baca-new-spacing-section #1 #40
            \noBreak
            s1 * 7/12

            % [Page_Layout measure 204]
            \baca-new-spacing-section #1 #40
            \noBreak
            s1 * 53/60

            % [Page_Layout measure 205]
            \baca-new-spacing-section #35 #960
            \noBreak
            s1 * 23/24

            % [Page_Layout measure 206]
            \baca-new-spacing-section #1 #40
            \noBreak
            \baca-lbsd #74 #'(10 15)
            \break
            s1 * 1/2

            % [Page_Layout measure 207]
            \baca-new-spacing-section #1 #40
            \noBreak
            s1 * 1/2

            % [Page_Layout measure 208]
            \baca-new-spacing-section #1 #40
            \noBreak
            s1 * 3/8

            % [Page_Layout measure 209]
            \baca-new-spacing-section #1 #40
            \noBreak
            s1 * 1/3

            % [Page_Layout measure 210]
            \baca-new-spacing-section #1 #40
            \noBreak
            s1 * 11/15

            % [Page_Layout measure 211]
            \baca-new-spacing-section #1 #40
            \noBreak
            s1 * 1/2

            % [Page_Layout measure 212]
            \baca-new-spacing-section #1 #40
            \noBreak
            s1 * 1/2

            % [Page_Layout measure 213]
            \baca-new-spacing-section #35 #960
            \noBreak
            s1 * 1/2

            % [Page_Layout measure 214]
            \baca-new-spacing-section #1 #40
            \noBreak
            \baca-lbsd #131 #'(10 15)
            \break
            s1 * 1/2

            % [Page_Layout measure 215]
            \baca-new-spacing-section #1 #40
            \noBreak
            s1 * 1/2

            % [Page_Layout measure 216]
            \baca-new-spacing-section #1 #40
            \noBreak
            s1 * 1/6

            % [Page_Layout measure 217]
            \baca-new-spacing-section #1 #40
            \noBreak
            s1 * 1/2

            % [Page_Layout measure 218]
            \baca-new-spacing-section #1 #40
            \noBreak
            s1 * 2/5

            % [Page_Layout measure 219]
            \baca-new-spacing-section #1 #40
            \noBreak
            s1 * 1/2

            % [Page_Layout measure 220]
            \baca-new-spacing-section #1 #40
            \noBreak
            s1 * 1/2

            % [Page_Layout measure 221]
            \baca-new-spacing-section #35 #960
            \noBreak
            s1 * 1/2

            % [Page_Layout measure 222]
            \baca-new-spacing-section #1 #40
            \noBreak
            \baca-lbsd #188 #'(10 15)
            \break
            s1 * 1/2

            % [Page_Layout measure 223]
            \baca-new-spacing-section #1 #40
            \noBreak
            s1 * 1/2

            % [Page_Layout measure 224]
            \baca-new-spacing-section #1 #40
            \noBreak
            s1 * 1/2

            % [Page_Layout measure 225]
            \baca-new-spacing-section #1 #40
            \noBreak
            s1 * 1/2

            % [Page_Layout measure 226]
            \baca-new-spacing-section #1 #4
            \noBreak
            \baca-time-signature-transparent
            s1 * 1/4
            \once \override Score.BarLine.transparent = ##t
            \once \override Score.SpanBar.transparent = ##t

        }   %*% segment.08.Page.Layout

    >>

>>
