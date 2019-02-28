import abjad
import baca
import huitzil
import os
from abjadext import rmakers


###############################################################################
##################################### [I] #####################################
###############################################################################

### SEGMENT-MAKER ###

time_signatures = [
    (1, 1), (13, 12), (1, 1), (7, 6), (53, 30), (23, 12),
    (1, 1), (1, 1), (3, 4), (2, 3), (22, 15), (1, 1), (1, 1), (1, 1),
    (1, 1), (1, 1), (1, 3), (1, 1), (4, 5), (1, 1), (1, 1), (1, 1), (1, 1),
    (1, 1), (1, 1), (1, 1),
    ]

maker = baca.SegmentMaker(
    activate=[
        abjad.const.LOCAL_MEASURE_NUMBER,
        ],
    segment_directory=abjad.Path(os.path.realpath(__file__)).parent,
    time_signatures=time_signatures,
    validate_measure_count=26,
    )

maker(
    'Global_Skips',
    baca.metronome_mark(
        '44',
        selector=baca.leaf(1 - 1),
        ),
    baca.metronome_mark(
        '44',
        selector=baca.leaf(13 - 1),
        ),
    baca.metronome_mark(
        baca.Accelerando(),
        selector=baca.leaf(13 - 1),
        ),
    baca.metronome_mark(
        '66',
        selector=baca.leaf(16 - 1),
        ),
    baca.metronome_mark(
        '44',
        selector=baca.leaf(17 - 1),
        ),
    baca.metronome_mark(
        '44',
        selector=baca.leaf(21 - 1),
        ),
    baca.metronome_mark(
        baca.Accelerando(),
        selector=baca.leaf(21 - 1),
        ),
    baca.metronome_mark(
        '88',
        selector=baca.leaf(26 - 1),
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

# vcr

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
    baca.bar_extent_persistent((-3, 3)),
    baca.make_monads('1/2  1/4  1/4'),
    baca.staff_lines(7),
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
    ('rh', (1, 9)),
    baca.text_spanner(
        'trem. moderato ||',
        abjad.tweak(6).staff_padding,
        bookend=False,
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
    baca.text_spanner(
        '(trem. mod.) => trem. stretto',
        abjad.tweak(6).staff_padding,
        selector=baca.leaves()[:4].rleak(),
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
    ('rh', (12, 16)),
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
    ('rh', (13, 16)),
    baca.hairpin(
        'p < mf',
        ),
    baca.text_spanner(
        'sub. trem. mod. => più stretto => più largo => più stretto',
        abjad.tweak(6).staff_padding,
        pieces=baca.lparts([1, 1, 2]),
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
    baca.make_monads('1'),
    baca.staff_positions(
        [-2],
        allow_repeats=True,
        ),
    )

maker(
    ('rh', 16),
    baca.make_monads('1'),
    baca.staff_positions(
        [-4],
        allow_repeats=True,
        ),
    )

maker(
    ('rh', 17),
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
    ('rh', (17, 18)),
    baca.hairpin(
        'mp >',
        bookend=False,
        ),
    baca.text_spanner(
        'sub. trem. mod. => trem. stretto',
        abjad.tweak(6).staff_padding,
        selector=baca.leaves().rleak(),
        ),
    )

maker(
    ('rh', 18),
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
    ('rh', 19),
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
    ('rh', 20),
    baca.make_monads('1'),
    baca.staff_positions(
        [0],
        allow_repeats=True,
        ),
    )

maker(
    ('rh', 21),
    baca.make_monads('1'),
    baca.staff_positions(
        [0],
        allow_repeats=True,
        ),
    )

maker(
    ('rh', (20, 26)),
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
    ('rh', (21, 26)),
    baca.text_spanner(
        'sub. trem. mod. => più stretto => più largo => più stretto =>'
            ' più largo => più stretto',
        abjad.tweak(6).staff_padding,
        pieces=baca.lparts([1, 1, 1, 1, 2]),
        ),
    )

maker(
    ('rh', 22),
    baca.make_monads('1'),
    baca.staff_positions(
        [-2],
        allow_repeats=True,
        ),
    )

maker(
    ('rh', 23),
    baca.make_monads('1'),
    baca.staff_positions(
        [-2],
        allow_repeats=True,
        ),
    )

maker(
    ('rh', 24),
    baca.make_monads('1'),
    baca.staff_positions(
        [-4],
        allow_repeats=True,
        ),
    )

maker(
    ('rh', 25),
    baca.make_monads('1'),
    baca.staff_positions(
        [-4],
        allow_repeats=True,
        ),
    )

maker(
    ('rh', 26),
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
