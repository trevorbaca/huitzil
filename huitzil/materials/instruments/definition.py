# -*- coding: utf-8 -*-
import abjad
import baca


instruments = abjad.TypedOrderedDict([
    (
        'cello', 
        abjad.instrumenttools.Cello(
            instrument_name_markup=\
                baca.markup.instrument_name('Cello'),
            pitch_range='[A1, G5]',
            short_instrument_name_markup=\
                baca.markup.short_instrument_name('Vc.'),
            )
        ),
    ])
