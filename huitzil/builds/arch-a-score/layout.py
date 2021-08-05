import baca

breaks = baca.breaks(
    baca.page(
        baca.system((10,), measure=1, y_offset=50),
        baca.system((10,), measure=5, y_offset=76),
        baca.system((10,), measure=9, y_offset=102),
        baca.system((10,), measure=13, y_offset=128),
        baca.system((10,), measure=17, y_offset=154),
        baca.system((10,), measure=22, y_offset=180),
        baca.system((10,), measure=27, y_offset=206),
        baca.system((10,), measure=32, y_offset=232),
        baca.system((10,), measure=37, y_offset=258),
        number=1,
    ),
    baca.page(
        baca.system((10,), measure=42, y_offset=15),
        baca.system((10,), measure=47, y_offset=41),
        baca.system((10,), measure=51, y_offset=67),
        baca.system((10, 15), measure=55, y_offset=100),
        baca.system((10, 15), measure=67, y_offset=145),
        baca.system((10, 17), measure=79, y_offset=190),
        baca.system((10, 17), measure=84, y_offset=235),
        number=2,
    ),
    baca.page(
        baca.system((10, 17), measure=88, y_offset=15),
        baca.system((10, 17), measure=93, y_offset=60),
        baca.system((10, 17), measure=100, y_offset=105),
        baca.system((10, 17), measure=107, y_offset=150),
        baca.system((10, 17), measure=113, y_offset=195),
        baca.system((10, 17), measure=118, y_offset=240),
        number=3,
    ),
    baca.page(
        baca.system((10, 17), measure=123, y_offset=15),
        baca.system((10, 17), measure=129, y_offset=60),
        baca.system((10, 17), measure=134, y_offset=105),
        baca.system((10, 17), measure=141, y_offset=150),
        baca.system((10, 17), measure=152, y_offset=195),
        baca.system((10, 17), measure=158, y_offset=240),
        number=4,
    ),
    baca.page(
        baca.system((10, 17), measure=165, y_offset=15),
        baca.system((10, 24), measure=174, y_offset=60),
        baca.system((10, 24), measure=187, y_offset=105),
        baca.system((10, 17), measure=200, y_offset=150 + 4),
        baca.system((10, 17), measure=205, y_offset=195 + 2),
        baca.system((10, 17), measure=212, y_offset=240),
        number=5,
    ),
    baca.page(
        baca.system((10, 17), measure=220, y_offset=15),
        baca.system((10, 17), measure=227, y_offset=60),
        baca.system((10, 17), measure=233, y_offset=105),
        baca.system((10, 17), measure=240, y_offset=150),
        baca.system((10, 17), measure=247, y_offset=195),
        baca.system((10, 17), measure=254, y_offset=240),
        number=6,
    ),
)

spacing = baca.scorewide_spacing(
    __file__,
    breaks=breaks,
    fallback_duration=(1, 44),
)
spacing.override((1, 54), (1, 24))
spacing.override([23, 26], (1, 16))
spacing.override(33, (1, 16))
spacing.override(37, (1, 16))
spacing.override((55, 78), (1, 24))
spacing.override((55, 58), (1, 16))
spacing.override(86, (1, 16))
spacing.override((93, 95), (1, 24))
spacing.override(99, (1, 24))
spacing.override((135, 137), (1, 16))
spacing.override(140, (1, 16))
spacing.override((141, 150), (1, 32))
spacing.override((198, 199), (1, 16))
spacing.override((205, 208), (1, 24))
spacing.override(211, (1, 16))
spacing.override((212, 215), (1, 20))
spacing.override(219, (1, 20))

if __name__ == "__main__":
    baca.build.make_layout_ly(__file__, breaks, spacing)
