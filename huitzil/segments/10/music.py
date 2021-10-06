import abjad
import baca

from huitzil import library as huitzil

#########################################################################################
######################################### 10 [J] ########################################
#########################################################################################

time_signatures = [
    (1, 2),
    (1, 2),
    (1, 2),
    (1, 2),
    (1, 2),
    (1, 2),
    (1, 2),
    (1, 2),
    (1, 2),
    (3, 2),
]

segments = baca.segment_accumulation_defaults()
segments.pop("append_phantom_measure")

score = huitzil.make_empty_score()
voice_names = baca.accumulator.get_voice_names(score)

commands = baca.CommandAccumulator(
    **segments,
    instruments=huitzil.instruments,
    metronome_marks=huitzil.metronome_marks,
    time_signatures=time_signatures,
    voice_abbreviations=huitzil.voice_abbreviations,
    voice_names=voice_names,
)

# skips

commands(
    "Global_Skips",
    baca.metronome_mark(
        "66",
        selector=baca.selectors.leaf(1 - 1),
    ),
    baca.bar_line("|.", baca.selectors.skip(-1)),
)

# vc

commands(
    "vc",
    baca.mmrest_transparent(),
    baca.new(
        baca.bar_line_transparent(),
        baca.span_bar_transparent(),
        selector=baca.selectors.leaves(),
    ),
    baca.only_segment(
        baca.literal(
            [
                r"\stopStaff",
                r"\once \override Staff.StaffSymbol.line-positions =" " #'(4 -4)",
                r"\startStaff",
            ]
        ),
    ),
    baca.time_signature_stencil_false(),
)

commands(
    ("vc", -1),
    # baca.chunk(
    #    baca.mark(r"\huitzil-colophon-markup"),
    #    baca.rehearsal_mark_down(),
    #    baca.rehearsal_mark_padding(4),
    #    selector=baca.selectors.rleaf(-1),
    # ),
    baca.literal(
        [
            r"\once \override Score.RehearsalMark.direction = #down",
            r"\once \override Score.RehearsalMark.padding = 4",
            r"\mark \huitzil-colophon-markup",
        ],
        format_slot="after",
    ),
    baca.literal(
        [
            r"\override Score.BarLine.X-extent = #'(0 . 8)",
            r"\override Score.BarLine.extra-offset = #'(8 . 0)",
            r"\override Score.RehearsalMark.extra-offset = #'(4 . 0)",
            r"\override Score.SpanBar.extra-offset = #'(8 . 0)",
        ]
    ),
)

# vcr

# rh

commands(
    "rh",
    # TODO: fix right-broken text spanners and replace this:
    baca.literal(r"<> \stopTextSpan"),
    baca.literal(r"\override DynamicLineSpanner.staff-padding = 7"),
    baca.only_segment(
        baca.literal(
            [
                r"\stopStaff",
                r"\once \override RHStaff.StaffSymbol.line-positions ="
                " #'(8.2 8 7.8 -5.8 -6 -6.2)",
                r"\startStaff",
            ]
        ),
    ),
    baca.stem_tremolo(
        selector=baca.selectors.pleaves(),
    ),
    baca.text_script_parent_alignment_x(0),
    baca.text_script_self_alignment_x(0),
    baca.text_script_staff_padding(4),
)

commands(
    ("rh", (1, 10)),
    baca.markup(
        r"\baca-mpz-markup",
        direction=abjad.Down,
        literal=True,
    ),
    baca.hairpin(
        "mp > pp <",
        abjad.tweak(True).to_barline,
        final_hairpin=False,
        pieces=baca.selectors.clparts([1]),
    ),
)

commands(
    ("rh", (1, 12)),
    baca.make_monads("1/2 1/2 1/2 1/2 1/2 1/2 1/2 1/2 1/2 3/2"),
    baca.repeat_tie(
        baca.selectors.pleaves((1, None)),
    ),
    baca.staff_position(8),
    baca.text_spanner(
        "larg. => strett. =>",
        abjad.tweak(6).staff_padding,
        pieces=baca.selectors.clparts([1]),
    ),
)

if __name__ == "__main__":
    keywords = baca.interpret.make_keyword_dictionary(
        **baca.score_interpretation_defaults(),
        activate=(
            baca.tags.CLOCK_TIME,
            baca.tags.LOCAL_MEASURE_NUMBER,
        ),
        always_make_global_rests=True,
        do_not_require_margin_markup=True,
        error_on_not_yet_pitched=True,
        final_segment=True,
        score=score,
    )
    metadata, persist, score, timing = baca.build.interpret_segment(
        commands,
        **keywords,
    )
    lilypond_file = baca.make_lilypond_file(
        score,
        include_layout_ly=True,
        includes=["../../stylesheet.ily"],
    )
        preamble=baca.interpret.nonfirst_preamble.split("\n"),
    )
    baca.build.make_segment_pdf(lilypond_file, metadata, persist, timing)
