import abjad
import baca

###############################################################################
##################################### [D] #####################################
###############################################################################

time_signatures = [
    (1, 2),
    (1, 2),
    (2, 3),
    (1, 2),
    (4, 5),
    (1, 2),
    (2, 3),
    (1, 2),
    (4, 5),
    (1, 2),
    (2, 3),
    (1, 2),
    (4, 5),
    (1, 2),
    (2, 3),
    (1, 2),
    (4, 5),
    (1, 2),
    (1, 2),
    (1, 2),
    (1, 2),
    (1, 2),
    (1, 2),
]

maker = baca.SegmentMaker(
    activate=[
        baca.tags.CLOCK_TIME,
        baca.tags.LOCAL_MEASURE_NUMBER,
    ],
    check_all_are_pitched=True,
    clock_time_extra_offset=(0, 13),
    segment_directory=baca.Path(__file__).resolve().parent,
    time_signatures=time_signatures,
    validate_measure_count=23,
)

maker(
    "Global_Skips",
    baca.metronome_mark(
        "88",
        selector=baca.selectors.leaf(18 - 1),
    ),
    baca.metronome_mark(
        baca.Ritardando(),
        selector=baca.selectors.leaf(18 - 1),
    ),
)

# vc

maker(
    "vc",
    baca.mmrest_transparent(),
    baca.new(
        baca.bar_line_transparent(),
        baca.span_bar_transparent(),
        selector=baca.leaves(),
    ),
    baca.time_signature_stencil_false(),
)

maker(
    ("vc", (8, 13)),
    baca.pitches("B1 C2"),
    baca.repeat_tie(
        baca.selectors.pleaf(0),
        allow_rest=True,
    ),
    baca.skeleton("{ c1 * 107/30 c1 * 1/5 }"),
)

maker(
    ("vc", 14),
    baca.clef("treble"),
    baca.literal(
        [
            r"\stopStaff",
            r"\once \override Staff.StaffSymbol.line-positions = #'(4 -4)"
            r"\startStaff",
        ]
    ),
    baca.note_head_duration_log(2),
    baca.note_head_no_ledgers(True),
    baca.note_head_style("#'do"),
    baca.skeleton("{ c2 }"),
    baca.staff_position(7),
)

maker(
    ("vc", 23),
    baca.clef("bass"),
    baca.literal(
        [
            r"\stopStaff",
            r"\once \override Staff.StaffSymbol.line-count = 5",
            r"\startStaff",
        ]
    ),
    baca.pitch("Bb1"),
    baca.skeleton("{ c1 * 1/2 }"),
)

# vcr

maker(
    ("vcr", [1, 15]),
    baca.mmrest_transparent(),
)

# rh

maker(
    "rh",
    baca.only_segment(
        baca.chunk(
            baca.literal(r"\override DynamicLineSpanner.staff-padding = 7"),
            baca.literal(
                [
                    r"\stopStaff",
                    r"\once \override RHStaff.StaffSymbol.line-positions ="
                    " #'(8.2 8 7.8 6 4 2 0 -2 -4 -5.8 -6 -6.2)",
                    r"\startStaff",
                ]
            ),
        ),
    ),
    baca.stem_tremolo(
        selector=baca.selectors.pleaves(),
    ),
    baca.text_script_parent_alignment_x(0),
    baca.text_script_self_alignment_x(0),
    baca.text_script_staff_padding(4),
)

maker(
    ("rh", 1),
    baca.make_monads("1/8  1/8  1/8  1/8"),
    baca.markup(
        r"\baca-ffz-markup",
        direction=abjad.Down,
        literal=True,
        selector=baca.leaves(),
    ),
    baca.staff_positions(
        [-6, -4, -2, 0],
        allow_repeats=True,
    ),
)

maker(
    ("rh", 2),
    baca.make_monads("1/2"),
    baca.markup(
        r"\baca-ffz-markup",
        direction=abjad.Down,
        literal=True,
        selector=baca.leaves(),
    ),
    baca.staff_positions(
        [0],
        allow_repeats=True,
    ),
)

maker(
    ("rh", (2, 13)),
    # FUTURE: use after LilyPond fixes DynamicLineSpanner bug:
    # baca.hairpin(
    #    "mp > p <",
    #    bookend=False,
    #    pieces=baca.selectors.lparts([2, 1, 3, 2, 2, 1, 3, 2, 2, 1, 3, 2 + 1]),
    #    selector=baca.leaves().rleak(),
    # ),
    # FUTURE: replace after LilyPond fixes DynamicLineSpanner bug:
    baca.hairpin(
        "mp > p <",
        # bookend=False,
        pieces=baca.selectors.lparts([2, 1, 3, 2, 2, 1, 3, 2, 2, 1, 4]),
        selector=baca.leaves()[:-1],
    ),
)

maker(
    ("rh", 3),
    baca.make_monads("1/3  1/3"),
    baca.markup(
        r"\baca-fz-markup",
        direction=abjad.Down,
        literal=True,
        selector=baca.selectors.leaf(0),
    ),
    baca.markup(
        r"\baca-fffz-markup",
        direction=abjad.Down,
        literal=True,
        selector=baca.selectors.leaf(1),
    ),
    baca.staff_positions(
        [0],
        allow_repeats=True,
    ),
)

