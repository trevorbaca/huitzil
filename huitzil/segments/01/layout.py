import baca

breaks = baca.breaks(
    baca.page(
        baca.system(measure=1, y_offset=50, distances=(15,)),
        baca.system(measure=10, y_offset=77, distances=(15,)),
        baca.system(measure=17, y_offset=104, distances=(15,)),
        baca.system(measure=26, y_offset=131, distances=(15,)),
        baca.system(measure=35, y_offset=158, distances=(15,)),
        baca.system(measure=45, y_offset=185, distances=(15,)),
        baca.system(measure=52, y_offset=212, distances=(15,)),
    ),
)

spacing = baca.scorewide_spacing(
    __file__,
    breaks=breaks,
    fallback_duration=(1, 24),
)

if __name__ == "__main__":
    baca.build.make_layout_ly(__file__, breaks, spacing)
