import abjad
import baca
import huitzil
import os
from abjadext import rmakers


###############################################################################
##################################### [J] #####################################
###############################################################################

time_signatures = [
    (1, 2), (1, 2), (1, 2), (1, 2), (1, 2), (1, 2), (1, 2),
    (1, 2), (1, 2), (3, 2),
    ]

maker = baca.SegmentMaker(
    activate=[
        abjad.const.CLOCK_TIME,
        abjad.const.LOCAL_MEASURE_NUMBER,
        ],
    clock_time_extra_offset=(0, 13),
    final_segment=True,
    segment_directory=abjad.Path(os.path.realpath(__file__)).parent,
    time_signatures=time_signatures,
    validate_measure_count=10,
    )

# skips

maker(
    'Global_Skips',
    baca.metronome_mark(
        '66',
        selector=baca.leaf(1 - 1),
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
    ('vc', -1),
    baca.chunk(
        baca.mark(r'\huitzil-colophon-markup'),
        baca.rehearsal_mark_down(),
        baca.rehearsal_mark_padding(6),
        selector=baca.leaves().rleak()[-1],
        ),
    )

# vcr

# rh

maker(
    'rh',
    baca.dls_staff_padding(5),
    baca.literal([
        r'\stopStaff',
        r'\once \override RHStaff.StaffSymbol.line-positions ='
        " #'(8.2 8 7.8 6 4 2 0 -2 -4 -5.8 -6 -6.2)"
        r'\startStaff',
        ]),
    baca.stem_tremolo(
        selector=baca.pleaves(),
        ),
    baca.text_script_parent_alignment_x(0),
    baca.text_script_self_alignment_x(0),
    baca.text_script_staff_padding(4),
    )

maker(
    ('rh', (1, 10)),
    baca.hairpin(
        'mp > pp <',
        abjad.tweak(True).to_barline,
        final_hairpin=False,
        pieces=baca.clparts([1]),
        ),
    )

maker(
    ('rh', (1, 12)),
    baca.make_monads('1/2 1/2 1/2 1/2 1/2 1/2 1/2 1/2 1/2 3/2'),
    baca.staff_positions(
        [6],
        allow_repeats=True,
        ),
    baca.text_spanner(
        'larg. => strett. =>',
        abjad.tweak(6).staff_padding,
        pieces=baca.clparts([1]),
        ),
    )
