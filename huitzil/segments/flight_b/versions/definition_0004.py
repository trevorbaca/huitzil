# -*- encoding: utf-8 -*-
from abjad import *
from huitzil import makers
from huitzil import materials
from huitzil.segments.abbreviations import *


segment_maker = makers.FlightSegmentMaker(
    markup_leaves=False,
    name='flight B',
    pitches=[
        (0, 'skip'),
        (15, 'B1()'),
        (27, 'C2'),
        (28, 'E6'),
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

    # ritardando
    (7, '1/1', ffz),
    bar,
    (7, '1/1', ffz),
    bar,
    (7, '1/1', ffz),
    bar,
    (7, '1/1', ffz),
    bar,
    (7, '1/1', ffz),
    bar,
    (7, '1/1', ffz),
    bar,

    ]

segment_maker.tremolo_map = [
    (0, trem_mod),
    (36, sub_trem_piu_stretto),
    (36, dashed_arrow),
    (37, piu_largo),
    (37, dashed_arrow),
    (38, piu_stretto),
    (38, dashed_arrow),
    (39, piu_largo),
    (39, dashed_arrow),
    (40, trem_mod),
    ]

segment_maker.tempo_map = [
    (36, Ritardando()),
    (40, quarter_44),
    ]