import abjad
import baca
import huitzil
import os
from abjadext import rmakers


###############################################################################
##################################### [H] #####################################
###############################################################################

time_signatures = [
    (1, 1), (3, 4), (3, 4), (1, 1), (1, 1), (3, 4), (3, 4), (1, 1),
    (1, 1), (3, 4), (3, 4), (1, 1), (1, 1), (3, 4), (3, 4), (1, 1),
    (1, 1), (3, 4), (3, 4), (1, 1), (1, 1), (1, 1), (1, 1), (1, 1),
    (1, 1), (1, 1), (1, 1), (1, 1), (1, 1), (1, 1), (1, 1), (1, 1),
    ]

maker = baca.SegmentMaker(
    activate=[
        abjad.const.LOCAL_MEASURE_NUMBER,
        ],
    segment_directory=abjad.Path(os.path.realpath(__file__)).parent,
    time_signatures=time_signatures,
    validate_measure_count=32,
    )

maker(
    'Global_Skips',
    baca.metronome_mark(
        '66',
        selector=baca.leaf(1 - 1),
        ),
    baca.metronome_mark(
        baca.Accelerando(),
        selector=baca.leaf(1 - 1),
        ),
    baca.metronome_mark(
        '88',
        selector=baca.leaf(4 - 1),
        ),
    baca.metronome_mark(
        '66',
        selector=baca.leaf(5 - 1),
        ),
    baca.metronome_mark(
        baca.Accelerando(),
        selector=baca.leaf(5 - 1),
        ),
    baca.metronome_mark(
        '88',
        selector=baca.leaf(8 - 1),
        ),
    baca.metronome_mark(
        '66',
        selector=baca.leaf(9 - 1),
        ),
    baca.metronome_mark(
        baca.Accelerando(),
        selector=baca.leaf(9 - 1),
        ),
    baca.metronome_mark(
        '88',
        selector=baca.leaf(12 - 1),
        ),
    baca.metronome_mark(
        '66',
        selector=baca.leaf(13 - 1),
        ),
    baca.metronome_mark(
        baca.Accelerando(),
        selector=baca.leaf(13 - 1),
        ),
    baca.metronome_mark(
        '88',
        selector=baca.leaf(16 - 1),
        ),
    baca.metronome_mark(
        '66',
        selector=baca.leaf(17 - 1),
        ),
    baca.metronome_mark(
        baca.Accelerando(),
        selector=baca.leaf(17 - 1),
        ),
    baca.metronome_mark(
        '88',
        selector=baca.leaf(20 - 1),
        ),
    baca.metronome_mark(
        '66',
        selector=baca.leaf(25 - 1),
        ),
    baca.metronome_mark(
        baca.Accelerando(),
        selector=baca.leaf(25 - 1),
        ),
    baca.metronome_mark(
        '88',
        selector=baca.leaf(28 - 1),
        ),
    baca.metronome_mark(
        '88',
        selector=baca.leaf(29 - 1),
        ),
    baca.metronome_mark(
        baca.Accelerando(),
        selector=baca.leaf(29 - 1),
        ),
    baca.metronome_mark(
        '66',
        selector=baca.leaf(32 - 1),
        ),
    )

# vc

maker(
    'vc',
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
    baca.rhythm("{ c'1 * 35/2 }"),
    )

maker(
    ('vc', (21, 24)),
    baca.pitch('G2'),
    baca.rhythm("{ c'1 * 4 }"),
    )

maker(
    ('vc', (25, 28)),
    baca.literal(r'\parenthesize'),
    baca.pitch('G2'),
    baca.rhythm("{ c'1 * 4 }"),
    )

maker(
    ('vc', (29, 32)),
    baca.pitch('A1'),
    baca.rhythm("{ c'1 * 4 }"),
    )

# vcr

#maker(
#    ('vcr', 2),
#    baca.mmrest_transparent(),
#    )

# rh

maker(
    'rh',
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
    baca.make_monads('1 3/4 3/4 1 1 3/4 3/4 1'),
    baca.staff_positions(
        [-10, -10, -8, -8, -6, -6, -4, -4],
        allow_repeats=True,
        ),
    )

maker(
    ('rh', (1, 20)),
    baca.markup(
        r'\baca-fz-markup',
        direction=abjad.Down,
        literal=True,
        selector=baca.leaves()[abjad.index([0], 2)],
        ),
    )

maker(
    ('rh', (1, 23)),
    baca.hairpin(
        'p < mf > p < mf > p < mf > p < mf > p < ff',
        pieces=baca.clparts([
            3, 1, 3, 1,
            3, 1, 3, 1,
            7,
            ]),
        ),
    )

maker(
    ('rh', (9, 16)),
    baca.make_monads('1 3/4 3/4 1 1 3/4 3/4 1'),
    baca.staff_positions(
        [-2, -2, 0, 0, 2, 2, 4, 4],
        allow_repeats=True,
        ),
    )

maker(
    ('rh', (17, 24)),
    baca.make_monads('1 3/4 3/4 1 1 1 1 1'),
    baca.staff_positions(
        [6, 6, 8, 8, 10, 10, 10, 10],
        allow_repeats=True,
        ),
    )

maker(
    ('rh', (21, 32)),
    baca.markup(
        r'\baca-fffz-markup',
        direction=abjad.Down,
        literal=True,
        selector=baca.leaves()[abjad.index([0, 1, 2, 3, 4, 8, 9, 10, 11])],
        ),
    )

maker(
    ('rh', (25, 32)),
    baca.hairpin(
        'mf < ff > pp',
        pieces=baca.lparts([4, 4]),
        ),
    baca.make_monads('1 1 1 1 1 1 1 1'),
    baca.staff_positions(
        [10],
        allow_repeats=True,
        ),
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
