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
            [81, 87, 95, 103],
            ),
        ('duration', "1'12''"),
        ('final_measure_number', 103),
        ('first_measure_number', 81),
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
        ('segment_name', 'M'),
        ('segment_number', 13),
        ('start_clock_time', "7'27''"),
        ('stop_clock_time', "8'39''"),
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
