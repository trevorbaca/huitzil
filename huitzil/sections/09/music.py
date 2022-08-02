import abjad
import baca

from huitzil import library

#########################################################################################
########################################### 09 ##########################################
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
):
    skip = skips[index]
    indicator = accumulator.metronome_marks.get(item, item)
    baca.metronome_mark_function(skip, indicator, manifests)


def VC(voice):
    music = baca.make_mmrests(accumulator.get(1, 7))
    voice.extend(music)
    # (8, 13)
    music = baca.make_skeleton("{ c1 * 107/30 c1 * 1/5 }")
    voice.extend(music)
    # 14
    music = baca.make_skeleton("{ c2 }")
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(15, 23))
    voice.extend(music)


def RH(voice):
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
    baca.append_anchor_note_function(voice)


def vc(m):
    with baca.scope(m.leaves()) as o:
        baca.mmrest_transparent_function(o.mmrests())
        baca.bar_line_transparent_function(o)
        baca.span_bar_transparent_function(o)
        baca.time_signature_stencil_false_function(o)
    with baca.scope(m.get(8, 13)) as o:
        baca.pitches_function(o, "A1 Bb1")
        baca.repeat_tie_function(o.pleaf(0))
    with baca.scope(m[14]) as o:
        baca.clef_function(o.leaf(0), "treble")
        baca.literal_function(
            o.leaf(0),
            [
                r"\stopStaff",
                r"\once \override Staff.StaffSymbol.line-positions = #'(4 -4)"
                r"\startStaff",
            ],
        )
        baca.note_head_duration_log_function(o.pleaves(), 2)
        baca.note_head_no_ledgers_function(o, True)
        baca.note_head_style_function(o, "#'do")
        baca.staff_position_function(o, 7)
    with baca.scope(m.get(8, 14)) as o:
        baca.glissando_function(o)


