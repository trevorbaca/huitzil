import abjad
import baca


def final_markup():
    r'''Makes final markup.

    ::

        >>> import huitzil

    ..  container:: example

        ::

            >>> markup = huitzil.final_markup()
            >>> show(markup) # doctest: +SKIP

        ..  docs::

            >>> f(markup)
            _ \markup {
                \whiteout
                    \upright
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

    '''
    command = baca.markup.final_markup(
        ['Cambridge, MA.'],
        ['September', 'October 2014.'],
        )
    return command.arguments[0]
