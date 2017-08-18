import abjad


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
                \italic
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
    place = ['Cambridge, MA.']
    place = r' \hspace #0.75 – \hspace #0.75 '.join(place)
    place = abjad.Markup(place)
    place = abjad.Markup.line([place])
    date = ['September', 'October 2014.']
    date = r' \hspace #0.75 – \hspace #0.75 '.join(date)
    date = abjad.Markup(date)
    date = abjad.Markup.line([date])
    markup = abjad.Markup.right_column([place, date])
    markup = markup.italic()
    markup = abjad.new(markup, direction=abjad.Down)
    return markup
