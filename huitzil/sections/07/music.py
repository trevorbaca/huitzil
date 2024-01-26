import abjad
import baca

from huitzil import library

#########################################################################################
########################################### 07 ##########################################
#########################################################################################


def make_empty_score():
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
    voices = baca.section.cache_voices(score, library.voice_abbreviations)
    time_signatures = baca.section.wrap(time_signatures)
    return score, voices, time_signatures


def GLOBALS(skips):
    for index, item in (
        (1 - 1, "88"),
        (25 - 1, "88"),
        (25 - 1, baca.Ritardando()),
    ):
        skip = skips[index]
        baca.metronome_mark(skip, item, manifests=library.manifests)


def VC(voice, time_signatures):
    # 1
    voice.append("{ c1 * 1/4 }")
    music = baca.make_mmrests(time_signatures(2, 13))
    voice.extend(music)
    # (14, 24)
    voice.append("{ c1 * 19/8 }")
    # (25, 26)
    voice.append("{ c1 * 2 }")
    baca.section.append_anchor_note(voice)


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
    baca.section.append_anchor_note(voice)


def vc(m):
    with baca.scope(m[1]) as o:
        baca.markup(
            o.pleaf(0),
            r"\baca-string-iii-markup",
            abjad.Tweak(r"- \tweak padding 2.5"),
            direction=abjad.DOWN,
        )
        baca.pitch(o, "A2")
    with baca.scope(m.get(14, 24)) as o:
        baca.pitch(o, "A2")
        baca.repeat_tie(o.pleaf(0))
    with baca.scope(m.get(25, 26)) as o:
        baca.markup(
            o.pleaf(0),
            r"\huitzil-string-three-to-four-markup",
            abjad.Tweak(r"- \tweak padding 2.5"),
            abjad.Tweak(r"- \tweak parent-alignment-X 0"),
            abjad.Tweak(r"- \tweak self-alignment-X -0.05"),
            direction=abjad.DOWN,
        )
        baca.pitch(o, "G2")
    with baca.scope(m.leaves()) as o:
        baca.clef(o.leaf(0), "bass")
        baca.literal(
            o.leaf(0),
            [
                r"\stopStaff",
                r"\once \override Staff.StaffSymbol.line-count = 5",
                r"\startStaff",
            ],
        )
        baca.override.mmrest_transparent(o.mmrests())
        baca.override.bar_line_transparent(o)
        baca.override.span_bar_transparent(o)
        baca.pitch(
            o.rleaf(-1),
            "A1",
            allow_hidden=True,
        ),
        baca.override.time_signature_stencil_false(o)
    with baca.scope(m.get(14, 24)) as o:
        baca.glissando(o.rleaves())
    with baca.scope(m.get(25, 26)) as o:
        baca.glissando(
            o.rleaves(),
            right_broken=True,
        )


def rh(m):
    with baca.scope(m.get(1, 8)) as o:
        baca.staff_positions(o, [-6, -6, -8, -8, -10, -10, -12, -12])
    with baca.scope(m.get(1, 20)) as o:
        for leaf in o:
            library.sforzando(leaf, r"\baca-fz-markup")
    with baca.scope(m.get(1, 13)) as o:
        baca.spanners.hairpin(
            o,
            "mp > pp",
        )
    with baca.scope(m.get(14, 26)) as o:
        baca.spanners.hairpin(
            o,
            "(pp) < ff",
        )
    with baca.scope(m.get(9, 16)) as o:
        baca.staff_positions(
            o,
            [-14, -14, -16, -16, -18, -18, -16, -16],
            allow_out_of_range=True,
        )
    with baca.scope(m[13]) as o:
        baca.markup(
            o.pleaf(0),
            r"\huitzil-close-to-lh-markup",
            abjad.Tweak(r"- \tweak self-alignment-X -0.5"),
            abjad.Tweak(r"- \tweak staff-padding 2"),
        )
    with baca.scope(m[14]) as o:
        baca.markup(
            o.pleaf(0),
            r"\huitzil-descending-fingerboard-markup",
            abjad.Tweak(r"- \tweak self-alignment-X -1"),
            abjad.Tweak(r"- \tweak staff-padding 2"),
        )
    with baca.scope(m.get(17, 24)) as o:
        baca.staff_positions(o, [-14, -14, -12, -12, -10, -10, -8, -8])
    with baca.scope(m.get(25, 26)) as o:
        baca.hairpin(
            (),
            ">",
            pieces=[baca.select.rleak(o.leaves()[-1:])],
            right_broken=True,
        )
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
            r"\huitzil-directly-above-end-of-fingerboard-column-markup",
            abjad.Tweak(r"- \tweak self-alignment-X -0.5"),
            abjad.Tweak(r"- \tweak staff-padding 2"),
        )
        baca.parenthesize(o.pleaf(-1))
        baca.staff_positions(
            o.rleaves(),
            [-6, 0, 6],
            allow_hidden=True,
        )
    with baca.scope(m.leaves()) as o:
        baca.glissando(
            o.rleaves(),
            right_broken=True,
        )
        baca.literal(
            o.leaf(0),
            [
                r"\once \override RHStaff.StaffSymbol.line-positions ="
                " #'(8.2 8  7.8 -5.8 -6 -6.2 -8 -10 -12 -14 -16 -17.8 -18 -18.2)",
                r"\morleyDashedStaffSymbolLines #'("
                "   #f  #f #f  #f   #f #f   #t #t  #t  #t  #t  #f    #f  #f)",
            ],
        ),
        baca.staff_lines(o.leaf(0), 14)
        baca.literal(
            o.leaf(0),
            r"\override DynamicLineSpanner.staff-padding = 7",
        )
        baca.markup(
            o.pleaf(0),
            r"\huitzil-ascending-fingerboard-markup",
            abjad.Tweak(r"- \tweak self-alignment-X -1"),
            abjad.Tweak(r"- \tweak staff-padding 4.5"),
        )
        baca.markup(
            o.pleaf(0),
            r"\huitzil-directly-above-end-of-fingerboard-markup",
            abjad.Tweak(r"- \tweak self-alignment-X -1"),
            abjad.Tweak(r"- \tweak staff-padding 1"),
        )
        baca.stem_tremolo(o.pleaves())
        baca.override.text_script_parent_alignment_x(o, 0)
        baca.override.text_script_self_alignment_x(o, 0)
        baca.override.text_script_staff_padding(o, 4)


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
    baca.tags.activate(
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
    staves = (8, 22)
    separation = 70
    spacing = baca.make_layout(
        baca.page(
            1,
            baca.system(measure=1, y_offset=top + 0 * separation, distances=staves),
        ),
        spacing=(1, 28),
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
