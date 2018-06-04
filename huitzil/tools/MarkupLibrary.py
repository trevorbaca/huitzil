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
        markup = abjad.Markup(string).upright()
        return baca.markup.markup(markup)

    def piu_largo():
        string = 'più largo'
        markup = abjad.Markup(string).upright()
        return baca.markup.markup(markup)

    def piu_stretto():
        string = 'più stretto'
        markup = abjad.Markup(string).upright()
        return baca.markup.markup(markup)

    def poco_piu_largo():
        string = 'poco più largo'
        markup = abjad.Markup(string).upright()
        return baca.markup.markup(markup)

    def sub_piu_stretto():
        string = 'sub. più stretto'
        markup = abjad.Markup(string).upright()
        return baca.markup.markup(markup)

    def sub_trem_mod():
        string = 'sub. trem. mod.'
        markup = abjad.Markup(string).upright()
        return baca.markup.markup(markup)

    def sub_trem_moderato():
        string = 'sub. trem. moderato'
        markup = abjad.Markup(string).upright()
        return baca.markup.markup(markup)

    def sub_trem_piu_stretto():
        string = 'sub. trem. più stretto'
        markup = abjad.Markup(string).upright()
        return baca.markup.markup(markup)

    def sub_trem_poco_piu_stretto():
        string = 'sub. trem. poco più stretto'
        markup = abjad.Markup(string).upright()
        return baca.markup.markup(markup)

    def sub_trem_possibile():
        string = 'sub. trem. possibile'
        markup = abjad.Markup(string).upright()
        return baca.markup.markup(markup)

    def trem_mod():
        string = 'trem. mod.'
        markup = abjad.Markup(string).upright()
        return baca.markup.markup(markup)

    def trem_moderato():
        string = 'trem. moderato'
        markup = abjad.Markup(string).upright()
        return baca.markup.markup(markup)

    def trem_molto_stretto():
        string = 'trem. molto stretto'
        markup = abjad.Markup(string).upright()
        return baca.markup.markup(markup)

    def trem_piu_stretto():
        string = 'trem. più stretto'
        markup = abjad.Markup(string).upright()
        return baca.markup.markup(markup)

    def trem_poco_piu_stretto():
        string = 'trem. poco più stretto'
        markup = abjad.Markup(string).upright()
        return baca.markup.markup(markup)

    def trem_stretto():
        string = 'trem. stretto'
        markup = abjad.Markup(string).upright()
        return baca.markup.markup(markup)

    def trem_stretto_possibile():
        string = 'trem. stretto possibile'
        markup = abjad.Markup(string).upright()
        return baca.markup.markup(markup)
