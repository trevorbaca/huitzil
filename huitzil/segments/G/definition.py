import abjad
import baca
import huitzil
import os
from abjadext import rmakers


###############################################################################
##################################### [G] #####################################
###############################################################################

time_signatures = [
    (1, 4), (3, 16), (1, 4), (3, 16), (1, 4), (3, 16), (1, 4), (3, 16),
    (1, 4), (3, 16), (1, 4), (3, 16), (1, 4), (3, 16), (1, 4), (3, 16),
    (1, 4), (3, 16), (1, 4), (3, 16), (1, 4), (3, 16), (1, 4), (3, 16),
    (1, 1), (1, 1),
    ]

maker = baca.SegmentMaker(
    activate=[
        abjad.const.CLOCK_TIME,
        abjad.const.LOCAL_MEASURE_NUMBER,
        ],
    clock_time_extra_offset=(0, 13),
    segment_directory=abjad.Path(os.path.realpath(__file__)).parent,
    time_signatures=time_signatures,
    validate_measure_count=26,
    )

maker(
    'Global_Skips',
    baca.metronome_mark(
        '88',
        selector=baca.leaf(1 - 1),
        ),
    baca.metronome_mark(
        '88',
        selector=baca.leaf(25 - 1),
        ),
    baca.metronome_mark(
        baca.Ritardando(),
        selector=baca.leaf(25 - 1),
        ),
    )

# vc

maker(
    'vc',
    baca.chunk(
        baca.clef('bass'),
        # TODO: make this have no visual effect in segment:
        baca.not_segment(
            baca.clef_shift('bass'),
            ),
        ),
    baca.mmrest_transparent(),
    baca.new(
        baca.bar_line_transparent(),
        baca.span_bar_transparent(),
        selector=baca.leaves(),
        ),
    baca.pitch(
        'A1',
        selector=baca.leaves().rleak()[-1],
        ),
    baca.time_signature_stencil_false(),
    )

maker(
    ('vc', 1),
    baca.markup(
        baca.markups.string_number(3),
        abjad.tweak(2.5).padding,
        direction=abjad.Down,
        ),
    baca.pitch('A2'),
    baca.rhythm("{ c'1 * 1/4 }"),
    )

maker(
    ('vc', (14, 24)),
    baca.literal(r'\parenthesize'),
    baca.pitch('A2'),
    baca.rhythm("{ c'1 * 19/8 }"),
    )

maker(
    ('vc', (25, 26)),
    baca.markup(
        'III→IV',
        abjad.tweak(2.5).padding,
        abjad.tweak(0).parent_alignment_X,
        abjad.tweak(-0.05).self_alignment_X,
        direction=abjad.Down,
        ),
    baca.pitch('G2'),
    baca.rhythm("{ c'1 * 2 }"),
    )

# vcr

maker(
    ('vcr', 2),
    baca.mmrest_transparent(),
    )

# rh

maker(
    'rh',
    baca.chunk(
        baca.bar_extent_persistent((-4, 4)),
        baca.literal(
            r'\once \override RHStaff.StaffSymbol.line-positions ='
            " #'(8.2 8 7.8 -5.8 -6 -6.2 -8 -10 -12 -14 -16 -17.8 -18 -18.2)"
            ),
        baca.staff_lines(14),
        ),
    baca.dls_staff_padding(7),
    baca.markup(
        r'\huitzil-ascending-fingerboard-markup',
        abjad.tweak(-1).self_alignment_X,
        abjad.tweak(2).staff_padding,
        literal=True,
        ),
    baca.stem_tremolo(
        selector=baca.pleaves(),
        ),
    baca.text_script_parent_alignment_x(0),
    baca.text_script_self_alignment_x(0),
    baca.text_script_staff_padding(4),
    )

maker(
    ('rh', (1, 8)),
    baca.make_monads('1/4 3/16 1/4 3/16 1/4 3/16 1/4 3/16'),
    baca.staff_positions(
        [-6, -6, -8, -8, -10, -10, -12, -12],
        allow_repeats=True,
        ),
    )

maker(
    ('rh', (1, 20)),
    baca.markup(
        r'\baca-fz-markup',
        direction=abjad.Down,
        literal=True,
        selector=baca.leaves(),
        ),
    )

maker(
    ('rh', (1, 13)),
    baca.hairpin('mp > pp'),
    )

maker(
    ('rh', (14, 26)),
    baca.hairpin('(pp) < ff'),
    )

maker(
    ('rh', (9, 16)),
    baca.make_monads('1/4 3/16 1/4 3/16 1/4 3/16 1/4 3/16'),
    baca.staff_positions(
        [-14, -14, -16, -16, -18, -18, -16, -16],
        allow_out_of_range=True,
        allow_repeats=True,
        ),
    )

maker(
    ('rh', 13),
    baca.markup(
        r'\huitzil-as-close-to-lh-markup',
        abjad.tweak(-0.65).self_alignment_X,
        abjad.tweak(2).staff_padding,
        literal=True,
        ),
    )

maker(
    ('rh', 15),
    baca.markup(
        r'\huitzil-descending-fingerboard-markup',
        abjad.tweak(-1).self_alignment_X,
        abjad.tweak(2).staff_padding,
        literal=True,
        ),
    )

maker(
    ('rh', (17, 24)),
    baca.make_monads('1/4 3/16 1/4 3/16 1/4 3/16 1/4 3/16'),
    baca.staff_positions(
        [-14, -14, -12, -12, -10, -10, -8, -8],
        allow_repeats=True,
        ),
    )

maker(
    ('rh', (25, 26)),
    baca.hairpin(
        '>',
        right_broken=True,
        selector=baca.leaves()[-1:].rleak(),
        ),
    baca.literal([
        r'\stopStaff',
        r'\once \override RHStaff.StaffSymbol.line-positions ='
        " #'(8.2 8 7.8 6 4 2 0 -2 -4 -5.8 -6 -6.2)"
        r'\startStaff',
        ]),
    baca.make_monads('1 1'),
    baca.markup(
        r'\huitzil-directly-above-end-of-fingerboard-markup',
        abjad.tweak(-1).self_alignment_X,
        abjad.tweak(2).staff_padding,
        literal=True,
        ),
    baca.staff_positions(
        [-6, 0, 6],
        selector=baca.leaves().rleak(),
        ),
    )

# stage 2 (after staff position commands)

maker(
    ('vc', (14, 24)),
    baca.glissando(
        selector=baca.leaves().rleak(),
        ),
    )

maker(
    ('vc', (25, 26)),
    baca.glissando(
        right_broken=True,
        selector=baca.leaves().rleak(),
        ),
    )

maker(
    'rh',
    baca.glissando(
        right_broken=True,
        selector=baca.leaves().rleak(),
        ),
    )
