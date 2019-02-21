import abjad
import baca
import huitzil
import os
from abjadext import rmakers


###############################################################################
##################################### [L] #####################################
###############################################################################

### SEGMENT-MAKER ###

time_signatures = [
    (1, 1), (13, 12), (1, 1), (7, 6), (53, 30), (23, 12),
    (1, 1), (1, 1), (3, 4), (2, 3), (22, 15), (1, 1), (1, 1), (1, 1),
    (2, 1), (1, 3), (1, 1), (4, 5), (2, 1), (1, 1), (1, 1),
    (1, 1), (1, 1), (1, 1),
    ]

maker = baca.SegmentMaker(
    activate=[
        abjad.Tags().LOCAL_MEASURE_NUMBER_MARKUP,
        ],
    phantom=True,
    segment_directory=abjad.Path(os.path.realpath(__file__)).parent,
    time_signatures=time_signatures,
    validate_measure_count=24,
    )

maker(
    'Global_Skips',
    baca.metronome_mark(
        '44',
        selector=baca.leaf(1 - 1),
        ),
    )

maker(
    ('vc', 1),
    baca.pitch('B1'),
    baca.rhythm("{ c'1 }"),
    )

maker(
    ('vc', 2),
    baca.literal(r'\override MultiMeasureRest.transparent = ##t'),
    )

maker(
    ('vcr', 2),
    baca.literal(r'\override MultiMeasureRest.transparent = ##t'),
    )

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
    ('rh', 1),
    baca.literal(r'\override Staff.StaffSymbol.line-count = #7'),
    baca.make_monads('1/2  1/4  1/4'),
    baca.staff_positions(
        [6, 6, 4],
        allow_repeats=True,
        ),
    )

maker(
    ('rh', (1, 3)),
    baca.hairpin(
        'mp -- !',
        abjad.tweak(True).to_barline,
        selector=baca.leaves().rleak(),
        ),
    baca.markup(
        r'\baca-mfz-markup',
        direction=abjad.Down,
        literal=True,
        selector=baca.leaves(),
        ),
    )

maker(
    ('rh', 2),
    baca.make_monads('1/2  1/4  1/3'),
    baca.staff_positions(
        [6, 6, 4],
        allow_repeats=True,
        ),
    )

maker(
    ('rh', 3),
    baca.make_monads('1/2  1/4  1/4'),
    baca.staff_positions(
        [6, 6, 4],
        allow_repeats=True,
        ),
    )

maker(
    ('rh', 4),
    baca.hairpin(
        'p -- !',
        selector=baca.leaves().rleak().rleak(),
        ),
    baca.make_monads('2/3  1/4  1/4'),
    baca.staff_positions(
        [4, 4, 2],
        allow_repeats=True,
        ),
    )

maker(
    ('rh', (4, 5)),
    baca.markup(
        r'\baca-fz-markup',
        direction=abjad.Down,
        literal=True,
        ),
    baca.markup(
        r'\baca-mpz-markup',
        direction=abjad.Down,
        literal=True,
        selector=baca.pleaves()[1:-3],
        ),
    baca.markup(
        r'\baca-mfz-markup',
        direction=abjad.Down,
        literal=True,
        selector=baca.pleaves()[-3:],
        ),
    )

maker(
    ('rh', 5),
    baca.hairpin(
        'pp < mf',
        selector=baca.leaves()[1:],
        ),
    baca.make_monads('1/2  1/3  1/3  1/5  1/5  1/5'),
    baca.staff_positions(
        [4, 4, 2, 6, 4, 2],
        allow_repeats=True,
        ),
    )

maker(
    ('rh', 6),
    baca.hairpin(
        'p -- !',
        abjad.tweak(True).to_barline,
        selector=baca.leaves().rleak(),
        ),
    baca.make_monads('1/2  1/3  1/3  1/4  1/4  1/4'),
    baca.markup(
        r'\baca-fz-markup',
        direction=abjad.Down,
        literal=True,
        ),
    baca.markup(
        r'\baca-mpz-markup',
        direction=abjad.Down,
        literal=True,
        selector=baca.pleaves()[1:],
        ),
    baca.staff_positions(
        [4, 4, 2, 6, 4, 2],
        allow_repeats=True,
        ),
    )

maker(
    ('rh', 7),
    baca.make_monads('1'),
    baca.staff_positions(
        [2],
        allow_repeats=True,
        ),
    )

maker(
    ('rh', (7, 9)),
    baca.markup(
        r'\baca-fz-markup',
        direction=abjad.Down,
        literal=True,
        selector=baca.leaves(),
        ),
    )

maker(
    ('rh', (7, 9)),
    baca.hairpin(
        'mf -- !',
        abjad.tweak(True).to_barline,
        selector=baca.leaves().rleak(),
        ),
    )

