import abjad
import huitzil


segment_maker = huitzil.FlightSegmentMaker(
    clef='treble',
    markup_leaves=False,
    name='flight I',
    staff_line_count=7
    )

segment_maker.notes = [
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

segment_maker.tremolo_map = [
    ]

segment_maker.metronome_mark_measure_map = [
    (0, huitzil.metronome_marks['44']),
    (0, abjad.Accelerando()),
    (1, huitzil.metronome_marks['88']),
    (1, abjad.Ritardando()),
    (2, huitzil.metronome_marks['44']),
    (2, abjad.Accelerando()),
    (3, huitzil.metronome_marks['88']),
    (3, abjad.Ritardando()),
    (4, huitzil.metronome_marks['44']),
    (4, abjad.Accelerando()),
    (5, huitzil.metronome_marks['88']),
    (5, abjad.Ritardando()),
    (6, huitzil.metronome_marks['44']),
    (6, abjad.Accelerando()),
    (7, huitzil.metronome_marks['88']),
    (7, abjad.Ritardando()),
    (8, huitzil.metronome_marks['44']),
    (8, abjad.Accelerando()),
    (9, huitzil.metronome_marks['88']),
    ]

segment_maker.underlying_dynamics = [
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
