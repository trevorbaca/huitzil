import baca

top = 17
staves = (10, 17)
separation = 70

spacing = baca.SpacingSpecifier(
    breaks=baca.breaks(
        baca.page(
            baca.system(measure=1, y_offset=top + 0 * separation, distances=staves),
            baca.system(measure=12, y_offset=top + 1 * separation, distances=staves),
        ),
    ),
    fallback_duration=(1, 32),
)

if __name__ == "__main__":
    baca.build.make_layout_ly(spacing)
