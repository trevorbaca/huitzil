% first_page_number = 10
% page_count = 1
% measure_count = 10 + 1
% time_signatures = [
% '1/2', '1/2', '1/2', '1/2', '1/2', '1/2', '1/2', '1/2', '1/2', '3/2'
%  ]


\context Score = "Score"                                                       %! baca.SingleStaffScoreTemplate.__call__()
\with                                                                          %! baca.SingleStaffScoreTemplate.__call__()
{                                                                              %! baca.SingleStaffScoreTemplate.__call__()
    currentBarNumber = 249                                                     %! baca.SingleStaffScoreTemplate.__call__()
}                                                                              %! baca.SingleStaffScoreTemplate.__call__()
<<                                                                             %! baca.SingleStaffScoreTemplate.__call__()

    \context GlobalContext = "Global_Context"                                  %! abjad.ScoreTemplate._make_global_context()
    <<                                                                         %! abjad.ScoreTemplate._make_global_context()

        \context PageLayout = "Page_Layout"                                    %! abjad.ScoreTemplate._make_global_context()
        {   %*% Page_Layout                                                    %! abjad.ScoreTemplate._make_global_context()

            % [Page_Layout measure 249]                                        %! baca.SegmentMaker._comment_measure_numbers()
            \baca-new-spacing-section #1 #32                                   %! SPACING_COMMAND:baca.HorizontalSpacingSpecifier.__call__(1)
            \autoPageBreaksOff                                                 %! BREAK:baca.BreakMeasureMap.__call__(1)
            \noBreak                                                           %! BREAK:baca.BreakMeasureMap.__call__(2)
            \baca-lbsd #17 #'(10 15)                                           %! BREAK:baca.IndicatorCommand._call()
            \pageBreak                                                         %! BREAK:baca.IndicatorCommand._call()
            s1 * 1/2                                                           %! baca.SegmentMaker._make_global_skips(1)
        %@% - \baca-start-spm-left-only "[1/32]"                               %! SPACING:baca.HorizontalSpacingSpecifier.__call__(2)
        %@% \bacaStartTextSpanSPM                                              %! SPACING:baca.HorizontalSpacingSpecifier.__call__(2)

            % [Page_Layout measure 250]                                        %! baca.SegmentMaker._comment_measure_numbers()
            \baca-new-spacing-section #1 #32                                   %! SPACING_COMMAND:baca.HorizontalSpacingSpecifier.__call__(1)
            \noBreak                                                           %! BREAK:baca.BreakMeasureMap.__call__(2)
            s1 * 1/2                                                           %! baca.SegmentMaker._make_global_skips(1)
        %@% \bacaStopTextSpanSPM                                               %! SPACING:baca.HorizontalSpacingSpecifier.__call__(3)
        %@% - \baca-start-spm-left-only "[1/32]"                               %! SPACING:baca.HorizontalSpacingSpecifier.__call__(2)
        %@% \bacaStartTextSpanSPM                                              %! SPACING:baca.HorizontalSpacingSpecifier.__call__(2)

            % [Page_Layout measure 251]                                        %! baca.SegmentMaker._comment_measure_numbers()
            \baca-new-spacing-section #1 #32                                   %! SPACING_COMMAND:baca.HorizontalSpacingSpecifier.__call__(1)
            \noBreak                                                           %! BREAK:baca.BreakMeasureMap.__call__(2)
            s1 * 1/2                                                           %! baca.SegmentMaker._make_global_skips(1)
        %@% \bacaStopTextSpanSPM                                               %! SPACING:baca.HorizontalSpacingSpecifier.__call__(3)
        %@% - \baca-start-spm-left-only "[1/32]"                               %! SPACING:baca.HorizontalSpacingSpecifier.__call__(2)
        %@% \bacaStartTextSpanSPM                                              %! SPACING:baca.HorizontalSpacingSpecifier.__call__(2)

            % [Page_Layout measure 252]                                        %! baca.SegmentMaker._comment_measure_numbers()
            \baca-new-spacing-section #1 #32                                   %! SPACING_COMMAND:baca.HorizontalSpacingSpecifier.__call__(1)
            \noBreak                                                           %! BREAK:baca.BreakMeasureMap.__call__(2)
            s1 * 1/2                                                           %! baca.SegmentMaker._make_global_skips(1)
        %@% \bacaStopTextSpanSPM                                               %! SPACING:baca.HorizontalSpacingSpecifier.__call__(3)
        %@% - \baca-start-spm-left-only "[1/32]"                               %! SPACING:baca.HorizontalSpacingSpecifier.__call__(2)
        %@% \bacaStartTextSpanSPM                                              %! SPACING:baca.HorizontalSpacingSpecifier.__call__(2)

            % [Page_Layout measure 253]                                        %! baca.SegmentMaker._comment_measure_numbers()
            \baca-new-spacing-section #1 #32                                   %! SPACING_COMMAND:baca.HorizontalSpacingSpecifier.__call__(1)
            \noBreak                                                           %! BREAK:baca.BreakMeasureMap.__call__(2)
            s1 * 1/2                                                           %! baca.SegmentMaker._make_global_skips(1)
        %@% \bacaStopTextSpanSPM                                               %! SPACING:baca.HorizontalSpacingSpecifier.__call__(3)
        %@% - \baca-start-spm-left-only "[1/32]"                               %! SPACING:baca.HorizontalSpacingSpecifier.__call__(2)
        %@% \bacaStartTextSpanSPM                                              %! SPACING:baca.HorizontalSpacingSpecifier.__call__(2)

            % [Page_Layout measure 254]                                        %! baca.SegmentMaker._comment_measure_numbers()
            \baca-new-spacing-section #1 #32                                   %! SPACING_COMMAND:baca.HorizontalSpacingSpecifier.__call__(1)
            \noBreak                                                           %! BREAK:baca.BreakMeasureMap.__call__(2)
            s1 * 1/2                                                           %! baca.SegmentMaker._make_global_skips(1)
        %@% \bacaStopTextSpanSPM                                               %! SPACING:baca.HorizontalSpacingSpecifier.__call__(3)
        %@% - \baca-start-spm-left-only "[1/32]"                               %! SPACING:baca.HorizontalSpacingSpecifier.__call__(2)
        %@% \bacaStartTextSpanSPM                                              %! SPACING:baca.HorizontalSpacingSpecifier.__call__(2)

            % [Page_Layout measure 255]                                        %! baca.SegmentMaker._comment_measure_numbers()
            \baca-new-spacing-section #1 #32                                   %! SPACING_COMMAND:baca.HorizontalSpacingSpecifier.__call__(1)
            \noBreak                                                           %! BREAK:baca.BreakMeasureMap.__call__(2)
            s1 * 1/2                                                           %! baca.SegmentMaker._make_global_skips(1)
        %@% \bacaStopTextSpanSPM                                               %! SPACING:baca.HorizontalSpacingSpecifier.__call__(3)
        %@% - \baca-start-spm-left-only "[1/32]"                               %! SPACING:baca.HorizontalSpacingSpecifier.__call__(2)
        %@% \bacaStartTextSpanSPM                                              %! SPACING:baca.HorizontalSpacingSpecifier.__call__(2)

            % [Page_Layout measure 256]                                        %! baca.SegmentMaker._comment_measure_numbers()
            \baca-new-spacing-section #1 #32                                   %! SPACING_COMMAND:baca.HorizontalSpacingSpecifier.__call__(1)
            \noBreak                                                           %! BREAK:baca.BreakMeasureMap.__call__(2)
            s1 * 1/2                                                           %! baca.SegmentMaker._make_global_skips(1)
        %@% \bacaStopTextSpanSPM                                               %! SPACING:baca.HorizontalSpacingSpecifier.__call__(3)
        %@% - \baca-start-spm-left-only "[1/32]"                               %! SPACING:baca.HorizontalSpacingSpecifier.__call__(2)
        %@% \bacaStartTextSpanSPM                                              %! SPACING:baca.HorizontalSpacingSpecifier.__call__(2)

            % [Page_Layout measure 257]                                        %! baca.SegmentMaker._comment_measure_numbers()
            \baca-new-spacing-section #1 #32                                   %! SPACING_COMMAND:baca.HorizontalSpacingSpecifier.__call__(1)
            \noBreak                                                           %! BREAK:baca.BreakMeasureMap.__call__(2)
            s1 * 1/2                                                           %! baca.SegmentMaker._make_global_skips(1)
        %@% \bacaStopTextSpanSPM                                               %! SPACING:baca.HorizontalSpacingSpecifier.__call__(3)
        %@% - \baca-start-spm-left-only "[1/32]"                               %! SPACING:baca.HorizontalSpacingSpecifier.__call__(2)
        %@% \bacaStartTextSpanSPM                                              %! SPACING:baca.HorizontalSpacingSpecifier.__call__(2)

            % [Page_Layout measure 258]                                        %! baca.SegmentMaker._comment_measure_numbers()
            \baca-new-spacing-section #1 #32                                   %! SPACING_COMMAND:baca.HorizontalSpacingSpecifier.__call__(1)
            \noBreak                                                           %! BREAK:baca.BreakMeasureMap.__call__(2)
            s1 * 3/2                                                           %! baca.SegmentMaker._make_global_skips(1)
        %@% \bacaStopTextSpanSPM                                               %! SPACING:baca.HorizontalSpacingSpecifier.__call__(3)
        %@% - \baca-start-spm-left-only "[1/32]"                               %! SPACING:baca.HorizontalSpacingSpecifier.__call__(2)
        %@% \bacaStartTextSpanSPM                                              %! SPACING:baca.HorizontalSpacingSpecifier.__call__(2)

            % [Page_Layout measure 259]                                        %! baca.SegmentMaker._comment_measure_numbers():baca.SegmentMaker._style_phantom_measures(1):PHANTOM
            \baca-new-spacing-section #1 #4                                    %! SPACING_COMMAND:baca.HorizontalSpacingSpecifier.__call__(1):baca.SegmentMaker._style_phantom_measures(1):PHANTOM
            \noBreak                                                           %! BREAK:baca.BreakMeasureMap.__call__(2):baca.SegmentMaker._style_phantom_measures(1):PHANTOM
            \baca-time-signature-transparent                                   %! baca.SegmentMaker._style_phantom_measures(2):PHANTOM
            s1 * 1/4                                                           %! baca.SegmentMaker._make_global_skips(3):PHANTOM
        %@% \bacaStopTextSpanSPM                                               %! SPACING:baca.HorizontalSpacingSpecifier.__call__(3):baca.SegmentMaker._style_phantom_measures(1):PHANTOM
            \once \override Score.BarLine.transparent = ##t                    %! baca.SegmentMaker._style_phantom_measures(3):PHANTOM
            \once \override Score.SpanBar.transparent = ##t                    %! baca.SegmentMaker._style_phantom_measures(3):PHANTOM

        }   %*% Page_Layout                                                    %! abjad.ScoreTemplate._make_global_context()

    >>                                                                         %! abjad.ScoreTemplate._make_global_context()

>>                                                                             %! baca.SingleStaffScoreTemplate.__call__()