maker(
    ("rh", 4),
    baca.make_monads("1/2"),
    baca.markup(
        r"\baca-ffz-markup",
        direction=abjad.Down,
        literal=True,
    ),
    baca.staff_positions(
        [0],
        allow_repeats=True,
    ),
)

maker(
    ("rh", 5),
    baca.make_monads("1/5  1/5  1/5  1/5"),
    baca.markup(
        r"\baca-mfz-markup",
        direction=abjad.Down,
        literal=True,
        selector=baca.selectors.leaf(0),
    ),
    baca.markup(
        r"\baca-fz-markup",
        direction=abjad.Down,
        literal=True,
        selector=baca.selectors.leaf(1),
    ),
    baca.markup(
        r"\baca-ffz-markup",
        direction=abjad.Down,
        literal=True,
        selector=baca.selectors.leaf(2),
    ),
    baca.markup(
        r"\baca-fffz-markup",
        direction=abjad.Down,
        literal=True,
        selector=baca.selectors.leaf(3),
    ),
    baca.staff_positions(
        [0],
        allow_repeats=True,
    ),
)

maker(
    ("rh", 6),
    baca.make_monads("1/2"),
    baca.markup(
        r"\baca-ffz-markup",
        direction=abjad.Down,
        literal=True,
    ),
    baca.staff_positions(
        [0],
        allow_repeats=True,
    ),
)

maker(
    ("rh", 7),
    baca.make_monads("1/3  1/3"),
    baca.markup(
        r"\baca-fz-markup",
        direction=abjad.Down,
        literal=True,
    ),
    baca.markup(
        r"\baca-fffz-markup",
        direction=abjad.Down,
        literal=True,
        selector=baca.selectors.leaf(1),
    ),
    baca.staff_positions(
        [0],
        allow_repeats=True,
    ),
)

maker(
    ("rh", 8),
    baca.make_monads("1/2"),
    baca.markup(
        r"\baca-ffz-markup",
        direction=abjad.Down,
        literal=True,
    ),
    baca.staff_positions(
        [0],
        allow_repeats=True,
    ),
)

maker(
    ("rh", 9),
    baca.make_monads("1/5  1/5  1/5  1/5"),
    baca.markup(
        r"\baca-mfz-markup",
        direction=abjad.Down,
        literal=True,
    ),
    baca.markup(
        r"\baca-fz-markup",
        direction=abjad.Down,
        literal=True,
        selector=baca.selectors.leaf(1),
    ),
    baca.markup(
        r"\baca-ffz-markup",
        direction=abjad.Down,
        literal=True,
        selector=baca.selectors.leaf(2),
    ),
    baca.markup(
        r"\baca-fffz-markup",
        direction=abjad.Down,
        literal=True,
        selector=baca.selectors.leaf(3),
    ),
    baca.staff_positions(
        [0],
        allow_repeats=True,
    ),
)

maker(
    ("rh", 10),
    baca.make_monads("1/2"),
    baca.markup(
        r"\baca-ffz-markup",
        direction=abjad.Down,
        literal=True,
    ),
    baca.staff_positions(
        [0],
        allow_repeats=True,
    ),
)

maker(
    ("rh", 11),
    baca.make_monads("1/3  1/3"),
    baca.markup(
        r"\baca-fz-markup",
        direction=abjad.Down,
        literal=True,
    ),
    baca.markup(
        r"\baca-fffz-markup",
        direction=abjad.Down,
        literal=True,
        selector=baca.selectors.leaf(1),
    ),
    baca.staff_positions(
        [0],
        allow_repeats=True,
    ),
)

maker(
    ("rh", 12),
    baca.make_monads("1/2"),
    baca.markup(
        r"\baca-ffz-markup",
        direction=abjad.Down,
        literal=True,
    ),
    baca.staff_positions(
        [0],
        allow_repeats=True,
    ),
)

maker(
    ("rh", 13),
    baca.make_monads("1/5  1/5  1/5  1/5"),
    baca.markup(
        r"\baca-mfz-markup",
        direction=abjad.Down,
        literal=True,
    ),
    baca.markup(
        r"\baca-fz-markup",
        direction=abjad.Down,
        literal=True,
        selector=baca.selectors.leaf(1),
    ),
    baca.markup(
        r"\baca-ffz-markup",
        direction=abjad.Down,
        literal=True,
        selector=baca.selectors.leaf(2),
    ),
    baca.markup(
        r"\baca-fffz-markup",
        direction=abjad.Down,
        literal=True,
        selector=baca.selectors.leaf(3),
    ),
    baca.staff_positions(
        [0],
        allow_repeats=True,
    ),
)

maker(
    ("rh", 14),
    baca.make_monads("1/2"),
    baca.markup(
        r"\baca-ffz-markup",
        direction=abjad.Down,
        literal=True,
    ),
)

