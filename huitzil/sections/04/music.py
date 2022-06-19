import abjad
import baca

from huitzil import library

#########################################################################################
########################################### 04 ##########################################
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
    (18 - 1, "88"),
    (18 - 1, baca.Ritardando()),
):
    skip = skips[index]
    indicator = commands.metronome_marks.get(item, item)
    baca.commands._metronome_mark(skip, indicator, manifests)

# VC

voice = score["Cello.Music"]

music = baca.make_mmrests(commands.get(1, 7))
voice.extend(music)

# (8, 13)
music = baca.make_skeleton("{ c1 * 107/30 c1 * 1/5 }")
voice.extend(music)

# 14
music = baca.make_skeleton("{ c2 }")
voice.extend(music)

music = baca.make_mmrests(commands.get(15, 22))
voice.extend(music)

# 23
music = baca.make_skeleton("{ c1 * 1/2 }")
voice.extend(music)

# RH

voice = score["RH.Music"]

# 1
music = baca.make_monads("1/8  1/8  1/8  1/8")
voice.extend(music)

# 2
music = baca.make_monads("1/2")
voice.extend(music)

# 3
music = baca.make_monads("1/3  1/3")
voice.extend(music)

# 4
music = baca.make_monads("1/2")
voice.extend(music)

# 5
music = baca.make_monads("1/5  1/5  1/5  1/5")
voice.extend(music)

# 6
music = baca.make_monads("1/2")
voice.extend(music)

# 7
music = baca.make_monads("1/3  1/3")
voice.extend(music)

# 8
music = baca.make_monads("1/2")
voice.extend(music)

# 9
music = baca.make_monads("1/5  1/5  1/5  1/5")
voice.extend(music)

# 10
music = baca.make_monads("1/2")
voice.extend(music)

# 11
music = baca.make_monads("1/3  1/3")
voice.extend(music)

# 12
music = baca.make_monads("1/2")
voice.extend(music)

# 13
music = baca.make_monads("1/5  1/5  1/5  1/5")
voice.extend(music)

# 14
music = baca.make_monads("1/2")
voice.extend(music)

# 15
music = baca.make_monads("1/3  1/3")
voice.extend(music)

# 16
music = baca.make_monads("1/2")
voice.extend(music)

# 17
music = baca.make_monads("1/5  1/5  1/5  1/5")
voice.extend(music)

# (18, 23)
music = baca.make_monads("1/2  1/2  1/2  1/2  1/2  1/2")
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
    ("vc", (8, 13)),
    baca.pitches("B1 C2"),
    baca.repeat_tie(
        lambda _: baca.select.pleaf(_, 0),
        allow_rest=True,
    ),
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
    baca.staff_position(7),
)

commands(
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
)

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
    baca.markup(
        r"\baca-ffz-markup",
        direction=abjad.DOWN,
        selector=lambda _: baca.select.leaves(_),
    ),
    baca.staff_positions(
        [-6, -4, -2, 0],
        allow_repeats=True,
    ),
)

