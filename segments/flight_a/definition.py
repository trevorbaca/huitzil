# -*- encoding: utf-8 -*-
from abjad import *
from huitzil import makers
from huitzil import materials
from huitzil.segments.abbreviations import *


segment_maker = makers.FlightSegmentMaker(
    name='flight A',
    pitches=[
        (NamedPitch('B1'), 0),
        ],
    staff_line_count = 7
    )

segment_maker.tempo_map = [
    (0, Tempo(Duration(1, 4), 44)),
    ]

segment_maker.tremolo_rate_map = [
    (0, tremolo_moderato),
    ]

segment_maker.notes = [
    (0, '1/2', '-'),
    (0, '1/4', '-'),
    (1, '1/4', '-'),

    (0, '1/2', '-'),
    (0, '1/4', '-'),
    (1, '1/3+', '-'),

    (0, '1/2', '-'),
    (0, '1/4', '-'),
    (1, '1/4', '-'),

    (1, '2/3+', '>'),
    ]

segment_maker.underlying_dynamics = [
    ('mp', 0),
    ('<', 0),
    ('mf', 5),
    ('mf', 6),
    ]