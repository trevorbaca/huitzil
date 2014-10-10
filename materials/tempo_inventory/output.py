# -*- encoding: utf-8 -*-
from abjad import *


tempo_inventory = indicatortools.TempoInventory(
    [
        indicatortools.Tempo(
            duration=durationtools.Duration(1, 8),
            units_per_minute=52,
            ),
        indicatortools.Tempo(
            duration=durationtools.Duration(1, 8),
            units_per_minute=78,
            ),
        ]
    )