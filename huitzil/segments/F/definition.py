import abjad
import baca
import huitzil


maker = huitzil.FlightSegmentMaker(
    markup_leaves=False,
    name='flight F',
    pitches=[
        (0, 'A2'),
        (20, 'G2'),
        (24, 'G2()'),
        (28, 'A1'),
        ],
    staff_line_count=11
    )

maker.lh_glissandi = [
    (0, 1),
    (2, 3),
    ]

maker.notes = [
    (11, '1/1', 'fz'),
    '|',
    (11, '3/4', None),
    '|',
    (10, '3/4', 'fz'),
    '|',
    (10, '1/1', None),
    '|',
    (9, '1/1', 'fz'),
    '|',
    (9, '3/4', None),
    '|',
    (8, '3/4', 'fz'),
    '|',
    (8, '1/1', None),
    '|',
    (7, '1/1', 'fz'),
    '|',
    (7, '3/4', None),
    '|',
    (6, '3/4', 'fz'),
    '|',
    (6, '1/1', None),
    '|',
    (5, '1/1', 'fz'),
    '|',
    (5, '3/4', None),
    '|',
    (4, '3/4', 'fz'),
    '|',
    (4, '1/1', None),
    '|',
    (3, '1/1', 'fz'),
    '|',
    (3, '3/4', None),
    '|',
    (2, '3/4', 'fz'),
    '|',
    (2, '1/1', None),
    '|',
    # G2
    (1, '1/1', 'fffz'),
    '|',
    (1, '1/1', 'fffz'),
    '|',
    (1, '1/1', 'fffz'),
    '|',
    (1, '1/1', 'fffz'),
    '|',
    # descent
    (1, '1/1', 'fffz'),
    '|',
    (1, '1/1', None),
    '|',
    (1, '1/1', None),
    '|',
    (1, '1/1', None),
    '|',
    # A2
    (1, '1/1', 'fffz'),
    '|',
    (1, '1/1', 'fffz'),
    '|',
    (1, '1/1', 'fffz'),
    '|',
    (1, '1/1', 'fffz'),
    '|',
    ]

maker.glissando_break_indices = [
    ]

maker.metronome_mark_measure_map = [
    (0, baca.Accelerando()),
    (3, huitzil.metronome_marks['88']),
    (4, huitzil.metronome_marks['66']),
    (4, baca.Accelerando()),
    (7, huitzil.metronome_marks['88']),
    (8, huitzil.metronome_marks['66']),
    (8, baca.Accelerando()),
    (11, huitzil.metronome_marks['88']),
    (12, huitzil.metronome_marks['66']),
    (12, baca.Accelerando()),
    (15, huitzil.metronome_marks['88']),
    (16, huitzil.metronome_marks['66']),
    (16, baca.Accelerando()),
    (19, huitzil.metronome_marks['88']),
    (24, huitzil.metronome_marks['66']),
    (24, baca.Accelerando()),
    (27, huitzil.metronome_marks['88']),
    (28, baca.Ritardando()),
    (31, huitzil.metronome_marks['66']),
    ]

maker.tremolo_map = [
    ]

maker.underlying_dynamics = [
    (0, 'p'),
    (0, '<'),
    (3, 'mf'),
    (3, '>'),
    (4, 'p'),
    (4, '<'),
    (7, 'mf'),
    (7, '>'),
    (8, 'p'),
    (8, '<'),
    (11, 'mf'),
    (11, '>'),
    (12, 'p'),
    (12, '<'),
    (15, 'mf'),
    (15, '>'),
    (16, 'p'),
    (16, '<'),
    (22, 'ff'),
    (24, 'mf'),
    (24, '<'),
    (28, 'ff'),
    (28, '>'),
    (31, 'pp'),
    ]
