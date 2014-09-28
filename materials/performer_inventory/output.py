# -*- encoding: utf-8 -*-
from abjad import *


performer_inventory = instrumenttools.PerformerInventory(
    [
        instrumenttools.Performer(
            name='cellist',
            instruments=instrumenttools.InstrumentInventory(
                [
                    instrumenttools.Cello(
                        instrument_name='cello',
                        short_instrument_name='vc.',
                        instrument_name_markup=markuptools.Markup(
                            contents=('Cello',),
                            ),
                        short_instrument_name_markup=markuptools.Markup(
                            contents=('Vc.',),
                            ),
                        allowable_clefs=indicatortools.ClefInventory(
                            [
                                indicatortools.Clef(
                                    name='bass',
                                    ),
                                indicatortools.Clef(
                                    name='tenor',
                                    ),
                                indicatortools.Clef(
                                    name='treble',
                                    ),
                                ]
                            ),
                        default_tuning=indicatortools.Tuning(
                            pitches=pitchtools.PitchSegment(
                                (
                                    pitchtools.NamedPitch('c,'),
                                    pitchtools.NamedPitch('g,'),
                                    pitchtools.NamedPitch('d'),
                                    pitchtools.NamedPitch('a'),
                                    ),
                                item_class=pitchtools.NamedPitch,
                                ),
                            ),
                        pitch_range=pitchtools.PitchRange(
                            range_string='[C2, G5]',
                            ),
                        sounding_pitch_of_written_middle_c=pitchtools.NamedPitch("c'"),
                        ),
                    ]
                ),
            ),
        ]
    )