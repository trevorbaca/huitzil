import abjad
import baca


instruments = abjad.InstrumentDictionary([
    (
        'Cello',
        abjad.Cello(
            markup=baca.markup.instrument('Cello'),
            pitch_range='[A1, G5]',
            short_markup=baca.markup.short_instrument('Vc.'),
            )
        ),
    ])
