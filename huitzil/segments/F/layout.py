import baca


breaks = baca.breaks(
    baca.page(
        [1, 15, (10, 15)],
        [7, 65, (10, 17)],
        [13, 115, (10, 15)],
        [19, 165, (10, 15)],
        ),
    )

spacing = baca.scorewide_spacing(
    __file__,
    breaks=breaks,
    fallback_duration=(1, 20),
    )
