import abjad
import baca
import huitzil
import os
from abjadext import rmakers


###############################################################################
##################################### [D] #####################################
###############################################################################

time_signatures = [
    (1, 2), (1, 2), (2, 3), (1, 2), (4, 5), (1, 2), (2, 3),
    (1, 2), (4, 5), (1, 2), (2, 3), (1, 2), (4, 5), (1, 2),
    (2, 3), (1, 2), (4, 5), (1, 2), (1, 2), (1, 2), (1, 2),
    (1, 2), (1, 2),
    ]

maker = baca.SegmentMaker(
    activate=[
        abjad.const.CLOCK_TIME,
        abjad.const.LOCAL_MEASURE_NUMBER,
        ],
    clock_time_extra_offset=(0, 13),
    segment_directory=abjad.Path(os.path.realpath(__file__)).parent,
    time_signatures=time_signatures,
    validate_measure_count=23,
    )

maker(
    'Global_Skips',
    baca.metronome_mark(
        '88',
        selector=baca.leaf(18 - 1),
        ),
    baca.metronome_mark(
        baca.Ritardando(),
        selector=baca.leaf(18 - 1),
        ),
    baca.metronome_mark(
        '44',
        selector=baca.leaf(22 - 1),
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
    ('vc', (8, 13)),
    baca.literal(r'\parenthesize'),
    baca.pitches('B1 C2'),
    baca.rhythm("{ c'1 * 107/30 c'1 * 1/5 }"),
    )

maker(
    ('vc', 14),
    baca.clef('treble'),
    baca.note_head_duration_log(2),
    baca.note_head_no_ledgers(True),
    baca.note_head_style('do'),
    baca.rhythm("{ c'2 }"),
    baca.staff_position(8),
    )

# vcr

maker(
    ('vcr', [1, 15]),
    baca.mmrest_transparent(),
    )

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
    ('rh', 1),
    baca.hairpin(
        'f -- !',
        abjad.tweak(True).to_barline,
        selector=baca.leaves().rleak(),
        ),
    baca.make_monads('1/8  1/8  1/8  1/8'),
    baca.markup(
        r'\baca-ffz-markup',
        direction=abjad.Down,
        literal=True,
        selector=baca.leaves(),
        ),
    baca.staff_positions(
        [-6, -4, -2, 0],
        allow_repeats=True,
        ),
    )

maker(
    ('rh', (1, 17)),
    baca.text_spanner(
        'trem. mod. ||',
        abjad.tweak(6).staff_padding,
        bookend=False,
        ),
    )

maker(
    ('rh', 2),
    baca.make_monads('1/2'),
    baca.markup(
        r'\baca-ffz-markup',
        direction=abjad.Down,
        literal=True,
        selector=baca.leaves(),
        ),
    baca.staff_positions(
        [0],
        allow_repeats=True,
        ),
    )

maker(
    ('rh', (2, 13)),
    baca.hairpin(
        'mp > p <',
        bookend=False,
        pieces=baca.lparts([2, 1, 3, 2, 2, 1, 3, 2, 2, 1, 3, 2 + 1]),
        selector=baca.leaves().rleak(),
        ),
    )

maker(
    ('rh', 3),
    baca.make_monads('1/3  1/3'),
    baca.markup(
        r'\baca-fz-markup',
        direction=abjad.Down,
        literal=True,
        selector=baca.leaf(0),
        ),
    baca.markup(
        r'\baca-fffz-markup',
        direction=abjad.Down,
        literal=True,
        selector=baca.leaf(1),
        ),
    baca.staff_positions(
        [0],
        allow_repeats=True,
        ),
    )

maker(
    ('rh', 4),
    baca.make_monads('1/2'),
    baca.markup(
        r'\baca-ffz-markup',
        direction=abjad.Down,
        literal=True,
        ),
    baca.staff_positions(
        [0],
        allow_repeats=True,
        ),
    )

maker(
    ('rh', 5),
    baca.make_monads('1/5  1/5  1/5  1/5'),
    baca.markup(
        r'\baca-mfz-markup',
        direction=abjad.Down,
        literal=True,
        selector=baca.leaf(0),
        ),
    baca.markup(
        r'\baca-fz-markup',
        direction=abjad.Down,
        literal=True,
        selector=baca.leaf(1),
        ),
    baca.markup(
        r'\baca-ffz-markup',
        direction=abjad.Down,
        literal=True,
        selector=baca.leaf(2),
        ),
    baca.markup(
        r'\baca-fffz-markup',
        direction=abjad.Down,
        literal=True,
        selector=baca.leaf(3),
        ),
    baca.staff_positions(
        [0],
        allow_repeats=True,
        ),
    )

maker(
    ('rh', 6),
    baca.make_monads('1/2'),
    baca.markup(
        r'\baca-ffz-markup',
        direction=abjad.Down,
        literal=True,
        ),
    baca.staff_positions(
        [0],
        allow_repeats=True,
        ),
    )

maker(
    ('rh', 7),
    baca.make_monads('1/3  1/3'),
    baca.markup(
        r'\baca-fz-markup',
        direction=abjad.Down,
        literal=True,
        ),
    baca.markup(
        r'\baca-fffz-markup',
        direction=abjad.Down,
        literal=True,
        selector=baca.leaf(1),
        ),
    baca.staff_positions(
        [0],
        allow_repeats=True,
        ),
    )

maker(
    ('rh', 8),
    baca.make_monads('1/2'),
    baca.markup(
        r'\baca-ffz-markup',
        direction=abjad.Down,
        literal=True,
        ),
    baca.staff_positions(
        [0],
        allow_repeats=True,
        ),
    )

