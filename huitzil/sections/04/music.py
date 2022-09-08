import abjad
import baca

from huitzil import library

#########################################################################################
########################################### 04 ##########################################
#########################################################################################


def make_empty_score():
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
        time_signatures=time_signatures,
        _voice_abbreviations=library.voice_abbreviations,
        _voice_names=voice_names,
    )
    return score, accumulator


def GLOBALS(skips):
    for index, item in (
        (18 - 1, "88"),
        (18 - 1, baca.Ritardando()),
    ):
        skip = skips[index]
        baca.metronome_mark(skip, item, library.manifests)


def VC(voice, accumulator):
    music = baca.make_mmrests(accumulator.get(1, 7))
    voice.extend(music)
    # (8, 13)
    music = baca.make_skeleton("{ c1 * 107/30 c1 * 1/5 }")
    voice.extend(music)
    # 14
    music = baca.make_skeleton("{ c2 }")
    voice.extend(music)
    music = baca.make_mmrests(accumulator.get(15, 22))
    voice.extend(music)
    # 23
    music = baca.make_skeleton("{ c1 * 1/2 }")
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
    baca.append_anchor_note(voice)


def vc(m):
    with baca.scope(m.get(8, 13)) as o:
        baca.pitches(o, "B1 C2")
        baca.repeat_tie(o.pleaf(0))
    with baca.scope(m[14]) as o:
        baca.clef(o.leaf(0), "treble")
        baca.literal(
            o.leaf(0),
            [
                r"\stopStaff",
                r"\once \override Staff.StaffSymbol.line-positions = #'(4 -4)"
                r"\startStaff",
            ],
        )
        baca.note_head_duration_log(o.pleaves(), 2)
        baca.note_head_no_ledgers(o, True)
        baca.note_head_style(o, "#'do")
        baca.staff_position(o, 7)
    with baca.scope(m[23]) as o:
        baca.clef(o.leaf(0), "bass")
        baca.literal(
            o.leaf(0),
            [
                r"\stopStaff",
                r"\once \override Staff.StaffSymbol.line-count = 5",
                r"\startStaff",
            ],
        ),
        baca.pitch(o, "Bb1")
    with baca.scope(m.leaves()) as o:
        baca.mmrest_transparent(o.mmrests())
        baca.bar_line_transparent(o)
        baca.span_bar_transparent(o)
        baca.time_signature_stencil_false(o)
    with baca.scope(m.get(8, 14)) as o:
        baca.glissando(o)


