# -*- coding: utf-8 -*-
import abjad


performer_inventory = abjad.instrumenttools.PerformerList(
    [
        abjad.instrumenttools.Performer(
            name='cellist',
            instruments=abjad.instrumenttools.InstrumentList(
                [
                    abjad.instrumenttools.Cello(
                        name='cello',
                        short_name='vc.',
                        name_markup=abjad.Markup(
                            contents=('Cello',),
                            ),
                        short_name_markup=abjad.Markup(
                            contents=('Vc.',),
                            ),
                        allowable_clefs=abjad.instrumenttools.ClefList(
                            [
                                abjad.Clef(name='bass'),
                                abjad.Clef(name='tenor'),
                                abjad.Clef(name='treble'),
                                ]
                            ),
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
                        pitch_range=abjad.PitchRange(
                            range_string='[C2, G5]',
                            ),
                        middle_c_sounding_pitch=abjad.NamedPitch("c'"),
                        ),
                    ]
                ),
            ),
        ]
    )
