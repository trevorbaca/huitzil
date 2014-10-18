# -*- encoding: utf-8 -*-
from abjad import *


class DreamsMusicMaker(abctools.AbjadObject):
    r'''Huitzil dreams music-maker.

    All properties can be configured at or after initialization.
    '''

    ### CLASS ATTRIBUTES ###

    __slots__ = (
        '_operator_map',
        '_pitch_class_cells',
        '_stages',
        '_start_tempo',
        '_stop_tempo',
        '_voice_map',
        )

    ### INITIALIZER ###    

    def __init__(
        self,
        operator_map=None,
        pitch_class_cells=None,
        stages=None,
        start_tempo=None,
        stop_tempo=None,
        voice_map=None,
        ):
        self.operator_map = operator_map
        self.pitch_class_cells = pitch_class_cells
        self.stages = stages
        self.start_tempo = start_tempo
        self.stop_tempo = stop_tempo
        self.voice_map = voice_map

    ### SPECIAL METHODS ###

    def __call__(self, time_signatures=None):
        r'''Calls music-maker.

        Returns music. Probably as a selection.
        '''
        for time_signature in time_signatures:
            assert isinstance(time_signature, indicatortools.TimeSignature)
        music = self._make_rhythm(time_signatures)
        assert isinstance(music, (tuple, list, Voice)), repr(music)
        first_item = music[0]
        if isinstance(first_item, selectiontools.Selection):
            first_component = first_item[0]
        else:
            first_component = first_item
        first_leaf = inspect_(first_component).get_leaf(0)
        assert isinstance(first_leaf, scoretools.Leaf), repr(first_leaf)
        prototype = instrumenttools.UntunedPercussion
        if self.instrument is not None:
            attach(self.instrument, first_leaf)
        if (isinstance(self.instrument, prototype) and
            not self._hide_untuned_percussion_markup):
            self._attach_untuned_percussion_markup(first_leaf)
        if self.clef is not None:
            attach(self.clef, first_leaf)
        if self.staff_line_count is not None:
            self._set_staff_line_count(first_leaf, self.staff_line_count)
        elif self.clef == Clef('percussion'):
            self._set_staff_line_count(first_leaf, 1)
        return music

    ### PRIVATE PROPERTIES ###

    @property
    def _default_rhythm_maker(self):
        return rhythmmakertools.RestRhythmMaker()

    @property
    def _storage_format_specification(self):
        from abjad.tools import systemtools
        manager = systemtools.StorageFormatManager
        keyword_argument_names = \
            manager.get_signature_keyword_argument_names(self)
        if not self.rhythm_overwrites:
            keyword_argument_names = list(keyword_argument_names)
            keyword_argument_names.remove('rhythm_overwrites')
        return systemtools.StorageFormatSpecification(
            self,
            keyword_argument_names=keyword_argument_names,
            )

    ### PRIVATE METHODS ###

    def _attach_untuned_percussion_markup(self, leaf):
        name = self.instrument.instrument_name
        name = name.lower()
        markup = markuptools.Markup(name, direction=Up)
        markup = markup.box().override(('box-padding', 0.5))
        attach(markup, leaf)

    def _get_rhythm_maker(self):
        if self.rhythm_maker is not None:
            return self.rhythm_maker
        return self._default_rhythm_maker

    def _make_rhythm(self, time_signatures):
        if self.division_maker is not None:
            divisions = self.division_maker(time_signatures) 
        else:
            divisions = [
                mathtools.NonreducedFraction(_) for _ in time_signatures
                ]
        divisions = sequencetools.flatten_sequence(divisions)
        for division in divisions:
            assert isinstance(division, mathtools.NonreducedFraction), division
        rhythm_maker = self._get_rhythm_maker()
        selections = rhythm_maker(divisions)
        if not self.rhythm_overwrites:
            return selections
        dummy_measures = scoretools.make_spacer_skip_measures(time_signatures)
        dummy_time_signature_voice = Voice(dummy_measures)
        dummy_music_voice = Voice()
        dummy_music_voice.extend(selections)
        dummy_staff = Staff([dummy_time_signature_voice, dummy_music_voice])
        dummy_staff.is_simultaneous = True
        for rhythm_overwrite in self.rhythm_overwrites:
            selector, division_maker, rhythm_maker = rhythm_overwrite
            old_music_selection = selector(dummy_music_voice)
            prototype = selectiontools.ContiguousSelection
            #if 1 < len(old_music_selection):
            if True:
                old_music_selection = selectiontools.SliceSelection(
                    old_music_selection)
                result = old_music_selection._get_parent_and_start_stop_indices()
                parent, start_index, stop_index = result
                old_duration = old_music_selection.get_duration()
                division_lists = division_maker([old_duration])
                assert len(division_lists) == 1
                division_list = division_lists[0]
                new_music_selection = rhythm_maker(division_list)
                dummy_music_voice[start_index:stop_index+1] = \
                    new_music_selection
            #elif len(old_music_selection) == 1:
            #    prototype = selectiontools.Selection
            #    assert isinstance(old_music_selection[0], prototype)
            #    old_music_selection = old_music_selection[0]
            #    old_duration = old_music_selection.get_duration()
            #    division_lists = division_maker([old_duration])
            #    assert len(division_lists) == 1
            #    division_list = division_lists[0]
            #    new_music_selection = rhythm_maker(division_list)
            #    old_component = old_music_selection[0]
            #    index = dummy_music_voice.index(old_component)
            #    dummy_music_voice[index:index+1] = new_music_selection
        music = dummy_music_voice[:]
        return dummy_music_voice

    def _set_staff_line_count(self, first_leaf, staff_line_count):
        command = indicatortools.LilyPondCommand('stopStaff')
        attach(command, first_leaf)
        string = "override Staff.StaffSymbol #'line-count = #{}"
        string = string.format(staff_line_count)
        command = indicatortools.LilyPondCommand(string)
        attach(command, first_leaf)
        command = indicatortools.LilyPondCommand('startStaff')
        attach(command, first_leaf)

    ### PUBLIC PROPERTIES ###

    @property
    def operator_map(self):
        r'''Gets operator map of segment maker.

        Returns list.
        '''
        return self._operator_map

    @operator_map.setter
    def operator_map(self, expr):
        if expr is None:
            self._operator_map = []
        elif isinstance(expr, list):
            self._operator_map = expr
        else:
            message = 'must be list or none: {!r}.'
            message = message.format(expr)
            raise TypeError(message)

    @property
    def pitch_class_cells(self):
        r'''Gets pitch-class cells of segment maker.

        Returns list.
        '''
        return self._pitch_class_cells

    @pitch_class_cells.setter
    def pitch_class_cells(self, expr):
        if expr is None:
            self._pitch_class_cells = []
        elif isinstance(expr, pitchtools.PitchClassTree):
            self._pitch_class_cells = expr
        else:
            message = 'must be list or none: {!r}.'
            message = message.format(expr)
            raise TypeError(message)

    @property
    def stages(self):
        r'''Gets stages of segment maker.

        Returns pair of positive integers.
        '''
        return self._stages

    @stages.setter
    def stages(self, expr):
        if expr is None:
            self._stages = expr
        elif mathtools.is_positive_integer(expr):
            self._stages = (expr, expr)
        elif (mathtools.all_are_positive_integers(expr)
            and len(expr) == 2):
            self._stages = tuple(expr)
        else:
            message = 'positive integer or pair of positive integers: {!r}.'
            message = message.format(expr)
            raise TypeError(message)

    @property
    def start_tempo(self):
        r'''Gets start tempo of segment maker.

        Returns tempo or none.
        '''
        return self._start_tempo

    @start_tempo.setter
    def start_tempo(self, expr):
        if expr is None:
            self._start_tempo = expr
        elif isinstance(expr, Tempo):
            self._start_tempo = expr
        else:
            message = 'must be tempo: {!r}.'
            message = message.format(expr)
            raise TypeError(message)

    @property
    def stop_tempo(self):
        r'''Gets stop tempo of segment maker.

        Returns tempo or none.
        '''
        return self._stop_tempo

    @stop_tempo.setter
    def stop_tempo(self, expr):
        if expr is None:
            self._stop_tempo = expr
        elif isinstance(expr, Tempo):
            self._stop_tempo = expr
        else:
            message = 'must be tempo: {!r}.'
            message = message.format(expr)
            raise TypeError(message)

    @property
    def voice_map(self):
        r'''Gets voice map of segment maker.

        Returns list.
        '''
        return self._voice_map

    @voice_map.setter
    def voice_map(self, expr):
        if expr is None:
            self._voice_map = []
        elif isinstance(expr, list):
            self._voice_map = expr
        else:
            message = 'must be list or none: {!r}.'
            message = message.format(expr)
            raise TypeError(message)