# -*- coding: utf-8 -*-
import abjad
import huitzil


segment_maker = huitzil.FlightSegmentMaker(
    clef='bass',
    markup_leaves=False,
    name='flight G',
    pitches=[
        ],
    staff_line_count=7
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

    # pick-up into 4-7
    (4, '1/3', 'fz'),
    '|',

    (7, '1/3', 'mfz'),
    (6, '1/3', 'mfz'),
    (5, '1/3', 'mfz'),
    '|',

    (7, '1/5', 'mpz'),
    (6, '1/5', 'mpz'),
    (5, '1/5', 'mpz'),
    (4, '1/5', 'mpz'),
    '|',
    (4, '1/1', 'ffz'),

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
    (0, huitzil.tempi[44]),
    (39, abjad.Accelerando()),
    (42, huitzil.tempi[66]),
    (43, huitzil.tempi[44]),
    (52, abjad.Accelerando()),
    (57, huitzil.tempi[88]),
    ]

segment_maker.tremolo_map = [
    (0, huitzil.markup.trem_moderato()),
    (30, huitzil.markup.trem_mod()),
    (30, huitzil.dashed_arrow()),
    (34, huitzil.markup.trem_stretto()),
    (39, huitzil.markup.sub_trem_mod()),
    (39, huitzil.dashed_arrow()),
    (40, huitzil.markup.piu_stretto()),
    (40, huitzil.dashed_arrow()),
    (41, huitzil.markup.piu_largo()),
    (41, huitzil.dashed_arrow()),
    (42, huitzil.markup.piu_stretto()),
    (43, huitzil.markup.sub_trem_mod()),
    (43, huitzil.dashed_arrow()),
    (47, huitzil.markup.trem_stretto()),
    (52, huitzil.markup.sub_trem_mod()),
    (52, huitzil.dashed_arrow()),
    (53, huitzil.markup.piu_stretto()),
    (53, huitzil.dashed_arrow()),
    (54, huitzil.markup.piu_largo()),
    (54, huitzil.dashed_arrow()),
    (55, huitzil.markup.piu_stretto()),
    (55, huitzil.dashed_arrow()),
    (56, huitzil.markup.piu_largo()),
    (56, huitzil.dashed_arrow()),
    (57, huitzil.markup.piu_stretto()),
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
    (43, 'mp'),
    (43, '>'),
    (47, 'ppp'),
    (47, '-|'),
    (52, 'p'),
    (52, '<'),
    (57, 'f'),
    ]
