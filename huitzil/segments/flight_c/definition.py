# -*- coding: utf-8 -*-
import abjad
import huitzil
from huitzil.segments.abbreviations import *


segment_maker = huitzil.tools.FlightSegmentMaker(
    markup_leaves=False,
    name='flight C',
    pitches=[
        (0, 'Bb1'),
        ],
    staff_line_count = 7
    )

segment_maker.notes = [
    # position 1
    (7, '1/2', 'mfz'),
    (7, '1/4', 'mfz'),
    (6, '1/4', 'mfz'),
    '|',

    (7, '1/2', 'mfz'),
    (7, '1/4', 'mfz'),
    (6, '1/3', 'mfz'),
    '|',

    (7, '1/2', 'mfz'),
    (7, '1/4', 'mfz'),
    (6, '1/4', 'mfz'),
    '|',

    # position 2
    (6, '2/3', 'fz'),
    (6, '1/4', 'mpz'),
    (5, '1/4', 'mpz'),
    '|',

    (6, '1/2', 'mpz'),
    (6, '1/3', 'mpz'),
    (5, '1/3', 'mpz'),
    (7, '1/5', 'mfz'),
    (6, '1/5', 'mfz'),
    (5, '1/5', 'mfz'),
    '|',

    (6, '1/2', 'fz'),
    (6, '1/3', 'mpz'),
    (5, '1/3', 'mpz'),
    (7, '1/4', 'mpz'),
    (6, '1/4', 'mpz'),
    (5, '1/4', 'mpz'),
    '|',

    # position 3
    (5, '1/1', 'fz'),
    '|',

    (5, '1/2', 'fz'),
    (5, '1/4', 'fz'),
    (4, '1/4', 'fz'),
    '|',

    (5, '1/2', 'fz'),
    (5, '1/4', 'fz'),
    '|',

    (4, '1/3', 'mfz'),
    (7, '1/3', 'mfz'),
    '|',

    (6, '1/3', 'mfz'),
    (5, '1/3', 'mfz'),
    #'|',

    (7, '1/5', 'mpz'),
    (6, '1/5', 'mpz'),
    (5, '1/5', 'mpz'),
    (4, '1/5', 'mpz'),
    '|',

    # positions 4-6
    (4, '1/1', 'ffz'),
    '|',
    (4, '1/1', 'ffz'),
    '|',
    (3, '1/1', 'ffz'),
    '|',
    (3, '1/1', 'ffz'),
    #'|',
    (2, '1/1', 'ffz'),
    '|',

    # positions 4-7
    (4, '1/1', 'ffz'),
    '|',
    (3, '1/1', 'ffz'),
    '|',
    (3, '1/1', 'ffz'),
    '|',
    (2, '1/1', 'ffz'),
    '|',
    (2, '1/1', 'ffz'),
    '|',
    (1, '1/1', 'ffz'),
    '|',
    
    ]

segment_maker.glissando_break_indices = [
    42,
    ]

segment_maker.tempo_specifier = [
    #(0, quarter_44),
    (39, abjad.Accelerando()),
    (42, quarter_66),
    (43, quarter_44),
    (43, abjad.Accelerando()),
    (48, quarter_88),
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
    (44, piu_stretto),
    (44, dashed_arrow),
    (45, piu_largo),
    (45, dashed_arrow),
    (46, piu_stretto),
    (46, dashed_arrow),
    (47, piu_largo),
    (47, dashed_arrow),
    (48, piu_stretto),
    ]

segment_maker.underlying_dynamics = [
    (0, 'mp'),
    (0, '-|'),
    (9, 'p'),
    (9, '-|'),
    (13, 'pp'),
    (13, '<'),
    (17, 'mf'),
    (18, 'p'),
    (18, '-|'),
    (24, 'mf'),
    (24, '-|'),
    (30, 'mp'),
    (30, '>'),
    (34, 'ppp'),
    (34, '-|'),
    (39, 'p'),
    (39, '<'),
    (42, 'mf'),
    (43, 'p'),
    (43, '<'),
    (48, 'f'),
    ]
