import abjad
import baca

from huitzil import library

#########################################################################################
########################################### 05 ##########################################
#########################################################################################


def make_empty_score():
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
    voices = baca.section.cache_voices(score, library.voice_abbreviations)
    time_signatures = baca.section.wrap(time_signatures)
    return score, voices, time_signatures


def GLOBALS(skips):
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
        baca.metronome_mark(skip, item, manifests=library.manifests)


def VC(voice, time_signatures):
    music = baca.make_mmrests(time_signatures())
    voice.extend(music)


def RH(voice):
    # 1
    music = baca.make_monads("1/4  1/8  1/8")
    voice.extend(music)
    # 2
    music = baca.make_monads("1/4  1/8  1/6")
    voice.extend(music)
    # 3
    music = baca.make_monads("1/4  1/8  1/8")
    voice.extend(music)
    # 4
    music = baca.make_monads("1/3  1/8  1/8")
    voice.extend(music)
    # 5
    music = baca.make_monads("1/4  1/6  1/6  1/10  1/10  1/10")
    voice.extend(music)
    # 6
    music = baca.make_monads("1/4  1/6  1/6  1/8  1/8  1/8")
    voice.extend(music)
    # 7
    music = baca.make_monads("1/2")
    voice.extend(music)
    # 8
    music = baca.make_monads("1/4  1/8  1/8")
    voice.extend(music)
    # 9
    music = baca.make_monads("1/4  1/8")
    voice.extend(music)
    # 10
    music = baca.make_monads("1/6  1/6")
    voice.extend(music)
    # 11
    music = baca.make_monads("1/6  1/6  1/10  1/10  1/10  1/10")
    voice.extend(music)
    # 12
    music = baca.make_monads("1/2")
    voice.extend(music)
    # 13
    music = baca.make_monads("1/2")
    voice.extend(music)
    # 14
    music = baca.make_monads("1/2")
    voice.extend(music)
    # 15
    music = baca.make_monads("1/2")
    voice.extend(music)
    # 16
    music = baca.make_monads("1/2")
    voice.extend(music)
    # 17
    music = baca.make_monads("1/2")
    voice.extend(music)
    # 18
    music = baca.make_monads("1/2")
    voice.extend(music)
    # 19
    music = baca.make_monads("1/2")
    voice.extend(music)
    # 20
    music = baca.make_monads("1/2")
    voice.extend(music)
    # 21
    music = baca.make_monads("1/2")
    voice.extend(music)
    # 22
    music = baca.make_monads("1/2")
    voice.extend(music)
    baca.section.append_anchor_note(voice)


def vc(m):
    with baca.scope(m.leaves()) as o:
        baca.override.mmrest_transparent(o.mmrests())
        baca.override.bar_line_transparent(o)
        baca.override.span_bar_transparent(o)
        baca.override.time_signature_stencil_false(o)


