import abjad
import baca


instruments = abjad.OrderedDict([
    (
        'Cello',
        abjad.Cello(
            markup=baca.markups.instrument('Cello'),
            pitch_range='[A1, G5]',
            short_markup=baca.markups.short_instrument('Vc.'),
            )
        ),
    ])
