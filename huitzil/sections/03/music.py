import abjad
import baca

from huitzil import library

#########################################################################################
########################################### 03 ##########################################
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
    (1, 6),
    (1, 2),
    (2, 5),
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
        selector=lambda _: abjad.select.leaf(_, 13 - 1),
    ),
    baca.metronome_mark(
        baca.Accelerando(),
        selector=lambda _: abjad.select.leaf(_, 13 - 1),
    ),
    baca.metronome_mark(
        "66",
        selector=lambda _: abjad.select.leaf(_, 16 - 1),
    ),
    baca.metronome_mark(
        "44",
        selector=lambda _: abjad.select.leaf(_, 17 - 1),
    ),
    baca.metronome_mark(
        "44",
        selector=lambda _: abjad.select.leaf(_, 21 - 1),
    ),
    baca.metronome_mark(
        baca.Accelerando(),
        selector=lambda _: abjad.select.leaf(_, 21 - 1),
    ),
    baca.metronome_mark(
        "88",
        selector=lambda _: abjad.select.leaf(_, 26 - 1),
    ),
)

# VC

commands(
    "vc",
    baca.make_mmrests_flat(),
)

# RH

commands(
    ("rh", 1),
    baca.make_monads("1/4  1/8  1/8"),
)

commands(
    ("rh", 2),
    baca.make_monads("1/4  1/8  1/6"),
)

commands(
    ("rh", 3),
    baca.make_monads("1/4  1/8  1/8"),
)

commands(
    ("rh", 4),
    baca.make_monads("1/3  1/8  1/8"),
)

commands(
    ("rh", 5),
    baca.make_monads("1/4  1/6  1/6  1/10  1/10  1/10"),
)

commands(
    ("rh", 6),
    baca.make_monads("1/4  1/6  1/6  1/8  1/8  1/8"),
)

commands(
    ("rh", 7),
    baca.make_monads("1/2"),
)

commands(
    ("rh", 8),
    baca.make_monads("1/4  1/8  1/8"),
)

commands(
    ("rh", 9),
    baca.make_monads("1/4  1/8"),
)

commands(
    ("rh", 10),
    baca.make_monads("1/6  1/6"),
)

commands(
    ("rh", 11),
    baca.make_monads("1/6  1/6  1/10  1/10  1/10  1/10"),
)

commands(
    ("rh", 12),
    baca.make_monads("1/2"),
)

commands(
    ("rh", 13),
    baca.make_monads("1/2"),
)

commands(
    ("rh", 14),
    baca.make_monads("1/2"),
)

commands(
    ("rh", 15),
    baca.make_monads("1/2"),
)

commands(
    ("rh", 16),
    baca.make_monads("1/2"),
)

commands(
    ("rh", 17),
    baca.make_monads("1/6"),
)

commands(
    ("rh", 18),
    baca.make_monads("1/6  1/6  1/6"),
)

commands(
    ("rh", 19),
    baca.make_monads("1/10  1/10  1/10  1/10"),
)

commands(
    ("rh", 20),
    baca.make_monads("1/2"),
)

commands(
    ("rh", 21),
    baca.make_monads("1/2"),
)

commands(
    ("rh", 22),
    baca.make_monads("1/2"),
)

commands(
    ("rh", 23),
    baca.make_monads("1/2"),
)

commands(
    ("rh", 24),
    baca.make_monads("1/2"),
)

commands(
    ("rh", 25),
    baca.make_monads("1/2"),
)

commands(
    ("rh", 26),
    baca.make_monads("1/2"),
)

# phantom & reapply

music_voices = [_ for _ in voice_names if "Music_Voice" in _]

commands(
    music_voices,
    baca.append_phantom_measure(),
    baca.reapply_persistent_indicators(),
)

# vc

commands(
    "vc",
    baca.mmrest_transparent(),
    baca.time_signature_stencil_false(),
    baca.new(
        baca.bar_line_transparent(),
        baca.span_bar_transparent(),
        selector=lambda _: baca.select.leaves(_),
    ),
)

# rh

commands(
    ("rh", 1),
    baca.staff_positions(
        [6, 6, 4],
        allow_repeats=True,
    ),
)

commands(
    ("rh", (1, 3)),
    baca.markup(
        r"\baca-mfz-markup",
        direction=abjad.DOWN,
        selector=lambda _: baca.select.leaves(_),
    ),
)

commands(
    ("rh", 2),
    baca.staff_positions(
        [6, 6, 4],
        allow_repeats=True,
    ),
)

