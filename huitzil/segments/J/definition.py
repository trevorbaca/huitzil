import abjad
import baca
import os
import naehte
from abjadext import rmakers


###############################################################################
##################################### [J] #####################################
###############################################################################

maker = baca.SegmentMaker(
    activate=[
        abjad.Tags().LOCAL_MEASURE_NUMBER_MARKUP,
        abjad.Tags().STAGE_NUMBER_MARKUP,
        ],
    first_segment=True,
    phantom=True,
    segment_directory=abjad.Path(os.path.realpath(__file__)).parent,
    time_signatures=[
        (7, 8),
#        (6, 8), 
#        (5, 4),
#        (6, 8),
#        (5, 4), (4, 4), (2, 4),
#        (4, 4),
        ],
    validate_measure_count=1,
    )

maker(
    'Global_Skips',
    baca.metronome_mark(
        '78',
        selector=baca.leaf(1 - 1),
        ),
    )
