import baca

top = 17
staves = (10, 17)
separation = 70


def main():
    spacing = baca.make_layout(
        baca.page(
            1,
            baca.system(measure=1, y_offset=top + 0 * separation, distances=staves),
            baca.system(measure=12, y_offset=top + 1 * separation, distances=staves),
        ),
        spacing=(1, 32),
    )
    baca.section.make_layout_ly(spacing)


if __name__ == "__main__":
    main()
