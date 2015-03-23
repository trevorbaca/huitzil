# -*- encoding: utf-8 -*-
from abjad import *
from abjad.tools.rhythmmakertools import BooleanPattern
from experimental import *
from huitzil import makers
from huitzil import materials


### INITIALIZATION ###
segment_maker = makers.DreamsSegmentMaker(
    calculate_duration=True,
    name='dreams',
    show_stage_annotations=False,
    )

### TEMPO MAP ###
segment_maker.tempo_map = [
    (0, materials.tempo_inventory[1]),
    ]

### MANUAL BREAKS ###
#segment_maker.page_breaks.append(32)

###############################################################################
################################ MUSIC-MAKERS #################################
###############################################################################

### stage [1] (middle) ###
music_maker = segment_maker.make_music_maker()
music_maker.pitch_class_trees = materials.pitch_classes[:6]
music_maker.extra_counts_per_division = [1, 2, 0, -1, 5]
music_maker.pc_displacement = [
    BooleanPattern(indices=range(15), period=30),
    ]
music_maker.voice_map = [
    [2, range(0, 99)],
    ]

### stage [2] (middle & lower) ###
music_maker = segment_maker.make_music_maker()
music_maker.pitch_class_trees = materials.pitch_classes[2:8]
music_maker.pc_operators = [pitchtools.Transposition(1)]
music_maker.extra_counts_per_division = [1, 2, 0, -1, 5]
music_maker.pc_displacement = [
    BooleanPattern(indices=range(15), period=30),
    ]
music_maker.voice_map = [
    [2, range(0, 99)],
    [3, (4, 14, 15, 28, 29, 35, 36)],
    ]

### stage [3] (lower) ###
music_maker = segment_maker.make_music_maker()
music_maker.pitch_class_trees = materials.pitch_classes[4:6]
music_maker.extra_counts_per_division = [4, 8, 0, -4, 20]
music_maker.pc_operators = [
    pitchtools.Transposition(2), 
    pitchtools.Inversion(),
    ]
music_maker.pc_displacement = [rhythmmakertools.mask_none()]
music_maker.voice_map = [
    [3, range(0, 99)],
    ]

### stage [4] (lower & upper) ###
music_maker = segment_maker.make_music_maker()
music_maker.pitch_class_trees = materials.pitch_classes[6:8]
music_maker.extra_counts_per_division = [4, 8, 0, -4, 20]
music_maker.pc_operators = [
    pitchtools.Transposition(3), 
    ]
music_maker.pc_displacement = [rhythmmakertools.mask_none()]
music_maker.voice_map = [
    [3, range(0, 99)],
    [1, (1, 2, 3, 6, 7, 10)],
    ]

### stage [5] (upper) ###
music_maker = segment_maker.make_music_maker()
music_maker.pitch_class_trees = materials.pitch_classes[8:12]
music_maker.extra_counts_per_division = [2, 4, 0, -2, 10]
music_maker.pc_operators = [
    pitchtools.Transposition(4), 
    ]
music_maker.pc_displacement = [
    BooleanPattern(indices=range(10, 20), period=20),
    ]
music_maker.voice_map = [
    [1, range(0, 99)],
    ]

### stage [6] (upper & middle) ###
music_maker = segment_maker.make_music_maker()
music_maker.pitch_class_trees = materials.pitch_classes[10:13]
music_maker.extra_counts_per_division = [2, 4, 0, -2, 10]
music_maker.pc_operators = [
    pitchtools.Transposition(5), 
    pitchtools.Inversion(), 
    ]
music_maker.pc_displacement = [
    BooleanPattern(indices=range(10), period=20),
    ]
music_maker.voice_map = [
    [1, range(0, 99)],
    [2, (0, 1, 2, 3, 13, 14, 15, 16, 17, 18)],
    ]

### stage [7] (upper, middle, lower) ###
music_maker = segment_maker.make_music_maker()
music_maker.pitch_class_trees = materials.pitch_classes[12:20]
music_maker.extra_counts_per_division = [2, 4, 0, -2, 10]
music_maker.pc_operators = [
    pitchtools.Transposition(6), 
    ]
music_maker.pc_displacement = [
    BooleanPattern(indices=range(10, 20), period=20),
    ]
music_maker.voice_map = [
    [1, range(0, 99)],
    [2, (5, 6, 7, 8, 16, 17, 18, 23, 24, 25, 26, 
        31, 32, 33, 34, 37, 38, 39, 43, 44, 45, 46, 47)],
    [3, (2, 13, 14, 27, 28, 40, 50, 51)],
    ]

### stage [8] (middle & lower) ###
music_maker = segment_maker.make_music_maker()
music_maker.pitch_class_trees = materials.pitch_classes[14:18]
music_maker.extra_counts_per_division = [1, 2, 0, -1, 5]
music_maker.pc_operators = [
    pitchtools.Transposition(7), 
    ]
music_maker.voice_map = [
    [2, range(0, 99)],
    [3, (5, 11, 12, 13, 19, 20)],
    ]
music_maker.index_logical_ties = True

#### stage [9] (lower) ###
#music_maker = segment_maker.make_music_maker()
#music_maker.pitch_class_trees = materials.pitch_classes[16:20]
#music_maker.extra_counts_per_division = [1, 2, 0, -1, 5]
#music_maker.pc_displacement = [rhythmmakertools.mask_none()]
#music_maker.voice_map = [
#    [3, (0, 99)],
#    ]