import abjad
import baca
import huitzil
import os
from abjadext import rmakers


###############################################################################
##################################### [M] #####################################
###############################################################################

### SEGMENT-MAKER ###

time_signatures = [
    (1, 1), (1, 1), (4, 3), (1, 1), (8, 5), (1, 1), (4, 3),
    (1, 1), (8, 5), (1, 1), (4, 3), (1, 1), (8, 5), (1, 1),
    (4, 3), (1, 1), (8, 5), (1, 1), (1, 1), (1, 1), (1, 1),
    (1, 1), (1, 1),
    ]

maker = baca.SegmentMaker(
    activate=[
        abjad.Tags().LOCAL_MEASURE_NUMBER_MARKUP,
        ],
    phantom=True,
    segment_directory=abjad.Path(os.path.realpath(__file__)).parent,
    time_signatures=time_signatures,
    validate_measure_count=23,
    )

maker(
    'Global_Skips',
    )

# vc

maker(
    'vc',
    baca.new(
        baca.bar_line_transparent(),
        baca.span_bar_transparent(),
        selector=baca.leaves(),
        ),
    baca.literal(r'\override MultiMeasureRest.transparent = ##t'),
    baca.literal(r'\override Staff.TimeSignature.stencil = ##f'),
    )

#maker(
#    ('vc', 1),
#    baca.pitch('B1'),
#    baca.rhythm("{ c'1 }"),
#    )
#
#maker(
#    ('vcr', 2),
#    baca.literal(r'\override MultiMeasureRest.transparent = ##t'),
#    )

# rh

maker(
    'rh',
    baca.dls_staff_padding(7),
    baca.stem_tremolo(
        selector=baca.pleaves(),
        ),
#    baca.text_script_parent_alignment_x(0),
#    baca.text_script_self_alignment_x(0),
#    baca.text_script_staff_padding(4),
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

# stage 2 (after staff position settings)

#maker(
#    'rh',
#    baca.glissando(
#        selector=baca.leaves(),
#        ),
#    )
