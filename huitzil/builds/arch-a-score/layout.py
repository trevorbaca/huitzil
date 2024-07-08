import baca


def main(environment):
    breaks = baca.layout.Breaks(
        baca.layout.Page(
            1,
            baca.layout.System(1, y_offset=50, distances=(10,)),
            baca.layout.System(5, y_offset=76, distances=(10,)),
            baca.layout.System(9, y_offset=102, distances=(10,)),
            baca.layout.System(13, y_offset=128, distances=(10,)),
            baca.layout.System(17, y_offset=154, distances=(10,)),
            baca.layout.System(22, y_offset=180, distances=(10,)),
            baca.layout.System(27, y_offset=206, distances=(10,)),
            baca.layout.System(32, y_offset=232, distances=(10,)),
            baca.layout.System(37, y_offset=258, distances=(10,)),
        ),
        baca.layout.Page(
            2,
            baca.layout.System(42, y_offset=15, distances=(10,)),
            baca.layout.System(47, y_offset=41, distances=(10,)),
            baca.layout.System(51, y_offset=67, distances=(10,)),
            baca.layout.System(55, y_offset=100, distances=(10, 15)),
            baca.layout.System(67, y_offset=145, distances=(10, 15)),
            baca.layout.System(79, y_offset=190, distances=(10, 17)),
            baca.layout.System(84, y_offset=235, distances=(10, 17)),
        ),
        baca.layout.Page(
            3,
            baca.layout.System(88, y_offset=15, distances=(10, 17)),
            baca.layout.System(93, y_offset=60, distances=(10, 17)),
            baca.layout.System(100, y_offset=105, distances=(10, 17)),
            baca.layout.System(107, y_offset=150, distances=(10, 17)),
            baca.layout.System(113, y_offset=195, distances=(10, 17)),
            baca.layout.System(118, y_offset=240, distances=(10, 17)),
        ),
        baca.layout.Page(
            4,
            baca.layout.System(123, y_offset=15, distances=(10, 17)),
            baca.layout.System(129, y_offset=60, distances=(10, 17)),
            baca.layout.System(134, y_offset=105, distances=(10, 17)),
            baca.layout.System(141, y_offset=150, distances=(10, 17)),
            baca.layout.System(152, y_offset=195, distances=(10, 17)),
            baca.layout.System(158, y_offset=240, distances=(10, 17)),
        ),
        baca.layout.Page(
            5,
            baca.layout.System(165, y_offset=15, distances=(10, 17)),
            baca.layout.System(174, y_offset=60, distances=(10, 24)),
            baca.layout.System(187, y_offset=105, distances=(10, 24)),
            baca.layout.System(200, y_offset=150 + 4, distances=(10, 17)),
            baca.layout.System(205, y_offset=195 + 2, distances=(10, 17)),
            baca.layout.System(212, y_offset=240, distances=(10, 17)),
        ),
        baca.layout.Page(
            6,
            baca.layout.System(220, y_offset=15, distances=(10, 17)),
            baca.layout.System(227, y_offset=60, distances=(10, 17)),
            baca.layout.System(233, y_offset=105, distances=(10, 17)),
            baca.layout.System(240, y_offset=150, distances=(10, 17)),
            baca.layout.System(247, y_offset=195, distances=(10, 17)),
            baca.layout.System(254, y_offset=240, distances=(10, 17)),
        ),
    )
    spacing = baca.layout.Spacing(
        default=(1, 44),
        strict_overrides=(
            baca.layout.Override((1, 54), (1, 24)),
            baca.layout.Override([23, 26], (1, 16)),
            baca.layout.Override(33, (1, 16)),
            baca.layout.Override(37, (1, 16)),
            baca.layout.Override((55, 78), (1, 24)),
            baca.layout.Override((55, 58), (1, 16)),
            baca.layout.Override(86, (1, 16)),
            baca.layout.Override((93, 95), (1, 24)),
            baca.layout.Override(99, (1, 24)),
            baca.layout.Override((135, 137), (1, 16)),
            baca.layout.Override(140, (1, 16)),
            baca.layout.Override((141, 150), (1, 32)),
            baca.layout.Override((198, 199), (1, 16)),
            baca.layout.Override((205, 208), (1, 24)),
            baca.layout.Override(211, (1, 16)),
            baca.layout.Override((212, 215), (1, 20)),
            baca.layout.Override(219, (1, 20)),
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
