import baca

top = 17
staves = (10, 17)
separation = 70

breaks = baca.breaks(
    baca.page(
        baca.system(
            staves,
            measure=1,
            y_offset=top + 0 * separation,
        ),
        baca.system(
            staves,
            measure=12,
            y_offset=top + 1 * separation,
        ),
    ),
)

spacing = baca.scorewide_spacing(
    __file__,
    breaks=breaks,
    fallback_duration=(1, 32),
)

if __name__ == "__main__":
    baca.build.make_layout_ly(__file__, breaks, spacing)
