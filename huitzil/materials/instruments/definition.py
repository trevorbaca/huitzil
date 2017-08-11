# -*- coding: utf-8 -*-
import abjad
import baca


instruments = abjad.TypedOrderedDict([
    (
        'cello',
        abjad.instrumenttools.Cello(
            name_markup=baca.markup.instrument('Cello'),
            pitch_range='[A1, G5]',
            short_name_markup=baca.markup.short_instrument('Vc.'),
            )
        ),
    ])
