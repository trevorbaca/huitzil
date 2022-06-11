import abjad
import baca

from huitzil import library

#########################################################################################
########################################### 05 ##########################################
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
    instruments=library.instruments(),
    metronome_marks=library.metronome_marks(),
    time_signatures=time_signatures,
    voice_abbreviations=library.voice_abbreviations(),
    voice_names=voice_names,
)

baca.interpret.set_up_score(
    score,
    commands,
    commands.manifests(),
    commands.time_signatures,
    append_anchor_skip=True,
    always_make_global_rests=True,
    attach_nonfirst_empty_start_bar=True,
)

skips = score["Skips"]
manifests = commands.manifests()

for index, item in (
    (1 - 1, "44"),
    (13 - 1, "44"),
    (13 - 1, baca.Accelerando()),
    (16 - 1, "66"),
    (17 - 1, "44"),
    (17 - 1, baca.Accelerando()),
    (22 - 1, "88"),
):
    skip = skips[index]
    indicator = commands.metronome_marks.get(item, item)
    baca.commands._metronome_mark(skip, indicator, manifests)

# VC

voice = score["Cello.Music"]

music = baca.make_mmrests_function(commands.get())
voice.extend(music)

# RH

voice = score["RH.Music"]

# 1
music = baca.make_monads_function("1/4  1/8  1/8")
voice.extend(music)

# 2
music = baca.make_monads_function("1/4  1/8  1/6")
voice.extend(music)

# 3
music = baca.make_monads_function("1/4  1/8  1/8")
voice.extend(music)

# 4
music = baca.make_monads_function("1/3  1/8  1/8")
voice.extend(music)

# 5
music = baca.make_monads_function("1/4  1/6  1/6  1/10  1/10  1/10")
voice.extend(music)

# 6
music = baca.make_monads_function("1/4  1/6  1/6  1/8  1/8  1/8")
voice.extend(music)

# 7
music = baca.make_monads_function("1/2")
voice.extend(music)

# 8
music = baca.make_monads_function("1/4  1/8  1/8")
voice.extend(music)

# 9
music = baca.make_monads_function("1/4  1/8")
voice.extend(music)

# 10
music = baca.make_monads_function("1/6  1/6")
voice.extend(music)

# 11
music = baca.make_monads_function("1/6  1/6  1/10  1/10  1/10  1/10")
voice.extend(music)

# 12
music = baca.make_monads_function("1/2")
voice.extend(music)

# 13
music = baca.make_monads_function("1/2")
voice.extend(music)

# 14
music = baca.make_monads_function("1/2")
voice.extend(music)

# 15
music = baca.make_monads_function("1/2")
voice.extend(music)

# 16
music = baca.make_monads_function("1/2")
voice.extend(music)

# 17
music = baca.make_monads_function("1/2")
voice.extend(music)

# 18
music = baca.make_monads_function("1/2")
voice.extend(music)

# 19
music = baca.make_monads_function("1/2")
voice.extend(music)

# 20
music = baca.make_monads_function("1/2")
voice.extend(music)

# 21
music = baca.make_monads_function("1/2")
voice.extend(music)

# 22
music = baca.make_monads_function("1/2")
voice.extend(music)

# anchor notes

commands(
    "rh",
    baca.append_anchor_note(),
)

# reapply

music_voices = [_ for _ in voice_names if "Music" in _]

commands(
    music_voices,
    baca.reapply_persistent_indicators(),
)

# vc

commands(
    "vc",
    baca.mmrest_transparent(),
    baca.new(
        baca.bar_line_transparent(),
        baca.span_bar_transparent(),
        selector=lambda _: baca.select.leaves(_),
    ),
    baca.time_signature_stencil_false(),
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
    baca.hairpin(
        "mp -- !",
        abjad.Tweak(r"- \tweak to-barline ##t"),
        selector=lambda _: baca.select.rleaves(_),
    ),
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
        "sub. mod. => più stretto => più largo => più stretto",
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
    baca.staff_positions(
        [0],
        allow_repeats=True,
    ),
)

commands(
    ("rh", (17, 22)),
    baca.hairpin(
        "p < f -- !",
        pieces=lambda _: baca.select.lparts(_, [5, 1 + 1]),
        selector=lambda _: baca.select.rleaves(_),
    ),
    baca.markup(
        r"\baca-ffz-markup",
        direction=abjad.DOWN,
        selector=lambda _: baca.select.leaves(_),
    ),
    baca.text_spanner(
        "sub. mod. => più stretto => più largo => più stretto =>"
        " più largo => trem. mod.",
        abjad.Tweak(r"- \tweak staff-padding 6"),
        pieces=lambda _: baca.select.lparts(_, [1, 1, 1, 1, 2]),
    ),
)

commands(
    ("rh", 18),
    baca.staff_positions(
        [-2],
        allow_repeats=True,
    ),
)

commands(
    ("rh", 19),
    baca.staff_positions(
        [-2],
        allow_repeats=True,
    ),
)

commands(
    ("rh", 20),
    baca.staff_positions(
        [-4],
        allow_repeats=True,
    ),
)

commands(
    ("rh", 21),
    baca.staff_positions(
        [-4],
        allow_repeats=True,
    ),
)

commands(
    ("rh", 22),
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
            baca.tags.CLOCK_TIME,
            baca.tags.LOCAL_MEASURE_NUMBER,
        ),
        always_make_global_rests=True,
        do_not_require_short_instrument_names=True,
        error_on_not_yet_pitched=True,
    )
    lilypond_file = baca.make_lilypond_file(
        score,
        include_layout_ly=True,
        includes=["../stylesheet.ily"],
    )
    baca.build.persist(lilypond_file, metadata, persist, timing)
