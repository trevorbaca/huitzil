import baca

top = 17
staves = (10, 15)
separation = 70

breaks = baca.breaks(
    baca.page(
        baca.system(measure=1, y_offset=top + 0 * separation, distances=staves),
        baca.system(measure=10, y_offset=top + 1 * separation, distances=staves),
        baca.system(measure=17, y_offset=top + 2 * separation, distances=staves),
    ),
)

if __name__ == "__main__":
    baca.build.make_layout_ly(breaks, fallback_duration=(1, 40))
