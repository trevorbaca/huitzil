# -*- coding: utf-8 -*-
import abjad


tempo_inventory = abjad.indicatortools.TempoInventory(
    [
        abjad.Tempo(
            reference_duration=abjad.Duration(1, 8),
            units_per_minute=52,
            ),
        abjad.Tempo(
            reference_duration=abjad.Duration(1, 8),
            units_per_minute=78,
            ),
        ]
    )
