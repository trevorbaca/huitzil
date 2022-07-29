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
    baca.metronome_mark_function(skip, indicator, manifests)


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
    with baca.scope(m[1]) as o:
        baca.markup_function(
            o.pleaf(0),
            r"\baca-string-iii-markup",
            abjad.Tweak(r"- \tweak padding 2.5"),
            direction=abjad.DOWN,
        )
        baca.pitch_function(o, "A2")
    with baca.scope(m.get(14, 24)) as o:
        baca.pitch_function(o, "A2")
        baca.repeat_tie_function(o.pleaf(0))
    with baca.scope(m.get(25, 26)) as o:
        baca.markup_function(
            o.pleaf(0),
            r"\huitzil-string-three-to-four-markup",
            abjad.Tweak(r"- \tweak padding 2.5"),
            abjad.Tweak(r"- \tweak parent-alignment-X 0"),
            abjad.Tweak(r"- \tweak self-alignment-X -0.05"),
            direction=abjad.DOWN,
        )
        baca.pitch_function(o, "G2")
    with baca.scope(m.leaves()) as o:
        baca.clef_function(o.leaf(0), "bass")
        baca.literal_function(
            o.leaf(0),
            [
                r"\stopStaff",
                r"\once \override Staff.StaffSymbol.line-count = 5",
                r"\startStaff",
            ],
        )
        baca.mmrest_transparent_function(o.mmrests())
        baca.bar_line_transparent_function(o)
        baca.span_bar_transparent_function(o)
        baca.pitch_function(
            o.rleaf(-1),
            "A1",
            allow_hidden=True,
        ),
        baca.time_signature_stencil_false_function(o)
    with baca.scope(m.get(14, 24)) as o:
        baca.glissando_function(o.rleaves())
    with baca.scope(m.get(25, 26)) as o:
        baca.glissando_function(
            o.rleaves(),
            right_broken=True,
        )


def rh(m):
    with baca.scope(m.get(1, 8)) as o:
        baca.staff_positions_function(o, [-6, -6, -8, -8, -10, -10, -12, -12])
    with baca.scope(m.get(1, 20)) as o:
        for leaf in o:
            library.sforzando(leaf, r"\baca-fz-markup")
    with baca.scope(m.get(1, 13)) as o:
        baca.hairpin_function(o, "mp > pp")
    with baca.scope(m.get(14, 26)) as o:
        baca.hairpin_function(o, "(pp) < ff")
    with baca.scope(m.get(9, 16)) as o:
        baca.staff_positions_function(
            o,
            [-14, -14, -16, -16, -18, -18, -16, -16],
            allow_out_of_range=True,
        )
    with baca.scope(m[13]) as o:
        baca.markup_function(
            o.pleaf(0),
            r"\huitzil-close-to-lh-markup",
            abjad.Tweak(r"- \tweak self-alignment-X -0.5"),
            abjad.Tweak(r"- \tweak staff-padding 2"),
        )
    with baca.scope(m[14]) as o:
        baca.markup_function(
            o.pleaf(0),
            r"\huitzil-descending-fingerboard-markup",
            abjad.Tweak(r"- \tweak self-alignment-X -1"),
            abjad.Tweak(r"- \tweak staff-padding 2"),
        )
    with baca.scope(m.get(17, 24)) as o:
        baca.staff_positions_function(o, [-14, -14, -12, -12, -10, -10, -8, -8])
    with baca.scope(m.get(25, 26)) as o:
        baca.hairpin_function(
            baca.select.rleak(o.leaves()[-1:]),
            ">",
            right_broken=True,
        )
        baca.literal_function(
            o.leaf(0),
            [
                r"\stopStaff",
                r"\once \override RHStaff.StaffSymbol.line-positions ="
                " #'(8.2 8 7.8 6 4 2 0 -2 -4 -5.8 -6 -6.2)",
                r"\startStaff",
            ],
        )
        baca.markup_function(
            o.pleaf(0),
            r"\huitzil-directly-above-end-of-fingerboard-column-markup",
            abjad.Tweak(r"- \tweak self-alignment-X -0.5"),
            abjad.Tweak(r"- \tweak staff-padding 2"),
        )
        baca.parenthesize_function(o.pleaf(-1))
        baca.staff_positions_function(
            o.rleaves(),
            [-6, 0, 6],
            allow_hidden=True,
        )
    with baca.scope(m.leaves()) as o:
        baca.glissando_function(
            o.rleaves(),
            right_broken=True,
        )
        baca.literal_function(
            o.leaf(0),
            [
                r"\once \override RHStaff.StaffSymbol.line-positions ="
                " #'(8.2 8  7.8 -5.8 -6 -6.2 -8 -10 -12 -14 -16 -17.8 -18 -18.2)",
                r"\morleyDashedStaffSymbolLines #'("
                "   #f  #f #f  #f   #f #f   #t #t  #t  #t  #t  #f    #f  #f)",
            ],
        ),
        baca.staff_lines_function(o.leaf(0), 14)
        baca.literal_function(
            o.leaf(0),
            r"\override DynamicLineSpanner.staff-padding = 7",
        )
        baca.markup_function(
            o.pleaf(0),
            r"\huitzil-ascending-fingerboard-markup",
            abjad.Tweak(r"- \tweak self-alignment-X -1"),
            abjad.Tweak(r"- \tweak staff-padding 4.5"),
        )
        baca.markup_function(
            o.pleaf(0),
            r"\huitzil-directly-above-end-of-fingerboard-markup",
            abjad.Tweak(r"- \tweak self-alignment-X -1"),
            abjad.Tweak(r"- \tweak staff-padding 1"),
        )
        baca.stem_tremolo_function(o.pleaves())
        baca.text_script_parent_alignment_x_function(o, 0)
        baca.text_script_self_alignment_x_function(o, 0)
        baca.text_script_staff_padding_function(o, 4)


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
        do_not_require_short_instrument_names=True,
        error_on_not_yet_pitched=True,
    )
    lilypond_file = baca.lilypond.file(
        score,
        include_layout_ly=True,
        includes=["../stylesheet.ily"],
    )
    baca.build.persist(lilypond_file, metadata, persist, timing)
