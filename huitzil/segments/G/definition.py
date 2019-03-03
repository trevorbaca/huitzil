import abjad
import baca
import huitzil
import os
from abjadext import rmakers


###############################################################################
##################################### [G] #####################################
###############################################################################

time_signatures = [
    (3, 4), (1, 3), (3, 4), (3, 4), (1, 3), (3, 4), (1, 2), (1, 3), (3, 4), (1, 2), (1, 3), (3, 4),
    (1, 1), (3, 4), (1, 3), (3, 4), (1, 2), (3, 4), (1, 3), (1, 1), (3, 4), (1, 3), (3, 4),
    (3, 4), (1, 3), (3, 4), (1, 2), (1, 3), (3, 4), (1, 2), (1, 3), (3, 4), (1, 1), (3, 4),
    (1, 3), (3, 4), (1, 2), (3, 4), (1, 3), (1, 1), (3, 4), (1, 3), (3, 4), (1, 2), (3, 4),
    (1, 3), (1, 1), (3, 4), (1, 2), (3, 4), (1, 3), (1, 1), (3, 4), (1, 3), (3, 4), (1, 2), (3, 4), (1, 3), (1, 1),
    ]

maker = baca.SegmentMaker(
    activate=[
        abjad.const.CLOCK_TIME,
        abjad.const.LOCAL_MEASURE_NUMBER,
        ],
    clock_time_extra_offset=(0, 13),
    segment_directory=abjad.Path(os.path.realpath(__file__)).parent,
    time_signatures=time_signatures,
    validate_measure_count=59,
    )

