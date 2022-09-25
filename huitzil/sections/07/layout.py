import baca

top = 17
staves = (8, 22)
separation = 70

spacing = baca.make_layout(
    baca.page(
        1,
        baca.system(measure=1, y_offset=top + 0 * separation, distances=staves),
    ),
    spacing=(1, 28),
)

if __name__ == "__main__":
    baca.section.make_layout_ly(spacing)
