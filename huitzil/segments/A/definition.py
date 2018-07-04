import abjad
import baca
import huitzil


maker = huitzil.FlightSegmentMaker(
    clef='bass',
    markup_leaves=False,
    name='flight A',
    pitches=[
        (0, 'B1'),
        ],
    staff_line_count=7
    )

maker.notes = [
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

maker.glissando_break_indices = [
    42,
    ]

maker.metronome_mark_measure_map = [
    (0, huitzil.metronome_marks['44']),
    (39, baca.Accelerando()),
    (42, huitzil.metronome_marks['66']),
    (43, huitzil.metronome_marks['44']),
    (52, baca.Accelerando()),
    (57, huitzil.metronome_marks['88']),
    ]

maker.tremolo_map = [
    (0, huitzil.markup.trem_moderato()),
    (30, [huitzil.markup.trem_mod()]),
    (34, huitzil.markup.trem_stretto()),
    (39, [huitzil.markup.sub_trem_mod()]),
    (40, [huitzil.markup.piu_stretto()]),
    (41, [huitzil.markup.piu_largo()]),
    (42, huitzil.markup.piu_stretto()),
    (43, [huitzil.markup.sub_trem_mod()]),
    (47, huitzil.markup.trem_stretto()),
    (52, [huitzil.markup.sub_trem_mod()]),
    (53, [huitzil.markup.piu_stretto()]),
    (54, [huitzil.markup.piu_largo()]),
    (55, [huitzil.markup.piu_stretto()]),
    (56, [huitzil.markup.piu_largo()]),
    (57, huitzil.markup.piu_stretto()),
    ]

maker.underlying_dynamics = [
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