maker(
    ('rh', 8),
    baca.make_monads('1/2  1/4  1/4'),
    baca.staff_positions(
        [2, 2, 0],
        allow_repeats=True,
        ),
    )

maker(
    ('rh', 9),
    baca.make_monads('1/2  1/4'),
    baca.staff_positions(
        [2],
        allow_repeats=True,
        ),
    )

maker(
    ('rh', 10),
    baca.make_monads('1/3  1/3'),
    baca.staff_positions(
        [2, 6],
        allow_repeats=True,
        ),
    )

maker(
    ('rh', (10, 11)),
    baca.markup(
        r'\baca-mfz-markup',
        direction=abjad.Down,
        literal=True,
        selector=baca.leaves()[:4],
        ),
    baca.markup(
        r'\baca-mpz-markup',
        direction=abjad.Down,
        literal=True,
        selector=baca.leaves()[4:],
        ),
    )

maker(
    ('rh', (10, 12)),
    baca.hairpin(
        'mp > ppp -- !',
        abjad.tweak(True).to_barline,
        pieces=baca.lparts([4, 5 + 1]),
        selector=baca.leaves().rleak(),
        ),
    )

maker(
    ('rh', 11),
    baca.make_monads('1/3  1/3  1/5  1/5  1/5  1/5'),
    baca.staff_positions(
        [4, 2, 6, 4, 2, 0],
        allow_repeats=True,
        ),
    )

maker(
    ('rh', 12),
    baca.make_monads('1'),
    baca.staff_positions(
        [0],
        allow_repeats=True,
        ),
    )

maker(
    ('rh', (12, 15)),
    baca.markup(
        r'\baca-ffz-markup',
        direction=abjad.Down,
        literal=True,
        selector=baca.leaves(),
        ),
    )

maker(
    ('rh', 13),
    baca.make_monads('1'),
    baca.staff_positions(
        [0],
        allow_repeats=True,
        ),
    )

maker(
    ('rh', (13, 15)),
    baca.hairpin(
        'p < mf',
        ),
    )

maker(
    ('rh', 14),
    baca.make_monads('1'),
    baca.staff_positions(
        [-2],
        allow_repeats=True,
        ),
    )

maker(
    ('rh', 15),
    baca.make_monads('1  1'),
    baca.staff_positions(
        [-2, -4],
        allow_repeats=True,
        ),
    )

maker(
    ('rh', 16),
    baca.make_monads('1/3'),
    baca.markup(
        r'\baca-fz-markup',
        direction=abjad.Down,
        literal=True,
        ),
    baca.staff_positions(
        [0],
        allow_repeats=True,
        ),
    )

maker(
    ('rh', (16, 17)),
    baca.hairpin(
        'mp >',
        bookend=False,
        ),
    )


maker(
    ('rh', 17),
    baca.make_monads('1/3  1/3  1/3'),
    baca.markup(
        r'\baca-mfz-markup',
        direction=abjad.Down,
        literal=True,
        selector=baca.leaves(),
        ),
    baca.staff_positions(
        [6, 4, 2],
        allow_repeats=True,
        ),
    )

maker(
    ('rh', 18),
    baca.hairpin(
        'ppp -- !',
        selector=baca.leaves().rleak().rleak(),
        ),
    baca.make_monads('1/5  1/5  1/5  1/5'),
    baca.markup(
        r'\baca-mpz-markup',
        direction=abjad.Down,
        literal=True,
        selector=baca.leaves(),
        ),
    baca.staff_positions(
        [6, 4, 2, 0],
        allow_repeats=True,
        ),
    )

maker(
    ('rh', 19),
    baca.make_monads('1  1'),
    baca.staff_positions(
        [0],
        allow_repeats=True,
        ),
    )

maker(
    ('rh', (19, 24)),
    baca.hairpin(
        'p < f',
        selector=baca.leaves()[1:],
        ),
    baca.markup(
        r'\baca-ffz-markup',
        direction=abjad.Down,
        literal=True,
        selector=baca.leaves(),
        ),
    )

maker(
    ('rh', 20),
    baca.make_monads('1'),
    baca.staff_positions(
        [-2],
        allow_repeats=True,
        ),
    )

maker(
    ('rh', 21),
    baca.make_monads('1'),
    baca.staff_positions(
        [-2],
        allow_repeats=True,
        ),
    )

maker(
    ('rh', 22),
    baca.make_monads('1'),
    baca.staff_positions(
        [-4],
        allow_repeats=True,
        ),
    )

maker(
    ('rh', 23),
    baca.make_monads('1'),
    baca.staff_positions(
        [-4],
        allow_repeats=True,
        ),
    )

maker(
    ('rh', 24),
    baca.make_monads('1'),
    baca.staff_positions(
        [-6],
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
