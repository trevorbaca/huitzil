import abjad
import baca
import huitzil


maker = huitzil.FlightSegmentMaker(
    clef='treble',
    markup_leaves=False,
    name='flight I',
    staff_line_count=7
    )

maker.notes = [
    # swells
    (7, '1/1', None),
    '|',
    (7, '1/1', None),
    '|',
    (7, '1/1', None),
    '|',
    (7, '1/1', None),
    '|',
    (7, '1/1', None),
    '|',
    (7, '1/1', None),
    '|',
    (7, '1/1', None),
    '|',
    (7, '1/1', None),
    '|',
    # flat
    (7, '1/1', None),
    '|',
    (7, '1/1', None),
    '|',
    (7, '1/1', None),
    '|',
    (7, '1/1', None),
    '|',
    ]

maker.tremolo_map = [
    ]

maker.metronome_mark_measure_map = [
    (0, huitzil.metronome_marks['44']),
    (0, baca.Accelerando()),
    (1, huitzil.metronome_marks['88']),
    (1, baca.Ritardando()),
    (2, huitzil.metronome_marks['44']),
    (2, baca.Accelerando()),
    (3, huitzil.metronome_marks['88']),
    (3, baca.Ritardando()),
    (4, huitzil.metronome_marks['44']),
    (4, baca.Accelerando()),
    (5, huitzil.metronome_marks['88']),
    (5, baca.Ritardando()),
    (6, huitzil.metronome_marks['44']),
    (6, baca.Accelerando()),
    (7, huitzil.metronome_marks['88']),
    (7, baca.Ritardando()),
    (8, huitzil.metronome_marks['44']),
    (8, baca.Accelerando()),
    (9, huitzil.metronome_marks['88']),
    ]

maker.underlying_dynamics = [
    (0, 'mp'),
    (0, '>'),
    (1, 'pp'),
    (1, '<'),
    (2, 'mp'),
    (2, '>'),
    (3, 'pp'),
    (3, '<'),
    (4, 'mp'),
    (4, '>'),
    (5, 'pp'),
    (5, '<'),
    (6, 'mp'),
    (6, '>'),
    (7, 'pp'),
    (7, '<'),
    (8, 'mp'),
    (8, '>'),
    (9, 'pp'),
    ]
