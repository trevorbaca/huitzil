import abjad
import baca

from huitzil import library

#########################################################################################
########################################### 02 ##########################################
#########################################################################################


def make_empty_score():
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
    voices = baca.section.cache_voices(score, library.voice_abbreviations)
    time_signatures = baca.section.wrap(time_signatures)
    return score, voices, time_signatures


def GLOBALS(skips):
    baca.metronome_mark(
        skips[1 - 1], library.metronome_marks["44"], manifests=library.manifests
    )


def VC(voice, time_signatures):
    music = baca.make_mmrests(time_signatures(1, 24))
    voice.extend(music)
    # 25
    music = baca.parse("{ c1 }")
    voice.extend(music)


def RH(voice):
    # (1, 4)
    music = baca.parse("{ c4 r2 c4 r2 c4 r2 c4 r2 }")
    voice.extend(music)
    # (5, 8)
    music = baca.parse("{ c4 c16 r8. r4 c4 c16 r8. r4 c4 c16 r8. r4 c4 c16 r8. r4 }")
    voice.extend(music)
    # (9, 12)
    music = baca.parse(
        "{"
        r" c4 \times 2/3 { c8 r4 } r4"
        r" c4 \times 2/3 { c8 r4 } r4"
        r" c4 c8 r8 r4"
        r" c4 c8 r8 r4"
        " }",
    )
    voice.extend(music)
    # (13, 15)
    music = baca.parse("{ c4 c4 c4 c4 c4 c4 }")
    voice.extend(music)
    # (16, 18)
    music = baca.parse(
        "{"
        r" \times 2/3 { c4 c4 c4 }"
        r" \times 2/3 { c4 c4 c4 }"
        r" \times 2/3 { c4 c4 c4 }"
        " }",
    )
    voice.extend(music)
    # (19, 20)
    music = baca.parse(
        "{" r" c8 c8 c8 c8" r" c8 c8 c8 c8" " }",
    )
    voice.extend(music)
    # (21, 24)
    music = baca.parse(
        "{"
        r" \times 4/5 { c8 c8 c8 c8 c8 }"
        r" \times 4/6 { c8 c8 c8 c8 c8 c8 }"
        r" \times 4/7 { c8 c8 c8 c8 c8 c8 c8 }"
        " c16 c16 c16 c16 c16 c16 c16 c16"
        " }",
    )
    voice.extend(music)
    # 25
    music = baca.parse("{ c1 }")
    voice.extend(music)
    baca.section.append_anchor_note(voice)


def vc(m):
    with baca.scope(m.leaves()) as o:
        baca.literal(
            o.leaf(0),
            [
                r"\stopStaff",
                r"\once \override Staff.StaffSymbol.line-positions = #'(4 -4)"
                r"\startStaff",
            ],
        )
        baca.mmrest_transparent(o.mmrests())
        with baca.scope(o.leaves()[1:]) as u:
            baca.bar_line_transparent(u)
            baca.span_bar_transparent(u)
        baca.time_signature_stencil_false(o)
    with baca.scope(m[25]) as o:
        baca.literal(
            o.leaf(0),
            [
                r"\stopStaff",
                r"\once \override Staff.StaffSymbol.line-count = 5",
                r"\startStaff",
            ],
        )
        baca.pitch(o, "B1")


def rh(m):
    with baca.scope(m.get(1, 4)) as o:
        baca.rest_staff_position(o.rests(), 0)
    with baca.scope(m.get(19, 24)) as o:
        baca.beam(o)
    for n in [9, 10]:
        with baca.scope(m[n]) as o:
            wrappers = baca.literal(
                o.pleaf(1),
                r"\once \override TupletNumber.font-size = -2",
            )
            baca.tags.wrappers(wrappers, baca.tags.ONLY_SCORE)
    with baca.scope(m[25]) as o:
        baca.glissando(
            o.rleaves(),
            right_broken=True,
        ),
        baca.hairpin(
            o.rleaves(),
            "(mp) -- !",
        )
        baca.literal(
            o.leaf(0),
            r"\override DynamicLineSpanner.staff-padding = 7",
        )
        baca.literal(
            o.leaf(0),
            [
                r"\stopStaff",
                r"\once \override RHStaff.StaffSymbol.line-positions ="
                " #'(8.2 8 7.8 6 4 2 0 -2 -4 -5.8 -6 -6.2)",
                r"\startStaff",
            ],
        ),
        baca.markup(
            o.pleaf(0),
            r"\huitzil-sliding-from-bridge-onto-string-markup",
            abjad.Tweak(r"- \tweak staff-padding 6"),
        ),
        baca.markup(
            o.pleaf(0),
            r"\huitzil-trem-moderato-markup",
            abjad.Tweak(r"- \tweak staff-padding 3.5"),
            direction=abjad.DOWN,
        ),
        baca.stem_tremolo(o)
        baca.staff_position(
            o.rleaf(-1),
            6,
            allow_hidden=True,
        )
    with baca.scope(m.leaves()) as o:
        baca.alternate_bow_strokes(o.pheads())
        baca.literal(
            o.leaf(0),
            [
                r"\once \override RHStaff.StaffSymbol.line-positions ="
                " #'(8.2 8 7.8 -5.8 -6 -6.2)"
            ],
        )
        baca.staff_lines(o.leaf(0), 7)
        baca.dynamic(
            o.pleaf(0),
            "mp-sempre",
            abjad.Tweak(r"- \tweak self-alignment-X -0.9"),
        )
        baca.literal(o.leaf(0), r"\override DynamicLineSpanner.staff-padding = 2.5")
        baca.literal(o.leaf(0), r"\override Score.BarNumber.transparent = ##t")
        baca.markup(
            o.pleaf(0),
            r"\huitzil-directly-on-bridge-markup",
            abjad.Tweak(r"- \tweak staff-padding 3"),
        ),
        baca.staff_position(o, 8)
        baca.tuplet_bracket_down(o)


@baca.build.timed("make_score")
def make_score(first_measure_number, previous_persistent_indicators):
    score, voices, time_signatures = make_empty_score()
    baca.section.set_up_score(
        score,
        time_signatures(),
        append_anchor_skip=True,
        always_make_global_rests=True,
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


def persist_score(score, environment):
    metadata = baca.section.postprocess_score(
        score,
        environment,
        library.manifests,
        always_make_global_rests=True,
        do_not_require_short_instrument_names=True,
        error_on_not_yet_pitched=True,
    )
    baca.tags.activate(
        score,
        baca.tags.CLOCK_TIME,
        baca.tags.LOCAL_MEASURE_NUMBER,
    )
    lilypond_file = baca.lilypond.file(
        score,
        include_layout_ly=True,
        includes=["../stylesheet.ily"],
        spacing_extra_offset=(0, 16),
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
    separation = 57
    spacing = baca.make_layout(
        baca.page(
            1,
            baca.system(measure=1, y_offset=top + 0 * separation, distances=staves),
            baca.system(measure=16, y_offset=top + 1 * separation, distances=staves),
        ),
        spacing=(1, 20),
    )
    baca.section.make_layout_ly(spacing)


if __name__ == "__main__":
    main()
