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

commands = baca.CommandAccumulator(
    instruments=library.instruments(),
    metronome_marks=library.metronome_marks(),
    time_signatures=time_signatures,
    voice_abbreviations=library.voice_abbreviations(),
    voice_names=voice_names,
)

# skips

commands(
    "GlobalSkips",
    baca.metronome_mark(
        "66",
        selector=lambda _: abjad.select.leaf(_, 1 - 1),
    ),
    baca.bar_line("|.", lambda _: baca.select.skip(_, -1)),
)

# VC

commands(
    "vc",
    baca.make_mmrests_flat(),
)

# RH

commands(
    ("rh", (1, 12)),
    baca.make_monads("1/2 1/2 1/2 1/2 1/2 1/2 1/2 1/2 1/2 3/2"),
    baca.repeat_tie(
        lambda _: baca.select.pleaves(_)[1:],
    ),
)

# reapply

music_voices = [_ for _ in voice_names if "MusicVoice" in _]

commands(
    music_voices,
    baca.reapply_persistent_indicators(),
)

# vc

commands(
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

commands(
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

# rh

commands(
    ("rh", (1, 12)),
    baca.staff_position(8),
    baca.text_spanner(
        "larg. => strett. =>",
        abjad.Tweak(r"- \tweak staff-padding 6"),
        pieces=lambda _: baca.select.clparts(_, [1]),
    ),
)


commands(
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

commands(
    ("rh", -1),
    baca.literal(r"\override Staff.BarLine.bar-extent = #'(-4 . 4)", site="after"),
)

commands(
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

if __name__ == "__main__":
    defaults = baca.score_interpretation_defaults()
    del defaults["append_phantom_measure"]
    metadata, persist, score, timing = baca.build.interpret_section(
        score,
        commands,
        **defaults,
        activate=(
            baca.tags.CLOCK_TIME,
            baca.tags.LOCAL_MEASURE_NUMBER,
        ),
        always_make_global_rests=True,
        do_not_require_margin_markup=True,
        error_on_not_yet_pitched=True,
        final_section=True,
    )
    lilypond_file = baca.make_lilypond_file(
        score,
        include_layout_ly=True,
        includes=["../stylesheet.ily"],
    )
    baca.build.persist(lilypond_file, metadata, persist, timing)
