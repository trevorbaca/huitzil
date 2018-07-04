import abjad
import baca


class MarkupLibrary(abjad.AbjadObject):
    """
    Markup library.
    """

    ### CLASS VARIABLES ###

    __slots__ = (
        )

    ### PUBLIC METHODS ###

    def molto_stretto():
        string = 'molto stretto'
        return abjad.Markup(string).upright()

    def piu_largo():
        string = 'più largo'
        return abjad.Markup(string).upright()

    def piu_stretto():
        string = 'più stretto'
        return abjad.Markup(string).upright()

    def poco_piu_largo():
        string = 'poco più largo'
        return abjad.Markup(string).upright()

    def sub_piu_stretto():
        string = 'sub. più stretto'
        return abjad.Markup(string).upright()

    def sub_trem_mod():
        string = 'sub. trem. mod.'
        return abjad.Markup(string).upright()

    def sub_trem_moderato():
        string = 'sub. trem. moderato'
        return abjad.Markup(string).upright()

    def sub_trem_piu_stretto():
        string = 'sub. trem. più stretto'
        return abjad.Markup(string).upright()

    def sub_trem_poco_piu_stretto():
        string = 'sub. trem. poco più stretto'
        return abjad.Markup(string).upright()

    def sub_trem_possibile():
        string = 'sub. trem. possibile'
        return abjad.Markup(string).upright()

    def trem_mod():
        string = 'trem. mod.'
        return abjad.Markup(string).upright()

    def trem_moderato():
        string = 'trem. moderato'
        return abjad.Markup(string).upright()

    def trem_molto_stretto():
        string = 'trem. molto stretto'
        return abjad.Markup(string).upright()

    def trem_piu_stretto():
        string = 'trem. più stretto'
        return abjad.Markup(string).upright()

    def trem_poco_piu_stretto():
        string = 'trem. poco più stretto'
        return abjad.Markup(string).upright()

    def trem_stretto():
        string = 'trem. stretto'
        return abjad.Markup(string).upright()

    def trem_stretto_possibile():
        string = 'trem. stretto possibile'
        return abjad.Markup(string).upright()
