import baca


breaks = baca.breaks(
    baca.page(
        [1, 15, (8, 20)],
        [13, 61, (8, 20)],
        [24, 107, (8, 20)],
        [35, 153, (8, 20)],
        [46, 199, (8, 20)],
        ),
    )

spacing = baca.scorewide_spacing(
    __file__,
    breaks=breaks,
    fallback_duration=(1, 20),
    )
