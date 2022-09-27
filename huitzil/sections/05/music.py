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
    voice_names = baca.accumulator.get_voice_names(score)
    accumulator = baca.CommandAccumulator(
        time_signatures=time_signatures,
        _voice_abbreviations=library.voice_abbreviations,
        _voice_names=voice_names,
    )
    return score, accumulator


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
        baca.metronome_mark(skip, item, library.manifests)


def VC(voice, accumulator):
    music = baca.make_mmrests(accumulator.get())
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
        baca.mmrest_transparent(o.mmrests())
        baca.bar_line_transparent(o)
        baca.span_bar_transparent(o)
        baca.time_signature_stencil_false(o)


def rh(m):
    with baca.scope(m[1]) as o:
        baca.staff_positions(o, [6, 6, 4])
    with baca.scope(m.get(1, 3)) as o:
        baca.hairpin(
            o.rleaves(),
            "mp -- !",
            abjad.Tweak(r"- \tweak to-barline ##t"),
        )
        library.sforzando(o, r"\baca-mfz-markup")
    with baca.scope(m[2]) as o:
        baca.staff_positions(o, [6, 6, 4])
    with baca.scope(m[3]) as o:
        baca.staff_positions(o, [6, 6, 4])
    with baca.scope(m[4]) as o:
        baca.hairpin(
            baca.select.rleaves(o, count=2),
            "p -- !",
        )
        baca.staff_positions(o, [4, 4, 2])
    with baca.scope(m.get(4, 5)) as o:
        library.sforzando(o.leaf(0), r"\baca-fz-markup")
        library.sforzando(o.leaves()[1:-3], r"\baca-mpz-markup")
        library.sforzando(o.leaves()[-3:], r"\baca-mfz-markup")
    with baca.scope(m[5]) as o:
        baca.hairpin(o.leaves()[1:], "pp < mf")
        baca.staff_positions(o, [4, 4, 2, 6, 4, 2])
    with baca.scope(m[6]) as o:
        baca.hairpin(
            o.rleaves(),
            "p -- !",
            abjad.Tweak(r"- \tweak to-barline ##t"),
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
            o.rleaves(),
            "mf -- !",
            abjad.Tweak(r"- \tweak to-barline ##t"),
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
        baca.text_spanner(
            baca.select.rleak(o.leaves()[:4]),
            "(trem. mod.) => trem. stretto",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        )
    with baca.scope(m.get(10, 12)) as o:
        baca.hairpin(
            o.rleaves(),
            "mp > ppp -- !",
            abjad.Tweak(r"- \tweak to-barline ##t"),
            pieces=lambda _: baca.select.lparts(_, [4, 5 + 1]),
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
        baca.hairpin(o, "p < mf")
        baca.text_spanner(
            o,
            "sub. mod. => più stretto => più largo => più stretto",
            abjad.Tweak(r"- \tweak staff-padding 6"),
            pieces=lambda _: baca.select.lparts(_, [1, 1, 2]),
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
            o.rleaves(),
            "p < f -- !",
            pieces=lambda _: baca.select.lparts(_, [5, 1 + 1]),
        )
        library.sforzando(o, r"\baca-ffz-markup")
        baca.text_spanner(
            o,
            "sub. mod. => più stretto => più largo => più stretto =>"
            " più largo => trem. mod.",
            abjad.Tweak(r"- \tweak staff-padding 6"),
            pieces=lambda _: baca.select.lparts(_, [1, 1, 1, 1, 2]),
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
        wrappers = baca.hairpin_to_barline(o)
        baca.tags.wrappers(wrappers, baca.tags.ONLY_SCORE)
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
        baca.text_script_parent_alignment_x(o, 0)
        baca.text_script_self_alignment_x(o, 0)
        baca.text_script_staff_padding(o, 4)
    with baca.scope(m.leaves()) as o:
        baca.glissando(o)


@baca.build.timed
def make_score(first_measure_number, previous_persistent_indicators):
    score, accumulator = make_empty_score()
    baca.section.set_up_score(
        score,
        accumulator.time_signatures,
        accumulator,
        append_anchor_skip=True,
        always_make_global_rests=True,
        first_measure_number=first_measure_number,
        manifests=library.manifests,
        previous_persistent_indicators=previous_persistent_indicators,
    )
    GLOBALS(score["Skips"])
    VC(accumulator.voice("vc"), accumulator)
    RH(accumulator.voice("rh"))
    baca.section.reapply(
        accumulator.voices(),
        library.manifests,
        previous_persistent_indicators,
    )
    cache = baca.section.cache_leaves(
        score,
        len(accumulator.time_signatures),
        library.voice_abbreviations,
    )
    vc(cache["vc"])
    rh(cache["rh"])
    return score, accumulator


def main():
    environment = baca.build.read_environment(__file__, baca.build.argv())
    timing = baca.build.Timing()
    score, accumulator = make_score(
        environment.first_measure_number,
        environment.previous_persist["persistent_indicators"],
        timing,
    )
    metadata, persist = baca.section.postprocess_score(
        score,
        accumulator.time_signatures,
        **baca.section.section_defaults(),
        activate=[
            baca.tags.CLOCK_TIME,
            baca.tags.LOCAL_MEASURE_NUMBER,
        ],
        always_make_global_rests=True,
        do_not_require_short_instrument_names=True,
        environment=environment,
        error_on_not_yet_pitched=True,
        manifests=library.manifests,
        timing=timing,
    )
    lilypond_file = baca.lilypond.file(
        score,
        include_layout_ly=True,
        includes=["../stylesheet.ily"],
    )
    baca.build.persist_lilypond_file(
        lilypond_file,
        metadata,
        persist,
        timing,
        environment.arguments,
    )


if __name__ == "__main__":
    main()