maker(
    ('rh', 9),
    baca.make_monads('1/5  1/5  1/5  1/5'),
    baca.markup(
        r'\baca-mfz-markup',
        direction=abjad.Down,
        literal=True,
        ),
    baca.markup(
        r'\baca-fz-markup',
        direction=abjad.Down,
        literal=True,
        selector=baca.leaf(1),
        ),
    baca.markup(
        r'\baca-ffz-markup',
        direction=abjad.Down,
        literal=True,
        selector=baca.leaf(2),
        ),
    baca.markup(
        r'\baca-fffz-markup',
        direction=abjad.Down,
        literal=True,
        selector=baca.leaf(3),
        ),
    baca.staff_positions(
        [0],
        allow_repeats=True,
        ),
    )

maker(
    ('rh', 10),
    baca.make_monads('1/2'),
    baca.markup(
        r'\baca-ffz-markup',
        direction=abjad.Down,
        literal=True,
        ),
    baca.staff_positions(
        [0],
        allow_repeats=True,
        ),
    )

maker(
    ('rh', 11),
    baca.make_monads('1/3  1/3'),
    baca.markup(
        r'\baca-fz-markup',
        direction=abjad.Down,
        literal=True,
        ),
    baca.markup(
        r'\baca-fffz-markup',
        direction=abjad.Down,
        literal=True,
        selector=baca.leaf(1),
        ),
    baca.staff_positions(
        [0],
        allow_repeats=True,
        ),
    )

maker(
    ('rh', 12),
    baca.make_monads('1/2'),
    baca.markup(
        r'\baca-ffz-markup',
        direction=abjad.Down,
        literal=True,
        ),
    baca.staff_positions(
        [0],
        allow_repeats=True,
        ),
    )

maker(
    ('rh', 13),
    baca.make_monads('1/5  1/5  1/5  1/5'),
    baca.markup(
        r'\baca-mfz-markup',
        direction=abjad.Down,
        literal=True,
        ),
    baca.markup(
        r'\baca-fz-markup',
        direction=abjad.Down,
        literal=True,
        selector=baca.leaf(1),
        ),
    baca.markup(
        r'\baca-ffz-markup',
        direction=abjad.Down,
        literal=True,
        selector=baca.leaf(2),
        ),
    baca.markup(
        r'\baca-fffz-markup',
        direction=abjad.Down,
        literal=True,
        selector=baca.leaf(3),
        ),
    baca.staff_positions(
        [0],
        allow_repeats=True,
        ),
    )

maker(
    ('rh', 14),
    baca.make_monads('1/2'),
    baca.markup(
        r'\baca-ffz-markup',
        direction=abjad.Down,
        literal=True,
        ),
    )

maker(
    ('rh', (14, 23)),
    baca.hairpin(
        'mp -- p -- pp -- p -- !',
        pieces=baca.mgroups([2, 2, 4, 2 + 1]),
        selector=baca.leaves().rleak(),
        ),
    baca.staff_position(7),
    )

maker(
    ('rh', 15),
    baca.make_monads('1/3  1/3'),
    baca.markup(
        r'\baca-fz-markup',
        direction=abjad.Down,
        literal=True,
        ),
    baca.markup(
        r'\baca-fffz-markup',
        direction=abjad.Down,
        literal=True,
        selector=baca.leaf(1),
        ),
    )

maker(
    ('rh', 16),
    baca.make_monads('1/2'),
    baca.markup(
        r'\baca-ffz-markup',
        direction=abjad.Down,
        literal=True,
        ),
    )

maker(
    ('rh', 17),
    baca.make_monads('1/5  1/5  1/5  1/5'),
    baca.markup(
        r'\baca-mfz-markup',
        direction=abjad.Down,
        literal=True,
        ),
    baca.markup(
        r'\baca-fz-markup',
        direction=abjad.Down,
        literal=True,
        selector=baca.leaf(1),
        ),
    baca.markup(
        r'\baca-ffz-markup',
        direction=abjad.Down,
        literal=True,
        selector=baca.leaf(2),
        ),
    baca.markup(
        r'\baca-fffz-markup',
        direction=abjad.Down,
        literal=True,
        selector=baca.leaf(3),
        ),
    )

maker(
    ('rh', (18, 22)),
    baca.text_spanner(
        'sub. trem. più stretto => più largo => più stretto => più largo =>'
            ' trem. mod.',
        abjad.tweak(6).staff_padding,
        pieces=baca.lparts([1, 1, 1, 1 + 1]),
        ),
    )

maker(
    ('rh', (18, 23)),
    baca.make_monads('1/2  1/2  1/2  1/2  1/2  1/2'),
    baca.markup(
        r'\baca-ffz-markup',
        direction=abjad.Down,
        literal=True,
        ),
    baca.markup(
        r'\baca-fz-markup',
        direction=abjad.Down,
        literal=True,
        selector=baca.leaf(1),
        ),
    baca.markup(
        r'\baca-fz-markup',
        direction=abjad.Down,
        literal=True,
        selector=baca.leaf(2),
        ),
    baca.markup(
        r'\baca-mfz-markup',
        direction=abjad.Down,
        literal=True,
        selector=baca.leaf(3),
        ),
    baca.markup(
        r'\baca-mfz-markup',
        direction=abjad.Down,
        literal=True,
        selector=baca.leaf(4),
        ),
    baca.markup(
        r'\baca-mpz-markup',
        direction=abjad.Down,
        literal=True,
        selector=baca.leaf(5),
        ),
    )

# stage 2 (after staff position settings)

maker(
    ('vc', (8, 14)),
    baca.glissando(
        selector=baca.leaves(),
        ),
    )

maker(
    'rh',
    baca.glissando(
        selector=baca.leaves(),
        ),
    )
