# -*- encoding: utf-8 -*-
from abjad import *
from huitzil import makers
from huitzil import materials
from huitzil.segments.abbreviations import *


segment_maker = makers.FlightSegmentMaker(
    markup_leaves=True,
    name='flight B',
    pitches=[
        (0, 'B1'),
        (15, 'B1'),
        (27, 'C2'),
        (28, 'C6'),
        ],
    staff_line_count = 7
    )

segment_maker.lh_glissandi = [
    (1, 2),
    (2, 3),
    ]

segment_maker.notes = [
    # descent
    (7, '1/4', ffz),
    (6, '1/4', ffz),
    (5, '1/4', ffz),
    (4, '1/4', ffz),
    bar,

    # talea (#1)
    (4, '1/1', ffz),
    bar,
    (4, '2/3', ffz),
    (4, '2/3', ffz),
    bar,
    (4, '1/1', ffz),
    bar,
    (4, '2/5', ffz),
    (4, '2/5', ffz),
    (4, '2/5', ffz),
    (4, '2/5', ffz),
    bar,

    # talea (#2)
    (4, '1/1', ffz),
    bar,
    (4, '2/3', ffz),
    (4, '2/3', ffz),
    bar,
    (4, '1/1', ffz),
    bar,
    (4, '2/5', ffz),
    (4, '2/5', ffz),
    (4, '2/5', ffz),
    (4, '2/5', ffz),
    bar,

    # talea (#3)
    (4, '1/1', ffz),
    bar,
    (4, '2/3', ffz),
    (4, '2/3', ffz),
    bar,
    (4, '1/1', ffz),
    bar,
    (4, '2/5', ffz),
    (4, '2/5', ffz),
    (4, '2/5', ffz),
    (4, '2/5', ffz),
    bar,

    # talea (#4)
    (7, '1/1', ffz),
    bar,
    (7, '2/3', ffz),
    (7, '2/3', ffz),
    bar,
    (7, '1/1', ffz),
    bar,
    (7, '2/5', ffz),
    (7, '2/5', ffz),
    (7, '2/5', ffz),
    (7, '2/5', ffz),
    bar,

    ]

segment_maker