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

### STAGES ###
time_signatures = materials.time_signatures
time_signatures = sequencetools.flatten_sequence(time_signatures)
segment_maker.time_signatures = time_signatures
segment_maker.measures_per_stage = [
    5, 5, 5, 5, 5, 5, 5, 5, # stages 1-8
    8, # stage 9
    ]
assert segment_maker.measure_count == 48
assert segment_maker.stage_count == 9
assert segment_maker.validate_time_signatures()

### TEMPO MAP ###
segment_maker.tempo_map = [
    (1, materials.tempo_inventory[0]),
    ]

### MANUAL BREAKS ###
segment_maker.page_breaks.append(15)

infinity = mathtools.Infinity()

###############################################################################
################################ MUSIC-MAKERS #################################
###############################################################################

music_maker = segment_maker.make_music_maker()
music_maker.stages = 1
music_maker.pitch_class_trees = materials.pitch_classes[:6]
music_maker.extra_counts_per_division = [1, 0, 1, 2]
music_maker.pc_displacement = [
    BooleanPattern(indices=range(15, 30), period=30),
    ]
music_maker.voice_map = [
    [2, (0, infinity)],
    ]