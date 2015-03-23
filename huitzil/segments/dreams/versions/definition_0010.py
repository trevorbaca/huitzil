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
#segment_maker.page_breaks.append(15)

### ABBREVIATIONS ###
infinity = mathtools.Infinity()

###############################################################################
################################ MUSIC-MAKERS #################################
###############################################################################

music_maker = segment_maker.make_music_maker()
music_maker.pitch_class_trees = materials.pitch_classes[:]
music_maker.extra_counts_per_division = [1, 2, 5, 0, 2]
#music_maker.pc_displacement = [
#    BooleanPattern(indices=range(15, 30), period=30),
#    ]
music_maker.voice_map = [
    [2, (0, infinity)],
    ]
#music_maker.glissando_patterns = [
#    BooleanPattern(indices=[0, 1, 3, 4, 5, 6, 7], period=9),
#    BooleanPattern(indices=range(11)),
#    ]