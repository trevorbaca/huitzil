import baca


breaks = baca.breaks(
    baca.page(
        [1, 50, (15,)],
        [8, 80, (15,)],
        [14, 110, (15,)],
        [19, 140, (15,)],
        [26, 170, (15,)],
        [32, 200, (15,)],
        ),
    baca.page(
        [39, 15, (15,)],
        [47, 55, (15,)],
        [52, 95, (15,)],
        ),
    )

spacing = baca.scorewide_spacing(
    __file__,
    breaks=breaks,
    fallback_duration=(1, 20),
    )
