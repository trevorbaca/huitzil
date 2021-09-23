import abjad
import baca

from huitzil import library as huitzil

###############################################################################
##################################### [B] #####################################
###############################################################################

time_signatures = [
    (3, 4),
    (3, 4),
    (3, 4),
    (3, 4),
    (3, 4),
    (3, 4),
    (3, 4),
    (3, 4),
    (3, 4),
    (3, 4),
    (3, 4),
    (3, 4),
    (2, 4),
    (2, 4),
    (2, 4),
    (2, 4),
    (2, 4),
    (2, 4),
    (2, 4),
    (2, 4),
    (2, 4),
    (2, 4),
    (2, 4),
    (2, 4),
    (4, 4),
]

maker = baca.SegmentMaker(
    **baca.segments(),
    activate=[
        baca.tags.CLOCK_TIME,
        baca.tags.LOCAL_MEASURE_NUMBER,
    ],
    error_on_not_yet_pitched=True,
    clock_time_extra_offset=(0, 13),
    instruments=huitzil.instruments,
    metronome_marks=huitzil.metronome_marks,
    score_template=huitzil.ScoreTemplate(),
    spacing_extra_offset=(0, 16),
    time_signatures=time_signatures,
)

maker(
    "Global_Skips",
    baca.metronome_mark(
        "44",
        selector=baca.selectors.leaf(1 - 1),
    ),
)

# vc

maker(
    "vc",
    baca.literal(
        [
            r"\stopStaff",
            r"\once \override Staff.StaffSymbol.line-positions = #'(4 -4)"
            r"\startStaff",
        ]
    ),
    baca.mmrest_transparent(),
    baca.new(
        baca.bar_line_transparent(),
        baca.span_bar_transparent(),
        selector=baca.selectors.leaves((1, None)),
    ),
    baca.time_signature_stencil_false(),
)

maker(
    ("vc", 25),
    baca.literal(
        [
            r"\stopStaff",
            r"\once \override Staff.StaffSymbol.line-count = 5",
            r"\startStaff",
        ]
    ),
    baca.pitch("B1"),
    baca.skeleton("{ c1 }"),
)

# vcr

maker(
    ("vcr", 1),
    baca.mmrest_transparent(),
)

# rh

maker(
    "rh",
    baca.alternate_bow_strokes(),
    baca.chunk(
        baca.literal(
            [
                r"\once \override RHStaff.StaffSymbol.line-positions ="
                " #'(8.2 8 7.8 -5.8 -6 -6.2)"
            ]
        ),
        baca.staff_lines(7),
    ),
    baca.dynamic(
        "mp-sempre",
        abjad.tweak(-0.9).self_alignment_X,
    ),
    baca.literal(r"\override DynamicLineSpanner.staff-padding = 2.5"),
    baca.literal(r"\override Score.BarNumber.transparent = ##t"),
    baca.markup(
        r"\huitzil-directly-on-bridge-markup",
        abjad.tweak(3).staff_padding,
        literal=True,
    ),
    baca.staff_position(8),
    baca.tuplet_bracket_down(),
)

maker(
    ("rh", (1, 4)),
    baca.rest_position(0),
    baca.skeleton("{ c4 r2 c4 r2 c4 r2 c4 r2 }"),
)

maker(
    ("rh", (5, 8)),
    baca.skeleton("{ c4 c16 r8. r4 c4 c16 r8. r4 c4 c16 r8. r4 c4 c16 r8. r4 }"),
)

maker(
    ("rh", (9, 12)),
    baca.skeleton(
        "{"
        r" c4 \times 2/3 { c8 r4 } r4"
        r" c4 \times 2/3 { c8 r4 } r4"
        r" c4 c8 r8 r4"
        r" c4 c8 r8 r4"
        " }",
    ),
)

maker(
    ("rh", [9, 10]),
    baca.tag(
        # TODO: make +ARCH_A_SCORE work
        # "+ARCH_A_SCORE",
        abjad.Tag("+SCORE"),
        baca.literal(
            r"\once \override TupletNumber.font-size = -2",
            selector=baca.selectors.pleaf(1),
        ),
    ),
)

maker(
    ("rh", (13, 15)),
    baca.skeleton("{ c4 c4 c4 c4 c4 c4 }"),
)

maker(
    ("rh", (16, 18)),
    baca.skeleton(
        "{"
        r" \times 2/3 { c4 c4 c4 }"
        r" \times 2/3 { c4 c4 c4 }"
        r" \times 2/3 { c4 c4 c4 }"
        " }",
    ),
)

maker(
    ("rh", (19, 20)),
    baca.skeleton(
        "{" r" c8 c8 c8 c8" r" c8 c8 c8 c8" " }",
    ),
)

maker(
    ("rh", (21, 24)),
    baca.skeleton(
        "{"
        r" \times 4/5 { c8 c8 c8 c8 c8 }"
        r" \times 4/6 { c8 c8 c8 c8 c8 c8 }"
        r" \times 4/7 { c8 c8 c8 c8 c8 c8 c8 }"
        " c16 c16 c16 c16 c16 c16 c16 c16"
        " }",
    ),
)

maker(
    ("rh", (19, 24)),
    baca.beam(),
)

maker(
    ("rh", 25),
    baca.glissando(
        right_broken=True,
        selector=baca.selectors.rleaves(),
    ),
    baca.hairpin(
        "(mp) -- !",
        selector=baca.selectors.rleaves(),
    ),
    baca.literal(
        r"\override DynamicLineSpanner.staff-padding = 7",
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
        r"\huitzil-sliding-from-bridge-onto-string-markup",
        abjad.tweak(6).staff_padding,
        literal=True,
    ),
    baca.markup(
        r"\huitzil-trem-moderato-markup",
        abjad.tweak(3.5).staff_padding,
        direction=abjad.Down,
        literal=True,
    ),
    baca.skeleton("{ c1 }"),
    baca.stem_tremolo(),
)

maker(
    ("rh", 25),
    baca.staff_position(
        6,
        selector=baca.selectors.rleaf(-1),
    ),
)

if __name__ == "__main__":
    baca.build.make_segment_pdf(maker, runtime=baca.segments(runtime=True))