commands(
    ("rh", 3),
    baca.staff_positions(
        [6, 6, 4],
        allow_repeats=True,
    ),
)

commands(
    ("rh", 4),
    baca.hairpin(
        "p -- !",
        selector=lambda _: baca.rleaves(_, count=2),
    ),
    baca.staff_positions(
        [4, 4, 2],
        allow_repeats=True,
    ),
)

commands(
    ("rh", (4, 5)),
    baca.markup(
        r"\baca-fz-markup",
        direction=abjad.DOWN,
    ),
    baca.markup(
        r"\baca-mpz-markup",
        direction=abjad.DOWN,
        selector=lambda _: baca.select.pleaves(_)[1:-3],
    ),
    baca.markup(
        r"\baca-mfz-markup",
        direction=abjad.DOWN,
        selector=lambda _: baca.select.pleaves(_)[-3:],
    ),
)

commands(
    ("rh", 5),
    baca.hairpin(
        "pp < mf",
        selector=lambda _: baca.select.leaves(_)[1:],
    ),
    baca.staff_positions(
        [4, 4, 2, 6, 4, 2],
        allow_repeats=True,
    ),
)

commands(
    ("rh", 6),
    baca.hairpin(
        "p -- !",
        abjad.Tweak(r"- \tweak to-barline ##t"),
        selector=lambda _: baca.select.rleaves(_),
    ),
    baca.markup(
        r"\baca-fz-markup",
        direction=abjad.DOWN,
    ),
    baca.markup(
        r"\baca-mpz-markup",
        direction=abjad.DOWN,
        selector=lambda _: baca.select.pleaves(_)[1:],
    ),
    baca.staff_positions(
        [4, 4, 2, 6, 4, 2],
        allow_repeats=True,
    ),
)

commands(
    ("rh", 7),
    baca.staff_positions(
        [2],
        allow_repeats=True,
    ),
)

commands(
    ("rh", (7, 9)),
    baca.markup(
        r"\baca-fz-markup",
        direction=abjad.DOWN,
        selector=lambda _: baca.select.leaves(_),
    ),
)

commands(
    ("rh", (7, 9)),
    baca.hairpin(
        "mf -- !",
        abjad.Tweak(r"- \tweak to-barline ##t"),
        selector=lambda _: baca.select.rleaves(_),
    ),
)

commands(
    ("rh", 8),
    baca.staff_positions(
        [2, 2, 0],
        allow_repeats=True,
    ),
)

commands(
    ("rh", 9),
    baca.staff_positions(
        [2],
        allow_repeats=True,
    ),
)

commands(
    ("rh", 10),
    baca.staff_positions(
        [2, 6],
        allow_repeats=True,
    ),
)

commands(
    ("rh", (10, 11)),
    baca.markup(
        r"\baca-mfz-markup",
        direction=abjad.DOWN,
        selector=lambda _: baca.select.leaves(_)[:4],
    ),
    baca.markup(
        r"\baca-mpz-markup",
        direction=abjad.DOWN,
        selector=lambda _: baca.select.leaves(_)[4:],
    ),
    baca.text_spanner(
        "(trem. mod.) => trem. stretto",
        abjad.Tweak(r"- \tweak staff-padding 6"),
        selector=lambda _: baca.select.rleak(baca.select.leaves(_)[:4]),
    ),
)

commands(
    ("rh", (10, 12)),
    baca.hairpin(
        "mp > ppp -- !",
        abjad.Tweak(r"- \tweak to-barline ##t"),
        pieces=lambda _: baca.select.lparts(_, [4, 5 + 1]),
        selector=lambda _: baca.select.rleaves(_),
    ),
)

commands(
    ("rh", 11),
    baca.staff_positions(
        [4, 2, 6, 4, 2, 0],
        allow_repeats=True,
    ),
)

commands(
    ("rh", 12),
    baca.staff_positions(
        [0],
        allow_repeats=True,
    ),
)

commands(
    ("rh", (12, 16)),
    baca.markup(
        r"\baca-ffz-markup",
        direction=abjad.DOWN,
        selector=lambda _: baca.select.leaves(_),
    ),
)

commands(
    ("rh", 13),
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
        "sub. trem. mod. => più stretto => più largo => più stretto",
        abjad.Tweak(r"- \tweak staff-padding 6"),
        pieces=lambda _: baca.select.lparts(_, [1, 1, 2]),
    ),
)

commands(
    ("rh", 14),
    baca.staff_positions(
        [-2],
        allow_repeats=True,
    ),
)

