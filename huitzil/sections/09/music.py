import abjad
import baca

from huitzil import library

#########################################################################################
########################################### 09 ##########################################
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
    voices = baca.section.cache_voices(score, library.voice_abbreviations)
    time_signatures = baca.section.wrap(time_signatures)
    return score, voices, time_signatures


def GLOBALS(skips):
    for index, item in (
        (18 - 1, "88"),
        (18 - 1, baca.Ritardando()),
    ):
        skip = skips[index]
        baca.metronome_mark(skip, item, manifests=library.manifests)


def VC(voice, time_signatures):
    music = baca.make_mmrests(time_signatures(1, 7))
    voice.extend(music)
    # (8, 13)
    voice.append("{ c1 * 107/30 c1 * 1/5 }")
    # 14
    voice.append("{ c2 }")
    music = baca.make_mmrests(time_signatures(15, 23))
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
    baca.section.append_anchor_note(voice)


def vc(m):
    with baca.scope(m.leaves()) as o:
        baca.override.mmrest_transparent(o.mmrests())
        baca.override.bar_line_transparent(o)
        baca.override.span_bar_transparent(o)
        baca.override.time_signature_stencil_false(o)
    with baca.scope(m.get(8, 13)) as o:
        baca.pitches(o, "A1 Bb1")
        baca.glissando(
            o,
            do_not_allow_repeats=True,
            do_not_hide_middle_note_heads=True,
            rleak=True,
        )
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
        baca.override.note_head_duration_log(o.pleaves(), 2)
        baca.override.note_head_no_ledgers(o, True)
        baca.override.note_head_style(o, "#'do")
        baca.staff_position(o, 7)


def rh(m):
    with baca.scope(m[1]) as o:
        library.sforzando(o, r"\baca-ffz-markup")
        baca.staff_positions(o, [-6, -4, -2, 0])
    with baca.scope(m[2]) as o:
        library.sforzando(o.leaf(0), r"\baca-ffz-markup")
        baca.staff_positions(o, [0])
    with baca.scope(m.get(2, 13)) as o:
        baca.hairpins.cyclic(
            baca.select.lparts(o, [2, 1, 3, 2, 2, 1, 3, 2, 2, 1, 3, 2]),
            "mp > p <",
            do_not_bookend=True,
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
    with baca.scope(m.get(14, 23, anchor=True)) as o:
        baca.hairpin(
            baca.select.mgroups(o, [2, 2, 4, 3]),
            "mp-- p-- pp-- p--!",
            abjad.Tweak(r"- \tweak to-barline ##t"),
        )
    with baca.scope(m.get(14, 23)) as o:
        baca.literal(
            o.leaf(0),
            [
                r"\stopStaff",
                r"\once \override RHStaff.StaffSymbol.line-positions ="
                " #'(8.2 8 7.8 -5.8 -6 -6.2)",
                r"\startStaff",
            ],
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
    with baca.scope(m[18]) as o:
        wrappers = baca.override.hairpin_to_bar_line(o, True)
        baca.tags.tag(wrappers, baca.tags.ONLY_SCORE)
    with baca.scope(m.get(18, 23)) as o:
        baca.spanners.text(
            baca.select.lparts(o.rleaves(), [1, 1, 1, 1, 1, 1]),
            "(trem. mod.) => stretto => largo => stretto =>" " largo => stretto =>",
            do_not_bookend=True,
            right_broken=True,
            rleak=True,
            staff_padding=6,
        )
    with baca.scope(m.get(18, 23)) as o:
        library.sforzando(o.leaf(0), r"\baca-ffz-markup")
        library.sforzando(o.leaf(1), r"\baca-fz-markup")
        library.sforzando(o.leaf(2), r"\baca-fz-markup")
        library.sforzando(o.leaf(3), r"\baca-mfz-markup")
        library.sforzando(o.leaf(4), r"\baca-mfz-markup")
        library.sforzando(o.leaf(5), r"\baca-mpz-markup")
    with baca.scope(m[22]) as o:
        wrappers = baca.override.hairpin_to_bar_line(o, True)
        baca.tags.tag(wrappers, baca.tags.ONLY_SECTION)
    with baca.scope(m.leaves()) as o:
        wrappers = baca.literal(
            o.leaf(0),
            r"\override DynamicLineSpanner.staff-padding = 7",
        )
        baca.tags.tag(wrappers, baca.tags.ONLY_SECTION)
        wrappers = baca.literal(
            o.leaf(0),
            [
                r"\stopStaff",
                r"\once \override RHStaff.StaffSymbol.line-positions ="
                " #'(8.2 8 7.8 6 4 2 0 -2 -4 -5.8 -6 -6.2)",
                r"\startStaff",
            ],
        )
        baca.tags.tag(wrappers, baca.tags.ONLY_SECTION)
        baca.stem_tremolo(o.pleaves())
        baca.override.text_script_parent_alignment_x(o, 0)
        baca.override.text_script_self_alignment_x(o, 0)
        baca.override.text_script_staff_padding(o, 4)
        baca.glissando(
            o,
            do_not_allow_repeats=True,
            do_not_hide_middle_note_heads=True,
        )


@baca.build.timed("make_score")
def make_score(first_measure_number, previous_persistent_indicators):
    score, voices, time_signatures = make_empty_score()
    baca.section.set_up_score(
        score,
        time_signatures(),
        append_anchor_skip=True,
        first_measure_number=first_measure_number,
        manifests=library.manifests,
        score_persistent_indicators=previous_persistent_indicators["Score"],
    )
    GLOBALS(score["Skips"])
    VC(voices("vc"), time_signatures)
    RH(voices("rh"))
    baca.section.reapply_persistent_indicators(
        voices,
        previous_persistent_indicators,
        manifests=library.manifests,
    )
    cache = baca.section.cache_leaves(
        score,
        len(time_signatures()),
        library.voice_abbreviations,
    )
    vc(cache["vc"])
    rh(cache["rh"])
    return score


def persist_score(score, environment):
    metadata = baca.section.postprocess_score(
        score,
        environment,
        library.manifests,
        do_not_require_short_instrument_names=True,
        error_on_not_yet_pitched=True,
    )
    baca.section.activate_tags(
        score,
        baca.tags.CLOCK_TIME,
        baca.tags.LOCAL_MEASURE_NUMBER,
    )
    lilypond_file = baca.lilypond.file(
        score,
        include_layout_ly=True,
        includes=["../stylesheet.ily"],
    )
    baca.build.persist_lilypond_file(
        environment.arguments,
        environment.section_directory,
        environment.timing,
        lilypond_file,
        metadata,
    )


def make_layout():
    top = 17
    staves = (10, 17)
    separation = 70
    spacing = baca.make_layout(
        baca.page(
            1,
            baca.system(measure=1, y_offset=top + 0 * separation, distances=staves),
            baca.system(measure=12, y_offset=top + 1 * separation, distances=staves),
        ),
        spacing=(1, 32),
    )
    baca.section.make_layout_ly(spacing)


def main():
    environment = baca.build.read_environment(__file__, baca.build.argv())
    if environment.score():
        score = make_score(
            environment.first_measure_number,
            environment.previous_metadata["persistent_indicators"],
            environment.timing,
        )
        persist_score(score, environment)
    if environment.arguments.layout:
        make_layout()


if __name__ == "__main__":
    main()
