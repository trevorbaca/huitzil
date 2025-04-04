\version "2.25.25"


\context Score = "Score"
{

    \context GlobalContext = "GlobalContext"
    <<

        \context GlobalSkips = "Breaks"
        {   %*% Breaks

            % [Breaks measure 1]
            \autoLineBreaksOff
            \autoPageBreaksOff
            \baca-lbsd #17 #'(10 15)
            s1 * 1/2

            % [Breaks measure 2]
            s1 * 13/24

            % [Breaks measure 3]
            s1 * 1/2

            % [Breaks measure 4]
            s1 * 7/12

            % [Breaks measure 5]
            s1 * 53/60

            % [Breaks measure 6]
            s1 * 23/24

            % [Breaks measure 7]
            \baca-lbsd #74 #'(10 15)
            \break
            s1 * 1/2

            % [Breaks measure 8]
            s1 * 1/2

            % [Breaks measure 9]
            s1 * 3/8

            % [Breaks measure 10]
            s1 * 1/3

            % [Breaks measure 11]
            s1 * 11/15

            % [Breaks measure 12]
            s1 * 1/2

            % [Breaks measure 13]
            s1 * 1/2

            % [Breaks measure 14]
            s1 * 1/2

            % [Breaks measure 15]
            \baca-lbsd #131 #'(10 15)
            \break
            s1 * 1/2

            % [Breaks measure 16]
            s1 * 1/2

            % [Breaks measure 17]
            s1 * 1/6

            % [Breaks measure 18]
            s1 * 1/2

            % [Breaks measure 19]
            s1 * 2/5

            % [Breaks measure 20]
            s1 * 1/2

            % [Breaks measure 21]
            s1 * 1/2

            % [Breaks measure 22]
            s1 * 1/2

            % [Breaks measure 23]
            \baca-lbsd #188 #'(10 15)
            \break
            s1 * 1/2

            % [Breaks measure 24]
            s1 * 1/2

            % [Breaks measure 25]
            s1 * 1/2

            % [Breaks measure 26]
            s1 * 1/2

            % [anchor skip]
              %! ANCHOR_SKIP
            s1 * 1/4
              %! ANCHOR_SKIP
            \once \override Score.BarLine.transparent = ##t
              %! ANCHOR_SKIP
            \once \override Score.SpanBar.transparent = ##t

        }   %*% Breaks

        \context GlobalSkips = "SpacingCommands"
        {   %*% SpacingCommands

            % [SpacingCommands measure 1]
            \baca-start-strict-spacing-section #1 #44
            s1 * 1/2

            % [SpacingCommands measure 2]
            \baca-start-strict-spacing-section #1 #44
            s1 * 13/24

            % [SpacingCommands measure 3]
            \baca-start-strict-spacing-section #1 #44
            s1 * 1/2

            % [SpacingCommands measure 4]
            \baca-start-strict-spacing-section #1 #44
            s1 * 7/12

            % [SpacingCommands measure 5]
            \baca-start-strict-spacing-section #1 #44
            s1 * 53/60

            % [SpacingCommands measure 6]
            \baca-start-strict-spacing-section #35 #1056
            s1 * 23/24

            % [SpacingCommands measure 7]
            \baca-start-strict-spacing-section #1 #44
            s1 * 1/2

            % [SpacingCommands measure 8]
            \baca-start-strict-spacing-section #1 #44
            s1 * 1/2

            % [SpacingCommands measure 9]
            \baca-start-strict-spacing-section #1 #44
            s1 * 3/8

            % [SpacingCommands measure 10]
            \baca-start-strict-spacing-section #1 #44
            s1 * 1/3

            % [SpacingCommands measure 11]
            \baca-start-strict-spacing-section #1 #44
            s1 * 11/15

            % [SpacingCommands measure 12]
            \baca-start-strict-spacing-section #1 #44
            s1 * 1/2

            % [SpacingCommands measure 13]
            \baca-start-strict-spacing-section #1 #44
            s1 * 1/2

            % [SpacingCommands measure 14]
            \baca-start-strict-spacing-section #35 #1056
            s1 * 1/2

            % [SpacingCommands measure 15]
            \baca-start-strict-spacing-section #1 #44
            s1 * 1/2

            % [SpacingCommands measure 16]
            \baca-start-strict-spacing-section #1 #44
            s1 * 1/2

            % [SpacingCommands measure 17]
            \baca-start-strict-spacing-section #1 #44
            s1 * 1/6

            % [SpacingCommands measure 18]
            \baca-start-strict-spacing-section #1 #44
            s1 * 1/2

            % [SpacingCommands measure 19]
            \baca-start-strict-spacing-section #1 #44
            s1 * 2/5

            % [SpacingCommands measure 20]
            \baca-start-strict-spacing-section #1 #44
            s1 * 1/2

            % [SpacingCommands measure 21]
            \baca-start-strict-spacing-section #1 #44
            s1 * 1/2

            % [SpacingCommands measure 22]
            \baca-start-strict-spacing-section #35 #1056
            s1 * 1/2

            % [SpacingCommands measure 23]
            \baca-start-strict-spacing-section #1 #44
            s1 * 1/2

            % [SpacingCommands measure 24]
            \baca-start-strict-spacing-section #1 #44
            s1 * 1/2

            % [SpacingCommands measure 25]
            \baca-start-strict-spacing-section #1 #44
            s1 * 1/2

            % [SpacingCommands measure 26]
            \baca-start-strict-spacing-section #1 #44
            s1 * 1/2

            % [anchor skip]
              %! ANCHOR_SKIP
            \baca-start-strict-spacing-section #1 #4
              %! ANCHOR_SKIP
            s1 * 1/4
              %! ANCHOR_SKIP
            \once \override Score.BarLine.transparent = ##t
              %! ANCHOR_SKIP
            \once \override Score.SpanBar.transparent = ##t

        }   %*% SpacingCommands

    >>

}
