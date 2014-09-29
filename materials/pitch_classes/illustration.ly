% 2014-09-29 11:57

\version "2.19.13"
\language "english"

\include "/Users/trevorbaca/Documents/abjad/abjad/stylesheets/rhythm-letter-16.ily"

\header {}

\layout {
	\accidentalStyle forget
}

\paper {}

\score {
	\new Score \with {
		\override BarLine #'stencil = ##f
		\override Flag #'stencil = ##f
		\override Stem #'stencil = ##f
		\override TextScript #'staff-padding = #3
		\override TimeSignature #'stencil = ##f
	} <<
		\new Staff {
			\new Voice \with {
				\consists Horizontal_bracket_engraver
			} {
				fs'8 \startGroup \startGroup
					^ \markup {
						\bold
							{
								0
							}
						}
				e'8
				f'8
				g'8
				af'8 \stopGroup \stopGroup
				a'8 \startGroup \startGroup
					^ \markup {
						\bold
							{
								1
							}
						}
				ef'8
				d'8
				e'8
				f'8
				cs'8
				bf'8
				a'8
				b'8
				c'8
				d'8 \stopGroup
				f'8 \startGroup
				a'8
				ef'8 \stopGroup \stopGroup
				d'8 \startGroup \startGroup
					^ \markup {
						\bold
							{
								2
							}
						}
				e'8
				d'8
				cs'8
				bf'8 \stopGroup \stopGroup
				a'8 \startGroup \startGroup
					^ \markup {
						\bold
							{
								3
							}
						}
				b'8
				c'8 \stopGroup
				af'8 \startGroup
				fs'8
				e'8
				f'8
				g'8
				c'8
				d'8
				cs'8
				bf'8
				a'8
				b'8 \stopGroup \stopGroup
				g'8 \startGroup \startGroup
					^ \markup {
						\bold
							{
								4
							}
						}
				af'8
				fs'8
				e'8
				f'8 \stopGroup \stopGroup
				e'8 \startGroup \startGroup
					^ \markup {
						\bold
							{
								5
							}
						}
				f'8
				a'8
				ef'8
				d'8
				f'8
				g'8
				af'8
				fs'8
				e'8 \stopGroup
				d'8 \startGroup
				e'8
				f'8
				a'8
				ef'8 \stopGroup \stopGroup
				b'8 \startGroup \startGroup
					^ \markup {
						\bold
							{
								6
							}
						}
				c'8
				d'8
				cs'8
				bf'8
				a'8 \stopGroup \stopGroup
				ef'8 \startGroup \startGroup
					^ \markup {
						\bold
							{
								7
							}
						}
				d'8
				e'8 \stopGroup
				f'8 \startGroup
				a'8
				a'8
				b'8
				c'8
				d'8
				cs'8
				bf'8 \stopGroup \stopGroup
				e'8 \startGroup \startGroup
					^ \markup {
						\bold
							{
								8
							}
						}
				f'8
				g'8
				af'8
				fs'8 \stopGroup \stopGroup
				bf'8 \startGroup \startGroup
					^ \markup {
						\bold
							{
								9
							}
						}
				a'8
				b'8
				c'8
				d'8
				cs'8
				fs'8
				e'8
				f'8
				g'8
				af'8 \stopGroup
				a'8 \startGroup
				ef'8
				d'8
				e'8
				f'8 \stopGroup \stopGroup
				af'8 \startGroup \startGroup
					^ \markup {
						\bold
							{
								10
							}
						}
				fs'8
				e'8
				f'8
				g'8
				f'8
				a'8
				ef'8 \stopGroup \stopGroup
				d'8 \startGroup \startGroup
					^ \markup {
						\bold
							{
								11
							}
						}
				e'8 \stopGroup
				cs'8 \startGroup
				bf'8
				a'8
				b'8
				c'8
				d'8 \stopGroup \stopGroup
				e'8 \startGroup \startGroup
					^ \markup {
						\bold
							{
								12
							}
						}
				f'8
				a'8
				ef'8
				d'8 \stopGroup \stopGroup
				d'8 \startGroup \startGroup
					^ \markup {
						\bold
							{
								13
							}
						}
				cs'8
				bf'8
				a'8
				b'8
				c'8
				g'8
				af'8
				fs'8
				e'8
				f'8 \stopGroup
				c'8 \startGroup
				d'8
				cs'8
				bf'8
				a'8
				b'8 \stopGroup \stopGroup
				f'8 \startGroup \startGroup
					^ \markup {
						\bold
							{
								14
							}
						}
				g'8
				af'8
				fs'8
				e'8
				d'8
				e'8
				f'8
				a'8
				ef'8 \stopGroup \stopGroup
				e'8 \startGroup \startGroup
					^ \markup {
						\bold
							{
								15
							}
						}
				f'8
				g'8 \stopGroup
				af'8 \startGroup
				fs'8
				ef'8
				d'8
				e'8 \stopGroup \stopGroup
				f'8 \startGroup \startGroup
					^ \markup {
						\bold
							{
								16
							}
						}
				a'8 \stopGroup \stopGroup
				b'8 \startGroup \startGroup
					^ \markup {
						\bold
							{
								17
							}
						}
				c'8
				d'8
				cs'8
				bf'8
				a'8
				a'8
				ef'8
				d'8
				e'8
				f'8 \stopGroup
				a'8 \startGroup
				b'8
				c'8
				d'8
				cs'8
				bf'8 \stopGroup \stopGroup
				fs'8 \startGroup \startGroup
					^ \markup {
						\bold
							{
								18
							}
						}
				e'8
				f'8
				g'8
				af'8
				bf'8
				a'8
				b'8
				c'8
				d'8
				cs'8 \stopGroup \stopGroup
				af'8 \startGroup \startGroup
					^ \markup {
						\bold
							{
								19
							}
						}
				fs'8
				e'8
				f'8
				g'8 \stopGroup
				f'8 \startGroup
				a'8
				ef'8
				d'8
				e'8 \stopGroup \stopGroup
				g'8 \startGroup \startGroup
					^ \markup {
						\bold
							{
								20
							}
						}
				af'8
				fs'8 \stopGroup \stopGroup
				e'8 \startGroup \startGroup
					^ \markup {
						\bold
							{
								21
							}
						}
				f'8
				e'8
				f'8
				a'8
				ef'8
				d'8 \stopGroup
				cs'8 \startGroup
				bf'8
				a'8
				b'8
				c'8
				d'8 \stopGroup \stopGroup
				d'8 \startGroup \startGroup
					^ \markup {
						\bold
							{
								22
							}
						}
				e'8
				f'8
				a'8
				ef'8
				d'8
				cs'8
				bf'8
				a'8
				b'8
				c'8 \stopGroup \stopGroup
				f'8 \startGroup \startGroup
					^ \markup {
						\bold
							{
								23
							}
						}
				g'8
				af'8
				fs'8
				e'8 \stopGroup
				c'8 \startGroup
				d'8
				cs'8
				bf'8
				a'8
				b'8
				e'8
				f'8
				g'8 \stopGroup \stopGroup
				af'8 \startGroup \startGroup
					^ \markup {
						\bold
							{
								24
							}
						}
				fs'8 \stopGroup \stopGroup
				ef'8 \startGroup \startGroup
					^ \markup {
						\bold
							{
								25
							}
						}
				d'8
				e'8
				f'8
				a'8 \stopGroup
				fs'8 \startGroup
				e'8
				f'8
				g'8
				af'8 \stopGroup \stopGroup
				a'8 \startGroup \startGroup
					^ \markup {
						\bold
							{
								26
							}
						}
				ef'8
				d'8
				e'8
				f'8
				b'8
				c'8
				d'8
				cs'8
				bf'8
				a'8 \stopGroup \stopGroup
				f'8 \startGroup \startGroup
					^ \markup {
						\bold
							{
								27
							}
						}
				a'8
				ef'8
				d'8
				e'8 \stopGroup
				a'8 \startGroup
				b'8
				c'8
				d'8
				cs'8
				bf'8
				af'8
				fs'8
				e'8
				f'8
				g'8 \stopGroup \stopGroup
				bf'8 \startGroup \startGroup
					^ \markup {
						\bold
							{
								28
							}
						}
				a'8
				b'8 \stopGroup \stopGroup
				c'8 \startGroup \startGroup
					^ \markup {
						\bold
							{
								29
							}
						}
				d'8
				cs'8
				g'8
				af'8
				fs'8 \stopGroup
				e'8 \startGroup
				f'8 \stopGroup \stopGroup
				e'8 \startGroup \startGroup
					^ \markup {
						\bold
							{
								30
							}
						}
				f'8
				a'8
				ef'8
				d'8
				f'8
				g'8
				af'8
				fs'8
				e'8 \stopGroup \stopGroup
				d'8 \startGroup \startGroup
					^ \markup {
						\bold
							{
								31
							}
						}
				e'8
				f'8
				a'8
				ef'8 \stopGroup
				cs'8 \startGroup
				bf'8
				a'8
				b'8
				c'8
				d'8
				ef'8
				d'8
				e'8
				f'8
				a'8 \stopGroup \stopGroup
				d'8 \startGroup \startGroup
					^ \markup {
						\bold
							{
								32
							}
						}
				cs'8
				bf'8
				a'8
				b'8
				c'8 \stopGroup \stopGroup
				e'8 \startGroup \startGroup
					^ \markup {
						\bold
							{
								33
							}
						}
				f'8
				g'8
				af'8
				fs'8 \stopGroup
				c'8 \startGroup
				d'8
				cs'8 \stopGroup \stopGroup
				bf'8 \startGroup \startGroup
					^ \markup {
						\bold
							{
								34
							}
						}
				a'8
				b'8
				fs'8
				e'8
				f'8
				g'8
				af'8 \stopGroup \stopGroup
				a'8 \startGroup \startGroup
					^ \markup {
						\bold
							{
								35
							}
						}
				ef'8
				d'8
				e'8
				f'8 \stopGroup
				af'8 \startGroup
				fs'8
				e'8
				f'8
				g'8
				f'8
				a'8
				ef'8
				d'8
				e'8 \stopGroup \stopGroup
				b'8 \startGroup \startGroup
					^ \markup {
						\bold
							{
								36
							}
						}
				c'8
				d'8
				cs'8
				bf'8
				a'8 \stopGroup \stopGroup
				e'8 \startGroup \startGroup
					^ \markup {
						\bold
							{
								37
							}
						}
				f'8
				a'8
				ef'8
				d'8
				a'8
				b'8
				c'8 \stopGroup
				d'8 \startGroup
				cs'8
				bf'8 \stopGroup \stopGroup
				g'8 \startGroup \startGroup
					^ \markup {
						\bold
							{
								38
							}
						}
				af'8
				fs'8
				e'8
				f'8 \stopGroup \stopGroup
				bf'8 \startGroup \startGroup
					^ \markup {
						\bold
							{
								39
							}
						}
				a'8
				b'8
				c'8
				d'8
				cs'8 \stopGroup
				f'8 \startGroup
				g'8
				af'8
				fs'8
				e'8
				d'8
				e'8
				f'8
				a'8
				ef'8 \stopGroup \stopGroup
				e'8 \startGroup \startGroup
					^ \markup {
						\bold
							{
								40
							}
						}
				f'8
				g'8
				af'8
				fs'8 \stopGroup \stopGroup
				ef'8 \startGroup \startGroup
					^ \markup {
						\bold
							{
								41
							}
						}
				d'8
				e'8
				f'8
				a'8
				cs'8
				bf'8
				a'8
				b'8
				c'8
				d'8 \stopGroup
				a'8 \startGroup
				ef'8
				d'8 \stopGroup \stopGroup
				e'8 \startGroup \startGroup
					^ \markup {
						\bold
							{
								42
							}
						}
				f'8
				d'8
				cs'8
				bf'8 \stopGroup \stopGroup
				a'8 \startGroup \startGroup
					^ \markup {
						\bold
							{
								43
							}
						}
				b'8
				c'8 \stopGroup
				fs'8 \startGroup
				e'8
				f'8
				g'8
				af'8
				c'8
				d'8
				cs'8
				bf'8
				a'8
				b'8 \stopGroup \stopGroup
				af'8 \startGroup \startGroup
					^ \markup {
						\bold
							{
								44
							}
						}
				fs'8
				e'8
				f'8
				g'8 \stopGroup \stopGroup
				f'8 \startGroup \startGroup
					^ \markup {
						\bold
							{
								45
							}
						}
				a'8
				ef'8
				d'8
				e'8
				g'8
				af'8
				fs'8
				e'8
				f'8 \stopGroup
				e'8 \startGroup
				f'8
				a'8
				ef'8
				d'8 \stopGroup \stopGroup
				b'8 \startGroup \startGroup
					^ \markup {
						\bold
							{
								46
							}
						}
				c'8
				d'8
				cs'8
				bf'8
				a'8 \stopGroup \stopGroup
				d'8 \startGroup \startGroup
					^ \markup {
						\bold
							{
								47
							}
						}
				e'8
				f'8 \stopGroup
				a'8 \startGroup
				ef'8
				a'8
				b'8
				c'8
				d'8
				cs'8
				bf'8 \stopGroup \stopGroup
				f'8 \startGroup \startGroup
					^ \markup {
						\bold
							{
								48
							}
						}
				g'8
				af'8
				fs'8
				e'8 \stopGroup \stopGroup
				bf'8 \startGroup \startGroup
					^ \markup {
						\bold
							{
								49
							}
						}
				a'8
				b'8
				c'8
				d'8
				cs'8
				e'8
				f'8
				g'8
				af'8
				fs'8 \stopGroup
				ef'8 \startGroup
				d'8
				e'8
				f'8
				a'8 \stopGroup \stopGroup
				\bar "|."
			}
		}
	>>
}