import abjad
import baca
from abjadext import rmakers

from huitzil import library


def make_music(
    extra_counts,
    segment_lists,
    voice_map,
    pc_displacement=(),
    pc_operators=(),
):
    tuplets = _make_rhythm(segment_lists, voice_map, extra_counts, pc_operators)
    assert all(isinstance(_, abjad.Tuplet) for _ in tuplets)
    _displace_pitch_classes(tuplets, pc_displacement)
    _register_voices(tuplets)
    _attach_beams(tuplets)
    assert all(isinstance(_, abjad.Tuplet) for _ in tuplets)
    return tuplets


def _attach_beams(music):
    tuplets = abjad.iterate.components(music, abjad.Tuplet)
    for tuplet in tuplets:
        voice_numbers = [abjad.get.indicator(_, int) for _ in tuplet]
        runs = abjad.sequence.group_by(voice_numbers)
        counts = [len(_) for _ in runs]
        note_groups = abjad.sequence.partition_by_counts(tuplet[:], counts)
        for note_group in note_groups:
            abjad.beam(note_group)


def _attach_voice_numbers(note_lists, voice_map):
    for component in voice_map:
        assert len(component) == 2
        voice_number = component[0]
        indices = component[1]
        notes = abjad.sequence.flatten(note_lists)
        for i, note in enumerate(notes):
            if i in indices:
                abjad.detach(int, note)
                abjad.attach(voice_number, note)
    notes = abjad.sequence.flatten(note_lists)
    for note in notes:
        assert abjad.get.has_indicator(note, int), repr(note)


def _displace_pitch_classes(music, pc_displacement):
    if not pc_displacement:
        return
    notes = abjad.select.leaves(music, pitched=True)
    total_notes = len(notes)
    for i, note in enumerate(notes):
        register = None
        for pattern in pc_displacement:
            if pattern.matches_index(i, total_notes):
                register = "high"
                break
        else:
            register = "low"
        if register == "high":
            pass
        elif register == "low":
            source_pitch = note.written_pitch
            transposed_pitch = source_pitch.transpose(n=-12)
            note.written_pitch = transposed_pitch
        else:
            raise ValueError(register)


def _make_inner_tuplets(note_lists, extra_counts):
    extra_counts = extra_counts or [0]
    extra_counts = abjad.CyclicTuple(extra_counts)
    inner_tuplets = []
    for i, note_list in enumerate(note_lists):
        start_duration = sum(_.written_duration for _ in note_list)
        extra_count = extra_counts[i]
        extra_duration = extra_count * abjad.Duration(1, 16)
        if 0 < start_duration + extra_duration:
            target_duration = start_duration + extra_duration
        else:
            target_duration = start_duration
        numerators = []
        for note in note_list:
            duration = note.written_duration
            fraction = abjad.NonreducedFraction(duration)
            fraction = fraction.with_denominator(128)
            numerators.append(fraction.numerator)
        ratio = abjad.Ratio(numerators)
        maker = rmakers.stack(
            rmakers.tuplet([ratio]),
            rmakers.rewrite_dots(),
            rmakers.rewrite_sustained(),
            rmakers.force_diminution(),
        )
        selection = maker([target_duration])
        assert isinstance(selection, list)
        inner_tuplet = selection[0]
        if inner_tuplet.multiplier == 1:
            inner_tuplet.hide = True
        plts = baca.plts(inner_tuplet)
        for j, plt in enumerate(plts):
            source_note = note_list[j]
            for pleaf in plt:
                pleaf.written_pitch = source_note.written_pitch
                voice_number = abjad.get.indicator(source_note, int)
                abjad.attach(voice_number, pleaf)
        inner_tuplets.append(inner_tuplet)
    return inner_tuplets


def _make_note_lists(segment_lists, pc_operators):
    note_lists = []
    for segment_list in segment_lists:
        assert 0 < len(segment_list)
        for segment in segment_list:
            note_list = []
            for number in segment:
                pitch_class = abjad.NumberedPitchClass(number)
                for operator in pc_operators:
                    pitch_class = operator(pitch_class)
                note = abjad.Note(pitch_class, abjad.Duration(1, 4))
                note_list.append(note)
            note_lists.append(note_list)
    return note_lists


