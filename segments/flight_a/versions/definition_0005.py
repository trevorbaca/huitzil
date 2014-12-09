# -*- encoding: utf-8 -*-
from abjad import *
from huitzil import makers
from huitzil import materials
from huitzil.segments.abbreviations import *


segment_maker = makers.FlightSegmentMaker(
    markup_leaves=False,
    name='flight A',
    pitches=[
        (0, 'B1'),
        ],
    staff_line_count = 7
    )

segment_maker.tempo_map = [
    (0, Tempo(Duration(1, 4), 44)),
    ]

#segment_maker.tremolo_rate_map = [
#    (0, tremolo_moderato),
#    ]

segment_maker.notes = [
    (0, '1/2', 'mfz'),
    (0, '1/4', 'mfz'),
    (1, '1/4', 'mfz'),
    '|',

    (0, '1/2', 'mfz'),
    (0, '1/4', 'mfz'),
    (1, '1/3', 'mfz'),
    '|',

    (0, '1/2', 'mfz'),
    (0, '1/4', 'mfz'),
    (1, '1/4', 'mfz'),
    '|',

    (1, '1/2', 'mfz'),
    ]

segment_maker.underlying_dynamics = [
    (0, 'mp'),
    (0, '-|'),
    (9, 'pp'),
    ]