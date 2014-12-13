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

quarter_44 = Tempo(Duration(1, 4), 44)
quarter_66 = Tempo(Duration(1, 4), 66)
quarter_88 = Tempo(Duration(1, 4), 88)

molto_stretto = Markup('molto stretto').upright()
piu_largo = Markup('più largo').upright()
piu_stretto = Markup('più stretto').upright()
poco_piu_stretto = Markup('poco più stretto').upright()
poco_piu_largo = Markup('poco più largo').upright()

sub_trem_moderato = Markup('sub. trem. moderato').upright()
sub_trem_mod = Markup('sub. trem. mod.').upright()
sub_trem_piu_stretto = Markup('sub. trem. più stretto').upright()
sub_trem_poco_piu_stretto = Markup('sub. trem. poco più stretto').upright()
sub_trem_possibile = Markup('sub. trem. possibile').upright()

trem_molto_stretto = Markup('trem. molto stretto').upright()
trem_mod = Markup('trem. mod.').upright()
trem_moderato = Markup('trem. moderato').upright()
trem_piu_stretto = Markup('trem. più stretto').upright()
trem_poco_piu_stretto = Markup('trem. poco più stretto').upright()
trem_stretto = Markup('trem. stretto').upright()
trem_stretto_possibile = Markup('trem. stretto possibile').upright()