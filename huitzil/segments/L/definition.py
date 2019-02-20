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
    ('Cello_Music_Voice', 1),
    baca.pitch('B1'),
    baca.rhythm("{ c'1 }"),
    )

maker(
    ('Cello_Music_Voice', 2),
    baca.literal(r'\override MultiMeasureRest.transparent = ##t'),
    )

maker(
    ('Cello_Rest_Voice', 2),
    baca.literal(r'\override MultiMeasureRest.transparent = ##t'),
    )

maker(
    ('RH_Music_Voice', 1),
    baca.literal(r'\override Staff.StaffSymbol.line-count = #7'),
    baca.make_monads('1/2  1/4  1/4'),
    baca.staff_positions(
        [6, 6, 4],
        allow_repeats=True,
        ),
    )

#maker(
#    ('RH_Music_Voice', (1, 3)),
#    baca.glissando(
#        allow_repeats=True,
#        selector=baca.leaves(),
#        ),
#    baca.stem_tremolo(
#        selector=baca.pleaves(),
#        ),
#    )

maker(
    ('RH_Music_Voice', 2),
    baca.make_monads('1/2  1/4  1/3'),
    baca.staff_positions(
        [6, 6, 4],
        allow_repeats=True,
        ),
    )

maker(
    ('RH_Music_Voice', 3),
    baca.make_monads('1/2  1/4  1/4'),
    baca.staff_positions(
        [6, 6, 4],
        allow_repeats=True,
        ),
    )

maker(
    ('RH_Music_Voice', 4),
    baca.make_monads('2/3  1/4  1/4'),
    baca.staff_positions(
        [4, 4, 2],
        allow_repeats=True,
        ),
    )

maker(
    ('RH_Music_Voice', 5),
    baca.make_monads('1/2  1/3  1/3  1/5  1/5  1/5'),
    baca.staff_positions(
        [4, 4, 2, 6, 4, 2],
        allow_repeats=True,
        ),
    )

maker(
    ('RH_Music_Voice', 6),
    baca.make_monads('1/2  1/3  1/3  1/4  1/4  1/4'),
    baca.staff_positions(
        [4, 4, 2, 6, 4, 2],
        allow_repeats=True,
        ),
    )

maker(
    ('RH_Music_Voice', 7),
    baca.make_monads('1'),
    baca.staff_positions(
        [2],
        allow_repeats=True,
        ),
    )

maker(
    ('RH_Music_Voice', 8),
    baca.make_monads('1/2  1/4  1/4'),
    baca.staff_positions(
        [2, 2, 0],
        allow_repeats=True,
        ),
    )

maker(
    ('RH_Music_Voice', 9),
    baca.make_monads('1/2  1/4'),
    baca.staff_positions(
        [2],
        allow_repeats=True,
        ),
    )

maker(
    ('RH_Music_Voice', 10),
    baca.make_monads('1/3  1/3'),
    baca.staff_positions(
        [2, 6],
        allow_repeats=True,
        ),
    )

maker(
    ('RH_Music_Voice', 11),
    baca.make_monads('1/3  1/3  1/5  1/5  1/5  1/5'),
    baca.staff_positions(
        [4, 2, 6, 4, 2, 0],
        allow_repeats=True,
        ),
    )

maker(
    ('RH_Music_Voice', 12),
    baca.make_monads('1'),
    baca.staff_positions(
        [0],
        allow_repeats=True,
        ),
    )

maker(
    ('RH_Music_Voice', 13),
    baca.make_monads('1'),
    baca.staff_positions(
        [0],
        allow_repeats=True,
        ),
    )

maker(
    ('RH_Music_Voice', 14),
    baca.make_monads('1'),
    baca.staff_positions(
        [-2],
        allow_repeats=True,
        ),
    )

maker(
    ('RH_Music_Voice', 15),
    baca.make_monads('1  1'),
    baca.staff_positions(
        [-2, -4],
        allow_repeats=True,
        ),
    )

maker(
    ('RH_Music_Voice', 16),
    baca.make_monads('1/3'),
    baca.staff_positions(
        [0],
        allow_repeats=True,
        ),
    )

maker(
    ('RH_Music_Voice', 17),
    baca.make_monads('1/3  1/3  1/3'),
    baca.staff_positions(
        [6, 4, 2],
        allow_repeats=True,
        ),
    )

maker(
    ('RH_Music_Voice', 18),
    baca.make_monads('1/5  1/5  1/5  1/5'),
    baca.staff_positions(
        [6, 4, 2, 0],
        allow_repeats=True,
        ),
    )

maker(
    ('RH_Music_Voice', 19),
    baca.make_monads('1  1'),
    baca.staff_positions(
        [0],
        allow_repeats=True,
        ),
    )

maker(
    ('RH_Music_Voice', 20),
    baca.make_monads('1'),
    baca.staff_positions(
        [-2],
        allow_repeats=True,
        ),
    )

maker(
    ('RH_Music_Voice', 21),
    baca.make_monads('1'),
    baca.staff_positions(
        [-2],
        allow_repeats=True,
        ),
    )

maker(
    ('RH_Music_Voice', 22),
    baca.make_monads('1'),
    baca.staff_positions(
        [-4],
        allow_repeats=True,
        ),
    )

maker(
    ('RH_Music_Voice', 23),
    baca.make_monads('1'),
    baca.staff_positions(
        [-4],
        allow_repeats=True,
        ),
    )

maker(
    ('RH_Music_Voice', 24),
    baca.make_monads('1'),
    baca.staff_positions(
        [-6],
        allow_repeats=True,
        ),
    )
