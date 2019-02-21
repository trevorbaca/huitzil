import baca


breaks = baca.breaks(
    baca.page(
        [1, 15, (10, 15)],
        [8, 65, (10, 17)],
        [15, 115, (10, 15)],
        [22, 165, (10, 15)],
        ),
    )

spacing = baca.scorewide_spacing(
    __file__,
    breaks=breaks,
    fallback_duration=(1, 20),
    )
