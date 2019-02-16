import baca


breaks = baca.breaks(
    baca.page(
        [1, 60, (10,)],
        ),
    )

spacing = baca.scorewide_spacing(
    __file__,
    breaks=breaks,
    fallback_duration=(1, 20),
    )