def _make_rhythm(segment_lists, voice_map, extra_counts, pc_operators):
    note_lists = _make_note_lists(segment_lists, pc_operators)
    _attach_voice_numbers(note_lists, voice_map)
    _set_written_durations(note_lists)
    inner_tuplets = _make_inner_tuplets(note_lists, extra_counts)
    return inner_tuplets


def _register_voices(music):
    voice_1_registration = library.registrations["middle"]
    voice_2_registration = library.registrations["low"]
    voice_3_registration = library.registrations["lowest"]
    for note in abjad.iterate.components(music, abjad.Note):
        voice_number = abjad.get.indicator(note, int)
        if voice_number == 1:
            color = "#red"
            abjad.override(note).Accidental.color = color
            abjad.override(note).Beam.color = color
            abjad.override(note).Dots.color = color
            abjad.override(note).NoteHead.color = color
            abjad.override(note).RepeatTie.color = color
            abjad.override(note).Slur.color = color
            abjad.override(note).Stem.color = color
            abjad.override(note).Tie.color = color
            registration = voice_1_registration
        elif voice_number == 2:
            registration = voice_2_registration
        elif voice_number == 3:
            color = "#blue"
            abjad.override(note).Accidental.color = color
            abjad.override(note).Beam.color = color
            abjad.override(note).Dots.color = color
            abjad.override(note).NoteHead.color = color
            abjad.override(note).RepeatTie.color = color
            abjad.override(note).Slur.color = color
            abjad.override(note).Stem.color = color
            abjad.override(note).Tie.color = color
            registration = voice_3_registration
        else:
            raise ValueError(voice_number)
        pitches = [note.written_pitch]
        transposed_pitches = registration(pitches)
        transposed_pitch = transposed_pitches[0]
        note.written_pitch = transposed_pitch


def _set_written_durations(note_lists):
    for note_list in note_lists:
        for note in note_list:
            voice_number = abjad.get.indicator(note, int)
            if voice_number == 1:
                duration = abjad.Duration(1, 8)
            elif voice_number == 2:
                duration = abjad.Duration(1, 16)
            elif voice_number == 3:
                duration = abjad.Duration(1, 4)
            else:
                raise ValueError(voice_number)
            note.written_duration = duration


#########################################################################################
######################################### 01 [A] ########################################
#########################################################################################

### MUSIC-MAKERS ###

music = []

### stage [1] (middle) ###

music_ = make_music(
    [1, 2, 0, -1, 5],
    library.pitch_classes[:6],
    [[2, range(0, 99)]],
    pc_displacement=[abjad.index(list(range(15)), 30)],
)
music.extend(music_)


### stage [2] (middle & lower) ###

music_ = make_music(
    [1, 2, 0, -1, 5],
    library.pitch_classes[2:8],
    [
        [2, range(0, 99)],
        [3, (4, 14, 15, 28, 29, 35, 36)],
    ],
    pc_displacement=[abjad.index(list(range(15)), 30)],
    pc_operators=[lambda _: _.transpose(n=1)],
)
music.extend(music_)

### stage [3] (lower) ###

music_ = make_music(
    [4, 8, 0, -4, 20],
    library.pitch_classes[4:6],
    [
        [3, range(0, 99)],
    ],
    pc_operators=[
        lambda _: _.transpose(n=2),
        lambda _: _.invert(),
    ],
)
music.extend(music_)

### stage [4] (lower & upper) ###

music_ = make_music(
    [4, 8, 0, -4, 20],
    library.pitch_classes[6:8],
    [
        [3, range(0, 99)],
        [1, (1, 2, 3, 6, 7, 10)],
    ],
    pc_operators=[
        lambda _: _.transpose(n=3),
    ],
)
music.extend(music_)

### stage [5] (upper) ###

music_ = make_music(
    [2, 4, 0, -2, 10],
    library.pitch_classes[8:12],
    [
        [1, range(0, 99)],
    ],
    pc_displacement=[abjad.index(list(range(10, 20)), 20)],
    pc_operators=[
        lambda _: _.transpose(n=4),
    ],
)
music.extend(music_)

### stage [6] (upper & middle) ###

music_ = make_music(
    [2, 4, 0, -2, 10],
    library.pitch_classes[10:13],
    [
        [1, range(0, 99)],
        [2, (0, 1, 2, 3, 13, 14, 15, 16, 17, 18)],
    ],
    pc_displacement=[abjad.index(list(range(10)), 20)],
    pc_operators=[
        lambda _: _.transpose(n=5),
        lambda _: _.invert(),
    ],
)
music.extend(music_)

