# -*- encoding: utf-8 -*-
from abjad import *
from huitzil import makers
from huitzil import materials
from huitzil.segments.abbreviations import *


segment_maker = makers.FlightSegmentMaker(
    markup_leaves=False,
    name='flight H',
    pitches=[
        (0, 'skip'),
        (15, 'A1()'),
        (27, 'Bb1'),
        (28, 'C6'),
        ],
    staff_line_count=7
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
    (4, '2/3', fz),
    (4, '2/3', fffz),
    bar,
    (4, '1/1', ffz),
    bar,
    (4, '2/5', mfz),
    (4, '2/5', fz),
    (4, '2/5', ffz),
    (4, '2/5', fffz),
    bar,

    # talea (#2)
    (4, '1/1', ffz),
    bar,
    (4, '2/3', fz),
    (4, '2/3', fffz),
    bar,
    (4, '1/1', ffz),
    bar,
    (4, '2/5', mfz),
    (4, '2/5', fz),
    (4, '2/5', ffz),
    (4, '2/5', fffz),
    bar,

    # talea (#3)
    (4, '1/1', ffz),
    bar,
    (4, '2/3', fz),
    (4, '2/3', fffz),
    bar,
    (4, '1/1', ffz),
    bar,
    (4, '2/5', mfz),
    (4, '2/5', fz),
    (4, '2/5', ffz),
    (4, '2/5', fffz),
    bar,

    # talea (#4)
    (7, '1/1', ffz),
    bar,
    (7, '2/3', fz),
    (7, '2/3', fffz),
    bar,
    (7, '1/1', ffz),
    bar,
    (7, '2/5', mfz),
    (7, '2/5', fz),
    (7, '2/5', ffz),
    (7, '2/5', fffz),
    bar,

    # ritardando
    (7, '1/1', ffz),
    bar,
    (7, '1/1', fz),
    bar,
    (7, '1/1', fz),
    bar,
    (7, '1/1', mfz),
    bar,
    (7, '1/1', mfz),
    bar,
    (7, '1/1', mpz),
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

segment_maker.underlying_dynamics = [
    (0, f),
    (0, hold_dynamic),
    (4, mp),
    (4, decrescendo),
    (6, p),
    (6, crescendo),
    (7, mp),
    (7, decrescendo),
    (10, p),
    (10, crescendo),
    (12, mp),
    (12, decrescendo),
    (14, p),
    (14, crescendo),
    (15, mp),
    (15, decrescendo),
    (18, p),
    (18, crescendo),
    (20, mp),
    (20, decrescendo),
    (22, p),
    (22, crescendo),
    (23, mp),
    (23, decrescendo),
    (26, p),
    (26, crescendo),
    (28, mp),
    (28, hold_dynamic),
    (31, p),
    (31, hold_dynamic),
    (36, pp),
    (36, hold_dynamic),
    (40, p),
    ]