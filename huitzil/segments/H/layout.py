import baca


top = 17
staves = (8, 20)
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
            measure=9,
            y_offset=top + 1 * separation,
            ),
        baca.system(
            staves,
            measure=17,
            y_offset=top + 2 * separation,
            ),
        baca.system(
            staves,
            measure=25,
            y_offset=top + 3 * separation,
            ),
        ),
    )

spacing = baca.scorewide_spacing(
    __file__,
    breaks=breaks,
    fallback_duration=(1, 20),
    )
