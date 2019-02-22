import baca


breaks = baca.breaks(
    baca.page(
        [1, 15, (8, 20)],
        [9, 65, (8, 20)],
        [17, 115, (8, 20)],
        [25, 165, (8, 20)],
        ),
    )

spacing = baca.scorewide_spacing(
    __file__,
    breaks=breaks,
    fallback_duration=(1, 20),
    )
