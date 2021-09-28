import abjad
import baca

from huitzil import library as huitzil

###############################################################################
##################################### [F] #####################################
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

commands = baca.CommandAccumulator(
    **baca.segment_accumulation_defaults(),
    instruments=huitzil.instruments,
    metronome_marks=huitzil.metronome_marks,
    score_template=huitzil.make_empty_score,
    time_signatures=time_signatures,
    voice_abbreviations=huitzil.voice_abbreviations,
)

commands(
    "Global_Skips",
    baca.metronome_mark(
        "88",
        selector=baca.selectors.leaf(18 - 1),
    ),
    baca.metronome_mark(
        baca.Ritardando(),
        selector=baca.selectors.leaf(18 - 1),
    ),
    baca.metronome_mark(
        "44",
        selector=baca.selectors.leaf(22 - 1),
    ),
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
    baca.time_signature_stencil_false(),
)

commands(
    ("vc", (8, 13)),
    baca.suite(
        baca.pitches("Bb1 Cb2"),
        baca.chunk(
            baca.repeat_tie(
                baca.selectors.pleaf(0),
                allow_rest=True,
            ),
            baca.repeat_tie_extra_offset((-1.5, 0)),
        ),
    ),
    baca.skeleton("{ c1 * 107/30 c1 * 1/5 }"),
)

commands(
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

# vcr

commands(
    ("vcr", [1, 15]),
    baca.mmrest_transparent(),
)

# rh

commands(
    "rh",
    baca.only_score(
        baca.breathe(
            baca.selectors.pleaf(-1),
            abjad.tweak(False).X_extent,
            abjad.tweak((0, 5)).extra_offset,
        ),
    ),
    baca.only_segment(
        baca.breathe(
            baca.selectors.pleaf(-1),
            abjad.tweak(False).X_extent,
            abjad.tweak((-1.5, 2)).extra_offset,
        ),
    ),
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

commands(
    ("rh", 1),
    baca.make_monads("1/8  1/8  1/8  1/8"),
    baca.markup(
        r"\baca-ffz-markup",
        direction=abjad.Down,
        literal=True,
        selector=baca.selectors.leaves(),
    ),
    baca.staff_positions(
        [-6, -4, -2, 0],
        allow_repeats=True,
    ),
)

commands(
    ("rh", 2),
    baca.make_monads("1/2"),
    baca.markup(
        r"\baca-ffz-markup",
        direction=abjad.Down,
        literal=True,
        selector=baca.selectors.leaves(),
    ),
    baca.staff_positions(
        [0],
        allow_repeats=True,
    ),
)

commands(
    ("rh", (2, 13)),
    # FUTURE: use after LilyPond fixes DynamicLineSpanner bug:
    # baca.hairpin(
    #    "mp > p <",
    #    bookend=False,
    #    pieces=baca.selectors.lparts([2, 1, 3, 2, 2, 1, 3, 2, 2, 1, 3, 2 + 1]),
    #    selector=baca.selectors.rleaves(),
    # ),
    # FUTURE: replace after LilyPond fixes DynamicLineSpanner bug:
    baca.hairpin(
        "mp > p <",
        # bookend=False,
        pieces=baca.selectors.lparts([2, 1, 3, 2, 2, 1, 3, 2, 2, 1, 4]),
        selector=baca.selectors.leaves((None, -1)),
    ),
)

commands(
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

commands(
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

commands(
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

commands(
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

commands(
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

commands(
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

commands(
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

commands(
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

commands(
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

commands(
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

commands(
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

commands(
    ("rh", 14),
    baca.make_monads("1/2"),
    baca.markup(
        r"\baca-ffz-markup",
        direction=abjad.Down,
        literal=True,
    ),
    baca.markup(
        r"\huitzil-directly-on-bridge-markup",
        abjad.tweak(-0.9).self_alignment_X,
        abjad.tweak(2).staff_padding,
        literal=True,
    ),
)

commands(
    ("rh", (14, 23)),
    # FUTURE: use this once LilyPond fixes DynamicLineSpanner bug:
    # baca.hairpin(
    #    "mp -- p -- pp -- p -- !",
    #    pieces=lambda _: baca.Selection(_).mgroups([2, 2, 4, 2 + 1]),
    #    selector=baca.selectors.rleaves(),
    # ),
    # FUTURE: replace this once LilyPond fixes DynamicLineSpanner bug:
    baca.hairpin(
        "mp -- p -- pp -- p",
        bookend=False,
        pieces=lambda _: baca.Selection(_).mgroups([2, 2, 4, 2 + 1]),
        selector=baca.selectors.rleaves(),
    ),
    baca.literal(
        [
            r"\stopStaff",
            r"\once \override RHStaff.StaffSymbol.line-positions ="
            " #'(8.2 8 7.8 -5.8 -6 -6.2)",
            r"\startStaff",
        ]
    ),
    baca.staff_position(8),
)

commands(
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

commands(
    ("rh", 16),
    baca.make_monads("1/2"),
    baca.markup(
        r"\baca-ffz-markup",
        direction=abjad.Down,
        literal=True,
    ),
)

commands(
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

commands(
    ("rh", (18, 22)),
    baca.text_spanner(
        "(trem. mod.) => più stretto => più largo => più stretto => mod.",
        abjad.tweak(6).staff_padding,
        pieces=baca.selectors.lparts([1, 1, 1, 1 + 1]),
    ),
)

commands(
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

commands(
    ("rh", 22),
    baca.only_segment(
        baca.hairpin_to_barline(),
    ),
)

# stage 2 (after staff position settings)

commands(
    ("vc", (8, 14)),
    baca.glissando(
        selector=baca.selectors.leaves(),
    ),
)

commands(
    "rh",
    baca.glissando(
        selector=baca.selectors.leaves(),
    ),
)

if __name__ == "__main__":
    baca.build.make_segment_pdf(
        commands,
        **baca.segment_interpretation_defaults(),
        activate=[
            baca.tags.CLOCK_TIME,
            baca.tags.LOCAL_MEASURE_NUMBER,
        ],
        always_make_global_rests=True,
        do_not_require_margin_markup=True,
        clock_time_extra_offset=(0, 13),
        error_on_not_yet_pitched=True,
    )
