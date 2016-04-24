# -*- coding: utf-8 -*-
from abjad import *
import huitzil
from huitzil.segments.abbreviations import *


segment_maker = huitzil.tools.FlightSegmentMaker(
    clef='bass',
    markup_leaves=False,
    name='flight A',
    pitches=[
        (0, 'B1'),
        ],
    staff_line_count=7
    )

segment_maker.notes = [
    # position 1
    (7, '1/2', mfz),
    (7, '1/4', mfz),
    (6, '1/4', mfz),
    bar,

    (7, '1/2', mfz),
    (7, '1/4', mfz),
    (6, '1/3', mfz),
    bar,

    (7, '1/2', mfz),
    (7, '1/4', mfz),
    (6, '1/4', mfz),
    bar,

    # position 2
    (6, '2/3', fz),
    (6, '1/4', mpz),
    (5, '1/4', mpz),
    bar,

    (6, '1/2', mpz),
    (6, '1/3', mpz),
    (5, '1/3', mpz),
    (7, '1/5', mfz),
    (6, '1/5', mfz),
    (5, '1/5', mfz),
    bar,

    (6, '1/2', fz),
    (6, '1/3', mpz),
    (5, '1/3', mpz),
    (7, '1/4', mpz),
    (6, '1/4', mpz),
    (5, '1/4', mpz),
    bar,

    # position 3
    (5, '1/1', fz),
    bar,

    (5, '1/2', fz),
    (5, '1/4', fz),
    (4, '1/4', fz),
    bar,

    (5, '1/2', fz),
    (5, '1/4', fz),
    bar,

    (4, '1/3', mfz),
    (7, '1/3', mfz),
    bar,

    (6, '1/3', mfz),
    (5, '1/3', mfz),
    #bar,

    (7, '1/5', mpz),
    (6, '1/5', mpz),
    (5, '1/5', mpz),
    (4, '1/5', mpz),
    bar,

    # positions 4-6
    (4, '1/1', ffz),
    bar,
    (4, '1/1', ffz),
    bar,
    (3, '1/1', ffz),
    bar,
    (3, '1/1', ffz),
    #bar,
    (2, '1/1', ffz),
    bar,

    # pick-up into 4-7
    (4, '1/3', fz),
    bar,

    (7, '1/3', mfz),
    (6, '1/3', mfz),
    (5, '1/3', mfz),
    bar,

    (7, '1/5', mpz),
    (6, '1/5', mpz),
    (5, '1/5', mpz),
    (4, '1/5', mpz),
    bar,
    (4, '1/1', ffz),

    # positions 4-7
    (4, '1/1', ffz),
    bar,
    (3, '1/1', ffz),
    bar,
    (3, '1/1', ffz),
    bar,
    (2, '1/1', ffz),
    bar,
    (2, '1/1', ffz),
    bar,
    (1, '1/1', ffz),
    bar,
    
    ]

segment_maker.glissando_break_indices = [
    42,
    ]

segment_maker.tempo_specifier = [
    (0, quarter_44),
    (39, Accelerando()),
    (42, quarter_66),
    (43, quarter_44),
    (52, Accelerando()),
    (57, quarter_88),
    ]

segment_maker.tremolo_map = [
    (0, trem_moderato),
    (30, trem_mod),
    (30, dashed_arrow),
    (34, trem_stretto),
    (39, sub_trem_mod),
    (39, dashed_arrow),
    (40, piu_stretto),
    (40, dashed_arrow),
    (41, piu_largo),
    (41, dashed_arrow),
    (42, piu_stretto),
    (43, sub_trem_mod),
    (43, dashed_arrow),
    (47, trem_stretto),
    (52, sub_trem_mod),
    (52, dashed_arrow),
    (53, piu_stretto),
    (53, dashed_arrow),
    (54, piu_largo),
    (54, dashed_arrow),
    (55, piu_stretto),
    (55, dashed_arrow),
    (56, piu_largo),
    (56, dashed_arrow),
    (57, piu_stretto),
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
    (24, hold_dynamic),
    (30, mp),
    (30, decrescendo),
    (34, ppp),
    (34, hold_dynamic),
    (39, p),
    (39, crescendo),
    (42, mf),
    (43, mp),
    (43, decrescendo),
    (47, ppp),
    (47, hold_dynamic),
    (52, p),
    (52, crescendo),
    (57, f),
    ]