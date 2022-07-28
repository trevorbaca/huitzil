import abjad
import baca

from huitzil import library

#########################################################################################
########################################### 07 ##########################################
#########################################################################################

time_signatures = [
    (1, 4),
    (3, 16),
    (1, 4),
    (3, 16),
    (1, 4),
    (3, 16),
    (1, 4),
    (3, 16),
    (1, 4),
    (3, 16),
    (1, 4),
    (3, 16),
    (1, 4),
    (3, 16),
    (1, 4),
    (3, 16),
    (1, 4),
    (3, 16),
    (1, 4),
    (3, 16),
    (1, 4),
    (3, 16),
    (1, 4),
    (3, 16),
    (1, 1),
    (1, 1),
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
    (1 - 1, "88"),
    (25 - 1, "88"),
    (25 - 1, baca.Ritardando()),
):
    skip = skips[index]
    indicator = accumulator.metronome_marks.get(item, item)
    baca.metronome_mark(skip, indicator, manifests)


def VC(voice):
    # 1
    music = baca.make_skeleton("{ c1 * 1/4 }")
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(2, 13))
    voice.extend(music)
    # (14, 24)
    music = baca.make_skeleton("{ c1 * 19/8 }")
    voice.extend(music)
    # (25, 26)
    music = baca.make_skeleton("{ c1 * 2 }")
    voice.extend(music)
    baca.append_anchor_note_function(voice)


def RH(voice):
    # (1, 8))
    music = baca.make_monads("1/4 3/16 1/4 3/16 1/4 3/16 1/4 3/16")
    voice.extend(music)
    # (9, 16))
    music = baca.make_monads("1/4 3/16 1/4 3/16 1/4 3/16 1/4 3/16")
    voice.extend(music)
    # (17, 24))
    music = baca.make_monads("1/4 3/16 1/4 3/16 1/4 3/16 1/4 3/16")
    voice.extend(music)
    # (25, 26))
    music = baca.make_monads("1 1")
    voice.extend(music)
    baca.append_anchor_note_function(voice)


