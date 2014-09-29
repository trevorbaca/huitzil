# -*- encoding: utf-8 -*-
from abjad import *
import baca


pitch_classes = baca.library.makers.ZaggedPitchClassMaker(
    pc_cells=[
        [6, 4, 5, 7, 8],
        [9, 3, 2, 4, 5],
        [1, 10, 9, 11, 0, 2],
        ],
    division_cells=[
        [
            [1],
            [1],
            ],
        [
            [1],
            [1, 1],
            ],
        ],
    grouping_counts=[1, 2],
    )