import abjad
import baca
import huitzil
import os
from abjadext import rmakers


###############################################################################
##################################### [K] #####################################
###############################################################################

time_signatures = [
    (1, 1), (1, 1), (1, 1), (1, 1), (1, 1), (1, 1), (1, 1),
    (1, 1), (1, 1), (1, 1), (1, 1), (1, 1),
    ]

maker = baca.SegmentMaker(
    activate=[
        abjad.const.LOCAL_MEASURE_NUMBER,
        ],
    final_segment=True,
    segment_directory=abjad.Path(os.path.realpath(__file__)).parent,
    time_signatures=time_signatures,
    validate_measure_count=12,
    )

maker(
    'Global_Skips',
    baca.metronome_mark(
        '44',
        selector=baca.leaf(1 - 1),
        ),
    baca.metronome_mark(
        baca.Accelerando(),
        selector=baca.leaf(1 - 1),
        ),
    baca.metronome_mark(
        '88',
        selector=baca.leaf(2 - 1),
        ),
    baca.metronome_mark(
        baca.Ritardando(),
        selector=baca.leaf(2 - 1),
        ),
    baca.metronome_mark(
        '44',
        selector=baca.leaf(3 - 1),
        ),
    baca.metronome_mark(
        baca.Accelerando(),
        selector=baca.leaf(3 - 1),
        ),
    baca.metronome_mark(
        '88',
        selector=baca.leaf(4 - 1),
        ),
    baca.metronome_mark(
        baca.Ritardando(),
        selector=baca.leaf(4 - 1),
        ),
    baca.metronome_mark(
        '44',
        selector=baca.leaf(5 - 1),
        ),
    baca.metronome_mark(
        baca.Accelerando(),
        selector=baca.leaf(5 - 1),
        ),
    baca.metronome_mark(
        '88',
        selector=baca.leaf(6 - 1),
        ),
    baca.metronome_mark(
        baca.Ritardando(),
        selector=baca.leaf(6 - 1),
        ),
    baca.metronome_mark(
        '44',
        selector=baca.leaf(7 - 1),
        ),
    baca.metronome_mark(
        baca.Accelerando(),
        selector=baca.leaf(7 - 1),
        ),
    baca.metronome_mark(
        '88',
        selector=baca.leaf(8 - 1),
        ),
    baca.metronome_mark(
        baca.Ritardando(),
        selector=baca.leaf(8 - 1),
        ),
    baca.metronome_mark(
        '44',
        selector=baca.leaf(9 - 1),
        ),
    baca.metronome_mark(
        baca.Accelerando(),
        selector=baca.leaf(9 - 1),
        ),
    baca.metronome_mark(
        '88',
        selector=baca.leaf(10 - 1),
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
    ('vc', 12),
    baca.chunk(
        baca.mark(r'\huitzil-colophon-markup'),
        baca.rehearsal_mark_down(),
        baca.rehearsal_mark_padding(6),
        baca.rehearsal_mark_self_alignment_x(abjad.Right),
        selector=baca.leaves().rleak()[-1],
        ),
    )

# vcr

# rh

maker(
    'rh',
    #baca.dls_staff_padding(7),
    baca.dls_staff_padding(5),
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
    baca.make_monads('1 1 1 1 1 1 1 1 1 1 1 1'),
    baca.staff_positions(
        [6],
        allow_repeats=True,
        ),
    )
