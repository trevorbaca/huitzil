% first_page_number = 4
% page_count = 1
% measure_count = 23 + 1
% time_signatures = [
% '1/1', '1/1', '4/3', '1/1', '8/5', '1/1', '4/3', '1/1', '8/5', '1/1', '4/3',
%  '1/1', '8/5', '1/1', '4/3', '1/1', '8/5', '1/1', '1/1', '1/1', '1/1', '1/1',
%  '1/1'
%  ]


\context Score = "Score"                                                       %! baca.SingleStaffScoreTemplate.__call__
\with                                                                          %! baca.SingleStaffScoreTemplate.__call__
{                                                                              %! baca.SingleStaffScoreTemplate.__call__
    currentBarNumber = #81                                                     %! baca.SingleStaffScoreTemplate.__call__
}                                                                              %! baca.SingleStaffScoreTemplate.__call__
<<                                                                             %! baca.SingleStaffScoreTemplate.__call__

    \context GlobalContext = "Global_Context"                                  %! abjad.ScoreTemplate._make_global_context
    <<                                                                         %! abjad.ScoreTemplate._make_global_context

        \context PageLayout = "Page_Layout"                                    %! abjad.ScoreTemplate._make_global_context
        {   %*% Page_Layout                                                    %! abjad.ScoreTemplate._make_global_context

            % [Page_Layout measure 81]                                         %! _comment_measure_numbers
            \baca-new-spacing-section #1 #20                                   %! HorizontalSpacingSpecifier(1):SPACING
            \autoPageBreaksOff                                                 %! BreakMeasureMap(1):BREAK
            \noBreak                                                           %! BreakMeasureMap(2):BREAK
            \baca-lbsd #15 #'(10 15)                                           %! BREAK:IndicatorCommand
            \pageBreak                                                         %! BREAK:IndicatorCommand
            s1 * 1                                                             %! _make_global_skips(1)
        %@% - \baca-start-spm-left-only "[1/20]"                               %! SPACING_MARKUP
        %@% \bacaStartTextSpanSPM                                              %! SPACING_MARKUP

            % [Page_Layout measure 82]                                         %! _comment_measure_numbers
            \baca-new-spacing-section #1 #20                                   %! HorizontalSpacingSpecifier(1):SPACING
            \noBreak                                                           %! BreakMeasureMap(2):BREAK
            s1 * 1                                                             %! _make_global_skips(1)
        %@% \bacaStopTextSpanSPM                                               %! SPACING_MARKUP
        %@% - \baca-start-spm-left-only "[1/20]"                               %! SPACING_MARKUP
        %@% \bacaStartTextSpanSPM                                              %! SPACING_MARKUP

            % [Page_Layout measure 83]                                         %! _comment_measure_numbers
            \baca-new-spacing-section #1 #20                                   %! HorizontalSpacingSpecifier(1):SPACING
            \noBreak                                                           %! BreakMeasureMap(2):BREAK
            s1 * 4/3                                                           %! _make_global_skips(1)
        %@% \bacaStopTextSpanSPM                                               %! SPACING_MARKUP
        %@% - \baca-start-spm-left-only "[1/20]"                               %! SPACING_MARKUP
        %@% \bacaStartTextSpanSPM                                              %! SPACING_MARKUP

            % [Page_Layout measure 84]                                         %! _comment_measure_numbers
            \baca-new-spacing-section #1 #20                                   %! HorizontalSpacingSpecifier(1):SPACING
            \noBreak                                                           %! BreakMeasureMap(2):BREAK
            s1 * 1                                                             %! _make_global_skips(1)
        %@% \bacaStopTextSpanSPM                                               %! SPACING_MARKUP
        %@% - \baca-start-spm-left-only "[1/20]"                               %! SPACING_MARKUP
        %@% \bacaStartTextSpanSPM                                              %! SPACING_MARKUP

            % [Page_Layout measure 85]                                         %! _comment_measure_numbers
            \baca-new-spacing-section #1 #20                                   %! HorizontalSpacingSpecifier(1):SPACING
            \noBreak                                                           %! BreakMeasureMap(2):BREAK
            s1 * 8/5                                                           %! _make_global_skips(1)
        %@% \bacaStopTextSpanSPM                                               %! SPACING_MARKUP
        %@% - \baca-start-spm-left-only "[1/20]"                               %! SPACING_MARKUP
        %@% \bacaStartTextSpanSPM                                              %! SPACING_MARKUP

            % [Page_Layout measure 86]                                         %! _comment_measure_numbers
            \baca-new-spacing-section #1 #20                                   %! HorizontalSpacingSpecifier(1):SPACING
            \noBreak                                                           %! BreakMeasureMap(2):BREAK
            s1 * 1                                                             %! _make_global_skips(1)
        %@% \bacaStopTextSpanSPM                                               %! SPACING_MARKUP
        %@% - \baca-start-spm-left-only "[1/20]"                               %! SPACING_MARKUP
        %@% \bacaStartTextSpanSPM                                              %! SPACING_MARKUP

            % [Page_Layout measure 87]                                         %! _comment_measure_numbers
            \baca-new-spacing-section #35 #480                                 %! HorizontalSpacingSpecifier(1):SPACING
            \noBreak                                                           %! BreakMeasureMap(2):BREAK
            s1 * 4/3                                                           %! _make_global_skips(1)
        %@% \bacaStopTextSpanSPM                                               %! SPACING_MARKUP
        %@% - \baca-start-spm-left-only "[[1/20 * 35/24]]"                     %! SPACING_MARKUP
        %@% \bacaStartTextSpanSPM                                              %! SPACING_MARKUP

            % [Page_Layout measure 88]                                         %! _comment_measure_numbers
            \baca-new-spacing-section #1 #20                                   %! HorizontalSpacingSpecifier(1):SPACING
            \noBreak                                                           %! BreakMeasureMap(2):BREAK
            \baca-lbsd #65 #'(10 17)                                           %! BREAK:IndicatorCommand
            \break                                                             %! BREAK:IndicatorCommand
            s1 * 1                                                             %! _make_global_skips(1)
        %@% \bacaStopTextSpanSPM                                               %! SPACING_MARKUP
        %@% - \baca-start-spm-left-only "[1/20]"                               %! SPACING_MARKUP
        %@% \bacaStartTextSpanSPM                                              %! SPACING_MARKUP

            % [Page_Layout measure 89]                                         %! _comment_measure_numbers
            \baca-new-spacing-section #1 #20                                   %! HorizontalSpacingSpecifier(1):SPACING
            \noBreak                                                           %! BreakMeasureMap(2):BREAK
            s1 * 8/5                                                           %! _make_global_skips(1)
        %@% \bacaStopTextSpanSPM                                               %! SPACING_MARKUP
        %@% - \baca-start-spm-left-only "[1/20]"                               %! SPACING_MARKUP
        %@% \bacaStartTextSpanSPM                                              %! SPACING_MARKUP

            % [Page_Layout measure 90]                                         %! _comment_measure_numbers
            \baca-new-spacing-section #1 #20                                   %! HorizontalSpacingSpecifier(1):SPACING
            \noBreak                                                           %! BreakMeasureMap(2):BREAK
            s1 * 1                                                             %! _make_global_skips(1)
        %@% \bacaStopTextSpanSPM                                               %! SPACING_MARKUP
        %@% - \baca-start-spm-left-only "[1/20]"                               %! SPACING_MARKUP
        %@% \bacaStartTextSpanSPM                                              %! SPACING_MARKUP

            % [Page_Layout measure 91]                                         %! _comment_measure_numbers
            \baca-new-spacing-section #1 #20                                   %! HorizontalSpacingSpecifier(1):SPACING
            \noBreak                                                           %! BreakMeasureMap(2):BREAK
            s1 * 4/3                                                           %! _make_global_skips(1)
        %@% \bacaStopTextSpanSPM                                               %! SPACING_MARKUP
        %@% - \baca-start-spm-left-only "[1/20]"                               %! SPACING_MARKUP
        %@% \bacaStartTextSpanSPM                                              %! SPACING_MARKUP

            % [Page_Layout measure 92]                                         %! _comment_measure_numbers
            \baca-new-spacing-section #1 #20                                   %! HorizontalSpacingSpecifier(1):SPACING
            \noBreak                                                           %! BreakMeasureMap(2):BREAK
            s1 * 1                                                             %! _make_global_skips(1)
        %@% \bacaStopTextSpanSPM                                               %! SPACING_MARKUP
        %@% - \baca-start-spm-left-only "[1/20]"                               %! SPACING_MARKUP
        %@% \bacaStartTextSpanSPM                                              %! SPACING_MARKUP

            % [Page_Layout measure 93]                                         %! _comment_measure_numbers
            \baca-new-spacing-section #1 #20                                   %! HorizontalSpacingSpecifier(1):SPACING
            \noBreak                                                           %! BreakMeasureMap(2):BREAK
            s1 * 8/5                                                           %! _make_global_skips(1)
        %@% \bacaStopTextSpanSPM                                               %! SPACING_MARKUP
        %@% - \baca-start-spm-left-only "[1/20]"                               %! SPACING_MARKUP
        %@% \bacaStartTextSpanSPM                                              %! SPACING_MARKUP

            % [Page_Layout measure 94]                                         %! _comment_measure_numbers
            \baca-new-spacing-section #35 #480                                 %! HorizontalSpacingSpecifier(1):SPACING
            \noBreak                                                           %! BreakMeasureMap(2):BREAK
            s1 * 1                                                             %! _make_global_skips(1)
        %@% \bacaStopTextSpanSPM                                               %! SPACING_MARKUP
        %@% - \baca-start-spm-left-only "[[1/20 * 35/24]]"                     %! SPACING_MARKUP
        %@% \bacaStartTextSpanSPM                                              %! SPACING_MARKUP

            % [Page_Layout measure 95]                                         %! _comment_measure_numbers
            \baca-new-spacing-section #1 #20                                   %! HorizontalSpacingSpecifier(1):SPACING
            \noBreak                                                           %! BreakMeasureMap(2):BREAK
            \baca-lbsd #115 #'(10 15)                                          %! BREAK:IndicatorCommand
            \break                                                             %! BREAK:IndicatorCommand
            s1 * 4/3                                                           %! _make_global_skips(1)
        %@% \bacaStopTextSpanSPM                                               %! SPACING_MARKUP
        %@% - \baca-start-spm-left-only "[1/20]"                               %! SPACING_MARKUP
        %@% \bacaStartTextSpanSPM                                              %! SPACING_MARKUP

            % [Page_Layout measure 96]                                         %! _comment_measure_numbers
            \baca-new-spacing-section #1 #20                                   %! HorizontalSpacingSpecifier(1):SPACING
            \noBreak                                                           %! BreakMeasureMap(2):BREAK
            s1 * 1                                                             %! _make_global_skips(1)
        %@% \bacaStopTextSpanSPM                                               %! SPACING_MARKUP
        %@% - \baca-start-spm-left-only "[1/20]"                               %! SPACING_MARKUP
        %@% \bacaStartTextSpanSPM                                              %! SPACING_MARKUP

            % [Page_Layout measure 97]                                         %! _comment_measure_numbers
            \baca-new-spacing-section #1 #20                                   %! HorizontalSpacingSpecifier(1):SPACING
            \noBreak                                                           %! BreakMeasureMap(2):BREAK
            s1 * 8/5                                                           %! _make_global_skips(1)
        %@% \bacaStopTextSpanSPM                                               %! SPACING_MARKUP
        %@% - \baca-start-spm-left-only "[1/20]"                               %! SPACING_MARKUP
        %@% \bacaStartTextSpanSPM                                              %! SPACING_MARKUP

            % [Page_Layout measure 98]                                         %! _comment_measure_numbers
            \baca-new-spacing-section #1 #20                                   %! HorizontalSpacingSpecifier(1):SPACING
            \noBreak                                                           %! BreakMeasureMap(2):BREAK
            s1 * 1                                                             %! _make_global_skips(1)
        %@% \bacaStopTextSpanSPM                                               %! SPACING_MARKUP
        %@% - \baca-start-spm-left-only "[1/20]"                               %! SPACING_MARKUP
        %@% \bacaStartTextSpanSPM                                              %! SPACING_MARKUP

            % [Page_Layout measure 99]                                         %! _comment_measure_numbers
            \baca-new-spacing-section #1 #20                                   %! HorizontalSpacingSpecifier(1):SPACING
            \noBreak                                                           %! BreakMeasureMap(2):BREAK
            s1 * 1                                                             %! _make_global_skips(1)
        %@% \bacaStopTextSpanSPM                                               %! SPACING_MARKUP
        %@% - \baca-start-spm-left-only "[1/20]"                               %! SPACING_MARKUP
        %@% \bacaStartTextSpanSPM                                              %! SPACING_MARKUP

            % [Page_Layout measure 100]                                        %! _comment_measure_numbers
            \baca-new-spacing-section #1 #20                                   %! HorizontalSpacingSpecifier(1):SPACING
            \noBreak                                                           %! BreakMeasureMap(2):BREAK
            s1 * 1                                                             %! _make_global_skips(1)
        %@% \bacaStopTextSpanSPM                                               %! SPACING_MARKUP
        %@% - \baca-start-spm-left-only "[1/20]"                               %! SPACING_MARKUP
        %@% \bacaStartTextSpanSPM                                              %! SPACING_MARKUP

            % [Page_Layout measure 101]                                        %! _comment_measure_numbers
            \baca-new-spacing-section #35 #480                                 %! HorizontalSpacingSpecifier(1):SPACING
            \noBreak                                                           %! BreakMeasureMap(2):BREAK
            s1 * 1                                                             %! _make_global_skips(1)
        %@% \bacaStopTextSpanSPM                                               %! SPACING_MARKUP
        %@% - \baca-start-spm-left-only "[[1/20 * 35/24]]"                     %! SPACING_MARKUP
        %@% \bacaStartTextSpanSPM                                              %! SPACING_MARKUP

            % [Page_Layout measure 102]                                        %! _comment_measure_numbers
            \baca-new-spacing-section #1 #20                                   %! HorizontalSpacingSpecifier(1):SPACING
            \noBreak                                                           %! BreakMeasureMap(2):BREAK
            \baca-lbsd #165 #'(10 15)                                          %! BREAK:IndicatorCommand
            \break                                                             %! BREAK:IndicatorCommand
            s1 * 1                                                             %! _make_global_skips(1)
        %@% \bacaStopTextSpanSPM                                               %! SPACING_MARKUP
        %@% - \baca-start-spm-left-only "[1/20]"                               %! SPACING_MARKUP
        %@% \bacaStartTextSpanSPM                                              %! SPACING_MARKUP

            % [Page_Layout measure 103]                                        %! _comment_measure_numbers
            \baca-new-spacing-section #1 #20                                   %! HorizontalSpacingSpecifier(1):SPACING
            \noBreak                                                           %! BreakMeasureMap(2):BREAK
            s1 * 1                                                             %! _make_global_skips(1)
        %@% \bacaStopTextSpanSPM                                               %! SPACING_MARKUP
        %@% - \baca-start-spm-left-only "[1/20]"                               %! SPACING_MARKUP
        %@% \bacaStartTextSpanSPM                                              %! SPACING_MARKUP

            % [Page_Layout measure 104]                                        %! PHANTOM:_style_phantom_measures(1):_comment_measure_numbers
            \baca-new-spacing-section #1 #4                                    %! PHANTOM:_style_phantom_measures(1):HorizontalSpacingSpecifier(1):SPACING
            \noBreak                                                           %! PHANTOM:_style_phantom_measures(1):BreakMeasureMap(2):BREAK
            \baca-time-signature-transparent                                   %! PHANTOM:_style_phantom_measures(2)
            s1 * 1/4                                                           %! PHANTOM:_make_global_skips(3)
        %@% \bacaStopTextSpanSPM                                               %! PHANTOM:_style_phantom_measures(1):SPACING_MARKUP
            \once \override Score.BarLine.transparent = ##t                    %! PHANTOM:_style_phantom_measures(3)
            \once \override Score.SpanBar.transparent = ##t                    %! PHANTOM:_style_phantom_measures(3)

        }   %*% Page_Layout                                                    %! abjad.ScoreTemplate._make_global_context

    >>                                                                         %! abjad.ScoreTemplate._make_global_context

>>                                                                             %! baca.SingleStaffScoreTemplate.__call__