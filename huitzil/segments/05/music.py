import abjad
import baca

from huitzil import library

#########################################################################################
######################################### 05 [E] ########################################
#########################################################################################

time_signatures = [
    (1, 2),
    (13, 24),
    (1, 2),
    (7, 12),
    (53, 60),
    (23, 24),
    (1, 2),
    (1, 2),
    (3, 8),
    (1, 3),
    (11, 15),
    (1, 2),
    (1, 2),
    (1, 2),
    (1, 2),
    (1, 2),
    (1, 2),
    (1, 2),
    (1, 2),
    (1, 2),
    (1, 2),
    (1, 2),
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
        "44",
        selector=baca.selectors.leaf(1 - 1),
    ),
    baca.metronome_mark(
        "44",
        selector=baca.selectors.leaf(13 - 1),
    ),
    baca.metronome_mark(
        baca.Accelerando(),
        selector=baca.selectors.leaf(13 - 1),
    ),
    baca.metronome_mark(
        "66",
        selector=baca.selectors.leaf(16 - 1),
    ),
    baca.metronome_mark(
        "44",
        selector=baca.selectors.leaf(17 - 1),
    ),
    baca.metronome_mark(
        baca.Accelerando(),
        selector=baca.selectors.leaf(17 - 1),
    ),
    baca.metronome_mark(
        "88",
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

# rh

commands(
    "rh",
    baca.literal(r"\override DynamicLineSpanner.staff-padding = 7"),
    baca.literal(
        [
            r"\stopStaff",
            r"\once \override RHStaff.StaffSymbol.line-positions ="
            " #'(8.2 8 7.8 6 4 2 0 -2 -4 -5.8 -6 -6.2)",
            r"\startStaff",
        ]
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
    baca.make_monads("1/4  1/8  1/8"),
    baca.staff_positions(
        [6, 6, 4],
        allow_repeats=True,
    ),
)

commands(
    ("rh", (1, 3)),
    baca.hairpin(
        "mp -- !",
        abjad.tweak(True).to_barline,
        selector=baca.selectors.rleaves(),
    ),
    baca.markup(
        r"\baca-mfz-markup",
        direction=abjad.Down,
        selector=baca.selectors.leaves(),
    ),
)

commands(
    ("rh", 2),
    baca.make_monads("1/4  1/8  1/6"),
    baca.staff_positions(
        [6, 6, 4],
        allow_repeats=True,
    ),
)

commands(
    ("rh", 3),
    baca.make_monads("1/4  1/8  1/8"),
    baca.staff_positions(
        [6, 6, 4],
        allow_repeats=True,
    ),
)

commands(
    ("rh", 4),
    baca.hairpin(
        "p -- !",
        selector=lambda _: baca.Selection(_).leaves().rleak().rleak(),
    ),
    baca.make_monads("1/3  1/8  1/8"),
    baca.staff_positions(
        [4, 4, 2],
        allow_repeats=True,
    ),
)

commands(
    ("rh", (4, 5)),
    baca.markup(
        r"\baca-fz-markup",
        direction=abjad.Down,
    ),
    baca.markup(
        r"\baca-mpz-markup",
        direction=abjad.Down,
        selector=baca.selectors.pleaves((1, -3)),
    ),
    baca.markup(
        r"\baca-mfz-markup",
        direction=abjad.Down,
        selector=baca.selectors.pleaves((-3, None)),
    ),
)

commands(
    ("rh", 5),
    baca.hairpin(
        "pp < mf",
        selector=baca.selectors.leaves((1, None)),
    ),
    baca.make_monads("1/4  1/6  1/6  1/10  1/10  1/10"),
    baca.staff_positions(
        [4, 4, 2, 6, 4, 2],
        allow_repeats=True,
    ),
)

commands(
    ("rh", 6),
    baca.hairpin(
        "p -- !",
        abjad.tweak(True).to_barline,
        selector=baca.selectors.rleaves(),
    ),
    baca.make_monads("1/4  1/6  1/6  1/8  1/8  1/8"),
    baca.markup(
        r"\baca-fz-markup",
        direction=abjad.Down,
    ),
    baca.markup(
        r"\baca-mpz-markup",
        direction=abjad.Down,
        selector=baca.selectors.pleaves((1, None)),
    ),
    baca.staff_positions(
        [4, 4, 2, 6, 4, 2],
        allow_repeats=True,
    ),
)

commands(
    ("rh", 7),
    baca.make_monads("1/2"),
    baca.staff_positions(
        [2],
        allow_repeats=True,
    ),
)

commands(
    ("rh", (7, 9)),
    baca.markup(
        r"\baca-fz-markup",
        direction=abjad.Down,
        selector=baca.selectors.leaves(),
    ),
)

commands(
    ("rh", (7, 9)),
    baca.hairpin(
        "mf -- !",
        abjad.tweak(True).to_barline,
        selector=baca.selectors.rleaves(),
    ),
)

commands(
    ("rh", 8),
    baca.make_monads("1/4  1/8  1/8"),
    baca.staff_positions(
        [2, 2, 0],
        allow_repeats=True,
    ),
)

commands(
    ("rh", 9),
    baca.make_monads("1/4  1/8"),
    baca.staff_positions(
        [2],
        allow_repeats=True,
    ),
)

commands(
    ("rh", 10),
    baca.make_monads("1/6  1/6"),
    baca.staff_positions(
        [2, 6],
        allow_repeats=True,
    ),
)

commands(
    ("rh", (10, 11)),
    baca.markup(
        r"\baca-mfz-markup",
        direction=abjad.Down,
        selector=baca.selectors.leaves((None, 4)),
    ),
    baca.markup(
        r"\baca-mpz-markup",
        direction=abjad.Down,
        selector=baca.selectors.leaves((4, None)),
    ),
    baca.text_spanner(
        "(trem. mod.) => trem. stretto",
        abjad.tweak(6).staff_padding,
        selector=baca.selectors.leaves((None, 4), rleak=True),
    ),
)

commands(
    ("rh", (10, 12)),
    baca.hairpin(
        "mp > ppp -- !",
        abjad.tweak(True).to_barline,
        pieces=baca.selectors.lparts([4, 5 + 1]),
        selector=baca.selectors.rleaves(),
    ),
)

commands(
    ("rh", 11),
    baca.make_monads("1/6  1/6  1/10  1/10  1/10  1/10"),
    baca.staff_positions(
        [4, 2, 6, 4, 2, 0],
        allow_repeats=True,
    ),
)

commands(
    ("rh", 12),
    baca.make_monads("1/2"),
    baca.staff_positions(
        [0],
        allow_repeats=True,
    ),
)

commands(
    ("rh", (12, 16)),
    baca.markup(
        r"\baca-ffz-markup",
        direction=abjad.Down,
        selector=baca.selectors.leaves(),
    ),
)

commands(
    ("rh", 13),
    baca.make_monads("1/2"),
    baca.staff_positions(
        [0],
        allow_repeats=True,
    ),
)

commands(
    ("rh", (13, 16)),
    baca.hairpin(
        "p < mf",
    ),
    baca.text_spanner(
        "sub. mod. => più stretto => più largo => più stretto",
        abjad.tweak(6).staff_padding,
        pieces=baca.selectors.lparts([1, 1, 2]),
    ),
)

commands(
    ("rh", 14),
    baca.make_monads("1/2"),
    baca.staff_positions(
        [-2],
        allow_repeats=True,
    ),
)

commands(
    ("rh", 15),
    baca.make_monads("1/2"),
    baca.staff_positions(
        [-2],
        allow_repeats=True,
    ),
)

commands(
    ("rh", 16),
    baca.make_monads("1/2"),
    baca.staff_positions(
        [-4],
        allow_repeats=True,
    ),
)

commands(
    ("rh", 17),
    baca.make_monads("1/2"),
    baca.staff_positions(
        [0],
        allow_repeats=True,
    ),
)

commands(
    ("rh", (17, 22)),
    baca.hairpin(
        "p < f -- !",
        pieces=baca.selectors.lparts([5, 1 + 1]),
        selector=baca.selectors.rleaves(),
    ),
    baca.markup(
        r"\baca-ffz-markup",
        direction=abjad.Down,
        selector=baca.selectors.leaves(),
    ),
    baca.text_spanner(
        "sub. mod. => più stretto => più largo => più stretto =>"
        " più largo => trem. mod.",
        abjad.tweak(6).staff_padding,
        pieces=baca.selectors.lparts([1, 1, 1, 1, 2]),
    ),
)

commands(
    ("rh", 18),
    baca.make_monads("1/2"),
    baca.staff_positions(
        [-2],
        allow_repeats=True,
    ),
)

commands(
    ("rh", 19),
    baca.make_monads("1/2"),
    baca.staff_positions(
        [-2],
        allow_repeats=True,
    ),
)

commands(
    ("rh", 20),
    baca.make_monads("1/2"),
    baca.staff_positions(
        [-4],
        allow_repeats=True,
    ),
)

commands(
    ("rh", 21),
    baca.make_monads("1/2"),
    baca.staff_positions(
        [-4],
        allow_repeats=True,
    ),
)

commands(
    ("rh", 22),
    baca.make_monads("1/2"),
    # TODO: make +ARCH_A_SCORE work
    baca.only_score(
        baca.hairpin_to_barline(),
    ),
    baca.staff_positions(
        [-6],
        allow_repeats=True,
    ),
)

# stage 2 (after staff position settings)

commands(
    "rh",
    baca.glissando(
        selector=baca.selectors.leaves(),
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
    baca.build.persist(lilypond_file, metadata, persist, timing)
