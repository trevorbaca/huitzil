import abjad
import baca
import huitzil
import os
import typing
from abjadext import rmakers


###############################################################################
##################################### [A] #####################################
###############################################################################

### MUSIC-MAKERS ###

music: typing.List[abjad.Tuplet] = []
music_makers = []

### stage [1] (middle) ###

music_maker = huitzil.DreamsMusicMaker()
music_maker.pitch_class_trees = huitzil.pitch_classes[:6]
music_maker.extra_counts_per_division = [1, 2, 0, -1, 5]
music_maker.pc_displacement = [abjad.index(list(range(15)), 30)]
music_maker.voice_map = [
    [2, range(0, 99)],
    ]
music_makers.append(music_maker)

### stage [2] (middle & lower) ###

music_maker = huitzil.DreamsMusicMaker()
music_maker.pitch_class_trees = huitzil.pitch_classes[2:8]
music_maker.pc_operators = [abjad.Transposition(n=1)]
music_maker.extra_counts_per_division = [1, 2, 0, -1, 5]
music_maker.pc_displacement = [abjad.index(list(range(15)), 30)]
music_maker.voice_map = [
    [2, range(0, 99)],
    [3, (4, 14, 15, 28, 29, 35, 36)],
    ]
music_makers.append(music_maker)

### stage [3] (lower) ###

music_maker = huitzil.DreamsMusicMaker()
music_maker.pitch_class_trees = huitzil.pitch_classes[4:6]
music_maker.extra_counts_per_division = [4, 8, 0, -4, 20]
music_maker.pc_operators = [
    abjad.Transposition(n=2),
    abjad.Inversion(),
    ]
music_maker.pc_displacement = []
music_maker.voice_map = [
    [3, range(0, 99)],
    ]
music_makers.append(music_maker)

### stage [4] (lower & upper) ###

music_maker = huitzil.DreamsMusicMaker()
music_maker.pitch_class_trees = huitzil.pitch_classes[6:8]
music_maker.extra_counts_per_division = [4, 8, 0, -4, 20]
music_maker.pc_operators = [
    abjad.Transposition(n=3),
    ]
music_maker.pc_displacement = []
music_maker.voice_map = [
    [3, range(0, 99)],
    [1, (1, 2, 3, 6, 7, 10)],
    ]
music_makers.append(music_maker)

### stage [5] (upper) ###

music_maker = huitzil.DreamsMusicMaker()
music_maker.pitch_class_trees = huitzil.pitch_classes[8:12]
music_maker.extra_counts_per_division = [2, 4, 0, -2, 10]
music_maker.pc_operators = [
    abjad.Transposition(n=4),
    ]
music_maker.pc_displacement = [abjad.index(list(range(10, 20)), 20)]
music_maker.voice_map = [
    [1, range(0, 99)],
    ]
music_makers.append(music_maker)

### stage [6] (upper & middle) ###

music_maker = huitzil.DreamsMusicMaker()
music_maker.pitch_class_trees = huitzil.pitch_classes[10:13]
music_maker.extra_counts_per_division = [2, 4, 0, -2, 10]
music_maker.pc_operators = [
    abjad.Transposition(n=5),
    abjad.Inversion(),
    ]
music_maker.pc_displacement = [abjad.index(list(range(10)), 20)]
music_maker.voice_map = [
    [1, range(0, 99)],
    [2, (0, 1, 2, 3, 13, 14, 15, 16, 17, 18)],
    ]
music_makers.append(music_maker)

### stage [7] (upper, middle, lower) ###

music_maker = huitzil.DreamsMusicMaker()
music_maker.pitch_class_trees = huitzil.pitch_classes[12:20]
music_maker.extra_counts_per_division = [2, 4, 0, -2, 10]
music_maker.pc_operators = [abjad.Transposition(n=6)]
music_maker.pc_displacement = [abjad.index(list(range(10, 20)), 20)]
music_maker.voice_map = [
    [1, range(0, 99)],
    [2, (5, 6, 7, 8, 16, 17, 18, 23, 24, 25, 26,
        31, 32, 33, 34, 37, 38, 39, 43, 44, 45, 46, 47)],
    [3, (2, 13, 14, 27, 28, 40, 50, 51)],
    ]
music_makers.append(music_maker)

### stage [8] (middle & lower) ###

music_maker = huitzil.DreamsMusicMaker()
music_maker.pitch_class_trees = huitzil.pitch_classes[14:18]
music_maker.pc_operators = [
    abjad.Transposition(n=7),
    ]
music_maker.extra_counts_per_division = [1, 2, 0, -1, 5]
music_maker.voice_map = [
    [2, range(0, 99)],
    [3, (5, 11, 12, 13, 19, 20)],
    ]
music_makers.append(music_maker)

### stage [9] (lower) ###

music_maker = huitzil.DreamsMusicMaker()
music_maker.pitch_class_trees = huitzil.pitch_classes[16:20]
music_maker.pc_operators = [
    abjad.Transposition(n=8),
    abjad.Inversion(),
    ]
music_maker.extra_counts_per_division = [4, 8, 0, -4, 20]
music_maker.pc_displacement = [abjad.index(list(range(5)), 10)]
music_maker.voice_map = [
    [3, range(0, 99)],
    ]
music_makers.append(music_maker)

### make music ###

for music_maker in music_makers:
    music_ = music_maker()
    music.extend(music_)

measure_durations = []
current_duration = abjad.Duration(0)
ideal_measure_duration = abjad.Duration(4, 4)
for component in music:
    component_duration = abjad.inspect(component).duration()
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

### SEGMENT-MAKER ###

maker = baca.SegmentMaker(
    activate=[
        abjad.const.CLOCK_TIME,
        abjad.const.LOCAL_MEASURE_NUMBER,
        #abjad.const.SPACING,
        ],
    clock_time_extra_offset=(0, -2),
    first_segment=True,
    local_measure_number_extra_offset=(0, -5),
    segment_directory=abjad.Path(os.path.realpath(__file__)).parent,
    spacing_extra_offset=(0, 1),
    time_signatures=time_signatures,
    validate_measure_count=54,
    )

maker(
    'Global_Skips',
    baca.metronome_mark(
        '78',
        selector=baca.leaf(1 - 1),
        ),
    )

music_ = abjad.select(music)

maker(
    ('vc', 1),
    baca.rhythm(music_),
    )
