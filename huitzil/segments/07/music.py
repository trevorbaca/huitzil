import abjad
import baca

from huitzil import library as huitzil

#########################################################################################
######################################### 07 [G] ########################################
#########################################################################################

time_signatures = [
    (1, 4),
    (3, 16),
    (1, 4),
    (3, 16),
    (1, 4),
    (3, 16),
    (1, 4),
    (3, 16),
    (1, 4),
    (3, 16),
    (1, 4),
    (3, 16),
    (1, 4),
    (3, 16),
    (1, 4),
    (3, 16),
    (1, 4),
    (3, 16),
    (1, 4),
    (3, 16),
    (1, 4),
    (3, 16),
    (1, 4),
    (3, 16),
    (1, 1),
    (1, 1),
]

score = huitzil.make_empty_score()
voice_names = baca.accumulator.get_voice_names(score)

commands = baca.CommandAccumulator(
    **baca.segment_accumulation_defaults(),
    instruments=huitzil.instruments,
    metronome_marks=huitzil.metronome_marks,
    time_signatures=time_signatures,
    voice_abbreviations=huitzil.voice_abbreviations,
    voice_names=voice_names,
)

commands(
    "Global_Skips",
    baca.metronome_mark(
        "88",
        selector=baca.selectors.leaf(1 - 1),
    ),
    baca.metronome_mark(
        "88",
        selector=baca.selectors.leaf(25 - 1),
    ),
    baca.metronome_mark(
        baca.Ritardando(),
        selector=baca.selectors.leaf(25 - 1),
    ),
)

# vc

commands(
    "vc",
    baca.clef("bass"),
    baca.literal(
        [
            r"\stopStaff",
            r"\once \override Staff.StaffSymbol.line-count = 5",
            r"\startStaff",
        ]
    ),
    baca.mmrest_transparent(),
    baca.new(
        baca.bar_line_transparent(),
        baca.span_bar_transparent(),
        selector=baca.selectors.leaves(),
    ),
    baca.pitch(
        "A1",
        selector=baca.selectors.rleaf(-1),
    ),
    baca.time_signature_stencil_false(),
)

commands(
    ("vc", 1),
    baca.markup(
        r"\baca-string-iii-markup",
        abjad.tweak(2.5).padding,
        direction=abjad.Down,
    ),
    baca.pitch("A2"),
    baca.skeleton("{ c1 * 1/4 }"),
)

commands(
    ("vc", (14, 24)),
    baca.skeleton("{ c1 * 19/8 }"),
    baca.suite(
        baca.pitch("A2"),
        baca.repeat_tie(
            baca.selectors.pleaf(0),
            allow_rest=True,
        ),
    ),
)

commands(
    ("vc", (25, 26)),
    baca.markup(
        r"\huitzil-string-three-to-four-markup",
        abjad.tweak(2.5).padding,
        abjad.tweak(0).parent_alignment_X,
        abjad.tweak(-0.05).self_alignment_X,
        direction=abjad.Down,
    ),
    baca.pitch("G2"),
    baca.skeleton("{ c1 * 2 }"),
)

# vcr

commands(
    ("vcr", 2),
    baca.mmrest_transparent(),
)

# rh

commands(
    "rh",
    baca.chunk(
        baca.literal(
            [
                r"\once \override RHStaff.StaffSymbol.line-positions ="
                " #'(8.2 8  7.8 -5.8 -6 -6.2 -8 -10 -12 -14 -16 -17.8 -18 -18.2)",
                r"\morleyDashedStaffSymbolLines #'("
                "   #f  #f #f  #f   #f #f   #t #t  #t  #t  #t  #f    #f  #f)",
            ]
        ),
        baca.staff_lines(14),
    ),
    baca.literal(r"\override DynamicLineSpanner.staff-padding = 7"),
    baca.markup(
        r"\huitzil-ascending-fingerboard-markup",
        abjad.tweak(-1).self_alignment_X,
        abjad.tweak(4.5).staff_padding,
    ),
    baca.markup(
        r"\huitzil-directly-above-end-of-fingerboard-markup",
        abjad.tweak(-1).self_alignment_X,
        abjad.tweak(1).staff_padding,
    ),
    baca.stem_tremolo(
        selector=baca.selectors.pleaves(),
    ),
    baca.text_script_parent_alignment_x(0),
    baca.text_script_self_alignment_x(0),
    baca.text_script_staff_padding(4),
)

