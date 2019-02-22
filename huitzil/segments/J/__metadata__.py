import abjad


metadata = abjad.OrderedDict(
    [
        (
            'alive_during_segment',
            [
                'Score',
                'Global_Context',
                'Global_Rests',
                'Global_Skips',
                'Music_Context',
                'Cello_Staff_Group',
                'RH_Music_Staff',
                'RH_Music_Voice',
                'RH_Rest_Voice',
                'Cello_Music_Staff',
                'Cello_Music_Voice',
                'Cello_Rest_Voice',
                ],
            ),
        (
            'bol_measure_numbers',
            [266, 273, 280, 287],
            ),
        ('duration', "1'18''"),
        ('final_measure_number', 288),
        ('first_measure_number', 266),
        (
            'persistent_indicators',
            abjad.OrderedDict(
                [
                    (
                        'Cello_Music_Staff',
                        [
                            abjad.Momento(
                                context='Cello_Music_Voice',
                                prototype='abjad.Clef',
                                value='treble',
                                ),
                            ],
                        ),
                    (
                        'Cello_Staff_Group',
                        [
                            abjad.Momento(
                                context='Cello_Music_Voice',
                                manifest='instruments',
                                value='Cello',
                                ),
                            ],
                        ),
                    (
                        'RH_Music_Staff',
                        [
                            abjad.Momento(
                                context='RH_Music_Voice',
                                prototype='abjad.Clef',
                                value='percussion',
                                ),
                            abjad.Momento(
                                context='RH_Music_Voice',
                                prototype='abjad.PersistentOverride',
                                value=abjad.PersistentOverride(
                                    attribute='bar_extent',
                                    context='Staff',
                                    grob='bar_line',
                                    value=(-3, 3),
                                    ),
                                ),
                            abjad.Momento(
                                context='RH_Music_Voice',
                                prototype='baca.StaffLines',
                                value=7,
                                ),
                            ],
                        ),
                    (
                        'RH_Music_Voice',
                        [
                            abjad.Momento(
                                context='RH_Music_Voice',
                                prototype='abjad.StartHairpin',
                                value='--',
                                ),
                            ],
                        ),
                    (
                        'Score',
                        [
                            abjad.Momento(
                                context='Global_Skips',
                                manifest='metronome_marks',
                                value='44',
                                ),
                            abjad.Momento(
                                context='Global_Skips',
                                prototype='abjad.TimeSignature',
                                value='1/1',
                                ),
                            ],
                        ),
                    ]
                ),
            ),
        ('phantom', True),
        ('segment_name', 'J'),
        ('segment_number', 9),
        ('start_clock_time', "18'07''"),
        ('stop_clock_time', "19'25''"),
        (
            'time_signatures',
            [
                '1/1',
                '1/1',
                '4/3',
                '1/1',
                '8/5',
                '1/1',
                '4/3',
                '1/1',
                '8/5',
                '1/1',
                '4/3',
                '1/1',
                '8/5',
                '1/1',
                '4/3',
                '1/1',
                '8/5',
                '1/1',
                '1/1',
                '1/1',
                '1/1',
                '1/1',
                '1/1',
                ],
            ),
        ]
    )
