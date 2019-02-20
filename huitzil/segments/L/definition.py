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
    (4, 4),
    ]

maker = baca.SegmentMaker(
    first_segment=False,
    phantom=True,
    segment_directory=abjad.Path(os.path.realpath(__file__)).parent,
    time_signatures=time_signatures,
    validate_measure_count=1,
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
    baca.literal(r'\override Staff.TimeSignature.stencil = ##f'),
    baca.pitch('B1'),
    baca.rhythm("{ c'1 }"),
    )

maker(
    ('RH_Music_Voice', 1),
    baca.literal(r'\override Staff.StaffSymbol.line-count = #7'),
    baca.rhythm("{ c1 }"),
    baca.staff_position(6),
    )
