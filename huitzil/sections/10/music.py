import abjad
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
    measures = baca.section.measures(time_signatures)
    return score, voices, measures


def GLOBALS(skips):
    for index, item in ((1 - 1, "66"),):
        skip = skips[index]
        baca.metronome_mark(skip, item, library.manifests)
    baca.bar_line(skips[10 - 1], "|.")


def VC(voice, measures):
    music = baca.make_mmrests(measures())
    voice.extend(music)


def RH(voice):
    # (1, 12)
    music = baca.make_monads("1/2 1/2 1/2 1/2 1/2 1/2 1/2 1/2 1/2 3/2")
    for pleaf in baca.select.pleaves(music)[1:]:
        baca.repeat_tie(pleaf)
    voice.extend(music)


def vc(m):
    with baca.scope(m.leaves()) as o:
        baca.mmrest_transparent(o.mmrests())
        baca.bar_line_transparent(o)
        baca.span_bar_transparent(o)
        wrappers = baca.literal(
            o.leaf(0),
            [
                r"\stopStaff",
                r"\once \override Staff.StaffSymbol.line-positions = #'(4 -4)",
                r"\startStaff",
            ],
        )
        baca.tags.wrappers(wrappers, baca.tags.ONLY_SECTION)
        baca.time_signature_stencil_false(o)
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
        baca.text_spanner(
            o,
            "larg. => strett. =>",
            abjad.Tweak(r"- \tweak staff-padding 6"),
            pieces=lambda _: baca.select.clparts(_, [1]),
        )
    with baca.scope(m.get(1, 10)) as o:
        library.sforzando(o.leaf(0), r"\baca-mpz-markup")
        baca.hairpin(
            o,
            "mp > pp <",
            abjad.Tweak(r"- \tweak to-barline ##t"),
            final_hairpin=False,
            pieces=lambda _: baca.select.clparts(_, [1]),
        )
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
        baca.tags.wrappers(wrappers, baca.tags.ONLY_SECTION)
        baca.stem_tremolo(o.pleaves())
        baca.text_script_parent_alignment_x(o, 0)
        baca.text_script_self_alignment_x(o, 0)
        baca.text_script_staff_padding(o, 4)


@baca.build.timed("make_score")
def make_score(first_measure_number, previous_persistent_indicators):
    score, voices, measures = make_empty_score()
    baca.section.set_up_score(
        score,
        measures(),
        always_make_global_rests=True,
        first_measure_number=first_measure_number,
        manifests=library.manifests,
        previous_persistent_indicators=previous_persistent_indicators,
    )
    GLOBALS(score["Skips"])
    VC(voices("vc"), measures)
    RH(voices("rh"))
    baca.section.reapply(
        voices,
        previous_persistent_indicators,
        manifests=library.manifests,
    )
    cache = baca.section.cache_leaves(
        score,
        len(measures()),
        library.voice_abbreviations,
    )
    vc(cache["vc"])
    rh(cache["rh"])
    return score


def main():
    environment = baca.build.read_environment(__file__, baca.build.argv())
    score = make_score(
        environment.first_measure_number,
        environment.previous_metadata["persistent_indicators"],
        environment.timing,
    )
    metadata = baca.section.postprocess_score(
        score,
        **baca.section.section_defaults(),
        always_make_global_rests=True,
        do_not_require_short_instrument_names=True,
        environment=environment,
        error_on_not_yet_pitched=True,
        final_section=True,
        manifests=library.manifests,
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


if __name__ == "__main__":
    main()
