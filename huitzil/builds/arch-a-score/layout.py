import baca


def main():
    spacing = baca.make_layout(
        baca.page(
            1,
            baca.system(measure=1, y_offset=50, distances=(10,)),
            baca.system(measure=5, y_offset=76, distances=(10,)),
            baca.system(measure=9, y_offset=102, distances=(10,)),
            baca.system(measure=13, y_offset=128, distances=(10,)),
            baca.system(measure=17, y_offset=154, distances=(10,)),
            baca.system(measure=22, y_offset=180, distances=(10,)),
            baca.system(measure=27, y_offset=206, distances=(10,)),
            baca.system(measure=32, y_offset=232, distances=(10,)),
            baca.system(measure=37, y_offset=258, distances=(10,)),
        ),
        baca.page(
            2,
            baca.system(measure=42, y_offset=15, distances=(10,)),
            baca.system(measure=47, y_offset=41, distances=(10,)),
            baca.system(measure=51, y_offset=67, distances=(10,)),
            baca.system(measure=55, y_offset=100, distances=(10, 15)),
            baca.system(measure=67, y_offset=145, distances=(10, 15)),
            baca.system(measure=79, y_offset=190, distances=(10, 17)),
            baca.system(measure=84, y_offset=235, distances=(10, 17)),
        ),
        baca.page(
            3,
            baca.system(measure=88, y_offset=15, distances=(10, 17)),
            baca.system(measure=93, y_offset=60, distances=(10, 17)),
            baca.system(measure=100, y_offset=105, distances=(10, 17)),
            baca.system(measure=107, y_offset=150, distances=(10, 17)),
            baca.system(measure=113, y_offset=195, distances=(10, 17)),
            baca.system(measure=118, y_offset=240, distances=(10, 17)),
        ),
        baca.page(
            4,
            baca.system(measure=123, y_offset=15, distances=(10, 17)),
            baca.system(measure=129, y_offset=60, distances=(10, 17)),
            baca.system(measure=134, y_offset=105, distances=(10, 17)),
            baca.system(measure=141, y_offset=150, distances=(10, 17)),
            baca.system(measure=152, y_offset=195, distances=(10, 17)),
            baca.system(measure=158, y_offset=240, distances=(10, 17)),
        ),
        baca.page(
            5,
            baca.system(measure=165, y_offset=15, distances=(10, 17)),
            baca.system(measure=174, y_offset=60, distances=(10, 24)),
            baca.system(measure=187, y_offset=105, distances=(10, 24)),
            baca.system(measure=200, y_offset=150 + 4, distances=(10, 17)),
            baca.system(measure=205, y_offset=195 + 2, distances=(10, 17)),
            baca.system(measure=212, y_offset=240, distances=(10, 17)),
        ),
        baca.page(
            6,
            baca.system(measure=220, y_offset=15, distances=(10, 17)),
            baca.system(measure=227, y_offset=60, distances=(10, 17)),
            baca.system(measure=233, y_offset=105, distances=(10, 17)),
            baca.system(measure=240, y_offset=150, distances=(10, 17)),
            baca.system(measure=247, y_offset=195, distances=(10, 17)),
            baca.system(measure=254, y_offset=240, distances=(10, 17)),
        ),
        spacing=(1, 44),
        overrides=(
            baca.space((1, 54), (1, 24)),
            baca.space([23, 26], (1, 16)),
            baca.space(33, (1, 16)),
            baca.space(37, (1, 16)),
            baca.space((55, 78), (1, 24)),
            baca.space((55, 58), (1, 16)),
            baca.space(86, (1, 16)),
            baca.space((93, 95), (1, 24)),
            baca.space(99, (1, 24)),
            baca.space((135, 137), (1, 16)),
            baca.space(140, (1, 16)),
            baca.space((141, 150), (1, 32)),
            baca.space((198, 199), (1, 16)),
            baca.space((205, 208), (1, 24)),
            baca.space(211, (1, 16)),
            baca.space((212, 215), (1, 20)),
            baca.space(219, (1, 20)),
        ),
    )
    baca.section.make_layout_ly(spacing)


if __name__ == "__main__":
    main()
