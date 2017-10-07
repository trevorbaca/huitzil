import abjad


metronome_marks = abjad.MetronomeMarkDictionary([
    (
        '44',
        abjad.MetronomeMark(abjad.Duration(1, 4), 44),
        ),
    (
        '52',
        abjad.MetronomeMark(abjad.Duration(1, 8), 52),
        ),
    (
        '66',
        abjad.MetronomeMark(abjad.Duration(1, 4), 66),
        ),
    (
        '78',
        abjad.MetronomeMark(abjad.Duration(1, 8), 78),
        ),
    (
        '88',
        abjad.MetronomeMark(abjad.Duration(1, 4), 88),
        ),
    ])
