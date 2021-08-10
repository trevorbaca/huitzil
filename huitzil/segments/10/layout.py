import baca

top = 17
staves = (10, 15)
separation = 57

breaks = baca.breaks(
    baca.page(
        baca.system(measure=1, y_offset=top + 0 * separation, distances=staves),
    ),
)

if __name__ == "__main__":
    baca.build.make_layout_ly(breaks, fallback_duration=(1, 32))
