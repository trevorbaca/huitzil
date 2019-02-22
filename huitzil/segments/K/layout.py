import baca


breaks = baca.breaks(
    baca.page(
        [1, 15, (10, 15)],
        [8, 65, (10, 15)],
        ),
    )

spacing = baca.scorewide_spacing(
    __file__,
    breaks=breaks,
    fallback_duration=(1, 20),
    )
