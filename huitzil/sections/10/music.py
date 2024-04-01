import baca

from huitzil import library

#########################################################################################
########################################### 10 ##########################################
#########################################################################################


def make_empty_score():
    time_signatures = [
        (1, 2),
        (1, 2),
        (1, 2),
        (1, 2),
        (1, 2),
        (1, 2),
        (1, 2),
        (1, 2),
        (1, 2),
        (3, 2),
    ]
    score = library.make_empty_score()
    voices = baca.section.cache_voices(score, library.voice_abbreviations)
    time_signatures = baca.section.wrap(time_signatures)
    return score, voices, time_signatures


def GLOBALS(skips):
    for index, item in ((1 - 1, "66"),):
        skip = skips[index]
        baca.metronome_mark(skip, item, manifests=library.manifests)
    baca.bar_line(skips[10 - 1], "|.")


def VC(voice, time_signatures):
    music = baca.make_mmrests(time_signatures())
    voice.extend(music)


def RH(voice):
    # (1, 12)
    music = baca.make_monads("1/2 1/2 1/2 1/2 1/2 1/2 1/2 1/2 1/2 3/2")
    voice.extend(music)
    for pleaf in baca.select.pleaves(music)[1:]:
        baca.repeat_tie(pleaf)


def vc(m):
    with baca.scope(m.leaves()) as o:
        baca.override.mmrest_transparent(o.mmrests())
        baca.override.bar_line_transparent(o)
        baca.override.span_bar_transparent(o)
        wrappers = baca.literal(
            o.leaf(0),
            [
                r"\stopStaff",
                r"\once \override Staff.StaffSymbol.line-positions = #'(4 -4)",
                r"\startStaff",
            ],
        )
        baca.tags.tag(wrappers, baca.tags.ONLY_SECTION)
        baca.override.time_signature_stencil_false(o)
    with baca.scope(m[10]) as o:
        baca.literal(
            o.leaf(0),
            [
                r"\once \override Score.RehearsalMark.direction = #down",
                r"\once \override Score.RehearsalMark.padding = 6",
                r"\mark \huitzil-colophon-markup",
            ],
            site="after",
        )
        baca.literal(
            o.leaf(0),
            [
                r"\override Score.BarLine.X-extent = #'(0 . 8)",
                r"\override Score.BarLine.extra-offset = #'(8 . 0)",
                r"\override Score.RehearsalMark.extra-offset = #'(4 . 0)",
                r"\override Score.SpanBar.extra-offset = #'(8 . 0)",
            ],
        )


def rh(m):
    with baca.scope(m.get(1, 12)) as o:
        baca.staff_position(o, 8)
        baca.spanners.text(
            baca.select.clparts(o, [1]),
            "larg. => strett. =>",
            staff_padding=6,
        )
    with baca.scope(m.get(1, 10)) as o:
        library.sforzando(o.leaf(0), r"\baca-mpz-markup")
        baca.hairpins.cyclic(
            baca.select.clparts(o[:-1], [1]),
            "mp > pp <",
            do_not_bookend=True,
        )
        baca.dynamic(o[-1], "pp")
    with baca.scope(m[10]) as o:
        baca.literal(
            o.leaf(0),
            r"\override Staff.BarLine.bar-extent = #'(-4 . 4)",
            site="after",
        )
    with baca.scope(m.leaves()) as o:
        # TODO: fix right-broken text spanners and replace this:
        baca.literal(o.leaf(0), r"<> \stopTextSpan")
        baca.literal(
            o.leaf(0),
            r"\override DynamicLineSpanner.staff-padding = 7",
        )
        wrappers = baca.literal(
            o.leaf(0),
            [
                r"\stopStaff",
                r"\once \override RHStaff.StaffSymbol.line-positions ="
                " #'(8.2 8 7.8 -5.8 -6 -6.2)",
                r"\startStaff",
            ],
        )
        baca.tags.tag(wrappers, baca.tags.ONLY_SECTION)
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
        final_section=True,
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
    separation = 57
    breaks = baca.layout.Breaks(
        baca.layout.Page(
            1,
            baca.layout.System(1, y_offset=top + 0 * separation, distances=staves),
        ),
    )
    spacing = baca.layout.Spacing(
        default=(1, 32),
    )
    baca.build.write_layout_ly(breaks, spacing)


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
