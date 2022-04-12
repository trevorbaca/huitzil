import abjad
import baca

from huitzil import library

#########################################################################################
######################################### 09 [I] ########################################
#########################################################################################

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
        selector=baca.selectors.leaf(18 - 1),
    ),
    baca.metronome_mark(
        baca.Ritardando(),
        selector=baca.selectors.leaf(18 - 1),
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
    baca.pitches("A1 Bb1"),
    baca.repeat_tie(
        lambda _: baca.select.pleaf(_, 0),
        allow_rest=True,
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
        selector=lambda _: baca.select.pleaves(_),
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
        direction=abjad.DOWN,
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
        direction=abjad.DOWN,
        selector=baca.selectors.leaves(),
    ),
    baca.staff_positions(
        [0],
        allow_repeats=True,
    ),
)

# NOTE: final_hairpin=False can be removed once
#       LilyPond fixes DynamicLineSpanner bug.
commands(
    ("rh", (2, 13)),
    baca.hairpin(
        "mp > p <",
        bookend=False,
        final_hairpin=False,
        pieces=lambda _: baca.select.lparts(
            _, [2, 1, 3, 2, 2, 1, 3, 2, 2, 1, 3, 2 + 1]
        ),
        selector=lambda _: baca.select.rleaves(_),
    ),
)

commands(
    ("rh", 3),
    baca.make_monads("1/3  1/3"),
    baca.markup(
        r"\baca-fz-markup",
        direction=abjad.DOWN,
        selector=baca.selectors.leaf(0),
    ),
    baca.markup(
        r"\baca-fffz-markup",
        direction=abjad.DOWN,
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
        direction=abjad.DOWN,
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
        direction=abjad.DOWN,
        selector=baca.selectors.leaf(0),
    ),
    baca.markup(
        r"\baca-fz-markup",
        direction=abjad.DOWN,
        selector=baca.selectors.leaf(1),
    ),
    baca.markup(
        r"\baca-ffz-markup",
        direction=abjad.DOWN,
        selector=baca.selectors.leaf(2),
    ),
    baca.markup(
        r"\baca-fffz-markup",
        direction=abjad.DOWN,
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
        direction=abjad.DOWN,
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
        direction=abjad.DOWN,
    ),
    baca.markup(
        r"\baca-fffz-markup",
        direction=abjad.DOWN,
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
        direction=abjad.DOWN,
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
        direction=abjad.DOWN,
    ),
    baca.markup(
        r"\baca-fz-markup",
        direction=abjad.DOWN,
        selector=baca.selectors.leaf(1),
    ),
    baca.markup(
        r"\baca-ffz-markup",
        direction=abjad.DOWN,
        selector=baca.selectors.leaf(2),
    ),
    baca.markup(
        r"\baca-fffz-markup",
        direction=abjad.DOWN,
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
        direction=abjad.DOWN,
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
        direction=abjad.DOWN,
    ),
    baca.markup(
        r"\baca-fffz-markup",
        direction=abjad.DOWN,
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
        direction=abjad.DOWN,
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
        direction=abjad.DOWN,
    ),
    baca.markup(
        r"\baca-fz-markup",
        direction=abjad.DOWN,
        selector=baca.selectors.leaf(1),
    ),
    baca.markup(
        r"\baca-ffz-markup",
        direction=abjad.DOWN,
        selector=baca.selectors.leaf(2),
    ),
    baca.markup(
        r"\baca-fffz-markup",
        direction=abjad.DOWN,
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
        direction=abjad.DOWN,
    ),
)

commands(
    ("rh", (14, 23)),
    baca.hairpin(
        "mp -- p -- pp -- p -- !",
        pieces=lambda _: baca.mgroups(_, [2, 2, 4, 2 + 1]),
        selector=lambda _: baca.select.rleaves(_),
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
        direction=abjad.DOWN,
    ),
    baca.markup(
        r"\baca-fffz-markup",
        direction=abjad.DOWN,
        selector=baca.selectors.leaf(1),
    ),
)

commands(
    ("rh", 16),
    baca.make_monads("1/2"),
    baca.markup(
        r"\baca-ffz-markup",
        direction=abjad.DOWN,
    ),
)

commands(
    ("rh", 17),
    baca.make_monads("1/5  1/5  1/5  1/5"),
    baca.markup(
        r"\baca-mfz-markup",
        direction=abjad.DOWN,
    ),
    baca.markup(
        r"\baca-fz-markup",
        direction=abjad.DOWN,
        selector=baca.selectors.leaf(1),
    ),
    baca.markup(
        r"\baca-ffz-markup",
        direction=abjad.DOWN,
        selector=baca.selectors.leaf(2),
    ),
    baca.markup(
        r"\baca-fffz-markup",
        direction=abjad.DOWN,
        selector=baca.selectors.leaf(3),
    ),
)

commands(
    ("rh", 18),
    # TODO: make +ARCH_A_SCORE work
    baca.only_score(
        baca.hairpin_to_barline(),
    ),
)

commands(
    ("rh", (18, 23)),
    baca.text_spanner(
        "(trem. mod.) => stretto => largo => stretto =>" " largo => stretto =>",
        abjad.Tweak(r"- \tweak staff-padding 6"),
        bookend=False,
        pieces=lambda _: baca.select.lparts(_, [1, 1, 1, 1, 1, 1 + 1]),
        right_broken=True,
        selector=lambda _: baca.select.rleaves(_),
    ),
)

commands(
    ("rh", (18, 23)),
    baca.make_monads("1/2  1/2  1/2  1/2  1/2  1/2"),
    baca.markup(
        r"\baca-ffz-markup",
        direction=abjad.DOWN,
    ),
    baca.markup(
        r"\baca-fz-markup",
        direction=abjad.DOWN,
        selector=baca.selectors.leaf(1),
    ),
    baca.markup(
        r"\baca-fz-markup",
        direction=abjad.DOWN,
        selector=baca.selectors.leaf(2),
    ),
    baca.markup(
        r"\baca-mfz-markup",
        direction=abjad.DOWN,
        selector=baca.selectors.leaf(3),
    ),
    baca.markup(
        r"\baca-mfz-markup",
        direction=abjad.DOWN,
        selector=baca.selectors.leaf(4),
    ),
    baca.markup(
        r"\baca-mpz-markup",
        direction=abjad.DOWN,
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
    )
    baca.build.persist(lilypond_file, metadata, persist, timing)
