import abjad
import baca

from huitzil import library

#########################################################################################
########################################### 06 ##########################################
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

accumulator = baca.CommandAccumulator(
    instruments=library.instruments(),
    metronome_marks=library.metronome_marks(),
    time_signatures=time_signatures,
    voice_abbreviations=library.voice_abbreviations(),
    voice_names=voice_names,
)

baca.interpret.set_up_score(
    score,
    accumulator,
    accumulator.manifests(),
    accumulator.time_signatures,
    append_anchor_skip=True,
    always_make_global_rests=True,
    attach_nonfirst_empty_start_bar=True,
)

skips = score["Skips"]
manifests = accumulator.manifests()

for index, item in (
    (18 - 1, "88"),
    (18 - 1, baca.Ritardando()),
    (22 - 1, "44"),
):
    skip = skips[index]
    indicator = accumulator.metronome_marks.get(item, item)
    baca.metronome_mark(skip, indicator, manifests)

# VC

voice = score["Cello.Music"]

music = baca.make_mmrests(accumulator.get(1, 7))
voice.extend(music)

# 8, 13
music = baca.make_skeleton("{ c1 * 107/30 c1 * 1/5 }")
voice.extend(music)

# 14
music = baca.make_skeleton("{ c2 }")
voice.extend(music)

music = baca.make_mmrests(accumulator.get(15, 23))
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

accumulator(
    "rh",
    baca.append_anchor_note(),
)

# reapply

music_voices = [_ for _ in voice_names if "Music" in _]

accumulator(
    music_voices,
    baca.reapply_persistent_indicators(),
)

# vc

accumulator(
    ("vc", (8, 13)),
    baca.suite(
        baca.pitches("Bb1 Cb2"),
        baca.chunk(
            baca.repeat_tie(
                lambda _: baca.select.pleaf(_, 0),
                allow_rest=True,
            ),
            baca.repeat_tie_extra_offset((-1.5, 0)),
        ),
    ),
)

accumulator(
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

accumulator(
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

accumulator(
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

accumulator(
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

accumulator(
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

accumulator(
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

accumulator(
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

accumulator(
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

accumulator(
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

accumulator(
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

accumulator(
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

accumulator(
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

accumulator(
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

accumulator(
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

accumulator(
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

accumulator(
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

accumulator(
    ("rh", 14),
    baca.markup(
        r"\baca-ffz-markup",
        direction=abjad.DOWN,
    ),
    baca.markup(
        r"\huitzil-directly-on-bridge-markup",
        abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        abjad.Tweak(r"- \tweak staff-padding 2"),
    ),
)

accumulator(
    ("rh", (14, 23)),
    # FUTURE: use this once LilyPond fixes DynamicLineSpanner bug:
    # baca.hairpin(
    #    "mp -- p -- pp -- p -- !",
    #    pieces=lambda _: baca.mgroups(_, [2, 2, 4, 2 + 1]),
    #    selector=lambda _: baca.select.rleaves(_),
    # ),
    # FUTURE: replace this once LilyPond fixes DynamicLineSpanner bug:
    baca.hairpin(
        "mp -- p -- pp -- p",
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
    baca.staff_position(8),
)

accumulator(
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

accumulator(
    ("rh", 16),
    baca.markup(
        r"\baca-ffz-markup",
        direction=abjad.DOWN,
    ),
)

accumulator(
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

accumulator(
    ("rh", (18, 22)),
    baca.text_spanner(
        "(trem. mod.) => più stretto => più largo => più stretto => mod.",
        abjad.Tweak(r"- \tweak staff-padding 6"),
        pieces=lambda _: baca.select.lparts(_, [1, 1, 1, 1 + 1]),
    ),
)

accumulator(
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

accumulator(
    ("rh", 22),
    baca.only_section(
        baca.hairpin_to_barline(),
    ),
)

accumulator(
    "rh",
    baca.only_score(
        baca.breathe(
            lambda _: baca.select.pleaf(_, -1),
            abjad.Tweak(r"\tweak X-extent ##f"),
            abjad.Tweak(r"\tweak extra-offset #'(0 . 5)"),
        ),
    ),
    baca.only_section(
        baca.breathe(
            lambda _: baca.select.pleaf(_, -1),
            abjad.Tweak(r"\tweak X-extent ##f"),
            abjad.Tweak(r"\tweak extra-offset #'(-1.5 . 2)"),
        ),
    ),
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

accumulator(
    ("vc", (8, 14)),
    baca.glissando(
        selector=lambda _: baca.select.leaves(_),
    ),
)

accumulator(
    "rh",
    baca.glissando(
        selector=lambda _: baca.select.leaves(_),
    ),
)

if __name__ == "__main__":
    metadata, persist, score, timing = baca.build.section(
        score,
        accumulator.manifests(),
        accumulator.time_signatures,
        **baca.interpret.section_defaults(),
        activate=(
            baca.tags.CLOCK_TIME,
            baca.tags.LOCAL_MEASURE_NUMBER,
        ),
        always_make_global_rests=True,
        commands=accumulator.commands,
        do_not_require_short_instrument_names=True,
        error_on_not_yet_pitched=True,
    )
    lilypond_file = baca.lilypond.file(
        score,
        include_layout_ly=True,
        includes=["../stylesheet.ily"],
    )
    baca.build.persist(lilypond_file, metadata, persist, timing)
