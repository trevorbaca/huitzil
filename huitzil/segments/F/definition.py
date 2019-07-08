import abjad
import baca
import huitzil
import os
from abjadext import rmakers


###############################################################################
##################################### [F] #####################################
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
    baca.suite(
        baca.pitches('Bb1 Cb2'),
        baca.chunk(
            baca.repeat_tie_to(allow_rest=True),
            baca.repeat_tie_extra_offset((-1.5, 0)),
            ),
        ),
    baca.skeleton("{ c'1 * 107/30 c'1 * 1/5 }"),
    )

maker(
    ('vc', 14),
    baca.chunk(
        baca.clef('treble'),
        baca.clef_shift('treble'),
        ),
    baca.literal([
        r'\stopStaff',
        r"\once \override Staff.StaffSymbol.line-positions = #'(4 -4)"
        r'\startStaff',
        ]),
    baca.note_head_duration_log(2),
    baca.note_head_no_ledgers(True),
    baca.note_head_style('do'),
    baca.skeleton("{ c'2 }"),
    baca.staff_position(7),
    )

# vcr

maker(
    ('vcr', [1, 15]),
    baca.mmrest_transparent(),
    )

# rh

maker(
    'rh',
    baca.only_score(
        baca.breathe(
            abjad.tweak(False).X_extent,
            abjad.tweak((0, 5)).extra_offset,
            ),
        ),
    baca.only_segment(
        baca.breathe(
            abjad.tweak(False).X_extent,
            abjad.tweak((-1.5, 2)).extra_offset,
            ),
        ),
    baca.only_segment(
        baca.chunk(
            baca.literal(r'\override DynamicLineSpanner.staff-padding = 7'),
            baca.literal([
                r'\stopStaff',
                r'\once \override RHStaff.StaffSymbol.line-positions ='
                " #'(8.2 8 7.8 6 4 2 0 -2 -4 -5.8 -6 -6.2)",
                r'\startStaff',
                ]),
            ),
        ),
    baca.stem_tremolo(
        selector=baca.pleaves(),
        ),
    baca.text_script_parent_alignment_x(0),
    baca.text_script_self_alignment_x(0),
    baca.text_script_staff_padding(4),
    )

maker(
    ('rh', 1),
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
    # FUTURE: use after LilyPond fixes DynamicLineSpanner bug:
    #baca.hairpin(
    #    'mp > p <',
    #    bookend=False,
    #    pieces=baca.lparts([2, 1, 3, 2, 2, 1, 3, 2, 2, 1, 3, 2 + 1]),
    #    selector=baca.leaves().rleak(),
    #    ),
    # FUTURE: replace after LilyPond fixes DynamicLineSpanner bug:
    baca.hairpin(
        'mp > p <',
        #bookend=False,
        pieces=baca.lparts([2, 1, 3, 2, 2, 1, 3, 2, 2, 1, 4]),
        selector=baca.leaves()[:-1],
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
    baca.markup(
        r'\huitzil-directly-on-bridge-markup',
        abjad.tweak(-0.9).self_alignment_X,
        abjad.tweak(2).staff_padding,
        literal=True,
        ),
    )

maker(
    ('rh', (14, 23)),
    # FUTURE: use this once LilyPond fixes DynamicLineSpanner bug:
    #baca.hairpin(
    #    'mp -- p -- pp -- p -- !',
    #    pieces=baca.mgroups([2, 2, 4, 2 + 1]),
    #    selector=baca.leaves().rleak(),
    #    ),
    # FUTURE: replace this once LilyPond fixes DynamicLineSpanner bug:
    baca.hairpin(
        'mp -- p -- pp -- p',
        bookend=False,
        pieces=baca.mgroups([2, 2, 4, 2 + 1]),
        selector=baca.leaves().rleak(),
        ),
    baca.literal([
        r'\stopStaff',
        r'\once \override RHStaff.StaffSymbol.line-positions ='
        " #'(8.2 8 7.8 -5.8 -6 -6.2)",
        r'\startStaff',
        ]),
    baca.staff_position(8),
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
        '(trem. mod.) => più stretto => più largo => più stretto => mod.',
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

maker(
    ('rh', 22),
    baca.only_segment(
        baca.hairpin_to_barline(),
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
