import abjad
import baca

from huitzil import library

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

score = library.make_empty_score()
voice_names = baca.accumulator.get_voice_names(score)

commands = baca.CommandAccumulator(
    **baca.segment_accumulation_defaults(),
    instruments=library.instruments,
    metronome_marks=library.metronome_marks,
    time_signatures=time_signatures,
    voice_abbreviations=library.voice_abbreviations,
    voice_names=voice_names,
)

commands(
    "Global_Skips",
    baca.metronome_mark(
        "88",
        selector=lambda _: abjad.select.leaf(_, 1 - 1),
    ),
    baca.metronome_mark(
        "88",
        selector=lambda _: abjad.select.leaf(_, 25 - 1),
    ),
    baca.metronome_mark(
        baca.Ritardando(),
        selector=lambda _: abjad.select.leaf(_, 25 - 1),
    ),
)

# vc

commands(
    ("vc", 1),
    baca.make_skeleton("{ c1 * 1/4 }"),
)

commands(
    ("vc", (2, 13)),
    baca.make_mmrests(),
)

commands(
    ("vc", (14, 24)),
    baca.make_skeleton("{ c1 * 19/8 }"),
)

commands(
    ("vc", (25, 26)),
    baca.make_skeleton("{ c1 * 2 }"),
)

commands(
    ("vc", (25, 26)),
    baca.append_phantom_measure(),
)

commands(
    ("vc", 1),
    baca.markup(
        r"\baca-string-iii-markup",
        abjad.Tweak(r"- \tweak padding 2.5"),
        direction=abjad.DOWN,
    ),
    baca.pitch("A2"),
)

commands(
    ("vc", (14, 24)),
    baca.suite(
        baca.pitch("A2"),
        baca.repeat_tie(
            lambda _: baca.select.pleaf(_, 0),
            allow_rest=True,
        ),
    ),
)

commands(
    ("vc", (25, 26)),
    baca.markup(
        r"\huitzil-string-three-to-four-markup",
        abjad.Tweak(r"- \tweak padding 2.5"),
        abjad.Tweak(r"- \tweak parent-alignment-X 0"),
        abjad.Tweak(r"- \tweak self-alignment-X -0.05"),
        direction=abjad.DOWN,
    ),
    baca.pitch("G2"),
)

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
        selector=lambda _: baca.select.leaves(_),
    ),
    baca.pitch(
        "A1",
        selector=lambda _: baca.select.rleaf(_, -1),
    ),
    baca.time_signature_stencil_false(),
)

# vcr

commands(
    ("vcr", 2),
    baca.mmrest_transparent(),
)

# rh

commands(
    ("rh", (1, 8)),
    baca.make_monads("1/4 3/16 1/4 3/16 1/4 3/16 1/4 3/16"),
)

commands(
    ("rh", (1, 8)),
    baca.reapply_persistent_indicators(),
)

commands(
    "vc",
    baca.reapply_persistent_indicators(),
)

commands(
    ("rh", (9, 16)),
    baca.make_monads("1/4 3/16 1/4 3/16 1/4 3/16 1/4 3/16"),
)

commands(
    ("rh", (17, 24)),
    baca.make_monads("1/4 3/16 1/4 3/16 1/4 3/16 1/4 3/16"),
)

commands(
    ("rh", (25, 26)),
    baca.make_monads("1 1"),
)

commands(
    ("rh", (25, 26)),
    baca.append_phantom_measure(),
)

commands(
    ("rh", (1, 8)),
    baca.staff_positions(
        [-6, -6, -8, -8, -10, -10, -12, -12],
        allow_repeats=True,
    ),
)

commands(
    ("rh", (1, 20)),
    baca.markup(
        r"\baca-fz-markup",
        direction=abjad.DOWN,
        selector=lambda _: baca.select.leaves(_),
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
        abjad.Tweak(r"- \tweak self-alignment-X -0.5"),
        abjad.Tweak(r"- \tweak staff-padding 2"),
    ),
)

commands(
    ("rh", 14),
    baca.markup(
        r"\huitzil-descending-fingerboard-markup",
        abjad.Tweak(r"- \tweak self-alignment-X -1"),
        abjad.Tweak(r"- \tweak staff-padding 2"),
    ),
)

commands(
    ("rh", (17, 24)),
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
        selector=lambda _: baca.select.rleak(baca.select.leaves(_)[-1:]),
    ),
    baca.literal(
        [
            r"\stopStaff",
            r"\once \override RHStaff.StaffSymbol.line-positions ="
            " #'(8.2 8 7.8 6 4 2 0 -2 -4 -5.8 -6 -6.2)",
            r"\startStaff",
        ]
    ),
    baca.markup(
        r"\huitzil-directly-above-end-of-fingerboard-column-markup",
        abjad.Tweak(r"- \tweak self-alignment-X -0.5"),
        abjad.Tweak(r"- \tweak staff-padding 2"),
    ),
    baca.parenthesize(
        selector=lambda _: baca.select.pleaf(_, -1),
    ),
    baca.staff_positions(
        [-6, 0, 6],
        selector=lambda _: baca.select.rleaves(_),
    ),
)

# stage 2 (after staff position commands)

commands(
    ("vc", (14, 24)),
    baca.glissando(
        selector=lambda _: baca.select.rleaves(_),
    ),
)

commands(
    ("vc", (25, 26)),
    baca.glissando(
        right_broken=True,
        selector=lambda _: baca.select.rleaves(_),
    ),
)

commands(
    "rh",
    baca.glissando(
        right_broken=True,
        selector=lambda _: baca.select.rleaves(_),
    ),
)

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
        abjad.Tweak(r"- \tweak self-alignment-X -1"),
        abjad.Tweak(r"- \tweak staff-padding 4.5"),
    ),
    baca.markup(
        r"\huitzil-directly-above-end-of-fingerboard-markup",
        abjad.Tweak(r"- \tweak self-alignment-X -1"),
        abjad.Tweak(r"- \tweak staff-padding 1"),
    ),
    baca.stem_tremolo(
        selector=lambda _: baca.select.pleaves(_),
    ),
    baca.text_script_parent_alignment_x(0),
    baca.text_script_self_alignment_x(0),
    baca.text_script_staff_padding(4),
)


if __name__ == "__main__":
    metadata, persist, score, timing = baca.build.interpret_section(
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
    )
    baca.build.persist(lilypond_file, metadata, persist, timing)
