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
            [104, 110, 118],
            ),
        ('duration', "2'05''"),
        ('final_measure_number', 125),
        ('first_measure_number', 104),
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
                                value='bass',
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
                                prototype='abjad.Dynamic',
                                value='f',
                                ),
                            ],
                        ),
                    (
                        'Score',
                        [
                            abjad.Momento(
                                context='Global_Skips',
                                manifest='metronome_marks',
                                value='88',
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
        ('segment_name', 'N'),
        ('segment_number', 14),
        ('start_clock_time', "8'45''"),
        ('stop_clock_time', "10'50''"),
        (
            'time_signatures',
            [
                '1/1',
                '13/12',
                '1/1',
                '7/6',
                '53/30',
                '23/12',
                '1/1',
                '1/1',
                '3/4',
                '2/3',
                '22/15',
                '1/1',
                '1/1',
                '1/1',
                '1/1',
                '1/1',
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
