import baca


breaks = baca.breaks(
    baca.page(
        [1, 60, (10,)],
        [8, 90, (10,)],
        [14, 120, (10,)],
        [19, 150, (10,)],
        [26, 180, (10,)],
        [32, 210, (10,)],
        ),
    baca.page(
        [39, 0, (10,)],
        [47, 30, (10,)],
        [52, 60, (10,)],
        ),
    )

spacing = baca.scorewide_spacing(
    __file__,
    breaks=breaks,
    fallback_duration=(1, 20),
    )
