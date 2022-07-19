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
    always_make_global_rests=True,
    attach_nonfirst_empty_start_bar=True,
)

skips = score["Skips"]
manifests = accumulator.manifests()

for index, item in ((1 - 1, "66"),):
    skip = skips[index]
    indicator = accumulator.metronome_marks.get(item, item)
    baca.metronome_mark(skip, indicator, manifests)

baca.bar_line(score["Skips"][10 - 1], "|.")


def VC(voice):
    voice = score["Cello.Music"]
    music = baca.make_mmrests(accumulator.get())
    voice.extend(music)


def RH(voice):
    voice = score["RH.Music"]
    # (1, 12)
    music = baca.make_monads("1/2 1/2 1/2 1/2 1/2 1/2 1/2 1/2 1/2 3/2")
    for pleaf in baca.select.pleaves(music)[1:]:
        baca.repeat_tie_function(pleaf)
    voice.extend(music)


def vc(m):
    accumulator(
        "vc",
        baca.mmrest_transparent(),
        baca.new(
            baca.bar_line_transparent(),
            baca.span_bar_transparent(),
            selector=lambda _: baca.select.leaves(_),
        ),
        baca.only_section(
            baca.literal(
                [
                    r"\stopStaff",
                    r"\once \override Staff.StaffSymbol.line-positions =" " #'(4 -4)",
                    r"\startStaff",
                ]
            ),
        ),
        baca.time_signature_stencil_false(),
    )
    accumulator(
        ("vc", -1),
        baca.literal(
            [
                r"\once \override Score.RehearsalMark.direction = #down",
                r"\once \override Score.RehearsalMark.padding = 6",
                r"\mark \huitzil-colophon-markup",
            ],
            site="after",
        ),
        baca.literal(
            [
                r"\override Score.BarLine.X-extent = #'(0 . 8)",
                r"\override Score.BarLine.extra-offset = #'(8 . 0)",
                r"\override Score.RehearsalMark.extra-offset = #'(4 . 0)",
                r"\override Score.SpanBar.extra-offset = #'(8 . 0)",
            ]
        ),
    )


def rh(m):
    accumulator(
        ("rh", (1, 12)),
        baca.staff_position(8),
        baca.text_spanner(
            "larg. => strett. =>",
            abjad.Tweak(r"- \tweak staff-padding 6"),
            pieces=lambda _: baca.select.clparts(_, [1]),
        ),
    )
    accumulator(
        ("rh", (1, 10)),
        baca.markup(
            r"\baca-mpz-markup",
            direction=abjad.DOWN,
        ),
        baca.hairpin(
            "mp > pp <",
            abjad.Tweak(r"- \tweak to-barline ##t"),
            final_hairpin=False,
            pieces=lambda _: baca.select.clparts(_, [1]),
        ),
    )
    accumulator(
        ("rh", -1),
        baca.literal(r"\override Staff.BarLine.bar-extent = #'(-4 . 4)", site="after"),
    )
    accumulator(
        "rh",
        # TODO: fix right-broken text spanners and replace this:
        baca.literal(r"<> \stopTextSpan"),
        baca.literal(r"\override DynamicLineSpanner.staff-padding = 7"),
        baca.only_section(
            baca.literal(
                [
                    r"\stopStaff",
                    r"\once \override RHStaff.StaffSymbol.line-positions ="
                    " #'(8.2 8 7.8 -5.8 -6 -6.2)",
                    r"\startStaff",
                ]
            ),
        ),
        baca.stem_tremolo(
            selector=lambda _: baca.select.pleaves(_),
        ),
        baca.text_script_parent_alignment_x(0),
        baca.text_script_self_alignment_x(0),
        baca.text_script_staff_padding(4),
    )


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
    defaults = baca.interpret.section_defaults()
    del defaults["append_anchor_skip"]
    metadata, persist, score, timing = baca.build.section(
        score,
        accumulator.manifests(),
        accumulator.time_signatures,
        **defaults,
        activate=(
            baca.tags.CLOCK_TIME,
            baca.tags.LOCAL_MEASURE_NUMBER,
        ),
        always_make_global_rests=True,
        commands=accumulator.commands,
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
