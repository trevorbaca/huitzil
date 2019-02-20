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
            [55],
            ),
        ('duration', "0'05''"),
        ('final_measure_number', 55),
        ('first_measure_number', 55),
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
                                value='4/4',
                                ),
                            ],
                        ),
                    ]
                ),
            ),
        ('phantom', True),
        ('segment_name', 'L'),
        ('segment_number', 12),
        ('start_clock_time', "5'05''"),
        ('stop_clock_time', "5'10''"),
        (
            'time_signatures',
            ['4/4'],
            ),
        ]
    )
