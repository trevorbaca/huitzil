import baca

breaks = baca.breaks(
    baca.page(  # 1
        [1, 50, (10,)],
        [5, 76, (10,)],
        [9, 102, (10,)],
        [13, 128, (10,)],
        [17, 154, (10,)],
        [22, 180, (10,)],
        [27, 206, (10,)],
        [32, 232, (10,)],
        [37, 258, (10,)],
    ),
    baca.page(  # 2
        [42, 15, (10,)],
        [47, 41, (10,)],
        [51, 67, (10,)],
        [55, 100, (10, 15)],
        [67, 145, (10, 15)],
        [79, 190, (10, 17)],
        [84, 235, (10, 17)],
    ),
    baca.page(  # 3
        [88, 15, (10, 17)],
        [93, 60, (10, 17)],
        [100, 105, (10, 17)],
        [107, 150, (10, 17)],
        [113, 195, (10, 17)],
        [118, 240, (10, 17)],
    ),
    baca.page(  # 4
        [123, 15, (10, 17)],
        [129, 60, (10, 17)],
        [134, 105, (10, 17)],
        [141, 150, (10, 17)],
        [152, 195, (10, 17)],
        [158, 240, (10, 17)],
    ),
    baca.page(  # 5
        [165, 15, (10, 17)],
        [174, 60, (10, 24)],
        [187, 105, (10, 24)],
        [200, 150 + 4, (10, 17)],
        [205, 195 + 2, (10, 17)],
        [212, 240, (10, 17)],
    ),
    baca.page(  # 6
        [220, 15, (10, 17)],
        [227, 60, (10, 17)],
        [233, 105, (10, 17)],
        [240, 150, (10, 17)],
        [247, 195, (10, 17)],
        [254, 240, (10, 17)],
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
