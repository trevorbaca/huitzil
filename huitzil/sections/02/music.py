import abjad
import baca

from huitzil import library

#########################################################################################
########################################### 02 ##########################################
#########################################################################################

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

baca.metronome_mark(skips[1 - 1], accumulator.metronome_marks["44"], manifests)


def VC(voice):
    music = baca.make_mmrests(accumulator.get(1, 24))
    voice.extend(music)
    # 25
    music = baca.make_skeleton("{ c1 }")
    voice.extend(music)


def RH(voice):
    # (1, 4)
    music = baca.make_skeleton("{ c4 r2 c4 r2 c4 r2 c4 r2 }")
    voice.extend(music)
    # (5, 8)
    music = baca.make_skeleton(
        "{ c4 c16 r8. r4 c4 c16 r8. r4 c4 c16 r8. r4 c4 c16 r8. r4 }"
    )
    voice.extend(music)
    # (9, 12)
    music = baca.make_skeleton(
        "{"
        r" c4 \times 2/3 { c8 r4 } r4"
        r" c4 \times 2/3 { c8 r4 } r4"
        r" c4 c8 r8 r4"
        r" c4 c8 r8 r4"
        " }",
    )
    voice.extend(music)
    # (13, 15)
    music = baca.make_skeleton("{ c4 c4 c4 c4 c4 c4 }")
    voice.extend(music)
    # (16, 18)
    music = baca.make_skeleton(
        "{"
        r" \times 2/3 { c4 c4 c4 }"
        r" \times 2/3 { c4 c4 c4 }"
        r" \times 2/3 { c4 c4 c4 }"
        " }",
    )
    voice.extend(music)
    # (19, 20)
    music = baca.make_skeleton(
        "{" r" c8 c8 c8 c8" r" c8 c8 c8 c8" " }",
    )
    voice.extend(music)
    # (21, 24)
    music = baca.make_skeleton(
        "{"
        r" \times 4/5 { c8 c8 c8 c8 c8 }"
        r" \times 4/6 { c8 c8 c8 c8 c8 c8 }"
        r" \times 4/7 { c8 c8 c8 c8 c8 c8 c8 }"
        " c16 c16 c16 c16 c16 c16 c16 c16"
        " }",
    )
    voice.extend(music)
    # 25
    music = baca.make_skeleton("{ c1 }")
    voice.extend(music)
    baca.append_anchor_note_function(voice)


def vc(m):
    accumulator(
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
            selector=lambda _: baca.select.leaves(_)[1:],
        ),
        baca.time_signature_stencil_false(),
    )
    accumulator(
        ("vc", 25),
        baca.literal(
            [
                r"\stopStaff",
                r"\once \override Staff.StaffSymbol.line-count = 5",
                r"\startStaff",
            ]
        ),
        baca.pitch("B1"),
    )


def rh(m):
    accumulator(
        ("rh", (1, 4)),
        baca.rest_position(0),
    )
    accumulator(
        ("rh", (19, 24)),
        baca.beam(),
    )
    accumulator(
        ("rh", [9, 10]),
        baca.tag(
            # TODO: make +ARCH_A_SCORE work
            # "+ARCH_A_SCORE",
            abjad.Tag("+SCORE"),
            baca.literal(
                r"\once \override TupletNumber.font-size = -2",
                selector=lambda _: baca.select.pleaf(_, 1),
            ),
        ),
    )
    accumulator(
        ("rh", 25),
        baca.glissando(
            right_broken=True,
            selector=lambda _: baca.select.rleaves(_),
        ),
        baca.hairpin(
            "(mp) -- !",
            selector=lambda _: baca.select.rleaves(_),
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
            abjad.Tweak(r"- \tweak staff-padding 6"),
        ),
        baca.markup(
            r"\huitzil-trem-moderato-markup",
            abjad.Tweak(r"- \tweak staff-padding 3.5"),
            direction=abjad.DOWN,
        ),
        baca.stem_tremolo(),
    )
    accumulator(
        ("rh", 25),
        baca.staff_position(
            6,
            allow_hidden=True,
            selector=lambda _: baca.select.rleaf(_, -1),
        ),
    )
    accumulator(
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
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        ),
        baca.literal(r"\override DynamicLineSpanner.staff-padding = 2.5"),
        baca.literal(r"\override Score.BarNumber.transparent = ##t"),
        baca.markup(
            r"\huitzil-directly-on-bridge-markup",
            abjad.Tweak(r"- \tweak staff-padding 3"),
        ),
        baca.staff_position(8),
        baca.tuplet_bracket_down(),
    )


def main():
    VC(accumulator.voice("vc"))
    RH(accumulator.voice("rh"))
    previous_persist = baca.previous_metadata(__file__, file_name="__persist__")
    baca.reapply(accumulator, accumulator.manifests(), previous_persist, voice_names)
    cache = baca.interpret.cache_leaves(
        score,
        len(accumulator.time_signatures),
        accumulator.voice_abbreviations,
    )
    vc(cache["vc"])
    rh(cache["rh"])


if __name__ == "__main__":
    main()
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
        spacing_extra_offset=(0, 16),
    )
    baca.build.persist(lilypond_file, metadata, persist, timing)
