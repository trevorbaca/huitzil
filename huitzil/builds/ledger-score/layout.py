import baca


def main(environment):
    breaks = baca.layout.Breaks(
        baca.layout.Page(
            1,
            baca.layout.System(1, y_offset=45, distances=(10,)),
            baca.layout.System(10, y_offset=71, distances=(10,)),
            baca.layout.System(17, y_offset=97, distances=(10,)),
            baca.layout.System(26, y_offset=123, distances=(10,)),
            baca.layout.System(35, y_offset=149, distances=(10,)),
            baca.layout.System(45, y_offset=175, distances=(10,)),
            baca.layout.System(55, y_offset=201, distances=(15, 17)),
        ),
        baca.layout.Page(
            2,
            baca.layout.System(63, y_offset=15, distances=(10, 15)),
            baca.layout.System(79, y_offset=60, distances=(10, 17)),
            baca.layout.System(86, y_offset=105, distances=(10, 17)),
            baca.layout.System(96, y_offset=150, distances=(10, 17)),
            baca.layout.System(107, y_offset=195, distances=(10, 17)),
        ),
        baca.layout.Page(
            3,
            baca.layout.System(115, y_offset=15, distances=(10, 17)),
            baca.layout.System(124, y_offset=60, distances=(10, 17)),
            baca.layout.System(134, y_offset=105, distances=(10, 17)),
            baca.layout.System(144, y_offset=150, distances=(10, 17)),
            baca.layout.System(154, y_offset=195, distances=(10, 17)),
        ),
        baca.layout.Page(
            4,
            baca.layout.System(164, y_offset=15, distances=(10, 17)),
            baca.layout.System(174, y_offset=60, distances=(10, 22)),
            baca.layout.System(198, y_offset=105, distances=(10, 17)),
            baca.layout.System(205, y_offset=150, distances=(10, 17)),
            baca.layout.System(215, y_offset=195, distances=(10, 17)),
        ),
        baca.layout.Page(
            5,
            baca.layout.System(226, y_offset=15, distances=(10, 17)),
            baca.layout.System(235, y_offset=60, distances=(10, 22)),
            baca.layout.System(245, y_offset=105, distances=(10, 17)),
            baca.layout.System(255, y_offset=150, distances=(10, 17)),
        ),
    )
    spacing = baca.layout.Spacing(
        default=(1, 44),
        overrides=(
            baca.layout.Override((1, 54), (1, 24)),
            baca.layout.Override((55, 78), (1, 24)),
        ),
    )
    return baca.section.make_layout_score(
        breaks,
        environment.time_signatures,
        spacing=spacing,
    )


if __name__ == "__main__":
    environment = baca.build.read_build_directory_environment()
    lilypond_file, bol_measure_numbers = main(environment)
    baca.build.persist_build_layout_ily(environment.build_directory, lilypond_file)
    baca.build.write_bol_metadata(environment.build_directory, bol_measure_numbers)
