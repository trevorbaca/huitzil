# -*- encoding: utf-8 -*-
from abjad import *
from huitzil import makers
from huitzil import materials
from huitzil.segments.abbreviations import *


segment_maker = makers.FlightSegmentMaker(
    markup_leaves=False,
    name='flight F',
    pitches=[
        (0, 'A2'),
        ],
    staff_line_count=11
    )

segment_maker.notes = [
    (11, '1/1', fz),
    bar,
    (11, '3/4', None),
    bar,
    (10, '3/4', fz),
    bar,
    (10, '1/1', None),
    bar,
    (9, '1/1', fz),
    bar,
    (9, '3/4', None),
    bar,
    (8, '3/4', fz),
    bar,
    (8, '1/1', None),
    bar,
    (7, '1/1', fz),
    bar,
    (7, '3/4', None),
    bar,
    (6, '3/4', fz),
    bar,
    (6, '1/1', None),
    bar,
    (5, '1/1', fz),
    bar,
    (5, '3/4', None),
    bar,
    (4, '3/4', fz),
    bar,
    (4, '1/1', None),
    bar,
    (3, '1/1', fz),
    bar,
    (3, '3/4', None),
    bar,
    (2, '3/4', fz),
    bar,
    (2, '1/1', None),
    bar,
    (1, '1/1', fz),
    bar,
    (1, '1/1', fz),
    bar,
    (1, '1/1', fz),
    bar,
    (1, '1/1', fz),
    bar,
    ]

segment_maker.glissando_break_indices = [
    ]

segment_maker.tempo_map = [
    (0, Accelerando()),
    (3, quarter_88),
    (4, quarter_66),
    (4, Accelerando()),
    (7, quarter_88),
    (8, quarter_66),
    ]

segment_maker.tremolo_map = [
    ]

segment_maker.underlying_dynamics = [
    ]