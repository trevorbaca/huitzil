import abjad
import baca
import huitzil
import os
from abjadext import rmakers


###############################################################################
##################################### [B] #####################################
###############################################################################

time_signatures = [
    (3, 4), (3, 4), (3, 4), (3, 4),
    (3, 4), (3, 4), (3, 4), (3, 4),
    (3, 4), (3, 4), (3, 4), (3, 4),
    (2, 4), (2, 4), (2, 4),
    (2, 4), (2, 4), (2, 4),
    (2, 4), (2, 4),
    (2, 4), (2, 4), (2, 4), (2, 4),
    (4, 4),
    ]

maker = baca.SegmentMaker(
    activate=[
        abjad.const.CLOCK_TIME,
        abjad.const.LOCAL_MEASURE_NUMBER,
        ],
    clock_time_extra_offset=(0, 13),
    segment_directory=abjad.Path(os.path.realpath(__file__)).parent,
    spacing_extra_offset=(0, 16),
    time_signatures=time_signatures,
    validate_measure_count=25,
    )

maker(
    'Global_Skips',
    baca.metronome_mark(
        '44',
        selector=baca.leaf(1 - 1),
        ),
    )

# vc

maker(
    'vc',
    baca.literal([
        r'\stopStaff',
        r"\once \override Staff.StaffSymbol.line-positions = #'(4 -4)"
        r'\startStaff',
        ]),
    baca.mmrest_transparent(),
    baca.new(
        baca.bar_line_transparent(),
        baca.span_bar_transparent(),
        selector=baca.leaves()[1:],
        ),
    baca.time_signature_stencil_false(),
    )

maker(
    ('vc', 25),
    baca.literal([
        r'\stopStaff',
        r"\once \override Staff.StaffSymbol.line-count = 5",
        r'\startStaff',
        ]),
    baca.pitch('B1'),
    baca.rhythm("{ c'1 }"),
    )

# vcr

maker(
    ('vcr', 1),
    baca.mmrest_transparent(),
    )

# rh

maker(
    'rh',
    baca.alternate_bow_strokes(),
    baca.chunk(
        baca.bar_extent_persistent((-4, 4)),
        baca.literal([
            r'\once \override RHStaff.StaffSymbol.line-positions ='
            " #'(8.2 8 7.8 -5.8 -6 -6.2)"
            ]),
        baca.staff_lines(7),
        ),
    baca.dynamic(
        'mp-sempre',
        abjad.tweak(-0.9).self_alignment_X,
        ),
    baca.literal(r'\override DynamicLineSpanner.staff-padding = 2.5'),
    baca.literal(r'\override Score.BarNumber.transparent = ##t'),
    baca.markup(
        r'\huitzil-directly-on-bridge-markup',
        abjad.tweak(3).staff_padding,
        literal=True,
        ),
    baca.staff_position(8),
    baca.tuplet_bracket_down(),
    )

maker(
    ('rh', (1, 4)),
    baca.rest_position(0),
    baca.rhythm("{ c'4 r2 c'4 r2 c'4 r2 c'4 r2 }"),
    )

maker(
    ('rh', (5, 8)),
    baca.rhythm(
        "{ c'4 c'16 r8. r4 c'4 c'16 r8. r4 c'4 c'16 r8. r4 c'4 c'16 r8. r4 }"
        ),
    )

maker(
    ('rh', (9, 12)),
    baca.rhythm(
        "{"
        r" c'4 \times 2/3 { c'8 r4 } r4"
        r" c'4 \times 2/3 { c'8 r4 } r4"
        r" c'4 c'8 r8 r4"
        r" c'4 c'8 r8 r4"
        " }",
        ),
    )

maker(
    ('rh', [9, 10]),
    baca.tag(
        # TODO: make +ARCH_A_SCORE work
        #'+ARCH_A_SCORE',
        '+SCORE',
        baca.literal(
            r'\once \override TupletNumber.font-size = -2',
            selector=baca.pleaf(1),
            ),
        ),
    )

maker(
    ('rh', (13, 15)),
    baca.rhythm("{ c'4 c'4 c'4 c'4 c'4 c'4 }"),
    )

maker(
    ('rh', (16, 18)),
    baca.rhythm(
        "{"
        r" \times 2/3 { c'4 c'4 c'4 }"
        r" \times 2/3 { c'4 c'4 c'4 }"
        r" \times 2/3 { c'4 c'4 c'4 }"
        " }",
        ),
    )

maker(
    ('rh', (19, 20)),
    baca.rhythm(
        "{"
        r" c'8 c'8 c'8 c'8"
        r" c'8 c'8 c'8 c'8"
        " }",
        ),
    )

maker(
    ('rh', (21, 24)),
    baca.rhythm(
        "{"
        r" \times 4/5 { c'8 c'8 c'8 c'8 c'8 }"
        r" \times 4/6 { c'8 c'8 c'8 c'8 c'8 c'8 }"
        r" \times 4/7 { c'8 c'8 c'8 c'8 c'8 c'8 c'8 }"
        " c'16 c'16 c'16 c'16 c'16 c'16 c'16 c'16"
        " }",
        ),
    )

maker(
    ('rh', (19, 24)),
    baca.beam(),
    )

maker(
    ('rh', 25),
    baca.glissando(
        right_broken=True,
        selector=baca.leaves().rleak(),
        ),
    baca.hairpin(
        '(mp) -- !',
        selector=baca.leaves().rleak(),
        ),
    baca.literal(
        r'\override DynamicLineSpanner.staff-padding = 7',
        ),
    baca.literal([
        r'\stopStaff',
        r'\once \override RHStaff.StaffSymbol.line-positions ='
        " #'(8.2 8 7.8 6 4 2 0 -2 -4 -5.8 -6 -6.2)",
        r'\startStaff',
        ]),
    baca.markup(
        r'\huitzil-sliding-from-bridge-onto-string-markup',
        abjad.tweak(6).staff_padding,
        literal=True,
        ),
    baca.markup(
        r'trem. moderato',
        abjad.tweak(3.5).staff_padding,
        direction=abjad.Down,
        ),
    baca.rhythm("{ c'1 }"),
    baca.stem_tremolo(),
    )

maker(
    ('rh', 25),
    baca.staff_position(
        6,
        selector=baca.leaves().rleak()[-1],
        ),
    )
