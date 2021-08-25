import baca

top = 17
staves = (10, 15)
separation = 57

spacing = baca.make_layout(
    baca.page(
        1,
        baca.system(measure=1, y_offset=top + 0 * separation, distances=staves),
        baca.system(measure=16, y_offset=top + 1 * separation, distances=staves),
    ),
    spacing=(1, 20),
)

if __name__ == "__main__":
    baca.build.make_layout_ly(spacing)