def rh(m):
    with baca.scope(m[1]) as o:
        baca.staff_positions(o, [6, 6, 4])
    with baca.scope(m.get(1, 3)) as o:
        baca.hairpin(
            o,
            "mp--!",
            abjad.Tweak(r"- \tweak to-barline ##t"),
            rleak=True,
        )
        library.sforzando(o, r"\baca-mfz-markup")
    with baca.scope(m[2]) as o:
        baca.staff_positions(o, [6, 6, 4])
    with baca.scope(m[3]) as o:
        baca.staff_positions(o, [6, 6, 4])
    with baca.scope(m[4]) as o:
        baca.hairpin(
            baca.select.rleaves(o),
            "p--!",
            rleak=True,
        )
        baca.staff_positions(o, [4, 4, 2])
    with baca.scope(m.get(4, 5)) as o:
        library.sforzando(o.leaf(0), r"\baca-fz-markup")
        library.sforzando(o.leaves()[1:-3], r"\baca-mpz-markup")
        library.sforzando(o.leaves()[-3:], r"\baca-mfz-markup")
    with baca.scope(m[5]) as o:
        baca.hairpin(
            o[1:],
            "pp<mf",
        )
        baca.staff_positions(o, [4, 4, 2, 6, 4, 2])
    with baca.scope(m[6]) as o:
        baca.hairpin(
            o,
            "p--!",
            abjad.Tweak(r"- \tweak to-barline ##t"),
            rleak=True,
        )
        library.sforzando(o.leaf(0), r"\baca-fz-markup")
        library.sforzando(o.leaves()[1:], r"\baca-mpz-markup")
        baca.staff_positions(o, [4, 4, 2, 6, 4, 2])
    with baca.scope(m[7]) as o:
        baca.staff_positions(o, [2])
    with baca.scope(m.get(7, 9)) as o:
        library.sforzando(o, r"\baca-fz-markup")
    with baca.scope(m.get(7, 9)) as o:
        baca.hairpin(
            o,
            "mf--!",
            abjad.Tweak(r"- \tweak to-barline ##t"),
            rleak=True,
        )
    with baca.scope(m[8]) as o:
        baca.staff_positions(o, [2, 2, 0])
    with baca.scope(m[9]) as o:
        baca.staff_positions(o, [2])
    with baca.scope(m[10]) as o:
        baca.staff_positions(o, [2, 6])
    with baca.scope(m.get(10, 11)) as o:
        library.sforzando(o.leaves()[:4], r"\baca-mfz-markup")
        library.sforzando(o.leaves()[4:], r"\baca-mpz-markup")
        baca.mspanners.text(
            [o[:4]],
            "(trem. mod.) => trem. stretto",
            staff_padding=6,
        )
    with baca.scope(m.get(10, 13)) as o:
        baca.hairpin(
            baca.select.lparts(o, [4, 6]),
            "mp> ppp--!",
            (abjad.Tweak(r"- \tweak to-barline ##t"), 1),
        )
    with baca.scope(m[11]) as o:
        baca.staff_positions(o, [4, 2, 6, 4, 2, 0])
    with baca.scope(m[12]) as o:
        baca.staff_positions(o, [0])
    with baca.scope(m.get(12, 16)) as o:
        library.sforzando(o, r"\baca-ffz-markup")
    with baca.scope(m[13]) as o:
        baca.staff_positions(o, [0])
    with baca.scope(m.get(13, 16)) as o:
        baca.hairpin(
            o,
            "p<mf",
        )
        baca.mspanners.text(
            baca.select.lparts(o, [1, 1, 1]),
            "sub. mod. => più stretto => più largo => più stretto",
            staff_padding=6,
        )
    with baca.scope(m[14]) as o:
        baca.staff_positions(o, [-2])
    with baca.scope(m[15]) as o:
        baca.staff_positions(o, [-2])
    with baca.scope(m[16]) as o:
        baca.staff_positions(o, [-4])
    with baca.scope(m[17]) as o:
        baca.staff_positions(o, [0])
    with baca.scope(m.get(17, 22)) as o:
        baca.hairpin(
            baca.select.lparts(o.anchor(), [5, 2]),
            "p< f--!",
            (abjad.Tweak(r"- \tweak to-barline ##t"), 1),
        )
        library.sforzando(o, r"\baca-ffz-markup")
        baca.mspanners.text(
            baca.select.lparts(o, [1, 1, 1, 1, 1]),
            "sub. mod. => più stretto => più largo => più stretto =>"
            " più largo => trem. mod.",
            staff_padding=6,
        )
    with baca.scope(m[18]) as o:
        baca.staff_positions(o, [-2])
    with baca.scope(m[19]) as o:
        baca.staff_positions(o, [-2])
    with baca.scope(m[20]) as o:
        baca.staff_positions(o, [-4])
    with baca.scope(m[21]) as o:
        baca.staff_positions(o, [-4])
    with baca.scope(m[22]) as o:
        wrappers = baca.override.hairpin_to_bar_line(o, True)
        baca.tags.tag(wrappers, baca.tags.ONLY_SCORE)
        baca.staff_positions(o, [-6])
    with baca.scope(m.leaves()) as o:
        baca.literal(o.leaf(0), r"\override DynamicLineSpanner.staff-padding = 7")
        baca.literal(
            o.leaf(0),
            [
                r"\stopStaff",
                r"\once \override RHStaff.StaffSymbol.line-positions ="
                " #'(8.2 8 7.8 6 4 2 0 -2 -4 -5.8 -6 -6.2)",
                r"\startStaff",
            ],
        ),
        baca.stem_tremolo(o.pleaves())
        baca.override.text_script_parent_alignment_x(o, 0)
        baca.override.text_script_self_alignment_x(o, 0)
        baca.override.text_script_staff_padding(o, 4)
    with baca.scope(m.leaves()) as o:
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
    staves = (10, 15)
    separation = 70
    spacing = baca.make_layout(
        baca.page(
            1,
            baca.system(measure=1, y_offset=top + 0 * separation, distances=staves),
            baca.system(measure=10, y_offset=top + 1 * separation, distances=staves),
            baca.system(measure=17, y_offset=top + 2 * separation, distances=staves),
        ),
        spacing=(1, 40),
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
