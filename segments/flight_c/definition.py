# -*- encoding: utf-8 -*-
from abjad import *
from huitzil import makers
from huitzil import materials
from huitzil.segments.abbreviations import *


segment_maker = makers.FlightSegmentMaker(
    markup_leaves=False,
    name='flight C',
    pitches=[
        (0, 'Bb1'),
        ],
    staff_line_count = 7
    )

segment_maker.notes = [
    # position 1
    (1, '1/2', mfz),
    (1, '1/4', mfz),
    (2, '1/4', mfz),
    bar,

    (1, '1/2', mfz),
    (1, '1/4', mfz),
    (2, '1/3', mfz),
    bar,

    (1, '1/2', mfz),
    (1, '1/4', mfz),
    (2, '1/4', mfz),
    bar,

    # position 2
    (2, '2/3', fz),
    (2, '1/4', mpz),
    (3, '1/4', mpz),
    bar,

    (2, '1/2', mpz),
    (2, '1/3', mpz),
    (3, '1/3', mpz),
    (1, '1/5', mfz),
    (2, '1/5', mfz),
    (3, '1/5', mfz),
    bar,

    (2, '1/2', fz),
    (2, '1/3', mpz),
    (3, '1/3', mpz),
    (1, '1/4', mpz),
    (2, '1/4', mpz),
    (3, '1/4', mpz),
    bar,

    # position 3
    (3, '1/1', fz),
    bar,

    (3, '1/2', fz),
    (3, '1/4', fz),
    (4, '1/4', fz),
    bar,

    (3, '1/2', fz),
    (3, '1/4', fz),
    (4, '1/3', fz),
    bar,

    (1, '1/3', mfz),
    (2, '1/3', mfz),
    (3, '1/3', mfz),
    bar,

    (1, '1/5', mpz),
    (2, '1/5', mpz),
    (3, '1/5', mpz),
    (4, '1/5', mpz),
    bar,
    (4, '1/1', ffz),
    bar,

    # positions 4-7 (#1A)
    (4, '1/1', ffz),
    bar,
    (5, '1/1', ffz),
    bar,
    (5, '1/1', ffz),
    bar,
    (6, '1/1', ffz),
    bar,

    # positions 4-7 (#1B)
    (4, '1/1', ffz),
    bar,
    (5, '1/1', ffz),
    bar,
    (5, '1/1', ffz),
    bar,
    (6, '1/1', ffz),
    bar,

    # positions 4-7 (#2)
    (4, '1/1', ffz),
    bar,
    (5, '1/1', ffz),
    bar,
    (5, '1/1', ffz),
    bar,
    (6, '1/1', ffz),
    bar,
    (6, '1/1', ffz),
    bar,
    (7, '1/1', ffz),
    bar,
    
    ]

segment_maker.tempo_map = [
    (0, quarter_44),
    (39, Accelerando()),
    (42, quarter_66),
    (43, quarter_44),
    (43, Accelerando()),
    (46, quarter_66),
    (47, quarter_44),
    (47, Accelerando()),
    (52, quarter_88),
    ]

segment_maker.tremolo_rate_map = [
    (0, tremolo_moderato),
    (25, trem_mod),
    (25, dashed_arrow),
    (38, poco_piu_mosso),
    (39, sub_trem_mod),
    (39, dashed_arrow),
    (40, piu_mosso),
    (40, dashed_arrow),
    (41, meno_mosso),
    (41, dashed_arrow),
    (42, molto_mosso),

    (43, sub_trem_mod),
    (43, dashed_arrow),
    (44, piu_mosso),
    (44, dashed_arrow),
    (45, meno_mosso),
    (45, dashed_arrow),
    (46, molto_mosso),

    (47, sub_trem_mod),
    (47, dashed_arrow),
    (48, piu_mosso),
    (48, dashed_arrow),
    (49, meno_mosso),
    (49, dashed_arrow),
    (50, piu_mosso),
    (50, dashed_arrow),
    (51, meno_mosso),
    (51, dashed_arrow),
    (52, molto_mosso),

    ]

segment_maker.underlying_dynamics = [
    (0, mp),
    (0, hold_dynamic),
    (9, p),
    (9, hold_dynamic),
    (13, pp),
    (13, crescendo),
    (17, mf),
    (18, p),
    (18, hold_dynamic),
    (24, mf),
    (25, mf),
    (25, decrescendo),
    (38, pp),
    (39, p),
    (39, decrescendo),
    (42, ppp),

    (43, p),
    (43, decrescendo),
    (46, ppp),

    (47, p),
    (47, crescendo),
    (52, f),

    ]