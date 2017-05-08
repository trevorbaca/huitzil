# -*- coding: utf-8 -*-
import huitzil
from huitzil.segments.abbreviations import *


segment_maker = huitzil.tools.FlightSegmentMaker(
    clef='treble',
    markup_leaves=False,
    name='flight I',
    staff_line_count=7
    )

segment_maker.notes = [
    # swells
    (7, '1/1', None),
    bar,
    (7, '1/1', None),
    bar,
    (7, '1/1', None),
    bar,
    (7, '1/1', None),
    bar,
    (7, '1/1', None),
    bar,
    (7, '1/1', None),
    bar,
    (7, '1/1', None),
    bar,
    (7, '1/1', None),
    bar,
    # flat
    (7, '1/1', None),
    bar,
    (7, '1/1', None),
    bar,
    (7, '1/1', None),
    bar,
    (7, '1/1', None),
    bar,
    ]

segment_maker.tremolo_map = [
    ]

segment_maker.tempo_specifier = [
    (0, quarter_44),
    (0, abjad.Accelerando()),
    (1, quarter_88),
    (1, abjad.Ritardando()),
    (2, quarter_44),
    (2, abjad.Accelerando()),
    (3, quarter_88),
    (3, abjad.Ritardando()),
    (4, quarter_44),
    (4, abjad.Accelerando()),
    (5, quarter_88),
    (5, abjad.Ritardando()),
    (6, quarter_44),
    (6, abjad.Accelerando()),
    (7, quarter_88),
    (7, abjad.Ritardando()),
    (8, quarter_44),
    (8, abjad.Accelerando()),
    (9, quarter_88),
    ]

segment_maker.underlying_dynamics = [
    (0, 'mp'),
    (0, decrescendo),
    (1, 'pp'),
    (1, crescendo),
    (2, 'mp'),
    (2, decrescendo),
    (3, 'pp'),
    (3, crescendo),
    (4, 'mp'),
    (4, decrescendo),
    (5, 'pp'),
    (5, crescendo),
    (6, 'mp'),
    (6, decrescendo),
    (7, 'pp'),
    (7, crescendo),
    (8, 'mp'),
    (8, decrescendo),
    (9, 'pp'),
    ]
