import abjad
import baca
import huitzil
import os
from abjadext import rmakers


###############################################################################
##################################### [J] #####################################
###############################################################################

time_signatures = [
    (1, 2), (1, 2), (1, 2), (1, 2), (1, 2), (1, 2), (1, 2),
    (1, 2), (1, 2), (3, 2),
]

maker = baca.SegmentMaker(
    activate=[
        abjad.tags.CLOCK_TIME,
        abjad.tags.LOCAL_MEASURE_NUMBER,
    ],
    check_all_are_pitched=True,
    clock_time_extra_offset=(0, 13),
    final_segment=True,
    remove_phantom_measure=True,
    segment_directory=abjad.Path(os.path.realpath(__file__)).parent,
    time_signatures=time_signatures,
    validate_measure_count=10,
)

# skips

maker(
    "Global_Skips",
    baca.metronome_mark(
        "66",
        selector=baca.leaf(1 - 1),
    ),
)

# vc

maker(
    "vc",
    baca.mmrest_transparent(),
    baca.new(
        baca.bar_line_transparent(),
        baca.span_bar_transparent(),
        selector=baca.leaves(),
    ),
    baca.only_segment(
        baca.literal([
            r"\stopStaff",
            r"\once \override Staff.StaffSymbol.line-positions ="
            " #'(4 -4)",
            r"\startStaff",
            ]),
    ),
    baca.time_signature_stencil_false(),
)

maker(
    ("vc", -1),
    #baca.chunk(
    #    baca.mark(r"\huitzil-colophon-markup"),
    #    baca.rehearsal_mark_down(),
    #    baca.rehearsal_mark_padding(4),
    #    selector=baca.leaves().rleak()[-1],
    #),
    baca.literal([
        r"\once \override Score.RehearsalMark.direction = #down",
        r"\once \override Score.RehearsalMark.padding = 4",
        r"\mark \huitzil-colophon-markup",
        ],
        format_slot="after",
    ),
    baca.literal([
        r"\override Score.BarLine.X-extent = #'(0 . 8)",
        r"\override Score.BarLine.extra-offset = #'(8 . 0)",
        r"\override Score.RehearsalMark.extra-offset = #'(4 . 0)",
        r"\override Score.SpanBar.extra-offset = #'(8 . 0)",
        ]),
)

# vcr

# rh

maker(
    "rh",
    # TODO: fix right-broken text spanners and replace this:
    baca.literal(r"<> \stopTextSpan"),
    baca.literal(r"\override DynamicLineSpanner.staff-padding = 7"),
    baca.only_segment(
        baca.literal([
            r"\stopStaff",
            r"\once \override RHStaff.StaffSymbol.line-positions ="
            " #'(8.2 8 7.8 -5.8 -6 -6.2)",
            r"\startStaff",
            ]),
    ),
    baca.stem_tremolo(
        selector=baca.pleaves(),
    ),
    baca.text_script_parent_alignment_x(0),
    baca.text_script_self_alignment_x(0),
    baca.text_script_staff_padding(4),
)

maker(
    ("rh", (1, 10)),
    baca.markup(
        r"\baca-mpz-markup",
        direction=abjad.Down,
        literal=True,
    ),
    baca.hairpin(
        "mp > pp <",
        abjad.tweak(True).to_barline,
        final_hairpin=False,
        pieces=baca.clparts([1]),
    ),
)

maker(
    ("rh", (1, 12)),
    baca.make_monads("1/2 1/2 1/2 1/2 1/2 1/2 1/2 1/2 1/2 3/2"),
    baca.repeat_tie(baca.pleaves()[1:]),
    baca.staff_position(8),
    baca.text_spanner(
        "larg. => strett. =>",
        abjad.tweak(6).staff_padding,
        pieces=baca.clparts([1]),
    ),
)
