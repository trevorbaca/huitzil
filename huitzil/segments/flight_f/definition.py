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
    '|',
    (11, '3/4', None),
    '|',
    (10, '3/4', 'fz'),
    '|',
    (10, '1/1', None),
    '|',
    (9, '1/1', 'fz'),
    '|',
    (9, '3/4', None),
    '|',
    (8, '3/4', 'fz'),
    '|',
    (8, '1/1', None),
    '|',
    (7, '1/1', 'fz'),
    '|',
    (7, '3/4', None),
    '|',
    (6, '3/4', 'fz'),
    '|',
    (6, '1/1', None),
    '|',
    (5, '1/1', 'fz'),
    '|',
    (5, '3/4', None),
    '|',
    (4, '3/4', 'fz'),
    '|',
    (4, '1/1', None),
    '|',
    (3, '1/1', 'fz'),
    '|',
    (3, '3/4', None),
    '|',
    (2, '3/4', 'fz'),
    '|',
    (2, '1/1', None),
    '|',
    # G2
    (1, '1/1', 'fffz'),
    '|',
    (1, '1/1', 'fffz'),
    '|',
    (1, '1/1', 'fffz'),
    '|',
    (1, '1/1', 'fffz'),
    '|',
    # descent
    (1, '1/1', 'fffz'),
    '|',
    (1, '1/1', None),
    '|',
    (1, '1/1', None),
    '|',
    (1, '1/1', None),
    '|',
    # A2
    (1, '1/1', 'fffz'),
    '|',
    (1, '1/1', 'fffz'),
    '|',
    (1, '1/1', 'fffz'),
    '|',
    (1, '1/1', 'fffz'),
    '|',
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
    (0, '<'),
    (3, 'mf'),
    (3, '>'),
    (4, 'p'),
    (4, '<'),
    (7, 'mf'),
    (7, '>'),
    (8, 'p'),
    (8, '<'),
    (11, 'mf'),
    (11, '>'),
    (12, 'p'),
    (12, '<'),
    (15, 'mf'),
    (15, '>'),
    (16, 'p'),
    (16, '<'),
    (22, 'ff'),
    (24, 'mf'),
    (24, '<'),
    (28, 'ff'),
    (28, '>'),
    (31, 'pp'),
    ]
