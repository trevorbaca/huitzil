# -*- encoding: utf-8 -*-
from abjad import *
from abjad.tools.rhythmmakertools import BooleanPattern
from experimental import *
from huitzil import makers
from huitzil import materials


### INITIALIZATION ###
segment_maker = makers.DreamsMaker(
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
    (1, materials.tempo_inventory[1]),
    ]

### MANUAL BREAKS ###
segment_maker.page_breaks.append(15)

###############################################################################
################################ MUSIC-MAKERS #################################
###############################################################################

#### vn, va, vc [A1] tremolo clusters (11.1) ###
#music_maker = segment_maker.make_music_maker()
#music_maker.stages = 1
#music_maker.context_name = vn
#music_maker.division_maker = makertools.HypermeasureDivisionMaker(
#    measure_counts=mathtools.Infinity,
#    secondary_division_maker=makertools.DivisionMaker(
#        pattern=[(1, 4)],
#        remainder=Left,
#        ),
#    )
#music_maker.rhythm_maker = rhythmmakertools.TupletRhythmMaker(
#    tuplet_ratios=[(1, 1, 1)],
#    output_masks=[BooleanPattern(indices=[0])],
#    )