### stage [7] (upper, middle, lower) ###

music_ = make_music(
    [2, 4, 0, -2, 10],
    library.pitch_classes[12:20],
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
    pc_operators=[lambda _: _.transpose(n=6)],
)
music.extend(music_)

### stage [8] (middle & lower) ###

music_ = make_music(
    [1, 2, 0, -1, 5],
    library.pitch_classes[14:18],
    [
        [2, range(0, 99)],
        [3, (5, 11, 12, 13, 19, 20)],
    ],
    pc_operators=[
        lambda _: _.transpose(n=7),
    ],
)
music.extend(music_)

### stage [9] (lower) ###

music_ = make_music(
    [4, 8, 0, -4, 20],
    library.pitch_classes[16:20],
    [
        [3, range(0, 99)],
    ],
    pc_displacement=[abjad.index(list(range(5)), 10)],
    pc_operators=[
        lambda _: _.transpose(n=8),
        lambda _: _.invert(),
    ],
)
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

music_ = music

score = library.make_empty_score()
voice_names = baca.accumulator.get_voice_names(score)

commands = baca.CommandAccumulator(
    **baca.segment_accumulation_defaults(),
    instruments=library.instruments,
    metronome_marks=library.metronome_marks,
    time_signatures=time_signatures,
    voice_abbreviations=library.voice_abbreviations,
    voice_names=voice_names,
)

commands(
    "Global_Skips",
    baca.metronome_mark(
        "78",
        selector=lambda _: abjad.select.leaf(_, 1 - 1),
    ),
)

commands(
    ("vc", 1),
    baca.music(music_, do_not_check_total_duration=True),
    baca.attach_first_segment_default_indicators(),
    baca.markup(
        r"\huitzil-phrasing-dynamics-see-preface-markup",
        abjad.Tweak(r"- \tweak staff-padding 9"),
        direction=abjad.DOWN,
    ),
)

commands(
    ("vc", (1, 51)),
    baca.tuplet_bracket_staff_padding(3),
)

commands(
    ("vc", 8),
    baca.suite(
        baca.untie(
            lambda _: baca.select.pleaf(_, -2),
        ),
        baca.chunk(
            baca.repeat_tie(
                lambda _: baca.select.pleaf(_, 0),
            ),
            baca.repeat_tie_extra_offset((-1.5, 0)),
            selector=lambda _: baca.select.pleaf(_, -1),
        ),
    ),
)

commands(
    ("vc", 20),
    baca.repeat_tie(
        lambda _: baca.select.pleaf(_, 0),
    ),
)

commands(
    ("vc", 48),
    baca.repeat_tie(
        lambda _: baca.select.pleaf(_, 0),
    ),
)

commands(
    ("vc", (52, 54)),
    baca.tuplet_bracket_staff_padding(4),
)


commands(
    ("vc", 53),
    baca.breathe(),
)

commands(
    ("vc", 54),
    baca.only_score(
        baca.breathe(
            lambda _: baca.select.pleaf(_, -1),
            abjad.Tweak(r"\tweak extra-offset #'(0 . 2)"),
        ),
    ),
    baca.only_segment(
        baca.breathe(),
    ),
)

commands(
    "rh",
    baca.make_mmrests(),
    baca.attach_first_segment_default_indicators(),
    baca.literal(r"\stopStaff"),
    baca.mmrest_transparent(
        selector=lambda _: baca.select.mmrests(_),
    ),
)

if __name__ == "__main__":
    metadata, persist, score, timing = baca.build.interpret_segment(
        score,
        commands,
        **baca.score_interpretation_defaults(),
        activate=(
            baca.tags.CLOCK_TIME,
            baca.tags.LOCAL_MEASURE_NUMBER,
            # TODO: make this work
            # baca.enums.SPACING,
        ),
        always_make_global_rests=True,
        do_not_require_margin_markup=True,
        deactivate=(baca.tags.DEFAULT_INSTRUMENT_ALERT,),
        error_on_not_yet_pitched=True,
    )
    lilypond_file = baca.make_lilypond_file(
        score,
        include_layout_ly=True,
        includes=["../stylesheet.ily", "header.ily"],
        local_measure_number_extra_offset=(0, -5),
        spacing_extra_offset=(0, 1),
    )
    baca.build.persist(lilypond_file, metadata, persist, timing)
