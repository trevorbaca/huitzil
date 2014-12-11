# -*- encoding: utf-8 -*-
from abjad import *


bar = '|'

crescendo = '<'
decrescendo = '>'

dashed_arrow = indicatortools.Arrow(
    dash_fraction=0.25,
    dash_period=1.5,
    left_broken_text=False,
    left_hspace=0.5,
    right_broken_padding=0,
    right_padding=1.75,
    )

hold_dynamic = '-|'

fz = 'fz'
ffz = 'ffz'
fffz = 'fffz'
mfz = 'mfz'
mpz = 'mpz'
pz = 'pz'
ppz = 'ppz'

ppp = 'ppp'
pp = 'pp'
p = 'p'
mp = 'mp'
mf = 'mf'
f = 'f'
ff = 'ff'
fff = 'fff'

sub_trem_meno_mosso = Markup('sub. trem. meno mosso').upright()
sub_trem_moderato = Markup('sub. trem. moderato').upright()
sub_trem_piu_mosso = Markup('sub. trem. più mosso').upright()
sub_trem_poco_meno_mosso = Markup('sub. trem. poco meno mosso').upright()
sub_trem_poco_piu_mosso = Markup('sub. trem. poco più mosso').upright()
sub_trem_possibile = Markup('sub. trem. possibile').upright()

trem_meno_mosso = Markup('trem. meno mosso').upright()
trem_mod = Markup('trem. mod.').upright()
trem_moderato = Markup('trem. moderato').upright()
trem_piu_mosso = Markup('trem. più mosso').upright()
trem_poco_meno_mosso = Markup('trem. poco meno mosso').upright()
trem_poco_piu_mosso = Markup('trem. poco più mosso').upright()
trem_possibile = Markup('trem. possibile').upright()

tremolo_moderato = Markup('tremolo moderato').upright()