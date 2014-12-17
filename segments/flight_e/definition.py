# -*- encoding: utf-8 -*-
from abjad import *
from huitzil import makers
from huitzil import materials
from huitzil.segments.abbreviations import *


segment_maker = makers.FlightSegmentMaker(
    markup_leaves=False,
    name='flight E',
    pitches=[
        (0, 'A2'),
        ],
    staff_line_count = 11
    )

segment_maker.notes = [
    (1, '3/4', mfz),
    (1, '1/4', mfz),
    bar,
    (1, '3/4', mfz),
    (2, '3/4', mfz),
    bar,
    (2, '1/4', mfz),
    (2, '3/4', mfz),
    bar,
    (3, '2/4', mfz),
    (2, '1/4', mfz),
    bar,
    (3, '3/4', mfz),
    (3, '2/4', mfz),
    bar,
    (2, '1/4', mfz),
    (3, '3/4', mfz),
    bar,
    (3, '1/1', mfz),
    (4, '3/4', mfz),
    bar,
    (4, '1/4', mfz),
    (4, '3/4', mfz),
    bar,
    (3, '2/4', mfz),
    (4, '3/4', mfz),
    bar,
    (4, '1/4', mfz),
    (4, '1/1', mfz),
    bar,

    # arrival at midpoint
    (5, '3/4', mfz),
    (5, '1/4', mfz),
    bar,
    (5, '3/4', mfz),
    (6, '3/4', mfz),
    bar,
    (6, '1/4', mfz),
    (6, '3/4', mfz),
    bar,
    (7, '2/4', mfz),
    (6, '1/4', mfz),
    bar,
    (7, '3/4', mfz),
    (7, '2/4', mfz),
    bar,
    (6, '1/4', mfz),
    (7, '3/4', mfz),
    bar,
    (7, '1/1', mfz),
    (8, '3/4', mfz),
    bar,
    (8, '1/4', mfz),
    (8, '3/4', mfz),
    bar,
    (7, '2/4', mfz),
    (8, '3/4', mfz),
    bar,
    (8, '1/4', mfz),
    (8, '1/1', mfz),

    # articulation of 9
    (9, '3/4', mfz),
    (9, '1/4', mfz),
    bar,
    (9, '3/4', mfz),
    (8, '2/4', mfz),
    bar,
    (9, '3/4', mfz),
    (9, '1/4', mfz),
    (9, '1/1', mfz),
    bar,

    # articulation of 10
    (10, '3/4', mfz),
    (9, '2/4', mfz),
    bar,
    (10, '3/4', mfz),
    (10, '1/4', mfz),
    (10, '1/1', mfz),
    bar,

    # articulation of 11
    (11, '3/4', mfz),
    (11, '1/4', mfz),
    bar,
    (11, '3/4', mfz),
    (10, '2/4', mfz),
    bar,
    (11, '3/4', mfz),
    (11, '1/4', mfz),
    (11, '1/1', mfz),
    bar,

    ]

segment_maker.glissando_break_indices = [
    ]

segment_maker.tempo_map = [
    (0, quarter_66),
    ]

segment_maker.tremolo_map = [
    ]

segment_maker.underlying_dynamics = [
    (0, mp),
    ]