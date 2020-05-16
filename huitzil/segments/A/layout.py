import baca

breaks = baca.breaks(
    baca.page(
        [1, 50, (15,)],
        [10, 77, (15,)],
        [17, 104, (15,)],
        [26, 131, (15,)],
        [35, 158, (15,)],
        [45, 185, (15,)],
        [52, 212, (15,)],
        ),
    )

spacing = baca.scorewide_spacing(
    __file__,
    breaks=breaks,
    fallback_duration=(1, 24),
    )
