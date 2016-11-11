# -*- coding: utf-8 -*-
import abjad
import huitzil


### INITIALIZATION ###
segment_maker = huitzil.tools.DreamsSegmentMaker(
    #calculate_duration=True,
    name='dreams',
    show_leaf_indices=False,
    label_stages=False,
    )

### TEMPO MAP ###
segment_maker.tempo_specifier = [
    (0, huitzil.materials.tempo_inventory[1]),
    ]

### MANUAL BREAKS ###
segment_maker.page_breaks.append(11)

### TUPLET BRACKET TWEAKS ###
segment_maker.tuplet_bracket_tweaks.extend([
    (2, 2.5),
    (3, 2.5), (4, 2.5), (5, 2.5),
    (16, 3),
    (17, 6), (18, 6),
    (27, 2),
    (29, 2), (30, 2),
    (35, 2),
    (38, 2), (40, 2),
    (41, 2),
    (48, 2),
    (51, 2),
    ])

#### SLURS ###
#segment_maker.slurs.extend([
#    (87, 90),
#    (107, 109), (112, 113),
#    (116, 119), (120, 124), (125, 129), (130, 134),
#    (135, 139), (140, 144), (145, 148), (149, 150),
#    (151, 154),
#    (155, 156), (157, 160), (161, 163), (164, 169),
#    (170, 171), (172, 175), (176, 177), (179, 180),
#    (181, 184), 
#    (185, 188), (192, 194), (195, 198), 
#    (199, 202), (205, 206), (207, 210),
#    (211, 212), (213, 215), (217, 218), (219, 223),
#    (224, 225), (228, 230), (231, 235),
#    (237, 241), (245, 249),
#    (252, 256), 
#    ])

###############################################################################
############################## SPECIFIERS ###############################
###############################################################################

### stage [1] (middle) ###
music_maker = segment_maker.make_rhythm_specifier()
music_maker.pitch_class_trees = huitzil.materials.pitch_classes[:6]
music_maker.extra_counts_per_division = [1, 2, 0, -1, 5]
music_maker.pc_displacement = [
    abjad.patterntools.Pattern(indices=range(15), period=30),
    ]
music_maker.voice_map = [
    [2, range(0, 99)],
    ]

### stage [2] (middle & lower) ###
music_maker = segment_maker.make_rhythm_specifier()
music_maker.pitch_class_trees = huitzil.materials.pitch_classes[2:8]
music_maker.pc_operators = [abjad.pitchtools.Transposition(1)]
music_maker.extra_counts_per_division = [1, 2, 0, -1, 5]
music_maker.pc_displacement = [
    abjad.patterntools.Pattern(indices=range(15), period=30),
    ]
music_maker.voice_map = [
    [2, range(0, 99)],
    [3, (4, 14, 15, 28, 29, 35, 36)],
    ]

### stage [3] (lower) ###
music_maker = segment_maker.make_rhythm_specifier()
music_maker.pitch_class_trees = huitzil.materials.pitch_classes[4:6]
music_maker.extra_counts_per_division = [4, 8, 0, -4, 20]
music_maker.pc_operators = [
    abjad.pitchtools.Transposition(2), 
    abjad.pitchtools.Inversion(),
    ]
#music_maker.pc_displacement = [rhythmmakertools.silence_none()]
music_maker.pc_displacement = []
music_maker.voice_map = [
    [3, range(0, 99)],
    ]

### stage [4] (lower & upper) ###
music_maker = segment_maker.make_rhythm_specifier()
music_maker.pitch_class_trees = huitzil.materials.pitch_classes[6:8]
music_maker.extra_counts_per_division = [4, 8, 0, -4, 20]
music_maker.pc_operators = [
    abjad.pitchtools.Transposition(3), 
    ]
#music_maker.pc_displacement = [rhythmmakertools.silence_none()]
music_maker.pc_displacement = []
music_maker.voice_map = [
    [3, range(0, 99)],
    [1, (1, 2, 3, 6, 7, 10)],
    ]

### stage [5] (upper) ###
music_maker = segment_maker.make_rhythm_specifier()
music_maker.pitch_class_trees = huitzil.materials.pitch_classes[8:12]
music_maker.extra_counts_per_division = [2, 4, 0, -2, 10]
music_maker.pc_operators = [
    abjad.pitchtools.Transposition(4), 
    ]
music_maker.pc_displacement = [
    abjad.patterntools.Pattern(indices=range(10, 20), period=20),
    ]
music_maker.voice_map = [
    [1, range(0, 99)],
    ]

### stage [6] (upper & middle) ###
music_maker = segment_maker.make_rhythm_specifier()
music_maker.pitch_class_trees = huitzil.materials.pitch_classes[10:13]
music_maker.extra_counts_per_division = [2, 4, 0, -2, 10]
music_maker.pc_operators = [
    abjad.pitchtools.Transposition(5), 
    abjad.pitchtools.Inversion(), 
    ]
music_maker.pc_displacement = [
    abjad.patterntools.Pattern(indices=range(10), period=20),
    ]
music_maker.voice_map = [
    [1, range(0, 99)],
    [2, (0, 1, 2, 3, 13, 14, 15, 16, 17, 18)],
    ]

### stage [7] (upper, middle, lower) ###
music_maker = segment_maker.make_rhythm_specifier()
music_maker.pitch_class_trees = huitzil.materials.pitch_classes[12:20]
music_maker.extra_counts_per_division = [2, 4, 0, -2, 10]
music_maker.pc_operators = [
    abjad.pitchtools.Transposition(6), 
    ]
music_maker.pc_displacement = [
    abjad.patterntools.pattern(indices=range(10, 20), period=20),
    ]
music_maker.voice_map = [
    [1, range(0, 99)],
    [2, (5, 6, 7, 8, 16, 17, 18, 23, 24, 25, 26, 
        31, 32, 33, 34, 37, 38, 39, 43, 44, 45, 46, 47)],
    [3, (2, 13, 14, 27, 28, 40, 50, 51)],
    ]

### stage [8] (middle & lower) ###
music_maker = segment_maker.make_rhythm_specifier()
music_maker.pitch_class_trees = huitzil.materials.pitch_classes[14:18]
music_maker.pc_operators = [
    abjad.pitchtools.Transposition(7), 
    ]
music_maker.extra_counts_per_division = [1, 2, 0, -1, 5]
music_maker.voice_map = [
    [2, range(0, 99)],
    [3, (5, 11, 12, 13, 19, 20)],
    ]

### stage [9] (lower) ###
music_maker = segment_maker.make_rhythm_specifier()
music_maker.pitch_class_trees = huitzil.materials.pitch_classes[16:20]
music_maker.pc_operators = [
    abjad.pitchtools.Transposition(8), 
    abjad.pitchtools.Inversion(),
    ]
music_maker.extra_counts_per_division = [4, 8, 0, -4, 20]
music_maker.pc_displacement = [
    abjad.patterntools.Pattern(indices=range(5), period=10),
    ]
music_maker.voice_map = [
    [3, range(0, 99)],
    ]
