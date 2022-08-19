import abjad
import baca

from huitzil import library

#########################################################################################
########################################### 10 ##########################################
#########################################################################################

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
voice_names = baca.accumulator.get_voice_names(score)

accumulator = baca.CommandAccumulator(
    time_signatures=time_signatures,
    _voice_abbreviations=library.voice_abbreviations,
    _voice_names=voice_names,
)

first_measure_number = baca.interpret.set_up_score(
    score,
    accumulator,
    library.manifests,
    accumulator.time_signatures,
    always_make_global_rests=True,
    attach_nonfirst_empty_start_bar=True,
)

skips = score["Skips"]
manifests = library.manifests

for index, item in ((1 - 1, "66"),):
    skip = skips[index]
    baca.metronome_mark_function(skip, item, manifests)

baca.bar_line_function(score["Skips"][10 - 1], "|.")


def VC(voice):
    music = baca.make_mmrests(accumulator.get())
    voice.extend(music)


def RH(voice):
    # (1, 12)
    music = baca.make_monads("1/2 1/2 1/2 1/2 1/2 1/2 1/2 1/2 1/2 3/2")
    for pleaf in baca.select.pleaves(music)[1:]:
        baca.repeat_tie_function(pleaf)
    voice.extend(music)


def vc(m):
    with baca.scope(m.leaves()) as o:
        baca.mmrest_transparent_function(o.mmrests())
        baca.bar_line_transparent_function(o)
        baca.span_bar_transparent_function(o)
        wrappers = baca.literal_function(
            o.leaf(0),
            [
                r"\stopStaff",
                r"\once \override Staff.StaffSymbol.line-positions = #'(4 -4)",
                r"\startStaff",
            ],
        )
        baca.tags.wrappers(wrappers, baca.tags.ONLY_SECTION)
        baca.time_signature_stencil_false_function(o)
    with baca.scope(m[10]) as o:
        baca.literal_function(
            o.leaf(0),
            [
                r"\once \override Score.RehearsalMark.direction = #down",
                r"\once \override Score.RehearsalMark.padding = 6",
                r"\mark \huitzil-colophon-markup",
            ],
            site="after",
        )
        baca.literal_function(
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
        baca.staff_position_function(o, 8)
        baca.text_spanner_function(
            o,
            "larg. => strett. =>",
            abjad.Tweak(r"- \tweak staff-padding 6"),
            pieces=lambda _: baca.select.clparts(_, [1]),
        )
    with baca.scope(m.get(1, 10)) as o:
        library.sforzando(o.leaf(0), r"\baca-mpz-markup")
        baca.hairpin_function(
            o,
            "mp > pp <",
            abjad.Tweak(r"- \tweak to-barline ##t"),
            final_hairpin=False,
            pieces=lambda _: baca.select.clparts(_, [1]),
        )
    with baca.scope(m[10]) as o:
        baca.literal_function(
            o.leaf(0),
            r"\override Staff.BarLine.bar-extent = #'(-4 . 4)",
            site="after",
        )
    with baca.scope(m.leaves()) as o:
        # TODO: fix right-broken text spanners and replace this:
        baca.literal_function(o.leaf(0), r"<> \stopTextSpan")
        baca.literal_function(
            o.leaf(0),
            r"\override DynamicLineSpanner.staff-padding = 7",
        )
        wrappers = baca.literal_function(
            o.leaf(0),
            [
                r"\stopStaff",
                r"\once \override RHStaff.StaffSymbol.line-positions ="
                " #'(8.2 8 7.8 -5.8 -6 -6.2)",
                r"\startStaff",
            ],
        )
        baca.tags.wrappers(wrappers, baca.tags.ONLY_SECTION)
        baca.stem_tremolo_function(o.pleaves())
        baca.text_script_parent_alignment_x_function(o, 0)
        baca.text_script_self_alignment_x_function(o, 0)
        baca.text_script_staff_padding_function(o, 4)


def main():
    VC(accumulator.voice("vc"))
    RH(accumulator.voice("rh"))
    previous_persist = baca.previous_persist(__file__)
    previous_persistent_indicators = previous_persist["persistent_indicators"]
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


if __name__ == "__main__":
    main()
    defaults = baca.interpret.section_defaults()
    del defaults["append_anchor_skip"]
    metadata, persist, timing = baca.build.section(
        score,
        library.manifests,
        accumulator.time_signatures,
        **defaults,
        activate=(
            baca.tags.CLOCK_TIME,
            baca.tags.LOCAL_MEASURE_NUMBER,
        ),
        always_make_global_rests=True,
        do_not_require_short_instrument_names=True,
        error_on_not_yet_pitched=True,
        final_section=True,
    )
    lilypond_file = baca.lilypond.file(
        score,
        include_layout_ly=True,
        includes=["../stylesheet.ily"],
    )
    baca.build.persist(lilypond_file, metadata, persist, timing)
