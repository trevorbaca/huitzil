import abjad
import baca


def final_markup():
    r"""
    Makes final markup.

    >>> import huitzil

    ..  container:: example

        >>> markup = huitzil.final_markup()
        >>> abjad.show(markup) # doctest: +SKIP

        ..  docs::

            >>> abjad.f(markup)
            _ \markup {
                \whiteout
                    \upright
                        \override
                            #'(font-name . "Palatino")
                            \with-color
                                #black
                                \right-column
                                    {
                                        \line
                                            {
                                                "Cambridge, MA."
                                            }
                                        \line
                                            {
                                                September
                                                \hspace
                                                    #0.75
                                                –
                                                \hspace
                                                    #0.75
                                                October
                                                2014.
                                            }
                                    }
                }

    """
    command = baca.markup.final_markup(
        ['Cambridge, MA.'],
        ['September', 'October 2014.'],
        )
    return command.indicators[0]