commands(
    ("rh", 15),
    baca.staff_positions(
        [-2],
        allow_repeats=True,
    ),
)

commands(
    ("rh", 16),
    baca.staff_positions(
        [-4],
        allow_repeats=True,
    ),
)

commands(
    ("rh", 17),
    baca.markup(
        r"\baca-fz-markup",
        direction=abjad.DOWN,
    ),
    baca.staff_positions(
        [0],
        allow_repeats=True,
    ),
)

commands(
    ("rh", (17, 18)),
    baca.hairpin(
        "mp >",
        bookend=False,
    ),
    baca.text_spanner(
        "sub. trem. mod. => trem. stretto",
        abjad.Tweak(r"- \tweak staff-padding 6"),
        selector=lambda _: baca.select.rleaves(_),
    ),
)

commands(
    ("rh", 18),
    baca.markup(
        r"\baca-mfz-markup",
        direction=abjad.DOWN,
        selector=lambda _: baca.select.leaves(_),
    ),
    baca.staff_positions(
        [6, 4, 2],
        allow_repeats=True,
    ),
)

commands(
    ("rh", 19),
    baca.hairpin(
        "ppp -- !",
        selector=lambda _: baca.rleaves(_, count=2),
    ),
    baca.markup(
        r"\baca-mpz-markup",
        direction=abjad.DOWN,
        selector=lambda _: baca.select.leaves(_),
    ),
    # TODO: make +ARCH_A_SCORE work
    baca.only_score(
        baca.hairpin_to_barline(),
    ),
    baca.staff_positions(
        [6, 4, 2, 0],
        allow_repeats=True,
    ),
)

commands(
    ("rh", 20),
    baca.staff_positions(
        [0],
        allow_repeats=True,
    ),
)

commands(
    ("rh", 21),
    baca.staff_positions(
        [0],
        allow_repeats=True,
    ),
)

commands(
    ("rh", (20, 26)),
    baca.hairpin(
        "p < f -- !",
        pieces=lambda _: baca.select.lparts(_, [5, 1 + 1]),
        selector=lambda _: baca.select.rleak(baca.select.leaves(_)[1:]),
    ),
    baca.markup(
        r"\baca-ffz-markup",
        direction=abjad.DOWN,
        selector=lambda _: baca.select.leaves(_),
    ),
)

commands(
    ("rh", (21, 26)),
    baca.text_spanner(
        "sub. trem. mod. => più stretto => più largo => più stretto =>"
        " più largo => trem. mod.",
        abjad.Tweak(r"- \tweak staff-padding 6"),
        pieces=lambda _: baca.select.lparts(_, [1, 1, 1, 1, 2]),
    ),
)

commands(
    ("rh", 22),
    baca.staff_positions(
        [-2],
        allow_repeats=True,
    ),
)

commands(
    ("rh", 23),
    baca.staff_positions(
        [-2],
        allow_repeats=True,
    ),
)

commands(
    ("rh", 24),
    baca.staff_positions(
        [-4],
        allow_repeats=True,
    ),
)

commands(
    ("rh", 25),
    baca.staff_positions(
        [-4],
        allow_repeats=True,
    ),
)

commands(
    ("rh", 26),
    baca.markup(
        r"\huitzil-directly-above-end-of-fingerboard-markup",
        abjad.Tweak(r"- \tweak self-alignment-X -0.75"),
        abjad.Tweak(r"- \tweak staff-padding 2"),
    ),
    # TODO: make +ARCH_A_SCORE work
    baca.only_score(
        baca.hairpin_to_barline(),
    ),
    baca.staff_positions(
        [-6],
        allow_repeats=True,
    ),
)

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

# stage 2 (after staff position settings)

commands(
    "rh",
    baca.glissando(
        selector=lambda _: baca.select.leaves(_),
    ),
)

if __name__ == "__main__":
    metadata, persist, score, timing = baca.build.interpret_section(
        score,
        commands,
        **baca.score_interpretation_defaults(),
        activate=(
            # baca.tags.CLOCK_TIME,
            baca.tags.LOCAL_MEASURE_NUMBER,
            # baca.enums.MEASURE_NUMBER,
        ),
        always_make_global_rests=True,
        do_not_require_margin_markup=True,
        error_on_not_yet_pitched=True,
    )
    lilypond_file = baca.make_lilypond_file(
        score,
        include_layout_ly=True,
        includes=["../stylesheet.ily"],
        # measure_number_extra_offset=(0, 13),
    )
    baca.build.persist(lilypond_file, metadata, persist, timing)
