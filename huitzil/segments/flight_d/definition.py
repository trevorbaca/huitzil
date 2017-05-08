# -*- coding: utf-8 -*-
import abjad
import huitzil
from huitzil.segments.abbreviations import *


segment_maker = huitzil.tools.FlightSegmentMaker(
    clef='bass',
    markup_leaves=False,
    name='flight D',
    pitches=[
        (0, 'skip'),
        (15, 'Bb1()'),
        (27, 'Cb2'),
        (28, 'C6'),
        ],
    staff_line_count = 7
    )

segment_maker.lh_glissandi = [
    (1, 2),
    (2, 3),
    ]

segment_maker.notes = [
    # ascent
    (1, '1/4', 'ffz'),
    (2, '1/4', 'ffz'),
    (3, '1/4', 'ffz'),
    (4, '1/4', 'ffz'),
    '|',

    # talea (#1)
    (4, '1/1', 'ffz'),
    '|',
    (4, '2/3', 'fz'),
    (4, '2/3', 'fffz'),
    '|',
    (4, '1/1', 'ffz'),
    '|',
    (4, '2/5', 'mfz'),
    (4, '2/5', 'fz'),
    (4, '2/5', 'ffz'),
    (4, '2/5', 'fffz'),
    '|',

    # talea (#2)
    (4, '1/1', 'ffz'),
    '|',
    (4, '2/3', 'fz'),
    (4, '2/3', 'fffz'),
    '|',
    (4, '1/1', 'ffz'),
    '|',
    (4, '2/5', 'mfz'),
    (4, '2/5', 'fz'),
    (4, '2/5', 'ffz'),
    (4, '2/5', 'fffz'),
    '|',

    # talea (#3)
    (4, '1/1', 'ffz'),
    '|',
    (4, '2/3', 'fz'),
    (4, '2/3', 'fffz'),
    '|',
    (4, '1/1', 'ffz'),
    '|',
    (4, '2/5', 'mfz'),
    (4, '2/5', 'fz'),
    (4, '2/5', 'ffz'),
    (4, '2/5', 'fffz'),
    '|',

    # talea (#4)
    (7, '1/1', 'ffz'),
    '|',
    (7, '2/3', 'fz'),
    (7, '2/3', 'fffz'),
    '|',
    (7, '1/1', 'ffz'),
    '|',
    (7, '2/5', 'mfz'),
    (7, '2/5', 'fz'),
    (7, '2/5', 'ffz'),
    (7, '2/5', 'fffz'),
    '|',

    # ritardando
    (7, '1/1', 'ffz'),
    '|',
    (7, '1/1', 'fz'),
    '|',
    (7, '1/1', 'fz'),
    '|',
    (7, '1/1', 'mfz'),
    '|',
    (7, '1/1', 'mfz'),
    '|',
    (7, '1/1', 'mpz'),
    '|',

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

segment_maker.tempo_specifier = [
    (36, abjad.Ritardando()),
    (40, quarter_44),
    ]

segment_maker.underlying_dynamics = [
    (0, 'f'),
    (0, '-|'),
    (4, 'mp'),
    (4, '>'),
    (6, 'p'),
    (6, '<'),
    (7, 'mp'),
    (7, '>'),
    (10, 'p'),
    (10, '<'),
    (12, 'mp'),
    (12, '>'),
    (14, 'p'),
    (14, '<'),
    (15, 'mp'),
    (15, '>'),
    (18, 'p'),
    (18, '<'),
    (20, 'mp'),
    (20, '>'),
    (22, 'p'),
    (22, '<'),
    (23, 'mp'),
    (23, '>'),
    (26, 'p'),
    (26, '<'),
    (28, 'mp'),
    (28, '-|'),
    (31, 'p'),
    (31, '-|'),
    (36, 'pp'),
    (36, '-|'),
    (40, 'p'),
    ]
