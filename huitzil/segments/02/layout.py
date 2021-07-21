import baca

top = 17
staves = (10, 15)
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
            measure=16,
            y_offset=top + 1 * separation,
        ),
    ),
)

spacing = baca.scorewide_spacing(
    __file__,
    breaks=breaks,
    fallback_duration=(1, 20),
)

if __name__ == "__main__":
    baca.build.make_layout_ly(__file__, breaks, spacing)
