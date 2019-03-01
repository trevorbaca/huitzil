import baca


top = 17
staves = (8, 20)
separation = 44

breaks = baca.breaks(
    baca.page(
        baca.system(
            staves,
            measure=1,
            y_offset=top + 0 * separation,
            ),
        baca.system(
            staves,
            measure=13,
            y_offset=top + 1 * separation,
            ),
        baca.system(
            staves,
            measure=24,
            y_offset=top + 2 * separation,
            ),
        baca.system(
            staves,
            measure=35,
            y_offset=top + 3 * separation,
            ),
        baca.system(
            staves,
            measure=46,
            y_offset=top + 4 * separation,
            ),
        ),
    )

spacing = baca.scorewide_spacing(
    __file__,
    breaks=breaks,
    fallback_duration=(1, 20),
    )
