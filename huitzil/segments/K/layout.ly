% first_page_number = 11
% page_count = 1
% measure_count = 12 + 1
% time_signatures = [
% '1/1', '1/1', '1/1', '1/1', '1/1', '1/1', '1/1', '1/1', '1/1', '1/1', '1/1',
%  '1/1'
%  ]


\context Score = "Score"                                                       %! baca.SingleStaffScoreTemplate.__call__
\with                                                                          %! baca.SingleStaffScoreTemplate.__call__
{                                                                              %! baca.SingleStaffScoreTemplate.__call__
    currentBarNumber = #289                                                    %! baca.SingleStaffScoreTemplate.__call__
}                                                                              %! baca.SingleStaffScoreTemplate.__call__
<<                                                                             %! baca.SingleStaffScoreTemplate.__call__

    \context GlobalContext = "Global_Context"                                  %! abjad.ScoreTemplate._make_global_context
    <<                                                                         %! abjad.ScoreTemplate._make_global_context

        \context PageLayout = "Page_Layout"                                    %! abjad.ScoreTemplate._make_global_context
        {   %*% Page_Layout                                                    %! abjad.ScoreTemplate._make_global_context

            % [Page_Layout measure 289]                                        %! _comment_measure_numbers
            \baca-new-spacing-section #1 #20                                   %! HorizontalSpacingSpecifier(1):SPACING
            \autoPageBreaksOff                                                 %! BreakMeasureMap(1):BREAK
            \noBreak                                                           %! BreakMeasureMap(2):BREAK
            \baca-lbsd #15 #'(10 15)                                           %! BREAK:IndicatorCommand
            \pageBreak                                                         %! BREAK:IndicatorCommand
            s1 * 1                                                             %! _make_global_skips(1)
        %@% - \baca-start-spm-left-only "[1/20]"                               %! SPACING_MARKUP
        %@% \bacaStartTextSpanSPM                                              %! SPACING_MARKUP

            % [Page_Layout measure 290]                                        %! _comment_measure_numbers
            \baca-new-spacing-section #1 #20                                   %! HorizontalSpacingSpecifier(1):SPACING
            \noBreak                                                           %! BreakMeasureMap(2):BREAK
            s1 * 1                                                             %! _make_global_skips(1)
        %@% \bacaStopTextSpanSPM                                               %! SPACING_MARKUP
        %@% - \baca-start-spm-left-only "[1/20]"                               %! SPACING_MARKUP
        %@% \bacaStartTextSpanSPM                                              %! SPACING_MARKUP

            % [Page_Layout measure 291]                                        %! _comment_measure_numbers
            \baca-new-spacing-section #1 #20                                   %! HorizontalSpacingSpecifier(1):SPACING
            \noBreak                                                           %! BreakMeasureMap(2):BREAK
            s1 * 1                                                             %! _make_global_skips(1)
        %@% \bacaStopTextSpanSPM                                               %! SPACING_MARKUP
        %@% - \baca-start-spm-left-only "[1/20]"                               %! SPACING_MARKUP
        %@% \bacaStartTextSpanSPM                                              %! SPACING_MARKUP

            % [Page_Layout measure 292]                                        %! _comment_measure_numbers
            \baca-new-spacing-section #1 #20                                   %! HorizontalSpacingSpecifier(1):SPACING
            \noBreak                                                           %! BreakMeasureMap(2):BREAK
            s1 * 1                                                             %! _make_global_skips(1)
        %@% \bacaStopTextSpanSPM                                               %! SPACING_MARKUP
        %@% - \baca-start-spm-left-only "[1/20]"                               %! SPACING_MARKUP
        %@% \bacaStartTextSpanSPM                                              %! SPACING_MARKUP

            % [Page_Layout measure 293]                                        %! _comment_measure_numbers
            \baca-new-spacing-section #1 #20                                   %! HorizontalSpacingSpecifier(1):SPACING
            \noBreak                                                           %! BreakMeasureMap(2):BREAK
            s1 * 1                                                             %! _make_global_skips(1)
        %@% \bacaStopTextSpanSPM                                               %! SPACING_MARKUP
        %@% - \baca-start-spm-left-only "[1/20]"                               %! SPACING_MARKUP
        %@% \bacaStartTextSpanSPM                                              %! SPACING_MARKUP

            % [Page_Layout measure 294]                                        %! _comment_measure_numbers
            \baca-new-spacing-section #1 #20                                   %! HorizontalSpacingSpecifier(1):SPACING
            \noBreak                                                           %! BreakMeasureMap(2):BREAK
            s1 * 1                                                             %! _make_global_skips(1)
        %@% \bacaStopTextSpanSPM                                               %! SPACING_MARKUP
        %@% - \baca-start-spm-left-only "[1/20]"                               %! SPACING_MARKUP
        %@% \bacaStartTextSpanSPM                                              %! SPACING_MARKUP

            % [Page_Layout measure 295]                                        %! _comment_measure_numbers
            \baca-new-spacing-section #35 #480                                 %! HorizontalSpacingSpecifier(1):SPACING
            \noBreak                                                           %! BreakMeasureMap(2):BREAK
            s1 * 1                                                             %! _make_global_skips(1)
        %@% \bacaStopTextSpanSPM                                               %! SPACING_MARKUP
        %@% - \baca-start-spm-left-only "[[1/20 * 35/24]]"                     %! SPACING_MARKUP
        %@% \bacaStartTextSpanSPM                                              %! SPACING_MARKUP

            % [Page_Layout measure 296]                                        %! _comment_measure_numbers
            \baca-new-spacing-section #1 #20                                   %! HorizontalSpacingSpecifier(1):SPACING
            \noBreak                                                           %! BreakMeasureMap(2):BREAK
            \baca-lbsd #65 #'(10 15)                                           %! BREAK:IndicatorCommand
            \break                                                             %! BREAK:IndicatorCommand
            s1 * 1                                                             %! _make_global_skips(1)
        %@% \bacaStopTextSpanSPM                                               %! SPACING_MARKUP
        %@% - \baca-start-spm-left-only "[1/20]"                               %! SPACING_MARKUP
        %@% \bacaStartTextSpanSPM                                              %! SPACING_MARKUP

            % [Page_Layout measure 297]                                        %! _comment_measure_numbers
            \baca-new-spacing-section #1 #20                                   %! HorizontalSpacingSpecifier(1):SPACING
            \noBreak                                                           %! BreakMeasureMap(2):BREAK
            s1 * 1                                                             %! _make_global_skips(1)
        %@% \bacaStopTextSpanSPM                                               %! SPACING_MARKUP
        %@% - \baca-start-spm-left-only "[1/20]"                               %! SPACING_MARKUP
        %@% \bacaStartTextSpanSPM                                              %! SPACING_MARKUP

            % [Page_Layout measure 298]                                        %! _comment_measure_numbers
            \baca-new-spacing-section #1 #20                                   %! HorizontalSpacingSpecifier(1):SPACING
            \noBreak                                                           %! BreakMeasureMap(2):BREAK
            s1 * 1                                                             %! _make_global_skips(1)
        %@% \bacaStopTextSpanSPM                                               %! SPACING_MARKUP
        %@% - \baca-start-spm-left-only "[1/20]"                               %! SPACING_MARKUP
        %@% \bacaStartTextSpanSPM                                              %! SPACING_MARKUP

            % [Page_Layout measure 299]                                        %! _comment_measure_numbers
            \baca-new-spacing-section #1 #20                                   %! HorizontalSpacingSpecifier(1):SPACING
            \noBreak                                                           %! BreakMeasureMap(2):BREAK
            s1 * 1                                                             %! _make_global_skips(1)
        %@% \bacaStopTextSpanSPM                                               %! SPACING_MARKUP
        %@% - \baca-start-spm-left-only "[1/20]"                               %! SPACING_MARKUP
        %@% \bacaStartTextSpanSPM                                              %! SPACING_MARKUP

            % [Page_Layout measure 300]                                        %! _comment_measure_numbers
            \baca-new-spacing-section #1 #20                                   %! HorizontalSpacingSpecifier(1):SPACING
            \noBreak                                                           %! BreakMeasureMap(2):BREAK
            s1 * 1                                                             %! _make_global_skips(1)
        %@% \bacaStopTextSpanSPM                                               %! SPACING_MARKUP
        %@% - \baca-start-spm-left-only "[1/20]"                               %! SPACING_MARKUP
        %@% \bacaStartTextSpanSPM                                              %! SPACING_MARKUP

            % [Page_Layout measure 301]                                        %! PHANTOM:_style_phantom_measures(1):_comment_measure_numbers
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