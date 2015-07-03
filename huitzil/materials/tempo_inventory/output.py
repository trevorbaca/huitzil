# -*- encoding: utf-8 -*-
from abjad.tools import durationtools
from abjad.tools import indicatortools


tempo_inventory = indicatortools.TempoInventory(
    [
        indicatortools.Tempo(
            reference_duration=durationtools.Duration(1, 8),
            units_per_minute=52,
            ),
        indicatortools.Tempo(
            reference_duration=durationtools.Duration(1, 8),
            units_per_minute=78,
            ),
        ]
    )