def rh(m):
    with baca.scope(m[1]) as o:
        library.sforzando(o, r"\baca-ffz-markup")
        baca.staff_positions(o, [-6, -4, -2, 0])
    with baca.scope(m[2]) as o:
        library.sforzando(o.leaf(0), r"\baca-ffz-markup")
        baca.staff_positions(o, [0])
    with baca.scope(m.get(2, 13)) as o:
        # FUTURE: use after LilyPond fixes DynamicLineSpanner bug:
        # baca.hairpin(
        #    o.rleaves(),
        #    "mp > p <",
        #    bookend=False,
        #    pieces=lambda _: baca.select.lparts(_, [2, 1, 3, 2, 2, 1, 3, 2, 2, 1, 3, 2 + 1]),
        # )
        # FUTURE: replace after LilyPond fixes DynamicLineSpanner bug:
        baca.hairpin(
            o.leaves()[:-1],
            "mp > p <",
            # bookend=False,
            pieces=lambda _: baca.select.lparts(_, [2, 1, 3, 2, 2, 1, 3, 2, 2, 1, 4]),
        )
    with baca.scope(m[3]) as o:
        library.sforzando(o.leaf(0), r"\baca-fz-markup")
        library.sforzando(o.leaf(1), r"\baca-fffz-markup")
        baca.staff_positions(o, [0])
    with baca.scope(m[4]) as o:
        library.sforzando(o.leaf(0), r"\baca-ffz-markup")
        baca.staff_positions(o, [0])
    with baca.scope(m[5]) as o:
        library.sforzando(o.leaf(0), r"\baca-mfz-markup")
        library.sforzando(o.leaf(1), r"\baca-fz-markup")
        library.sforzando(o.leaf(2), r"\baca-ffz-markup")
        library.sforzando(o.leaf(3), r"\baca-fffz-markup")
        baca.staff_positions(o, [0])
    with baca.scope(m[6]) as o:
        library.sforzando(o.leaf(0), r"\baca-ffz-markup")
        baca.staff_positions(o, [0])
    with baca.scope(m[7]) as o:
        library.sforzando(o.leaf(0), r"\baca-fz-markup")
        library.sforzando(o.leaf(1), r"\baca-fffz-markup")
        baca.staff_positions(o, [0])
    with baca.scope(m[8]) as o:
        library.sforzando(o.leaf(0), r"\baca-ffz-markup")
        baca.staff_positions(o, [0])
    with baca.scope(m[9]) as o:
        library.sforzando(o.leaf(0), r"\baca-mfz-markup")
        library.sforzando(o.leaf(1), r"\baca-fz-markup")
        library.sforzando(o.leaf(2), r"\baca-ffz-markup")
        library.sforzando(o.leaf(3), r"\baca-fffz-markup")
        baca.staff_positions(o, [0])
    with baca.scope(m[10]) as o:
        library.sforzando(o.leaf(0), r"\baca-ffz-markup")
        baca.staff_positions(o, [0])
    with baca.scope(m[11]) as o:
        library.sforzando(o.leaf(0), r"\baca-fz-markup")
        library.sforzando(o.leaf(1), r"\baca-fffz-markup")
        baca.staff_positions(o, [0])
    with baca.scope(m[12]) as o:
        library.sforzando(o.leaf(0), r"\baca-ffz-markup")
        baca.staff_positions(o, [0])
    with baca.scope(m[13]) as o:
        library.sforzando(o.leaf(0), r"\baca-mfz-markup")
        library.sforzando(o.leaf(1), r"\baca-fz-markup")
        library.sforzando(o.leaf(2), r"\baca-ffz-markup")
        library.sforzando(o.leaf(3), r"\baca-fffz-markup")
        baca.staff_positions(o, [0])
    with baca.scope(m[14]) as o:
        library.sforzando(o.leaf(0), r"\baca-ffz-markup")
    with baca.scope(m.get(14, 23)) as o:
        # FUTURE: use this when LilyPond fixes DynamicLine Spanner bug:
        # baca.hairpin(
        #    o.rleaves(),
        #    "mp -- p -- pp -- p -- !",
        #    abjad.Tweak(r"- \tweak to-barline ##t"),
        #    pieces=lambda _: baca.select.mgroups(_, [2, 2, 4, 2 + 1]),
        # )
        # FUTURE: replace this when LilyPond fixes DynamicLineSpanner bug:
        baca.hairpin(
            o.rleaves(),
            "mp -- p -- pp -- p",
            abjad.Tweak(r"- \tweak to-barline ##t"),
            bookend=False,
            pieces=lambda _: baca.select.mgroups(_, [2, 2, 4, 2 + 1]),
        )
        baca.literal(
            o.leaf(0),
            [
                r"\stopStaff",
                r"\once \override RHStaff.StaffSymbol.line-positions ="
                " #'(8.2 8 7.8 -5.8 -6 -6.2)",
                r"\startStaff",
            ],
        )
        baca.markup(
            o.pleaf(0),
            r"\huitzil-directly-on-bridge-markup",
            abjad.Tweak(r"- \tweak self-alignment-X -0.85"),
            abjad.Tweak(r"- \tweak staff-padding 2"),
        )
        baca.staff_position(o, 8)
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
    with baca.scope(m.get(18, 22)) as o:
        baca.text_spanner(
            o,
            "(trem. mod.) => più stretto => più largo => più stretto => mod.",
            abjad.Tweak(r"- \tweak staff-padding 6"),
            pieces=lambda _: baca.select.lparts(_, [1, 1, 1, 1 + 1]),
        )
    with baca.scope(m.get(18, 21)) as o:
        wrappers = baca.hairpin_to_barline(o)
        baca.tags.wrappers(wrappers, baca.tags.ONLY_SCORE)
    with baca.scope(m.get(18, 23)) as o:
        library.sforzando(o.leaf(0), r"\baca-ffz-markup")
        library.sforzando(o.leaf(1), r"\baca-fz-markup")
        library.sforzando(o.leaf(2), r"\baca-fz-markup")
        library.sforzando(o.leaf(3), r"\baca-mfz-markup")
        library.sforzando(o.leaf(4), r"\baca-mfz-markup")
        library.sforzando(o.leaf(5), r"\baca-mpz-markup")
    with baca.scope(m[22]) as o:
        wrappers = baca.hairpin_to_barline(o)
        baca.tags.wrappers(wrappers, baca.tags.ONLY_SECTION)
    with baca.scope(m[23]) as o:
        baca.literal(
            o.leaf(0),
            [
                r"\stopStaff",
                r"\once \override RHStaff.StaffSymbol.line-positions ="
                " #'(8.2 8 7.8 6 4 2 0 -2 -4 -5.8 -6 -6.2)",
                r"\startStaff",
            ],
        )
        baca.markup(
            o.pleaf(0),
            r"\huitzil-sliding-back-onto-string-markup",
            abjad.Tweak(r"- \tweak self-alignment-X -0.85"),
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
        baca.staff_position(
            o.rleaf(-1),
            6,
            allow_hidden=True,
        )
    with baca.scope(m.leaves()) as o:
        wrappers = baca.literal(
            o.leaf(0),
            r"\override DynamicLineSpanner.staff-padding = 7",
        )
        baca.tags.wrappers(wrappers, baca.tags.ONLY_SECTION)
        wrappers = baca.literal(
            o.leaf(0),
            [
                r"\stopStaff",
                r"\once \override RHStaff.StaffSymbol.line-positions ="
                " #'(8.2 8 7.8 6 4 2 0 -2 -4 -5.8 -6 -6.2)",
                r"\startStaff",
            ],
        )
        baca.tags.wrappers(wrappers, baca.tags.ONLY_SECTION)
        baca.stem_tremolo(o.pleaves())
        baca.text_script_parent_alignment_x(o, 0)
        baca.text_script_self_alignment_x(o, 0)
        baca.text_script_staff_padding(o, 4)
    with baca.scope(m.leaves()) as o:
        baca.glissando(o.rleaves(), right_broken=True)


def make_score(first_measure_number, previous_persistent_indicators):
    score, accumulator = make_empty_score()
    baca.interpret.set_up_score(
        score,
        accumulator.time_signatures,
        accumulator,
        library.manifests,
        append_anchor_skip=True,
        always_make_global_rests=True,
        first_measure_number=first_measure_number,
        previous_persistent_indicators=previous_persistent_indicators,
    )
    GLOBALS(score["Skips"])
    VC(accumulator.voice("vc"), accumulator)
    RH(accumulator.voice("rh"))
    baca.reapply(
        accumulator.voices(),
        library.manifests,
        previous_persistent_indicators,
    )
    cache = baca.interpret.cache_leaves(
        score,
        len(accumulator.time_signatures),
        library.voice_abbreviations,
    )
    vc(cache["vc"])
    rh(cache["rh"])
    return score, accumulator


def main():
    previous_metadata = baca.previous_metadata(__file__)
    first_measure_number = previous_metadata["final_measure_number"] + 1
    previous_persist = baca.previous_persist(__file__)
    score, accumulator = make_score(
        first_measure_number, previous_persist["persistent_indicators"]
    )
    metadata, persist, timing = baca.build.section(
        score,
        library.manifests,
        accumulator.time_signatures,
        **baca.interpret.section_defaults(),
        activate=[
            baca.tags.CLOCK_TIME,
            baca.tags.LOCAL_MEASURE_NUMBER,
        ],
        always_make_global_rests=True,
        do_not_require_short_instrument_names=True,
        error_on_not_yet_pitched=True,
        first_measure_number=first_measure_number,
    )
    lilypond_file = baca.lilypond.file(
        score,
        include_layout_ly=True,
        includes=["../stylesheet.ily"],
    )
    baca.build.persist(lilypond_file, metadata, persist, timing)


if __name__ == "__main__":
    main()
