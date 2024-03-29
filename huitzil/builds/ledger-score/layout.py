import baca


def main():
    spacing = baca.make_layout(
        baca.page(
            1,
            baca.system(measure=1, y_offset=45, distances=(10,)),
            baca.system(measure=10, y_offset=71, distances=(10,)),
            baca.system(measure=17, y_offset=97, distances=(10,)),
            baca.system(measure=26, y_offset=123, distances=(10,)),
            baca.system(measure=35, y_offset=149, distances=(10,)),
            baca.system(measure=45, y_offset=175, distances=(10,)),
            baca.system(measure=1, y_offset=201, distances=(15, 17)),
        ),
        baca.page(
            2,
            baca.system(measure=63, y_offset=15, distances=(10, 15)),
            baca.system(measure=79, y_offset=60, distances=(10, 17)),
            baca.system(measure=86, y_offset=105, distances=(10, 17)),
            baca.system(measure=96, y_offset=150, distances=(10, 17)),
            baca.system(measure=107, y_offset=195, distances=(10, 17)),
        ),
        baca.page(
            3,
            baca.system(measure=115, y_offset=15, distances=(10, 17)),
            baca.system(measure=124, y_offset=60, distances=(10, 17)),
            baca.system(measure=134, y_offset=105, distances=(10, 17)),
            baca.system(measure=144, y_offset=150, distances=(10, 17)),
            baca.system(measure=154, y_offset=195, distances=(10, 17)),
        ),
        baca.page(
            4,
            baca.system(measure=164, y_offset=15, distances=(10, 17)),
            baca.system(measure=174, y_offset=60, distances=(10, 22)),
            baca.system(measure=198, y_offset=105, distances=(10, 17)),
            baca.system(measure=205, y_offset=150, distances=(10, 17)),
            baca.system(measure=215, y_offset=195, distances=(10, 17)),
        ),
        baca.page(
            5,
            baca.system(measure=226, y_offset=15, distances=(10, 17)),
            baca.system(measure=235, y_offset=60, distances=(10, 22)),
            baca.system(measure=245, y_offset=105, distances=(10, 17)),
            baca.system(measure=255, y_offset=150, distances=(10, 17)),
        ),
        spacing=(1, 44),
        overrides=(
            baca.space((1, 54), (1, 24)),
            baca.space((55, 78), (1, 24)),
        ),
    )
    baca.section.make_layout_ly(spacing)


if __name__ == "__main__":
    main()
