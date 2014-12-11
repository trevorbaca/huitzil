# -*- encoding: utf-8 -*-
from abjad import *


dashed_arrow = indicatortools.Arrow(
    dash_fraction=0.25,
    dash_period=1.5,
    left_hspace=0.5,
    right_padding=1.75,
    )

sub_trem_meno_mosso = Markup('sub. trem. meno mosso').upright()
sub_trem_moderato = Markup('sub. trem. moderato').upright()
sub_trem_piu_mosso = Markup('sub. trem. più mosso').upright()
sub_trem_poco_meno_mosso = Markup('sub. trem. poco meno mosso').upright()
sub_trem_poco_piu_mosso = Markup('sub. trem. poco più mosso').upright()
sub_trem_possibile = Markup('sub. trem. possibile').upright()

trem_meno_mosso = Markup('trem. meno mosso').upright()
trem_moderato = Markup('trem. moderato').upright()
trem_piu_mosso = Markup('trem. più mosso').upright()
trem_poco_meno_mosso = Markup('trem. poco meno mosso').upright()
trem_poco_piu_mosso = Markup('trem. poco più mosso').upright()
trem_possibile = Markup('trem. possibile').upright()

tremolo_moderato = Markup('tremolo moderato').upright()