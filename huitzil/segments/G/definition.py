import abjad
import baca
import huitzil
import os
from abjadext import rmakers


###############################################################################
##################################### [G] #####################################
###############################################################################

time_signatures = [
    (1, 2), (3, 8), (3, 8), (1, 2), (1, 2), (3, 8), (3, 8), (1, 2),
    (1, 2), (3, 8), (3, 8), (1, 2), (1, 2), (3, 8), (3, 8), (1, 2),
    (1, 2), (3, 8), (3, 8), (1, 2), (1, 2), (1, 2), (1, 2), (1, 2),
    (1, 2), (1, 2), (1, 2), (1, 2), (1, 2), (1, 2), (1, 2), (1, 2),
    ]

maker = baca.SegmentMaker(
    activate=[
        abjad.const.CLOCK_TIME,
        abjad.const.LOCAL_MEASURE_NUMBER,
        ],
    clock_time_extra_offset=(0, 13),
    segment_directory=abjad.Path(os.path.realpath(__file__)).parent,
    time_signatures=time_signatures,
    validate_measure_count=32,
    )

maker(
    'Global_Skips',
    baca.metronome_mark(
        '88',
        selector=baca.leaf(1 - 1),
        ),
    )

# vc

maker(
    'vc',
    baca.clef('bass'),
    baca.mmrest_transparent(),
    baca.new(
        baca.bar_line_transparent(),
        baca.span_bar_transparent(),
        selector=baca.leaves(),
        ),
    baca.time_signature_stencil_false(),
    )

maker(
    ('vc', (1, 20)),
    baca.pitch('A2'),
    baca.rhythm("{ c'1 * 35/4 }"),
    )

maker(
    ('vc', (21, 24)),
    baca.pitch('G2'),
    baca.rhythm("{ c'1 * 2 }"),
    )

maker(
    ('vc', (25, 28)),
    baca.literal(r'\parenthesize'),
    baca.pitch('G2'),
    baca.rhythm("{ c'1 * 2 }"),
    )

maker(
    ('vc', (29, 32)),
    baca.pitch('A1'),
    baca.rhythm("{ c'1 * 2 }"),
    )

# rh

maker(
    'rh',
    baca.dynamic('mf'),
    baca.chunk(
        baca.bar_extent_persistent((-4, 4)),
        baca.literal(
            r'\once \override RHStaff.StaffSymbol.line-positions ='
            " #'(8.2 8 7.8 -5.8 -6 -6.2 -8 -10 -12 -14 -16 -17.8 -18 -18.2)"
            ),
        ),
    baca.dls_staff_padding(7),
    baca.stem_tremolo(
        selector=baca.pleaves(),
        ),
    baca.text_script_parent_alignment_x(0),
    baca.text_script_self_alignment_x(0),
    baca.text_script_staff_padding(4),
    )

maker(
    ('rh', (1, 8)),
    baca.make_monads('1/2 3/8 3/8 1/2 1/2 3/8 3/8 1/2'),
    baca.staff_positions(
        [-6, -6, -8, -8, -10, -10, -12, -12],
        allow_repeats=True,
        ),
    )

maker(
    ('rh', (1, 20)),
    baca.markup(
        r'\baca-fz-markup',
        direction=abjad.Down,
        literal=True,
        selector=baca.leaves(),
        ),
    )

maker(
    ('rh', (9, 16)),
    baca.make_monads('1/2 3/8 3/8 1/2 1/2 3/8 3/8 1/2'),
    baca.staff_positions(
        [-14, -14, -16, -16, -18, -18, -16, -16],
        allow_out_of_range=True,
        allow_repeats=True,
        ),
    )

maker(
    ('rh', (17, 24)),
    baca.make_monads('1/2 3/8 3/8 1/2 1/2 1/2 1/2 1/2'),
    baca.staff_positions(
        [-14, -14, -12, -12, -10, -10, -8, -8],
        allow_repeats=True,
        ),
    )

maker(
    ('rh', (25, 32)),
    baca.make_monads('1/2 1/2 1/2 1/2 1/2 1/2 1/2 1/2'),
    baca.staff_position(-6),
    )

# stage 2 (after staff position settings)

maker(
    ('vc', (1, 21)),
    baca.glissando(),
    )

maker(
    ('vc', (25, 29)),
    baca.glissando(),
    )

maker(
    'rh',
    baca.glissando(
        selector=baca.leaves(),
        ),
    )