def rh(m):
    with baca.scope(m[1]) as o:
        library.sforzando(o, r"\baca-ffz-markup")
        baca.staff_positions_function(o, [-6, -4, -2, 0])
    with baca.scope(m[2]) as o:
        library.sforzando(o.leaf(0), r"\baca-ffz-markup")
        baca.staff_positions_function(o, [0])
    with baca.scope(m.get(2, 13)) as o:
        # FUTURE: use after LilyPond fixes DynamicLineSpanner bug:
        # baca.hairpin(
        #    "mp > p <",
        #    bookend=False,
        #    pieces=lambda _: baca.select.lparts(_, [2, 1, 3, 2, 2, 1, 3, 2, 2, 1, 3, 2 + 1]),
        #    selector=lambda _: baca.select.rleaves(_),
        # ),
        # FUTURE: replace after LilyPond fixes DynamicLineSpanner bug:
        baca.hairpin_function(
            o.leaves()[:-1],
            "mp > p <",
            # bookend=False,
            pieces=lambda _: baca.select.lparts(_, [2, 1, 3, 2, 2, 1, 3, 2, 2, 1, 4]),
        )
    with baca.scope(m[3]) as o:
        library.sforzando(o.leaf(0), r"\baca-fz-markup")
        library.sforzando(o.leaf(1), r"\baca-fffz-markup")
        baca.staff_positions_function(o, [0])
    with baca.scope(m[4]) as o:
        library.sforzando(o.leaf(0), r"\baca-ffz-markup")
        baca.staff_positions_function(o, [0])
    with baca.scope(m[5]) as o:
        library.sforzando(o.leaf(0), r"\baca-mfz-markup")
        library.sforzando(o.leaf(1), r"\baca-fz-markup")
        library.sforzando(o.leaf(2), r"\baca-ffz-markup")
        library.sforzando(o.leaf(3), r"\baca-fffz-markup")
        baca.staff_positions_function(o, [0])
    with baca.scope(m[6]) as o:
        library.sforzando(o.leaf(0), r"\baca-ffz-markup")
        baca.staff_positions_function(o, [0])
    with baca.scope(m[7]) as o:
        library.sforzando(o.leaf(0), r"\baca-fz-markup")
        library.sforzando(o.leaf(1), r"\baca-fffz-markup")
        baca.staff_positions_function(o, [0])
    with baca.scope(m[8]) as o:
        library.sforzando(o.leaf(0), r"\baca-ffz-markup")
        baca.staff_positions_function(o, [0])
    with baca.scope(m[9]) as o:
        library.sforzando(o.leaf(0), r"\baca-mfz-markup")
        library.sforzando(o.leaf(1), r"\baca-fz-markup")
        library.sforzando(o.leaf(2), r"\baca-ffz-markup")
        library.sforzando(o.leaf(3), r"\baca-fffz-markup")
        baca.staff_positions_function(o, [0])
    with baca.scope(m[10]) as o:
        library.sforzando(o.leaf(0), r"\baca-ffz-markup")
        baca.staff_positions_function(o, [0])
    with baca.scope(m[11]) as o:
        library.sforzando(o.leaf(0), r"\baca-fz-markup")
        library.sforzando(o.leaf(1), r"\baca-fffz-markup")
        baca.staff_positions_function(o, [0])
    with baca.scope(m[12]) as o:
        library.sforzando(o.leaf(0), r"\baca-ffz-markup")
        baca.staff_positions_function(o, [0])
    with baca.scope(m[13]) as o:
        library.sforzando(o.leaf(0), r"\baca-mfz-markup")
        library.sforzando(o.leaf(1), r"\baca-fz-markup")
        library.sforzando(o.leaf(2), r"\baca-ffz-markup")
        library.sforzando(o.leaf(3), r"\baca-fffz-markup")
        baca.staff_positions_function(o, [0])
    with baca.scope(m[14]) as o:
        library.sforzando(o.leaf(0), r"\baca-ffz-markup")
    with baca.scope(m.get(14, 23)) as o:
        baca.hairpin_function(
            o.rleaves(),
            "mp -- p -- pp -- p -- !",
            pieces=lambda _: baca.select.mgroups(_, [2, 2, 4, 2 + 1]),
        )
        baca.literal_function(
            o.leaf(0),
            [
                r"\stopStaff",
                r"\once \override RHStaff.StaffSymbol.line-positions ="
                " #'(8.2 8 7.8 -5.8 -6 -6.2)",
                r"\startStaff",
            ],
        )
        baca.staff_position_function(o, 8)
    with baca.scope(m[15]) as o:
        library.sforzando(o.leaf(0), r"\baca-fz-markup")
        library.sforzando(o.leaf(1), r"\baca-fffz-markup")
    with baca.scope(m[16]) as o:
        library.sforzando(o.leaf(0), r"\baca-ffz-markup")
    with baca.scope(m[17]) as o:
        library.sforzando(o.leaf(0), r"\baca-mfz-markup")
        library.sforzando(o.leaf(1), r"\baca-fz-markup")
        library.sforzando(o.leaf(2), r"\baca-ffz-markup")
        library.sforzando(o.leaf(3), r"\baca-fffz-markup")
    with baca.scope(m[18]) as o:
        wrappers = baca.hairpin_to_barline_function(o)
        baca.tags.wrappers(wrappers, baca.tags.ONLY_SCORE)
    with baca.scope(m.get(18, 23)) as o:
        baca.text_spanner_function(
            o.rleaves(),
            "(trem. mod.) => stretto => largo => stretto =>" " largo => stretto =>",
            abjad.Tweak(r"- \tweak staff-padding 6"),
            bookend=False,
            pieces=lambda _: baca.select.lparts(_, [1, 1, 1, 1, 1, 1 + 1]),
            right_broken=True,
        )
    with baca.scope(m.get(18, 23)) as o:
        library.sforzando(o.leaf(0), r"\baca-ffz-markup")
        library.sforzando(o.leaf(1), r"\baca-fz-markup")
        library.sforzando(o.leaf(2), r"\baca-fz-markup")
        library.sforzando(o.leaf(3), r"\baca-mfz-markup")
        library.sforzando(o.leaf(4), r"\baca-mfz-markup")
        library.sforzando(o.leaf(5), r"\baca-mpz-markup")
    with baca.scope(m[22]) as o:
        wrappers = baca.hairpin_to_barline_function(o)
        baca.tags.wrappers(wrappers, baca.tags.ONLY_SECTION)
    with baca.scope(m.leaves()) as o:
        wrappers = baca.literal_function(
            o.leaf(0),
            r"\override DynamicLineSpanner.staff-padding = 7",
        )
        baca.tags.wrappers(wrappers, baca.tags.ONLY_SECTION)
        wrappers = baca.literal_function(
            o.leaf(0),
            [
                r"\stopStaff",
                r"\once \override RHStaff.StaffSymbol.line-positions ="
                " #'(8.2 8 7.8 6 4 2 0 -2 -4 -5.8 -6 -6.2)",
                r"\startStaff",
            ],
        )
        baca.tags.wrappers(wrappers, baca.tags.ONLY_SECTION)
        baca.stem_tremolo_function(o.pleaves())
        baca.text_script_parent_alignment_x_function(o, 0)
        baca.text_script_self_alignment_x_function(o, 0)
        baca.text_script_staff_padding_function(o, 4)
        baca.glissando_function(o)


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
