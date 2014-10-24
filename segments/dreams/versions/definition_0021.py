# -*- encoding: utf-8 -*-
from abjad import *
from abjad.tools.rhythmmakertools import BooleanPattern
from experimental import *
from huitzil import makers
from huitzil import materials


### INITIALIZATION ###
segment_maker = makers.DreamsSegmentMaker(
    #calculate_duration=True,
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
music_maker.index_logical_ties = True

#### stage [3] (lower) ###
#music_maker = segment_maker.make_music_maker()
#music_maker.pitch_class_trees = materials.pitch_classes[6:8]
#music_maker.extra_counts_per_division = [1, 2, 0, -1, 5]
#music_maker.pc_displacement = [
#    BooleanPattern(indices=range(5), period=10),
#    ]
#music_maker.voice_map = [
#    [3, range(0, 99)],
#    ]
#
#### stage [5] (upper) ###
#music_maker = segment_maker.make_music_maker()
#music_maker.pitch_class_trees = materials.pitch_classes[12:16]
#music_maker.extra_counts_per_division = [1, 2, 0, -1, 5]
#music_maker.pc_displacement = [
#    BooleanPattern(indices=range(5), period=10),
#    ]
#music_maker.voice_map = [
#    [1, range(0, 99)],
#    ]
#
#### stage [9] (lower) ###
#music_maker = segment_maker.make_music_maker()
#music_maker.pitch_class_trees = materials.pitch_classes[16:20]
#music_maker.extra_counts_per_division = [1, 2, 0, -1, 5]
#music_maker.pc_displacement = [rhythmmakertools.mask_none()]
#music_maker.voice_map = [
#    [3, (0, 99)],
#    ]