commands(
    ("rh", (1, 8)),
    baca.make_monads("1/4 3/16 1/4 3/16 1/4 3/16 1/4 3/16"),
    baca.staff_positions(
        [-6, -6, -8, -8, -10, -10, -12, -12],
        allow_repeats=True,
    ),
)

commands(
    ("rh", (1, 20)),
    baca.markup(
        r"\baca-fz-markup",
        direction=abjad.Down,
        selector=baca.selectors.leaves(),
    ),
)

commands(
    ("rh", (1, 13)),
    baca.hairpin("mp > pp"),
)

commands(
    ("rh", (14, 26)),
    baca.hairpin("(pp) < ff"),
)

commands(
    ("rh", (9, 16)),
    baca.make_monads("1/4 3/16 1/4 3/16 1/4 3/16 1/4 3/16"),
    baca.staff_positions(
        [-14, -14, -16, -16, -18, -18, -16, -16],
        allow_out_of_range=True,
        allow_repeats=True,
    ),
)

commands(
    ("rh", 13),
    baca.markup(
        r"\huitzil-close-to-lh-markup",
        abjad.tweak(-0.5).self_alignment_X,
        abjad.tweak(2).staff_padding,
    ),
)

commands(
    ("rh", 14),
    baca.markup(
        r"\huitzil-descending-fingerboard-markup",
        abjad.tweak(-1).self_alignment_X,
        abjad.tweak(2).staff_padding,
    ),
)

commands(
    ("rh", (17, 24)),
    baca.make_monads("1/4 3/16 1/4 3/16 1/4 3/16 1/4 3/16"),
    baca.staff_positions(
        [-14, -14, -12, -12, -10, -10, -8, -8],
        allow_repeats=True,
    ),
)

commands(
    ("rh", (25, 26)),
    baca.hairpin(
        ">",
        right_broken=True,
        selector=baca.selectors.leaves((-1, None), rleak=True),
    ),
    baca.literal(
        [
            r"\stopStaff",
            r"\once \override RHStaff.StaffSymbol.line-positions ="
            " #'(8.2 8 7.8 6 4 2 0 -2 -4 -5.8 -6 -6.2)",
            r"\startStaff",
        ]
    ),
    baca.make_monads("1 1"),
    baca.markup(
        r"\huitzil-directly-above-end-of-fingerboard-column-markup",
        abjad.tweak(-0.5).self_alignment_X,
        abjad.tweak(2).staff_padding,
    ),
    baca.parenthesize(
        selector=baca.selectors.pleaf(-1),
    ),
    baca.staff_positions(
        [-6, 0, 6],
        selector=baca.selectors.rleaves(),
    ),
)

# stage 2 (after staff position commands)

commands(
    ("vc", (14, 24)),
    baca.glissando(
        selector=baca.selectors.rleaves(),
    ),
)

commands(
    ("vc", (25, 26)),
    baca.glissando(
        right_broken=True,
        selector=baca.selectors.rleaves(),
    ),
)

commands(
    "rh",
    baca.glissando(
        right_broken=True,
        selector=baca.selectors.rleaves(),
    ),
)

if __name__ == "__main__":
    metadata, persist, score, timing = baca.build.interpret_segment(
        score,
        commands,
        **baca.score_interpretation_defaults(),
        activate=(
            baca.tags.CLOCK_TIME,
            baca.tags.LOCAL_MEASURE_NUMBER,
        ),
        always_make_global_rests=True,
        do_not_require_margin_markup=True,
        error_on_not_yet_pitched=True,
    )
    lilypond_file = baca.make_lilypond_file(
        score,
        include_layout_ly=True,
        includes=["../stylesheet.ily"],
        preamble=baca.interpret.nonfirst_preamble.split("\n"),
    )
    baca.build.make_segment_pdf(lilypond_file, metadata, persist, timing)
