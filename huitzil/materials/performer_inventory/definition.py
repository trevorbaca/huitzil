# -*- coding: utf-8 -*-
import abjad


performer_inventory = abjad.instrumenttools.PerformerInventory(
    [
        abjad.instrumenttools.Performer(
            name='cellist',
            instruments=abjad.instrumenttools.InstrumentInventory(
                [
                    abjad.instrumenttools.Cello(
                        instrument_name='cello',
                        short_instrument_name='vc.',
                        instrument_name_markup=abjad.Markup(
                            contents=('Cello',),
                            ),
                        short_instrument_name_markup=abjad.Markup(
                            contents=('Vc.',),
                            ),
                        allowable_clefs=abjad.instrumenttools.ClefList(
                            [
                                abjad.Clef(
                                    name='bass',
                                    ),
                                abjad.Clef(
                                    name='tenor',
                                    ),
                                abjad.Clef(
                                    name='treble',
                                    ),
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
                        sounding_pitch_of_written_middle_c=abjad.NamedPitch("c'"),
                        ),
                    ]
                ),
            ),
        ]
    )
