import baca

breaks = baca.breaks(
    baca.page(
        baca.system((10,), measure=1, y_offset=45),
        baca.system((10,), measure=10, y_offset=71),
        baca.system((10,), measure=17, y_offset=97),
        baca.system((10,), measure=26, y_offset=123),
        baca.system((10,), measure=35, y_offset=149),
        baca.system((10,), measure=45, y_offset=175),
        baca.system((15, 17), measure=1, y_offset=201),
        number=1,
    ),
    baca.page(
        baca.system((10, 15), measure=63, y_offset=15),
        baca.system((10, 17), measure=79, y_offset=60),
        baca.system((10, 17), measure=86, y_offset=105),
        baca.system((10, 17), measure=96, y_offset=150),
        baca.system((10, 17), measure=107, y_offset=195),
        number=2,
    ),
    baca.page(
        baca.system((10, 17), measure=115, y_offset=15),
        baca.system((10, 17), measure=124, y_offset=60),
        baca.system((10, 17), measure=134, y_offset=105),
        baca.system((10, 17), measure=144, y_offset=150),
        baca.system((10, 17), measure=154, y_offset=195),
        number=3,
    ),
    baca.page(
        baca.system((10, 17), measure=164, y_offset=15),
        baca.system((10, 22), measure=174, y_offset=60),
        baca.system((10, 17), measure=198, y_offset=105),
        baca.system((10, 17), measure=205, y_offset=150),
        baca.system((10, 17), measure=215, y_offset=195),
        number=4,
    ),
    baca.page(
        baca.system((10, 17), measure=226, y_offset=15),
        baca.system((10, 22), measure=235, y_offset=60),
        baca.system((10, 17), measure=245, y_offset=105),
        baca.system((10, 17), measure=255, y_offset=150),
        number=5,
    ),
)

spacing = baca.scorewide_spacing(
    __file__,
    breaks=breaks,
    fallback_duration=(1, 44),
)
spacing.override((1, 54), (1, 24))
spacing.override((55, 78), (1, 24))

if __name__ == "__main__":
    baca.build.make_layout_ly(__file__, breaks, spacing)