def vc(m):
    accumulator(
        ("vc", 1),
        baca.markup(
            r"\baca-string-iii-markup",
            abjad.Tweak(r"- \tweak padding 2.5"),
            direction=abjad.DOWN,
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
        baca.pitch("A2"),
    )
    accumulator(
        ("vc", (14, 24)),
        baca.suite(
            baca.pitch("A2"),
            baca.repeat_tie(
                lambda _: baca.select.pleaf(_, 0),
                allow_rest=True,
            ),
        ),
    )
    accumulator(
        ("vc", (25, 26)),
        baca.markup(
            r"\huitzil-string-three-to-four-markup",
            abjad.Tweak(r"- \tweak padding 2.5"),
            abjad.Tweak(r"- \tweak parent-alignment-X 0"),
            abjad.Tweak(r"- \tweak self-alignment-X -0.05"),
            direction=abjad.DOWN,
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
        baca.pitch("G2"),
    )
    accumulator(
        "vc",
        baca.clef("bass", selector=lambda _: abjad.select.leaf(_, 0)),
        baca.literal(
            [
                r"\stopStaff",
                r"\once \override Staff.StaffSymbol.line-count = 5",
                r"\startStaff",
            ],
            selector=lambda _: abjad.select.leaf(_, 0),
        ),
        baca.mmrest_transparent(
            selector=lambda _: baca.select.mmrests(_),
        ),
        baca.new(
            baca.bar_line_transparent(),
            baca.span_bar_transparent(),
            selector=lambda _: baca.select.leaves(_),
        ),
        baca.pitch(
            "A1",
            allow_hidden=True,
            selector=lambda _: baca.select.rleaf(_, -1),
        ),
        baca.time_signature_stencil_false(),
    )


def rh(m):
    accumulator(
        ("rh", (1, 8)),
        baca.staff_positions(
            [-6, -6, -8, -8, -10, -10, -12, -12],
        ),
    )
    accumulator(
        ("rh", (1, 20)),
        baca.markup(
            r"\baca-fz-markup",
            direction=abjad.DOWN,
            selector=lambda _: baca.select.leaves(_),
        ),
    )
    accumulator(
        ("rh", (1, 13)),
        baca.hairpin("mp > pp"),
    )
    accumulator(
        ("rh", (14, 26)),
        baca.hairpin("(pp) < ff"),
    )
    accumulator(
        ("rh", (9, 16)),
        baca.staff_positions(
            [-14, -14, -16, -16, -18, -18, -16, -16],
            allow_out_of_range=True,
        ),
    )
    accumulator(
        ("rh", 13),
        baca.markup(
            r"\huitzil-close-to-lh-markup",
            abjad.Tweak(r"- \tweak self-alignment-X -0.5"),
            abjad.Tweak(r"- \tweak staff-padding 2"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("rh", 14),
        baca.markup(
            r"\huitzil-descending-fingerboard-markup",
            abjad.Tweak(r"- \tweak self-alignment-X -1"),
            abjad.Tweak(r"- \tweak staff-padding 2"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
    )
    accumulator(
        ("rh", (17, 24)),
        baca.staff_positions(
            [-14, -14, -12, -12, -10, -10, -8, -8],
        ),
    )
    accumulator(
        ("rh", (25, 26)),
        baca.hairpin(
            ">",
            right_broken=True,
            selector=lambda _: baca.select.rleak(baca.select.leaves(_)[-1:]),
        ),
        baca.literal(
            [
                r"\stopStaff",
                r"\once \override RHStaff.StaffSymbol.line-positions ="
                " #'(8.2 8 7.8 6 4 2 0 -2 -4 -5.8 -6 -6.2)",
                r"\startStaff",
            ],
            selector=lambda _: abjad.select.leaf(_, 0),
        ),
        baca.markup(
            r"\huitzil-directly-above-end-of-fingerboard-column-markup",
            abjad.Tweak(r"- \tweak self-alignment-X -0.5"),
            abjad.Tweak(r"- \tweak staff-padding 2"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
        baca.parenthesize(
            selector=lambda _: baca.select.pleaf(_, -1),
        ),
        baca.staff_positions(
            [-6, 0, 6],
            allow_hidden=True,
            selector=lambda _: baca.select.rleaves(_),
        ),
    )
    # stage 2 (after staff position accumulator)
    accumulator(
        ("vc", (14, 24)),
        baca.glissando(
            selector=lambda _: baca.select.rleaves(_),
        ),
    )
    accumulator(
        ("vc", (25, 26)),
        baca.glissando(
            right_broken=True,
            selector=lambda _: baca.select.rleaves(_),
        ),
    )
    accumulator(
        "rh",
        baca.glissando(
            right_broken=True,
            selector=lambda _: baca.select.rleaves(_),
        ),
    )
    accumulator(
        "rh",
        baca.chunk(
            baca.literal(
                [
                    r"\once \override RHStaff.StaffSymbol.line-positions ="
                    " #'(8.2 8  7.8 -5.8 -6 -6.2 -8 -10 -12 -14 -16 -17.8 -18 -18.2)",
                    r"\morleyDashedStaffSymbolLines #'("
                    "   #f  #f #f  #f   #f #f   #t #t  #t  #t  #t  #f    #f  #f)",
                ],
                selector=lambda _: abjad.select.leaf(_, 0),
            ),
            baca.staff_lines(14, selector=lambda _: abjad.select.leaf(_, 0)),
        ),
        baca.literal(
            r"\override DynamicLineSpanner.staff-padding = 7",
            selector=lambda _: abjad.select.leaf(_, 0),
        ),
        baca.markup(
            r"\huitzil-ascending-fingerboard-markup",
            abjad.Tweak(r"- \tweak self-alignment-X -1"),
            abjad.Tweak(r"- \tweak staff-padding 4.5"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
        baca.markup(
            r"\huitzil-directly-above-end-of-fingerboard-markup",
            abjad.Tweak(r"- \tweak self-alignment-X -1"),
            abjad.Tweak(r"- \tweak staff-padding 1"),
            selector=lambda _: baca.select.pleaf(_, 0),
        ),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pleaves(_),
        ),
        baca.text_script_parent_alignment_x(0),
        baca.text_script_self_alignment_x(0),
        baca.text_script_staff_padding(4),
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
    )
    baca.build.persist(lilypond_file, metadata, persist, timing)
