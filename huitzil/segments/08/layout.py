import baca

top = 17
staves = (10, 15)
separation = 57

breaks = baca.breaks(
    baca.page(
        baca.system(measure=1, y_offset=top + 0 * separation, distances=staves),
        baca.system(measure=7, y_offset=top + 1 * separation, distances=staves),
        baca.system(measure=15, y_offset=top + 2 * separation, distances=staves),
        baca.system(measure=23, y_offset=top + 3 * separation, distances=staves),
    ),
)

spacing = baca.spacing(
    __file__,
    breaks=breaks,
    fallback_duration=(1, 40),
)

if __name__ == "__main__":
    baca.build.make_layout_ly(breaks, spacing)
