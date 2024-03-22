import abjad
import baca
from abjadext import rmakers

from huitzil import library

#########################################################################################
########################################### 01 ##########################################
#########################################################################################


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
    voice = abjad.Voice(music, name="Temporary")
    tuplets = abjad.iterate.components(music, abjad.Tuplet)
    for tuplet in tuplets:
        voice_numbers = [abjad.get.indicator(_, int) for _ in tuplet]
        runs = abjad.sequence.group_by(voice_numbers)
        counts = [len(_) for _ in runs]
        note_groups = abjad.sequence.partition_by_counts(tuplet[:], counts)
        for note_group in note_groups:
            abjad.beam(note_group)
    voice[:] = []


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
            pair = abjad.duration.with_denominator(duration, 128)
            numerators.append(pair[0])
        ratio = tuple(numerators)
        tuplets = rmakers.tuplet([target_duration], [ratio])
        time_signatures = [abjad.TimeSignature(target_duration.pair)]
        voice = rmakers.wrap_in_time_signature_staff(tuplets, time_signatures)
        rmakers.rewrite_dots(voice)
        rmakers.rewrite_sustained(voice)
        rmakers.force_diminution(voice)
        selection = abjad.mutate.eject_contents(voice)
        assert isinstance(selection, list)
        inner_tuplet = selection[0]
        plts = baca.select.plts(inner_tuplet)
        for j, plt in enumerate(plts):
            source_note = note_list[j]
            for pleaf in plt:
                pleaf.written_pitch = source_note.written_pitch
                voice_number = abjad.get.indicator(source_note, int)
                abjad.attach(voice_number, pleaf)
        inner_tuplets.append(inner_tuplet)
    rmakers.hide_trivial(inner_tuplets)
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
    voice_1_registration = library.registrations()["middle"]
    voice_2_registration = library.registrations()["low"]
    voice_3_registration = library.registrations()["lowest"]
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


def make_all_music():
    music = []
    ### stage [1] (middle) ###
    music_ = make_music(
        [1, 2, 0, -1, 5],
        library.pitch_classes()[:6],
        [[2, range(0, 99)]],
        pc_displacement=[abjad.index(list(range(15)), 30)],
    )
    music.extend(music_)
    ### stage [2] (middle & lower) ###
    music_ = make_music(
        [1, 2, 0, -1, 5],
        library.pitch_classes()[2:8],
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
        library.pitch_classes()[4:6],
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
        library.pitch_classes()[6:8],
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
        library.pitch_classes()[8:12],
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
        library.pitch_classes()[10:13],
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
        library.pitch_classes()[12:20],
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
        library.pitch_classes()[14:18],
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
        library.pitch_classes()[16:20],
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
    return music


def make_time_signatures(music):
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
        pair = abjad.duration.with_denominator(measure_duration, 4)
        time_signatures.append(pair)
    return time_signatures


def GLOBALS(skips):
    baca.metronome_mark(
        skips[1 - 1], library.metronome_marks["78"], manifests=library.manifests
    )


def VC(voice):
    music = make_all_music()
    voice.extend(music)


def RH(voice, time_signatures):
    music = baca.make_mmrests(time_signatures())
    voice.extend(music)


def vc(m):
    with baca.scope(m.leaves()) as o:
        baca.instrument(o.leaf(0), "Cello", library.manifests)
        baca.clef(o.leaf(0), "bass")
        baca.markup(
            o.pleaf(0),
            r"\huitzil-phrasing-dynamics-see-preface-markup",
            abjad.Tweak(r"- \tweak staff-padding 9"),
            direction=abjad.DOWN,
        )
    with baca.scope(m[8]) as o:
        baca.untie(o.pleaf(-2))
        baca.repeat_tie(o.pleaf(-1))
        baca.override.repeat_tie_extra_offset(o.pleaf(-1), (-1.5, 0))
    with baca.scope(m[20]) as o:
        baca.repeat_tie(o.pleaf(0))
    with baca.scope(m[48]) as o:
        baca.repeat_tie(o.pleaf(0))
    with baca.scope(m.get(1, 51)) as o:
        baca.override.tuplet_bracket_staff_padding(o, 3)
    with baca.scope(m[53]) as o:
        baca.breathe(o.pleaf(-1))
    with baca.scope(m.get(52, 54)) as o:
        baca.override.tuplet_bracket_staff_padding(o, 4)
    with baca.scope(m[54]) as o:
        wrappers = baca.breathe(o.pleaf(-1))
        baca.tags.wrappers(wrappers, baca.tags.ONLY_SECTION)
        wrappers = baca.breathe(
            o.pleaf(-1),
            abjad.Tweak(r"\tweak extra-offset #'(0 . 2)"),
        )
        baca.tags.wrappers(wrappers, baca.tags.ONLY_SCORE)


def rh(m):
    with baca.scope(m.leaves()) as o:
        baca.literal(o.leaf(0), r"\stopStaff")
        baca.override.mmrest_transparent(o.mmrests())
        baca.clef(o.leaf(0), "percussion")


@baca.build.timed("make_score")
def make_score():
    score = library.make_empty_score()
    voices = baca.section.cache_voices(score, library.voice_abbreviations)
    music = make_all_music()
    time_signatures = make_time_signatures(music)
    time_signatures = baca.section.wrap(time_signatures)
    baca.section.set_up_score(
        score,
        time_signatures(),
        append_anchor_skip=True,
        manifests=library.manifests,
    )
    GLOBALS(score["Skips"])
    VC(voices("vc"))
    RH(voices("rh"), time_signatures)
    cache = baca.section.cache_leaves(
        score,
        len(time_signatures()),
        library.voice_abbreviations,
    )
    vc(cache["vc"])
    rh(cache["rh"])
    return score


def persist_score(score, environment):
    metadata = baca.section.postprocess_score(
        score,
        environment,
        library.manifests,
        do_not_require_short_instrument_names=True,
        error_on_not_yet_pitched=True,
        first_section=True,
    )
    baca.section.activate_tags(
        score,
        baca.tags.CLOCK_TIME,
        baca.tags.LOCAL_MEASURE_NUMBER,
        # TODO: make this work
        # baca.enums.SPACING,
    )
    lilypond_file = baca.lilypond.file(
        score,
        include_layout_ly=True,
        includes=["../stylesheet.ily", "header.ily"],
        local_measure_number_extra_offset=(0, -5),
        spacing_extra_offset=(0, 1),
    )
    baca.build.persist_lilypond_file(
        environment.arguments,
        environment.section_directory,
        environment.timing,
        lilypond_file,
        metadata,
    )


def make_layout():
    spacing = baca.make_layout(
        baca.page(
            1,
            baca.system(measure=1, y_offset=50, distances=(15,)),
            baca.system(measure=10, y_offset=77, distances=(15,)),
            baca.system(measure=17, y_offset=104, distances=(15,)),
            baca.system(measure=26, y_offset=131, distances=(15,)),
            baca.system(measure=35, y_offset=158, distances=(15,)),
            baca.system(measure=45, y_offset=185, distances=(15,)),
            baca.system(measure=52, y_offset=212, distances=(15,)),
        ),
        spacing=(1, 24),
    )
    baca.section.make_layout_ly(spacing)


def main():
    environment = baca.build.read_environment(__file__, baca.build.argv())
    if environment.score():
        score = make_score(environment.timing)
        persist_score(score, environment)
    if environment.arguments.layout:
        make_layout()


if __name__ == "__main__":
    main()
