import abjad
import baca


instruments = abjad.OrderedDict([
    (
        'Cello',
        abjad.Cello(
            markup=baca.markuplib.instrument('Cello'),
            pitch_range='[A1, G5]',
            short_markup=baca.markuplib.short_instrument('Vc.'),
            )
        ),
    ])
