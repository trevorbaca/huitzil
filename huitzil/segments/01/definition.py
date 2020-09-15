import typing

import abjad
import baca

import huitzil

###############################################################################
##################################### [A] #####################################
###############################################################################

### MUSIC-MAKERS ###

music: typing.List[abjad.Tuplet] = []
music_makers = []

### stage [1] (middle) ###

music_maker = huitzil.DreamsMusicMaker(
    [1, 2, 0, -1, 5],
    huitzil.pitch_classes[:6],
    [[2, range(0, 99)]],
    pc_displacement=[abjad.index(list(range(15)), 30)],
)
music_makers.append(music_maker)

### stage [2] (middle & lower) ###

music_maker = huitzil.DreamsMusicMaker(
    [1, 2, 0, -1, 5],
    huitzil.pitch_classes[2:8],
    [
        [2, range(0, 99)],
        [3, (4, 14, 15, 28, 29, 35, 36)],
    ],
    pc_displacement=[abjad.index(list(range(15)), 30)],
    pc_operators=[abjad.Transposition(n=1)],
)
music_makers.append(music_maker)

### stage [3] (lower) ###

music_maker = huitzil.DreamsMusicMaker(
    [4, 8, 0, -4, 20],
    huitzil.pitch_classes[4:6],
    [
        [3, range(0, 99)],
    ],
    pc_operators=[
        abjad.Transposition(n=2),
        abjad.Inversion(),
    ],
)
music_makers.append(music_maker)

### stage [4] (lower & upper) ###

music_maker = huitzil.DreamsMusicMaker(
    [4, 8, 0, -4, 20],
    huitzil.pitch_classes[6:8],
    [
        [3, range(0, 99)],
        [1, (1, 2, 3, 6, 7, 10)],
    ],
    pc_operators=[
        abjad.Transposition(n=3),
    ],
)
music_makers.append(music_maker)

### stage [5] (upper) ###

music_maker = huitzil.DreamsMusicMaker(
    [2, 4, 0, -2, 10],
    huitzil.pitch_classes[8:12],
    [
        [1, range(0, 99)],
    ],
    pc_displacement=[abjad.index(list(range(10, 20)), 20)],
    pc_operators=[
        abjad.Transposition(n=4),
    ],
)
music_makers.append(music_maker)

### stage [6] (upper & middle) ###

music_maker = huitzil.DreamsMusicMaker(
    [2, 4, 0, -2, 10],
    huitzil.pitch_classes[10:13],
    [
        [1, range(0, 99)],
        [2, (0, 1, 2, 3, 13, 14, 15, 16, 17, 18)],
    ],
    pc_displacement=[abjad.index(list(range(10)), 20)],
    pc_operators=[
        abjad.Transposition(n=5),
        abjad.Inversion(),
    ],
)
music_makers.append(music_maker)

### stage [7] (upper, middle, lower) ###

music_maker = huitzil.DreamsMusicMaker(
    [2, 4, 0, -2, 10],
    huitzil.pitch_classes[12:20],
    [
        [1, range(0, 99)],
        [
            2,
            (
                5,
                6,
                7,
                8,
                16,
                17,
                18,
                23,
                24,
                25,
                26,
                31,
                32,
                33,
                34,
                37,
                38,
                39,
                43,
                44,
                45,
                46,
                47,
            ),
        ],
        [3, (2, 13, 14, 27, 28, 40, 50, 51)],
    ],
    pc_displacement=[abjad.index(list(range(10, 20)), 20)],
    pc_operators=[abjad.Transposition(n=6)],
)
music_makers.append(music_maker)

### stage [8] (middle & lower) ###

music_maker = huitzil.DreamsMusicMaker(
    [1, 2, 0, -1, 5],
    huitzil.pitch_classes[14:18],
    [
        [2, range(0, 99)],
        [3, (5, 11, 12, 13, 19, 20)],
    ],
    pc_operators=[
        abjad.Transposition(n=7),
    ],
)
music_makers.append(music_maker)

### stage [9] (lower) ###

music_maker = huitzil.DreamsMusicMaker(
    [4, 8, 0, -4, 20],
    huitzil.pitch_classes[16:20],
    [
        [3, range(0, 99)],
    ],
    pc_displacement=[abjad.index(list(range(5)), 10)],
    pc_operators=[
        abjad.Transposition(n=8),
        abjad.Inversion(),
    ],
)
music_makers.append(music_maker)

### make music ###

for music_maker in music_makers:
    music_ = music_maker()
    music.extend(music_)

measure_durations = []
current_duration = abjad.Duration(0)
ideal_measure_duration = abjad.Duration(4, 4)
for component in music:
    component_duration = abjad.get.duration(component)
    candidate_duration = current_duration + component_duration
    if ideal_measure_duration < candidate_duration:
        if 0 < current_duration:
            measure_durations.append(current_duration)
        current_duration = component_duration
    else:
        current_duration = candidate_duration
measure_durations.append(current_duration)
time_signatures = []
for measure_duration in measure_durations:
    duration = measure_duration.with_denominator(4)
    time_signatures.append(duration)

music_ = abjad.select(music)

### SEGMENT-MAKER ###

maker = baca.SegmentMaker(
    activate=[
        baca.tags.CLOCK_TIME,
        baca.tags.LOCAL_MEASURE_NUMBER,
        # TODO: make this work
        # baca.const.SPACING,
    ],
    check_all_are_pitched=True,
    clock_time_extra_offset=(0, -2),
    deactivate=[
        baca.tags.DEFAULT_INSTRUMENT_ALERT,
    ],
    first_segment=True,
    local_measure_number_extra_offset=(0, -5),
    segment_directory=baca.Path(__file__).resolve().parent,
    spacing_extra_offset=(0, 1),
    time_signatures=time_signatures,
    validate_measure_count=54,
)

# skips

maker(
    "Global_Skips",
    baca.metronome_mark(
        "78",
        selector=baca.leaf(1 - 1),
    ),
)

# vc

maker(
    ("vc", 1),
    baca.markup(
        r"\huitzil-phrasing-dynamics-see-preface-markup",
        abjad.tweak(9).staff_padding,
        direction=abjad.Down,
        literal=True,
    ),
    baca.music(music_, do_not_check_total_duration=True),
)

maker(
    ("vc", (1, 51)),
    baca.tuplet_bracket_staff_padding(3),
)

maker(
    ("vc", 8),
    baca.suite(
        baca.untie(baca.pleaf(-2)),
        baca.chunk(
            baca.repeat_tie(baca.pleaf(0)),
            baca.repeat_tie_extra_offset((-1.5, 0)),
            selector=baca.pleaf(-1),
        ),
    ),
)

maker(
    ("vc", 20),
    baca.repeat_tie(baca.pleaf(0)),
)

maker(
    ("vc", 48),
    baca.repeat_tie(baca.pleaf(0)),
)

maker(
    ("vc", (52, 54)),
    baca.tuplet_bracket_staff_padding(4),
)


maker(
    ("vc", 53),
    baca.breathe(),
)

maker(
    ("vc", 54),
    baca.only_score(
        baca.breathe(
            baca.pleaf(-1),
            abjad.tweak((0, 2)).extra_offset,
        ),
    ),
    baca.only_segment(
        baca.breathe(),
    ),
)

# rh

maker(
    "rh",
    baca.literal(r"\stopStaff"),
    baca.mmrest_transparent(
        selector=baca.leaves(),
    ),
)