maker(
    ("rh", (14, 23)),
    # FUTURE: use this when LilyPond fixes DynamicLine Spanner bug:
    # baca.hairpin(
    #    "mp -- p -- pp -- p -- !",
    #    abjad.tweak(True).to_barline,
    #    pieces=lambda _: baca.Selection(_).mgroups([2, 2, 4, 2 + 1]),
    #    selector=baca.leaves().rleak(),
    # ),
    # FUTURE: replace this when LilyPond fixes DynamicLineSpanner bug:
    baca.hairpin(
        "mp -- p -- pp -- p",
        abjad.tweak(True).to_barline,
        bookend=False,
        pieces=lambda _: baca.Selection(_).mgroups([2, 2, 4, 2 + 1]),
        selector=baca.leaves().rleak(),
    ),
    baca.literal(
        [
            r"\stopStaff",
            r"\once \override RHStaff.StaffSymbol.line-positions ="
            " #'(8.2 8 7.8 -5.8 -6 -6.2)",
            r"\startStaff",
        ]
    ),
    baca.markup(
        r"\huitzil-directly-on-bridge-markup",
        abjad.tweak(-0.85).self_alignment_X,
        abjad.tweak(2).staff_padding,
        literal=True,
    ),
    baca.staff_position(8),
)

maker(
    ("rh", 15),
    baca.make_monads("1/3  1/3"),
    baca.markup(
        r"\baca-fz-markup",
        direction=abjad.Down,
        literal=True,
    ),
    baca.markup(
        r"\baca-fffz-markup",
        direction=abjad.Down,
        literal=True,
        selector=baca.selectors.leaf(1),
    ),
)

maker(
    ("rh", 16),
    baca.make_monads("1/2"),
    baca.markup(
        r"\baca-ffz-markup",
        direction=abjad.Down,
        literal=True,
    ),
)

maker(
    ("rh", 17),
    baca.make_monads("1/5  1/5  1/5  1/5"),
    baca.markup(
        r"\baca-mfz-markup",
        direction=abjad.Down,
        literal=True,
    ),
    baca.markup(
        r"\baca-fz-markup",
        direction=abjad.Down,
        literal=True,
        selector=baca.selectors.leaf(1),
    ),
    baca.markup(
        r"\baca-ffz-markup",
        direction=abjad.Down,
        literal=True,
        selector=baca.selectors.leaf(2),
    ),
    baca.markup(
        r"\baca-fffz-markup",
        direction=abjad.Down,
        literal=True,
        selector=baca.selectors.leaf(3),
    ),
)

maker(
    ("rh", (18, 22)),
    baca.text_spanner(
        "(trem. mod.) => più stretto => più largo => più stretto => mod.",
        abjad.tweak(6).staff_padding,
        pieces=baca.selectors.lparts([1, 1, 1, 1 + 1]),
    ),
)

maker(
    ("rh", (18, 21)),
    # TODO: make +LEDGER_SCORE tag work
    # baca.tag(
    #     abjad.Tag("+LEDGER_SCORE"),
    #     baca.hairpin_to_barline(),
    # ),
    baca.tag(
        abjad.Tag("+SCORE"),
        baca.hairpin_to_barline(),
    ),
)

maker(
    ("rh", (18, 23)),
    baca.make_monads("1/2  1/2  1/2  1/2  1/2  1/2"),
    baca.markup(
        r"\baca-ffz-markup",
        direction=abjad.Down,
        literal=True,
    ),
    baca.markup(
        r"\baca-fz-markup",
        direction=abjad.Down,
        literal=True,
        selector=baca.selectors.leaf(1),
    ),
    baca.markup(
        r"\baca-fz-markup",
        direction=abjad.Down,
        literal=True,
        selector=baca.selectors.leaf(2),
    ),
    baca.markup(
        r"\baca-mfz-markup",
        direction=abjad.Down,
        literal=True,
        selector=baca.selectors.leaf(3),
    ),
    baca.markup(
        r"\baca-mfz-markup",
        direction=abjad.Down,
        literal=True,
        selector=baca.selectors.leaf(4),
    ),
    baca.markup(
        r"\baca-mpz-markup",
        direction=abjad.Down,
        literal=True,
        selector=baca.selectors.leaf(5),
    ),
)

maker(
    ("rh", 22),
    baca.only_segment(
        baca.hairpin_to_barline(),
    ),
)

maker(
    ("rh", 23),
    baca.literal(
        [
            r"\stopStaff",
            r"\once \override RHStaff.StaffSymbol.line-positions ="
            " #'(8.2 8 7.8 6 4 2 0 -2 -4 -5.8 -6 -6.2)",
            r"\startStaff",
        ]
    ),
    baca.markup(
        r"\huitzil-sliding-back-onto-string-markup",
        abjad.tweak(-0.85).self_alignment_X,
        abjad.tweak(6).staff_padding,
        literal=True,
    ),
    baca.staff_position(
        6,
        selector=baca.leaves().rleak()[-1],
    ),
)

# stage 2 (after staff position settings)

maker(
    ("vc", (8, 14)),
    baca.glissando(
        selector=baca.leaves(),
    ),
)

maker(
    "rh",
    baca.glissando(
        right_broken=True,
        selector=baca.leaves().rleak(),
    ),
)
