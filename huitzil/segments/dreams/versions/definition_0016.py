# -*- encoding: utf-8 -*-
from abjad import *
from abjad.tools.rhythmmakertools import BooleanPattern
from experimental import *
from huitzil import makers
from huitzil import materials


### INITIALIZATION ###
segment_maker = makers.DreamsSegmentMaker(
    name='dreams',
    show_stage_annotations=False,
    )

### TEMPO MAP ###
segment_maker.tempo_map = [
    (1, materials.tempo_inventory[0]),
    ]

### MANUAL BREAKS ###
segment_maker.page_breaks.append(32)

### ABBREVIATIONS ###
infinity = mathtools.Infinity()

###############################################################################
################################ MUSIC-MAKERS #################################
###############################################################################

#### stage [1] (middle voice) ###
#music_maker = segment_maker.make_music_maker()
#music_maker.pitch_class_trees = materials.pitch_classes[:12]
#music_maker.extra_counts_per_division = [1, 2, 0, -1, 5]
#music_maker.pc_displacement = [
#    BooleanPattern(indices=range(15), period=30),
#    ]
#music_maker.voice_map = [
#    [2, (0, infinity)],
#    ]
#
#### stage [3] (lower voice) ###
#music_maker = segment_maker.make_music_maker()
#music_maker.pitch_class_trees = materials.pitch_classes[6:10]
#music_maker.extra_counts_per_division = [1, 2, 0, -1, 5]
#music_maker.pc_displacement = [
#    BooleanPattern(indices=range(5), period=10),
#    ]
#music_maker.voice_map = [
#    [3, (0, infinity)],
#    ]

### stage [5] (upper voice) ###
music_maker = segment_maker.make_music_maker()
music_maker.pitch_class_trees = materials.pitch_classes[12:16]
music_maker.extra_counts_per_division = [1, 2, 0, -1, 5]
music_maker.pc_displacement = [
    BooleanPattern(indices=range(5), period=10),
    ]
music_maker.voice_map = [
    [1, (0, infinity)],
    ]