commands(
    ("rh", 2),
    baca.markup(
        r"\baca-ffz-markup",
        direction=abjad.DOWN,
        selector=lambda _: baca.select.leaves(_),
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
    #    pieces=lambda _: baca.select.lparts(_, [2, 1, 3, 2, 2, 1, 3, 2, 2, 1, 3, 2 + 1]),
    #    selector=lambda _: baca.select.rleaves(_),
    # ),
    # FUTURE: replace after LilyPond fixes DynamicLineSpanner bug:
    baca.hairpin(
        "mp > p <",
        # bookend=False,
        pieces=lambda _: baca.select.lparts(_, [2, 1, 3, 2, 2, 1, 3, 2, 2, 1, 4]),
        selector=lambda _: baca.select.leaves(_)[:-1],
    ),
)

commands(
    ("rh", 3),
    baca.markup(
        r"\baca-fz-markup",
        direction=abjad.DOWN,
        selector=lambda _: abjad.select.leaf(_, 0),
    ),
    baca.markup(
        r"\baca-fffz-markup",
        direction=abjad.DOWN,
        selector=lambda _: abjad.select.leaf(_, 1),
    ),
    baca.staff_positions(
        [0],
        allow_repeats=True,
    ),
)

commands(
    ("rh", 4),
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
    baca.markup(
        r"\baca-mfz-markup",
        direction=abjad.DOWN,
        selector=lambda _: abjad.select.leaf(_, 0),
    ),
    baca.markup(
        r"\baca-fz-markup",
        direction=abjad.DOWN,
        selector=lambda _: abjad.select.leaf(_, 1),
    ),
    baca.markup(
        r"\baca-ffz-markup",
        direction=abjad.DOWN,
        selector=lambda _: abjad.select.leaf(_, 2),
    ),
    baca.markup(
        r"\baca-fffz-markup",
        direction=abjad.DOWN,
        selector=lambda _: abjad.select.leaf(_, 3),
    ),
    baca.staff_positions(
        [0],
        allow_repeats=True,
    ),
)

commands(
    ("rh", 6),
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
    baca.markup(
        r"\baca-fz-markup",
        direction=abjad.DOWN,
    ),
    baca.markup(
        r"\baca-fffz-markup",
        direction=abjad.DOWN,
        selector=lambda _: abjad.select.leaf(_, 1),
    ),
    baca.staff_positions(
        [0],
        allow_repeats=True,
    ),
)

commands(
    ("rh", 8),
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
    baca.markup(
        r"\baca-mfz-markup",
        direction=abjad.DOWN,
    ),
    baca.markup(
        r"\baca-fz-markup",
        direction=abjad.DOWN,
        selector=lambda _: abjad.select.leaf(_, 1),
    ),
    baca.markup(
        r"\baca-ffz-markup",
        direction=abjad.DOWN,
        selector=lambda _: abjad.select.leaf(_, 2),
    ),
    baca.markup(
        r"\baca-fffz-markup",
        direction=abjad.DOWN,
        selector=lambda _: abjad.select.leaf(_, 3),
    ),
    baca.staff_positions(
        [0],
        allow_repeats=True,
    ),
)

commands(
    ("rh", 10),
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
    baca.markup(
        r"\baca-fz-markup",
        direction=abjad.DOWN,
    ),
    baca.markup(
        r"\baca-fffz-markup",
        direction=abjad.DOWN,
        selector=lambda _: abjad.select.leaf(_, 1),
    ),
    baca.staff_positions(
        [0],
        allow_repeats=True,
    ),
)

commands(
    ("rh", 12),
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
    baca.markup(
        r"\baca-mfz-markup",
        direction=abjad.DOWN,
    ),
    baca.markup(
        r"\baca-fz-markup",
        direction=abjad.DOWN,
        selector=lambda _: abjad.select.leaf(_, 1),
    ),
    baca.markup(
        r"\baca-ffz-markup",
        direction=abjad.DOWN,
        selector=lambda _: abjad.select.leaf(_, 2),
    ),
    baca.markup(
        r"\baca-fffz-markup",
        direction=abjad.DOWN,
        selector=lambda _: abjad.select.leaf(_, 3),
    ),
    baca.staff_positions(
        [0],
        allow_repeats=True,
    ),
)

commands(
    ("rh", 14),
    baca.markup(
        r"\baca-ffz-markup",
        direction=abjad.DOWN,
    ),
)

commands(
    ("rh", (14, 23)),
    # FUTURE: use this when LilyPond fixes DynamicLine Spanner bug:
    # baca.hairpin(
    #    "mp -- p -- pp -- p -- !",
    #    abjad.Tweak(r"- \tweak to-barline ##t"),
    #    pieces=lambda _: baca.mgroups(_, [2, 2, 4, 2 + 1]),
    #    selector=lambda _: baca.select.rleaves(_),
    # ),
    # FUTURE: replace this when LilyPond fixes DynamicLineSpanner bug:
    baca.hairpin(
        "mp -- p -- pp -- p",
        abjad.Tweak(r"- \tweak to-barline ##t"),
        bookend=False,
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
    baca.markup(
        r"\huitzil-directly-on-bridge-markup",
        abjad.Tweak(r"- \tweak self-alignment-X -0.85"),
        abjad.Tweak(r"- \tweak staff-padding 2"),
    ),
    baca.staff_position(8),
)

commands(
    ("rh", 15),
    baca.markup(
        r"\baca-fz-markup",
        direction=abjad.DOWN,
    ),
    baca.markup(
        r"\baca-fffz-markup",
        direction=abjad.DOWN,
        selector=lambda _: abjad.select.leaf(_, 1),
    ),
)

commands(
    ("rh", 16),
    baca.markup(
        r"\baca-ffz-markup",
        direction=abjad.DOWN,
    ),
)

commands(
    ("rh", 17),
    baca.markup(
        r"\baca-mfz-markup",
        direction=abjad.DOWN,
    ),
    baca.markup(
        r"\baca-fz-markup",
        direction=abjad.DOWN,
        selector=lambda _: abjad.select.leaf(_, 1),
    ),
    baca.markup(
        r"\baca-ffz-markup",
        direction=abjad.DOWN,
        selector=lambda _: abjad.select.leaf(_, 2),
    ),
    baca.markup(
        r"\baca-fffz-markup",
        direction=abjad.DOWN,
        selector=lambda _: abjad.select.leaf(_, 3),
    ),
)

commands(
    ("rh", (18, 22)),
    baca.text_spanner(
        "(trem. mod.) => più stretto => più largo => più stretto => mod.",
        abjad.Tweak(r"- \tweak staff-padding 6"),
        pieces=lambda _: baca.select.lparts(_, [1, 1, 1, 1 + 1]),
    ),
)

commands(
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

commands(
    ("rh", (18, 23)),
    baca.markup(
        r"\baca-ffz-markup",
        direction=abjad.DOWN,
    ),
    baca.markup(
        r"\baca-fz-markup",
        direction=abjad.DOWN,
        selector=lambda _: abjad.select.leaf(_, 1),
    ),
    baca.markup(
        r"\baca-fz-markup",
        direction=abjad.DOWN,
        selector=lambda _: abjad.select.leaf(_, 2),
    ),
    baca.markup(
        r"\baca-mfz-markup",
        direction=abjad.DOWN,
        selector=lambda _: abjad.select.leaf(_, 3),
    ),
    baca.markup(
        r"\baca-mfz-markup",
        direction=abjad.DOWN,
        selector=lambda _: abjad.select.leaf(_, 4),
    ),
    baca.markup(
        r"\baca-mpz-markup",
        direction=abjad.DOWN,
        selector=lambda _: abjad.select.leaf(_, 5),
    ),
)

commands(
    ("rh", 22),
    baca.only_section(
        baca.hairpin_to_barline(),
    ),
)

commands(
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
        abjad.Tweak(r"- \tweak self-alignment-X -0.85"),
        abjad.Tweak(r"- \tweak staff-padding 6"),
    ),
    baca.staff_position(
        6,
        selector=lambda _: baca.select.rleaf(_, -1),
    ),
)

commands(
    "rh",
    baca.only_section(
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
    ("vc", (8, 14)),
    baca.glissando(
        selector=lambda _: baca.select.leaves(_),
    ),
)

commands(
    "rh",
    baca.glissando(
        right_broken=True,
        selector=lambda _: baca.select.rleaves(_),
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