maker(
    'Global_Skips',
    baca.metronome_mark(
        '66',
        selector=baca.leaf(1 - 1),
        ),
    baca.metronome_mark(
        '66',
        selector=baca.leaf(4 - 1),
        ),
    baca.metronome_mark(
        baca.Accelerando(),
        selector=baca.leaf(4 - 1),
        ),
    baca.metronome_mark(
        '88',
        selector=baca.leaf(9 - 1),
        ),
    baca.metronome_mark(
        baca.Ritardando(),
        selector=baca.leaf(9 - 1),
        ),
    baca.metronome_mark(
        '66',
        selector=baca.leaf(14 - 1),
        ),
    baca.metronome_mark(
        '66',
        selector=baca.leaf(18 - 1),
        ),
    baca.metronome_mark(
        baca.Accelerando(),
        selector=baca.leaf(18 - 1),
        ),
    baca.metronome_mark(
        '88',
        selector=baca.leaf(20 - 1),
        ),
    baca.metronome_mark(
        baca.Ritardando(),
        selector=baca.leaf(20 - 1),
        ),
    baca.metronome_mark(
        '66',
        selector=baca.leaf(21 - 1),
        ),
    baca.metronome_mark(
        '66',
        selector=baca.leaf(24 - 1),
        ),
    baca.metronome_mark(
        baca.Accelerando(),
        selector=baca.leaf(24 - 1),
        ),
    baca.metronome_mark(
        '88',
        selector=baca.leaf(29 - 1),
        ),
    baca.metronome_mark(
        baca.Ritardando(),
        selector=baca.leaf(29 - 1),
        ),
    baca.metronome_mark(
        '66',
        selector=baca.leaf(34 - 1),
        ),
    baca.metronome_mark(
        '66',
        selector=baca.leaf(38 - 1),
        ),
    baca.metronome_mark(
        baca.Accelerando(),
        selector=baca.leaf(38 - 1),
        ),
    baca.metronome_mark(
        '88',
        selector=baca.leaf(40 - 1),
        ),
    baca.metronome_mark(
        baca.Ritardando(),
        selector=baca.leaf(40 - 1),
        ),
    baca.metronome_mark(
        '66',
        selector=baca.leaf(41 - 1),
        ),
    baca.metronome_mark(
        '66',
        selector=baca.leaf(45 - 1),
        ),
    baca.metronome_mark(
        baca.Accelerando(),
        selector=baca.leaf(45 - 1),
        ),
    baca.metronome_mark(
        '88',
        selector=baca.leaf(47 - 1),
        ),
    baca.metronome_mark(
        baca.Ritardando(),
        selector=baca.leaf(47 - 1),
        ),
    baca.metronome_mark(
        '66',
        selector=baca.leaf(50 - 1),
        ),
    baca.metronome_mark(
        '66',
        selector=baca.leaf(53 - 1),
        ),
    baca.metronome_mark(
        baca.Accelerando(),
        selector=baca.leaf(53 - 1),
        ),
    baca.metronome_mark(
        '88',
        selector=baca.leaf(55 - 1),
        ),
    baca.metronome_mark(
        baca.Ritardando(),
        selector=baca.leaf(55 - 1),
        ),
    baca.metronome_mark(
        '66',
        selector=baca.leaf(57 - 1),
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
    ('vc', 1),
    baca.pitch('A2'),
    baca.rhythm("{ c'1 * 3/4 }"),
    )

# vcr

maker(
    ('vcr', 2),
    baca.mmrest_transparent(),
    )

# rh

maker(
    'rh',
    baca.bar_extent_persistent((-5, 5)),
    baca.dls_staff_padding(7),
    baca.hairpin(
        'p < mp >',
        final_hairpin=False,
        pieces=baca.clparts([
            2, 1, 2, 3, 1, 2, 1,
            1, 2, 2, 2, 1, 2, 1,
            2, 3, 1, 2, 1, 1, 2,
            2, 2, 1, 2, 2, 2,
            3, 2, 1, 2, 2, 2,
            ]),
        ),
    baca.markup(
        r'\baca-fz-markup',
        direction=abjad.Down,
        literal=True,
        selector=baca.leaves()[abjad.index([
            0, 3, 8, 11, 13, 17, 20, 22, 31, 33, 37, 40, 44, 49, 52, 56, 58,
            ])],
        ),
    baca.markup(
        r'\baca-mfz-markup',
        direction=abjad.Down,
        literal=True,
        selector=baca.leaves()[abjad.index([
            1, 2, 4, 5, 9,
            12, 14, 15, 18, 19, 21,
            23, 24, 25, 28, 29, 32,
            34, 35, 38, 39, 41, 42,
            45, 46, 50, 51, 53, 54, 57,
            ])],
        ),
    baca.staff_lines(11),
    baca.stem_tremolo(
        selector=baca.pleaves(),
        ),
    baca.text_script_parent_alignment_x(0),
    baca.text_script_self_alignment_x(0),
    baca.text_script_staff_padding(4),
    )

maker(
    ('rh', (1, 12)),
    baca.make_monads('3/4 1/3 3/4 3/4 1/3 3/4 1/2 1/3 3/4 1/2 1/3 3/4'),
    baca.staff_positions(
        [10, 10, 10, 8, 8, 8, 6, 8, 6, 6, 8, 6],
        allow_repeats=True,
        ),
    )

maker(
    ('rh', (13, 23)),
    baca.make_monads('1 3/4 1/3 3/4 1/2 3/4 1/3 1 3/4 1/3 3/4'),
    baca.staff_positions(
        [6, 4, 4, 4, 6, 4, 4, 4, 4, 2, 2, 2],
        allow_repeats=True,
        ),
    )

maker(
    ('rh', (24, 34)),
    baca.make_monads('3/4 1/3 3/4 1/2 1/3 3/4 1/2 1/3 3/4 1 3/4'),
    baca.staff_positions(
        [0, 0, 0, -2, 0, -2, -2, 0, -2, -2, -4],
        allow_repeats=True,
        ),
    )

maker(
    ('rh', (35, 45)),
    baca.make_monads('1/3 3/4 1/2 3/4 1/3 1 3/4 1/3 3/4 1/2 3/4'),
    baca.staff_positions(
        [-4, -4, -2, -4, -4, -4, -6, -6, -6, -4, -6],
        allow_repeats=True,
        ),
    )

maker(
    ('rh', (46, 59)),
    baca.make_monads('1/3 1 3/4 1/2 3/4 1/3 1 3/4 1/3 3/4 1/2 3/4 1/3 1'),
    baca.staff_positions(
        [-6, -6, -8, -6, -8, -8, -8, -10, -10, -10, -8, -10, -10, -10],
        allow_repeats=True,
        ),
    )

# stage 2 (after staff position settings)

maker(
    'rh',
    baca.glissando(
        selector=baca.leaves(),
        ),
    )
