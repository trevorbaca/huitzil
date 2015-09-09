# -*- coding: utf-8 -*-
from abjad import *
import baca


pitch_classes = baca.makers.ZaggedPitchClassMaker(
    pc_cells=[
        [6, 4, 5, 7, 8],
        [9, 3, 2, 4, 5],
        [1, 10, 9, 11, 0],
        ],
    division_ratios=[
        (1,),
        (2, 3),
        (1, 4),
        (1,),
        (2, 3),
        ],
    grouping_counts=[4, 2, 2, 3, 1],
    )

pitch_classes = pitch_classes()