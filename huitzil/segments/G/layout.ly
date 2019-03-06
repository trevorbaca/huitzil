% first_page_number = 7
% page_count = 1
% measure_count = 26 + 1
% time_signatures = [
% '1/4', '3/16', '1/4', '3/16', '1/4', '3/16', '1/4', '3/16', '1/4', '3/16',
%  '1/4', '3/16', '1/4', '3/16', '1/4', '3/16', '1/4', '3/16', '1/4', '3/16',
%  '1/4', '3/16', '1/4', '3/16', '1/1', '1/1'
%  ]


\context Score = "Score"                                                       %! baca.SingleStaffScoreTemplate.__call__
\with                                                                          %! baca.SingleStaffScoreTemplate.__call__
{                                                                              %! baca.SingleStaffScoreTemplate.__call__
    currentBarNumber = #174                                                    %! baca.SingleStaffScoreTemplate.__call__
}                                                                              %! baca.SingleStaffScoreTemplate.__call__
<<                                                                             %! baca.SingleStaffScoreTemplate.__call__

    \context GlobalContext = "Global_Context"                                  %! abjad.ScoreTemplate._make_global_context
    <<                                                                         %! abjad.ScoreTemplate._make_global_context

        \context PageLayout = "Page_Layout"                                    %! abjad.ScoreTemplate._make_global_context
        {   %*% Page_Layout                                                    %! abjad.ScoreTemplate._make_global_context

            % [Page_Layout measure 174]                                        %! _comment_measure_numbers
            \baca-new-spacing-section #1 #28                                   %! HorizontalSpacingSpecifier(1):SPACING_COMMAND
            \autoPageBreaksOff                                                 %! BreakMeasureMap(1):BREAK
            \noBreak                                                           %! BreakMeasureMap(2):BREAK
            \baca-lbsd #17 #'(8 22)                                            %! BREAK:IndicatorCommand
            \pageBreak                                                         %! BREAK:IndicatorCommand
            s1 * 1/4                                                           %! _make_global_skips(1)
        %@% - \baca-start-spm-left-only "[1/28]"                               %! SPACING
        %@% \bacaStartTextSpanSPM                                              %! SPACING

            % [Page_Layout measure 175]                                        %! _comment_measure_numbers
            \baca-new-spacing-section #1 #28                                   %! HorizontalSpacingSpecifier(1):SPACING_COMMAND
            \noBreak                                                           %! BreakMeasureMap(2):BREAK
            s1 * 3/16                                                          %! _make_global_skips(1)
        %@% \bacaStopTextSpanSPM                                               %! SPACING
        %@% - \baca-start-spm-left-only "[1/28]"                               %! SPACING
        %@% \bacaStartTextSpanSPM                                              %! SPACING

            % [Page_Layout measure 176]                                        %! _comment_measure_numbers
            \baca-new-spacing-section #1 #28                                   %! HorizontalSpacingSpecifier(1):SPACING_COMMAND
            \noBreak                                                           %! BreakMeasureMap(2):BREAK
            s1 * 1/4                                                           %! _make_global_skips(1)
        %@% \bacaStopTextSpanSPM                                               %! SPACING
        %@% - \baca-start-spm-left-only "[1/28]"                               %! SPACING
        %@% \bacaStartTextSpanSPM                                              %! SPACING

            % [Page_Layout measure 177]                                        %! _comment_measure_numbers
            \baca-new-spacing-section #1 #28                                   %! HorizontalSpacingSpecifier(1):SPACING_COMMAND
            \noBreak                                                           %! BreakMeasureMap(2):BREAK
            s1 * 3/16                                                          %! _make_global_skips(1)
        %@% \bacaStopTextSpanSPM                                               %! SPACING
        %@% - \baca-start-spm-left-only "[1/28]"                               %! SPACING
        %@% \bacaStartTextSpanSPM                                              %! SPACING

            % [Page_Layout measure 178]                                        %! _comment_measure_numbers
            \baca-new-spacing-section #1 #28                                   %! HorizontalSpacingSpecifier(1):SPACING_COMMAND
            \noBreak                                                           %! BreakMeasureMap(2):BREAK
            s1 * 1/4                                                           %! _make_global_skips(1)
        %@% \bacaStopTextSpanSPM                                               %! SPACING
        %@% - \baca-start-spm-left-only "[1/28]"                               %! SPACING
        %@% \bacaStartTextSpanSPM                                              %! SPACING

            % [Page_Layout measure 179]                                        %! _comment_measure_numbers
            \baca-new-spacing-section #1 #28                                   %! HorizontalSpacingSpecifier(1):SPACING_COMMAND
            \noBreak                                                           %! BreakMeasureMap(2):BREAK
            s1 * 3/16                                                          %! _make_global_skips(1)
        %@% \bacaStopTextSpanSPM                                               %! SPACING
        %@% - \baca-start-spm-left-only "[1/28]"                               %! SPACING
        %@% \bacaStartTextSpanSPM                                              %! SPACING

            % [Page_Layout measure 180]                                        %! _comment_measure_numbers
            \baca-new-spacing-section #1 #28                                   %! HorizontalSpacingSpecifier(1):SPACING_COMMAND
            \noBreak                                                           %! BreakMeasureMap(2):BREAK
            s1 * 1/4                                                           %! _make_global_skips(1)
        %@% \bacaStopTextSpanSPM                                               %! SPACING
        %@% - \baca-start-spm-left-only "[1/28]"                               %! SPACING
        %@% \bacaStartTextSpanSPM                                              %! SPACING

            % [Page_Layout measure 181]                                        %! _comment_measure_numbers
            \baca-new-spacing-section #1 #28                                   %! HorizontalSpacingSpecifier(1):SPACING_COMMAND
            \noBreak                                                           %! BreakMeasureMap(2):BREAK
            s1 * 3/16                                                          %! _make_global_skips(1)
        %@% \bacaStopTextSpanSPM                                               %! SPACING
        %@% - \baca-start-spm-left-only "[1/28]"                               %! SPACING
        %@% \bacaStartTextSpanSPM                                              %! SPACING

            % [Page_Layout measure 182]                                        %! _comment_measure_numbers
            \baca-new-spacing-section #1 #28                                   %! HorizontalSpacingSpecifier(1):SPACING_COMMAND
            \noBreak                                                           %! BreakMeasureMap(2):BREAK
            s1 * 1/4                                                           %! _make_global_skips(1)
        %@% \bacaStopTextSpanSPM                                               %! SPACING
        %@% - \baca-start-spm-left-only "[1/28]"                               %! SPACING
        %@% \bacaStartTextSpanSPM                                              %! SPACING

            % [Page_Layout measure 183]                                        %! _comment_measure_numbers
            \baca-new-spacing-section #1 #28                                   %! HorizontalSpacingSpecifier(1):SPACING_COMMAND
            \noBreak                                                           %! BreakMeasureMap(2):BREAK
            s1 * 3/16                                                          %! _make_global_skips(1)
        %@% \bacaStopTextSpanSPM                                               %! SPACING
        %@% - \baca-start-spm-left-only "[1/28]"                               %! SPACING
        %@% \bacaStartTextSpanSPM                                              %! SPACING

            % [Page_Layout measure 184]                                        %! _comment_measure_numbers
            \baca-new-spacing-section #1 #28                                   %! HorizontalSpacingSpecifier(1):SPACING_COMMAND
            \noBreak                                                           %! BreakMeasureMap(2):BREAK
            s1 * 1/4                                                           %! _make_global_skips(1)
        %@% \bacaStopTextSpanSPM                                               %! SPACING
        %@% - \baca-start-spm-left-only "[1/28]"                               %! SPACING
        %@% \bacaStartTextSpanSPM                                              %! SPACING

            % [Page_Layout measure 185]                                        %! _comment_measure_numbers
            \baca-new-spacing-section #1 #28                                   %! HorizontalSpacingSpecifier(1):SPACING_COMMAND
            \noBreak                                                           %! BreakMeasureMap(2):BREAK
            s1 * 3/16                                                          %! _make_global_skips(1)
        %@% \bacaStopTextSpanSPM                                               %! SPACING
        %@% - \baca-start-spm-left-only "[1/28]"                               %! SPACING
        %@% \bacaStartTextSpanSPM                                              %! SPACING

            % [Page_Layout measure 186]                                        %! _comment_measure_numbers
            \baca-new-spacing-section #1 #28                                   %! HorizontalSpacingSpecifier(1):SPACING_COMMAND
            \noBreak                                                           %! BreakMeasureMap(2):BREAK
            s1 * 1/4                                                           %! _make_global_skips(1)
        %@% \bacaStopTextSpanSPM                                               %! SPACING
        %@% - \baca-start-spm-left-only "[1/28]"                               %! SPACING
        %@% \bacaStartTextSpanSPM                                              %! SPACING

            % [Page_Layout measure 187]                                        %! _comment_measure_numbers
            \baca-new-spacing-section #1 #28                                   %! HorizontalSpacingSpecifier(1):SPACING_COMMAND
            \noBreak                                                           %! BreakMeasureMap(2):BREAK
            s1 * 3/16                                                          %! _make_global_skips(1)
        %@% \bacaStopTextSpanSPM                                               %! SPACING
        %@% - \baca-start-spm-left-only "[1/28]"                               %! SPACING
        %@% \bacaStartTextSpanSPM                                              %! SPACING

            % [Page_Layout measure 188]                                        %! _comment_measure_numbers
            \baca-new-spacing-section #1 #28                                   %! HorizontalSpacingSpecifier(1):SPACING_COMMAND
            \noBreak                                                           %! BreakMeasureMap(2):BREAK
            s1 * 1/4                                                           %! _make_global_skips(1)
        %@% \bacaStopTextSpanSPM                                               %! SPACING
        %@% - \baca-start-spm-left-only "[1/28]"                               %! SPACING
        %@% \bacaStartTextSpanSPM                                              %! SPACING

            % [Page_Layout measure 189]                                        %! _comment_measure_numbers
            \baca-new-spacing-section #1 #28                                   %! HorizontalSpacingSpecifier(1):SPACING_COMMAND
            \noBreak                                                           %! BreakMeasureMap(2):BREAK
            s1 * 3/16                                                          %! _make_global_skips(1)
        %@% \bacaStopTextSpanSPM                                               %! SPACING
        %@% - \baca-start-spm-left-only "[1/28]"                               %! SPACING
        %@% \bacaStartTextSpanSPM                                              %! SPACING

            % [Page_Layout measure 190]                                        %! _comment_measure_numbers
            \baca-new-spacing-section #1 #28                                   %! HorizontalSpacingSpecifier(1):SPACING_COMMAND
            \noBreak                                                           %! BreakMeasureMap(2):BREAK
            s1 * 1/4                                                           %! _make_global_skips(1)
        %@% \bacaStopTextSpanSPM                                               %! SPACING
        %@% - \baca-start-spm-left-only "[1/28]"                               %! SPACING
        %@% \bacaStartTextSpanSPM                                              %! SPACING

            % [Page_Layout measure 191]                                        %! _comment_measure_numbers
            \baca-new-spacing-section #1 #28                                   %! HorizontalSpacingSpecifier(1):SPACING_COMMAND
            \noBreak                                                           %! BreakMeasureMap(2):BREAK
            s1 * 3/16                                                          %! _make_global_skips(1)
        %@% \bacaStopTextSpanSPM                                               %! SPACING
        %@% - \baca-start-spm-left-only "[1/28]"                               %! SPACING
        %@% \bacaStartTextSpanSPM                                              %! SPACING

            % [Page_Layout measure 192]                                        %! _comment_measure_numbers
            \baca-new-spacing-section #1 #28                                   %! HorizontalSpacingSpecifier(1):SPACING_COMMAND
            \noBreak                                                           %! BreakMeasureMap(2):BREAK
            s1 * 1/4                                                           %! _make_global_skips(1)
        %@% \bacaStopTextSpanSPM                                               %! SPACING
        %@% - \baca-start-spm-left-only "[1/28]"                               %! SPACING
        %@% \bacaStartTextSpanSPM                                              %! SPACING

            % [Page_Layout measure 193]                                        %! _comment_measure_numbers
            \baca-new-spacing-section #1 #28                                   %! HorizontalSpacingSpecifier(1):SPACING_COMMAND
            \noBreak                                                           %! BreakMeasureMap(2):BREAK
            s1 * 3/16                                                          %! _make_global_skips(1)
        %@% \bacaStopTextSpanSPM                                               %! SPACING
        %@% - \baca-start-spm-left-only "[1/28]"                               %! SPACING
        %@% \bacaStartTextSpanSPM                                              %! SPACING

            % [Page_Layout measure 194]                                        %! _comment_measure_numbers
            \baca-new-spacing-section #1 #28                                   %! HorizontalSpacingSpecifier(1):SPACING_COMMAND
            \noBreak                                                           %! BreakMeasureMap(2):BREAK
            s1 * 1/4                                                           %! _make_global_skips(1)
        %@% \bacaStopTextSpanSPM                                               %! SPACING
        %@% - \baca-start-spm-left-only "[1/28]"                               %! SPACING
        %@% \bacaStartTextSpanSPM                                              %! SPACING

            % [Page_Layout measure 195]                                        %! _comment_measure_numbers
            \baca-new-spacing-section #1 #28                                   %! HorizontalSpacingSpecifier(1):SPACING_COMMAND
            \noBreak                                                           %! BreakMeasureMap(2):BREAK
            s1 * 3/16                                                          %! _make_global_skips(1)
        %@% \bacaStopTextSpanSPM                                               %! SPACING
        %@% - \baca-start-spm-left-only "[1/28]"                               %! SPACING
        %@% \bacaStartTextSpanSPM                                              %! SPACING

            % [Page_Layout measure 196]                                        %! _comment_measure_numbers
            \baca-new-spacing-section #1 #28                                   %! HorizontalSpacingSpecifier(1):SPACING_COMMAND
            \noBreak                                                           %! BreakMeasureMap(2):BREAK
            s1 * 1/4                                                           %! _make_global_skips(1)
        %@% \bacaStopTextSpanSPM                                               %! SPACING
        %@% - \baca-start-spm-left-only "[1/28]"                               %! SPACING
        %@% \bacaStartTextSpanSPM                                              %! SPACING

            % [Page_Layout measure 197]                                        %! _comment_measure_numbers
            \baca-new-spacing-section #1 #28                                   %! HorizontalSpacingSpecifier(1):SPACING_COMMAND
            \noBreak                                                           %! BreakMeasureMap(2):BREAK
            s1 * 3/16                                                          %! _make_global_skips(1)
        %@% \bacaStopTextSpanSPM                                               %! SPACING
        %@% - \baca-start-spm-left-only "[1/28]"                               %! SPACING
        %@% \bacaStartTextSpanSPM                                              %! SPACING

            % [Page_Layout measure 198]                                        %! _comment_measure_numbers
            \baca-new-spacing-section #1 #28                                   %! HorizontalSpacingSpecifier(1):SPACING_COMMAND
            \noBreak                                                           %! BreakMeasureMap(2):BREAK
            s1 * 1                                                             %! _make_global_skips(1)
        %@% \bacaStopTextSpanSPM                                               %! SPACING
        %@% - \baca-start-spm-left-only "[1/28]"                               %! SPACING
        %@% \bacaStartTextSpanSPM                                              %! SPACING

            % [Page_Layout measure 199]                                        %! _comment_measure_numbers
            \baca-new-spacing-section #1 #28                                   %! HorizontalSpacingSpecifier(1):SPACING_COMMAND
            \noBreak                                                           %! BreakMeasureMap(2):BREAK
            s1 * 1                                                             %! _make_global_skips(1)
        %@% \bacaStopTextSpanSPM                                               %! SPACING
        %@% - \baca-start-spm-left-only "[1/28]"                               %! SPACING
        %@% \bacaStartTextSpanSPM                                              %! SPACING

            % [Page_Layout measure 200]                                        %! PHANTOM:_style_phantom_measures(1):_comment_measure_numbers
            \baca-new-spacing-section #1 #4                                    %! PHANTOM:_style_phantom_measures(1):HorizontalSpacingSpecifier(1):SPACING_COMMAND
            \noBreak                                                           %! PHANTOM:_style_phantom_measures(1):BreakMeasureMap(2):BREAK
            \baca-time-signature-transparent                                   %! PHANTOM:_style_phantom_measures(2)
            s1 * 1/4                                                           %! PHANTOM:_make_global_skips(3)
        %@% \bacaStopTextSpanSPM                                               %! PHANTOM:_style_phantom_measures(1):SPACING
            \once \override Score.BarLine.transparent = ##t                    %! PHANTOM:_style_phantom_measures(3)
            \once \override Score.SpanBar.transparent = ##t                    %! PHANTOM:_style_phantom_measures(3)

        }   %*% Page_Layout                                                    %! abjad.ScoreTemplate._make_global_context

    >>                                                                         %! abjad.ScoreTemplate._make_global_context

>>                                                                             %! baca.SingleStaffScoreTemplate.__call__