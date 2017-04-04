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
                            pitches=abjad.pitchtools.PitchSegment(
                                (
                                    abjad.pitchtools.NamedPitch('c,'),
                                    abjad.pitchtools.NamedPitch('g,'),
                                    abjad.pitchtools.NamedPitch('d'),
                                    abjad.pitchtools.NamedPitch('a'),
                                    ),
                                item_class=abjad.pitchtools.NamedPitch,
                                ),
                            ),
                        pitch_range=abjad.pitchtools.PitchRange(
                            range_string='[C2, G5]',
                            ),
                        sounding_pitch_of_written_middle_c=abjad.pitchtools.NamedPitch("c'"),
                        ),
                    ]
                ),
            ),
        ]
    )
