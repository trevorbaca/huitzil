import baca

breaks = baca.breaks(
    baca.page(
        baca.system((15,), measure=1, y_offset=50),
        baca.system((15,), measure=10, y_offset=77),
        baca.system((15,), measure=17, y_offset=104),
        baca.system((15,), measure=26, y_offset=131),
        baca.system((15,), measure=35, y_offset=158),
        baca.system((15,), measure=45, y_offset=185),
        baca.system((15,), measure=52, y_offset=212),
    ),
)

spacing = baca.scorewide_spacing(
    __file__,
    breaks=breaks,
    fallback_duration=(1, 24),
)

if __name__ == "__main__":
    baca.build.make_layout_ly(__file__, breaks, spacing)
