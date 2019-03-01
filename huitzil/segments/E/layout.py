import baca


breaks = baca.breaks(
    baca.page(
        [1, 15, (10, 15)],
        [7, 65, (10, 15)],
        [15, 115, (10, 15)],
        ),
    )

top = 17
staves = (10, 15)
separation = 57

breaks = baca.breaks(
    baca.page(
        baca.system(
            staves,
            measure=1,
            y_offset=top + 0 * separation,
            ),
        baca.system(
            staves,
            measure=7,
            y_offset=top + 1 * separation,
            ),
        baca.system(
            staves,
            measure=15,
            y_offset=top + 2 * separation,
            ),
        ),
    )

spacing = baca.scorewide_spacing(
    __file__,
    breaks=breaks,
    fallback_duration=(1, 20),
    )
