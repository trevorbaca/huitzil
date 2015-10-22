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

segment_maker.tempo_map = [
    (0, quarter_44),
    (0, Accelerando()),
    (1, quarter_88),
    (1, Ritardando()),
    (2, quarter_44),
    (2, Accelerando()),
    (3, quarter_88),
    (3, Ritardando()),
    (4, quarter_44),
    (4, Accelerando()),
    (5, quarter_88),
    (5, Ritardando()),
    (6, quarter_44),
    (6, Accelerando()),
    (7, quarter_88),
    (7, Ritardando()),
    (8, quarter_44),
    (8, Accelerando()),
    (9, quarter_88),
    ]

segment_maker.underlying_dynamics = [
    (0, mp),
    (0, decrescendo),
    (1, pp),
    (1, crescendo),
    (2, mp),
    (2, decrescendo),
    (3, pp),
    (3, crescendo),
    (4, mp),
    (4, decrescendo),
    (5, pp),
    (5, crescendo),
    (6, mp),
    (6, decrescendo),
    (7, pp),
    (7, crescendo),
    (8, mp),
    (8, decrescendo),
    (9, pp),
    ]