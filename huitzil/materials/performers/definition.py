import abjad


performers = abjad.PerformerDictionary(
    [
        (
            'cello',
            abjad.InstrumentDictionary(
                [
                    (
                        'cello',
                        abjad.Cello(
                            name='cello',
                            short_name='vc.',
                            name_markup=abjad.Markup(
                                contents=['Cello'],
                                ),
                            short_name_markup=abjad.Markup(
                                contents=['Vc.'],
                                ),
                            allowable_clefs=('bass', 'tenor', 'treble'),
                            default_tuning=abjad.Tuning(
                                pitches=abjad.PitchSegment(
                                    (
                                        abjad.NamedPitch('c,'),
                                        abjad.NamedPitch('g,'),
                                        abjad.NamedPitch('d'),
                                        abjad.NamedPitch('a'),
                                        ),
                                    item_class=abjad.NamedPitch,
                                    ),
                                ),
                            middle_c_sounding_pitch=abjad.NamedPitch("c'"),
                            pitch_range=abjad.PitchRange('[C2, G5]'),
                            ),
                        ),
                    ]
                ),
            ),
        ]
    )
