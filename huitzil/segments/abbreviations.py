# -*- coding: utf-8 -*-
import abjad


dashed_arrow = abjad.Arrow(
    dash_fraction=0.25,
    dash_period=1.5,
    left_broken_text=False,
    left_hspace=0.5,
    right_broken_arrow=False,
    right_broken_padding=0,
    right_padding=1.75,
    )

quarter_44 = abjad.Tempo(abjad.Duration(1, 4), 44)
quarter_66 = abjad.Tempo(abjad.Duration(1, 4), 66)
quarter_88 = abjad.Tempo(abjad.Duration(1, 4), 88)

molto_stretto = abjad.Markup('molto stretto').upright()
piu_largo = abjad.Markup('più largo').upright()
piu_stretto = abjad.Markup('più stretto').upright()
poco_piu_stretto = abjad.Markup('poco più stretto').upright()
poco_piu_largo = abjad.Markup('poco più largo').upright()

sub_piu_stretto = abjad.Markup('sub. più stretto').upright()
sub_trem_moderato = abjad.Markup('sub. trem. moderato').upright()
sub_trem_mod = abjad.Markup('sub. trem. mod.').upright()
sub_trem_piu_stretto = abjad.Markup('sub. trem. più stretto').upright()
sub_trem_poco_piu_stretto = abjad.Markup('sub. trem. poco più stretto').upright()
sub_trem_possibile = abjad.Markup('sub. trem. possibile').upright()

trem_molto_stretto = abjad.Markup('trem. molto stretto').upright()
trem_mod = abjad.Markup('trem. mod.').upright()
trem_moderato = abjad.Markup('trem. moderato').upright()
trem_piu_stretto = abjad.Markup('trem. più stretto').upright()
trem_poco_piu_stretto = abjad.Markup('trem. poco più stretto').upright()
trem_stretto = abjad.Markup('trem. stretto').upright()
trem_stretto_possibile = abjad.Markup('trem. stretto possibile').upright()
