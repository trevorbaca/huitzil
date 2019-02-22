import abjad
import baca
import huitzil
import os
from abjadext import rmakers


###############################################################################
##################################### [P] #####################################
###############################################################################

### SEGMENT-MAKER ###

time_signatures = [
    (3, 4), (1, 3), (3, 4), (3, 4), (1, 3), (3, 4), (1, 2), (1, 3), (3, 4), (1, 2), (1, 3), (3, 4),
    (1, 1), (3, 4), (1, 3), (3, 4), (1, 2), (3, 4), (1, 3), (1, 1), (3, 4), (1, 3), (3, 4),
    (3, 4), (1, 3), (3, 4), (1, 2), (1, 3), (3, 4), (1, 2), (1, 3), (3, 4), (1, 1), (3, 4),
    (1, 3), (3, 4), (1, 2), (3, 4), (1, 3), (1, 1), (3, 4), (1, 3), (3, 4), (1, 2), (3, 4),
    (1, 3), (1, 1), (3, 4), (1, 2), (3, 4), (1, 3), (1, 1), (3, 4), (1, 3), (3, 4), (1, 2), (3, 4), (1, 3), (1, 1),
    ]

maker = baca.SegmentMaker(
    activate=[
        abjad.Tags().LOCAL_MEASURE_NUMBER_MARKUP,
        ],
    phantom=True,
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
#    baca.metronome_mark(
#        baca.Accelerando(),
#        selector=baca.leaf(13 - 1),
#        ),
#    baca.metronome_mark(
#        '66',
#        selector=baca.leaf(16 - 1),
#        ),
#    baca.metronome_mark(
#        '44',
#        selector=baca.leaf(17 - 1),
#        ),
#    baca.metronome_mark(
#        baca.Accelerando(),
#        selector=baca.leaf(17 - 1),
#        ),
#    baca.metronome_mark(
#        '88',
#        selector=baca.leaf(22 - 1),
#        ),
    )

# vc

maker(
    'vc',
    baca.clef('bass'),
    baca.new(
        baca.bar_line_transparent(),
        baca.span_bar_transparent(),
        selector=baca.leaves(),
        ),
    #baca.literal(r'\override Staff.TimeSignature.stencil = ##f'),
    )

maker(
    ('vc', 1),
    baca.pitch('A2'),
    baca.rhythm("{ c'1 * 3/4 }"),
    )

#maker(
#    ('vc', 2),
#    baca.literal(r'\override MultiMeasureRest.transparent = ##t'),
#    )
#
#maker(
#    ('vcr', 2),
#    baca.literal(r'\override MultiMeasureRest.transparent = ##t'),
#    )

# rh

maker(
    'rh',
    baca.bar_extent_persistent((-5, 5)),
    baca.dls_staff_padding(7),
    baca.staff_lines(11),
#    baca.stem_tremolo(
#        selector=baca.pleaves(),
#        ),
#    baca.text_script_parent_alignment_x(0),
#    baca.text_script_self_alignment_x(0),
#    baca.text_script_staff_padding(4),
    )

maker(
    ('rh', (1, 12)),
    baca.dynamic('ff'),
    baca.make_monads('3/4 1/3 3/4 3/4 1/3 3/4 1/2 1/3 3/4 1/2 1/3 3/4'),
    baca.staff_positions(
        [10],
        allow_repeats=True,
        ),
    )

maker(
    ('rh', (13, 23)),
    baca.make_monads('1 3/4 1/3 3/4 1/2 3/4 1/3 1 3/4 1/3 3/4'),
    baca.staff_positions(
        [10],
        allow_repeats=True,
        ),
    )

maker(
    ('rh', (24, 34)),
    baca.make_monads('3/4 1/3 3/4 1/2 1/3 3/4 1/2 1/3 3/4 1 3/4'),
    baca.staff_positions(
        [10],
        allow_repeats=True,
        ),
    )

maker(
    ('rh', (35, 45)),
    baca.make_monads('1/3 3/4 1/2 3/4 1/3 1 3/4 1/3 3/4 1/2 3/4'),
    baca.staff_positions(
        [10],
        allow_repeats=True,
        ),
    )

maker(
    ('rh', (46, 59)),
    baca.make_monads('1/3 1 3/4 1/2 3/4 1/3 1 3/4 1/3 3/4 1/2 3/4 1/3 1'),
    baca.staff_positions(
        [10],
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
