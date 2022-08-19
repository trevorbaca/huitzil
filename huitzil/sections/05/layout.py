import baca

top = 17
staves = (10, 15)
separation = 70

spacing = baca.make_layout(
    baca.page(
        1,
        baca.system(measure=1, y_offset=top + 0 * separation, distances=staves),
        baca.system(measure=10, y_offset=top + 1 * separation, distances=staves),
        baca.system(measure=17, y_offset=top + 2 * separation, distances=staves),
    ),
    spacing=(1, 40),
)

if __name__ == "__main__":
    baca.interpret.make_layout_ly(spacing)
