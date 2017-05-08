# -*- coding: utf-8 -*-
import abjad
import huitzil
from huitzil.segments.abbreviations import *


segment_maker = huitzil.tools.FlightSegmentMaker(
    markup_leaves=False,
    name='flight F',
    pitches=[
        (0, 'A2'),
        (20, 'G2'),
        (24, 'G2()'),
        (28, 'A1'),
        ],
    staff_line_count=11
    )

segment_maker.lh_glissandi = [
    (0, 1),
    (2, 3),
    ]

segment_maker.notes = [
    (11, '1/1', 'fz'),
    bar,
    (11, '3/4', None),
    bar,
    (10, '3/4', 'fz'),
    bar,
    (10, '1/1', None),
    bar,
    (9, '1/1', 'fz'),
    bar,
    (9, '3/4', None),
    bar,
    (8, '3/4', 'fz'),
    bar,
    (8, '1/1', None),
    bar,
    (7, '1/1', 'fz'),
    bar,
    (7, '3/4', None),
    bar,
    (6, '3/4', 'fz'),
    bar,
    (6, '1/1', None),
    bar,
    (5, '1/1', 'fz'),
    bar,
    (5, '3/4', None),
    bar,
    (4, '3/4', 'fz'),
    bar,
    (4, '1/1', None),
    bar,
    (3, '1/1', 'fz'),
    bar,
    (3, '3/4', None),
    bar,
    (2, '3/4', 'fz'),
    bar,
    (2, '1/1', None),
    bar,
    # G2
    (1, '1/1', 'fffz'),
    bar,
    (1, '1/1', 'fffz'),
    bar,
    (1, '1/1', 'fffz'),
    bar,
    (1, '1/1', 'fffz'),
    bar,
    # descent
    (1, '1/1', 'fffz'),
    bar,
    (1, '1/1', None),
    bar,
    (1, '1/1', None),
    bar,
    (1, '1/1', None),
    bar,
    # A2
    (1, '1/1', 'fffz'),
    bar,
    (1, '1/1', 'fffz'),
    bar,
    (1, '1/1', 'fffz'),
    bar,
    (1, '1/1', 'fffz'),
    bar,
    ]

segment_maker.glissando_break_indices = [
    ]

segment_maker.tempo_specifier = [
    (0, abjad.Accelerando()),
    (3, quarter_88),
    (4, quarter_66),
    (4, abjad.Accelerando()),
    (7, quarter_88),
    (8, quarter_66),
    (8, abjad.Accelerando()),
    (11, quarter_88),
    (12, quarter_66),
    (12, abjad.Accelerando()),
    (15, quarter_88),
    (16, quarter_66),
    (16, abjad.Accelerando()),
    (19, quarter_88),
    (24, quarter_66),
    (24, abjad.Accelerando()),
    (27, quarter_88),
    (28, abjad.Ritardando()),
    (31, quarter_66),
    ]

segment_maker.tremolo_map = [
    ]

segment_maker.underlying_dynamics = [
    (0, 'p'),
    (0, crescendo),
    (3, 'mf'),
    (3, decrescendo),
    (4, 'p'),
    (4, crescendo),
    (7, 'mf'),
    (7, decrescendo),
    (8, 'p'),
    (8, crescendo),
    (11, 'mf'),
    (11, decrescendo),
    (12, 'p'),
    (12, crescendo),
    (15, 'mf'),
    (15, decrescendo),
    (16, 'p'),
    (16, crescendo),
    (22, 'ff'),
    (24, 'mf'),
    (24, crescendo),
    (28, 'ff'),
    (28, decrescendo),
    (31, 'pp'),
    ]
