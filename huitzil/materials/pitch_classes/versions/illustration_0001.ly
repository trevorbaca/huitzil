% 2014-09-29 21:38

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
				af'8 \stopGroup
				a'8 \startGroup
				ef'8 \stopGroup
				d'8 \startGroup
				e'8
				f'8 \stopGroup
				cs'8 \startGroup \stopGroup \stopGroup
				bf'8 \startGroup \startGroup
					^ \markup {
						\bold
							{
								1
							}
						}
				a'8
				b'8
				c'8 \stopGroup
				f'8 \startGroup
				a'8
				ef'8
				d'8
				e'8 \stopGroup \stopGroup
				c'8 \startGroup \startGroup
					^ \markup {
						\bold
							{
								2
							}
						}
				cs'8 \stopGroup
				bf'8 \startGroup
				a'8
				b'8 \stopGroup \stopGroup
				af'8 \startGroup \startGroup
					^ \markup {
						\bold
							{
								3
							}
						}
				fs'8
				e'8
				f'8
				g'8 \stopGroup
				b'8 \startGroup
				c'8 \stopGroup
				cs'8 \startGroup
				bf'8
				a'8 \stopGroup \stopGroup
				g'8 \startGroup \stopGroup \startGroup \stopGroup
					^ \markup {
						\bold
							{
								4
							}
						}
				af'8 \startGroup \startGroup
					^ \markup {
						\bold
							{
								5
							}
						}
				fs'8
				e'8
				f'8 \stopGroup
				e'8 \startGroup
				f'8
				a'8
				ef'8
				d'8 \stopGroup
				f'8 \startGroup
				g'8 \stopGroup
				af'8 \startGroup
				fs'8
				e'8 \stopGroup \stopGroup
				d'8 \startGroup \startGroup
					^ \markup {
						\bold
							{
								6
							}
						}
				e'8
				f'8
				a'8
				ef'8 \stopGroup
				a'8 \startGroup
				b'8 \stopGroup \stopGroup
				c'8 \startGroup \startGroup
					^ \markup {
						\bold
							{
								7
							}
						}
				cs'8
				bf'8 \stopGroup
				ef'8 \startGroup \stopGroup \stopGroup
				d'8 \startGroup \startGroup
					^ \markup {
						\bold
							{
								8
							}
						}
				e'8
				f'8
				a'8 \stopGroup
				bf'8 \startGroup
				a'8
				b'8
				c'8
				cs'8 \stopGroup
				e'8 \startGroup
				f'8 \stopGroup \stopGroup
				g'8 \startGroup \startGroup
					^ \markup {
						\bold
							{
								9
							}
						}
				af'8
				fs'8 \stopGroup \stopGroup
				cs'8 \startGroup \startGroup
					^ \markup {
						\bold
							{
								10
							}
						}
				bf'8
				a'8
				b'8
				c'8 \stopGroup
				fs'8 \startGroup
				e'8 \stopGroup
				f'8 \startGroup
				g'8
				af'8 \stopGroup
				a'8 \stopGroup \startGroup \stopGroup
				ef'8 \startGroup \startGroup
					^ \markup {
						\bold
							{
								11
							}
						}
				d'8
				e'8
				f'8 \stopGroup
				af'8 \startGroup
				fs'8
				e'8
				f'8
				g'8 \stopGroup \stopGroup
				f'8 \startGroup \startGroup
					^ \markup {
						\bold
							{
								12
							}
						}
				a'8 \stopGroup
				ef'8 \startGroup
				d'8
				e'8 \stopGroup \stopGroup
				c'8 \startGroup \startGroup
					^ \markup {
						\bold
							{
								13
							}
						}
				cs'8
				bf'8
				a'8
				b'8 \stopGroup
				e'8 \startGroup
				f'8 \stopGroup
				a'8 \startGroup
				ef'8
				d'8 \stopGroup \stopGroup
				b'8 \startGroup \stopGroup \startGroup \stopGroup
					^ \markup {
						\bold
							{
								14
							}
						}
				c'8 \startGroup \startGroup
					^ \markup {
						\bold
							{
								15
							}
						}
				cs'8
				bf'8
				a'8 \stopGroup
				g'8 \startGroup
				af'8
				fs'8
				e'8
				f'8 \stopGroup
				a'8 \startGroup
				b'8 \stopGroup
				c'8 \startGroup
				cs'8
				bf'8 \stopGroup \stopGroup
				f'8 \startGroup \startGroup
					^ \markup {
						\bold
							{
								16
							}
						}
				g'8
				af'8
				fs'8
				e'8 \stopGroup
				d'8 \startGroup
				e'8 \stopGroup \stopGroup
				f'8 \startGroup \startGroup
					^ \markup {
						\bold
							{
								17
							}
						}
				a'8
				ef'8 \stopGroup
				e'8 \stopGroup \startGroup \stopGroup
				f'8 \startGroup \startGroup
					^ \markup {
						\bold
							{
								18
							}
						}
				g'8
				af'8
				fs'8 \stopGroup
				ef'8 \startGroup
				d'8
				e'8
				f'8
				a'8 \stopGroup
				bf'8 \startGroup
				a'8 \stopGroup \stopGroup
				b'8 \startGroup \startGroup
					^ \markup {
						\bold
							{
								19
							}
						}
				c'8
				cs'8 \stopGroup \stopGroup
				a'8 \startGroup \startGroup
					^ \markup {
						\bold
							{
								20
							}
						}
				ef'8
				d'8
				e'8
				f'8 \stopGroup
				cs'8 \startGroup
				bf'8 \stopGroup
				a'8 \startGroup
				b'8
				c'8 \stopGroup
				fs'8 \stopGroup \startGroup \stopGroup
				e'8 \startGroup \startGroup
					^ \markup {
						\bold
							{
								21
							}
						}
				f'8
				g'8
				af'8 \stopGroup
				c'8 \startGroup
				cs'8
				bf'8
				a'8
				b'8 \stopGroup \stopGroup
				af'8 \startGroup \startGroup
					^ \markup {
						\bold
							{
								22
							}
						}
				fs'8 \stopGroup
				e'8 \startGroup
				f'8
				g'8 \stopGroup \stopGroup
				f'8 \startGroup \startGroup
					^ \markup {
						\bold
							{
								23
							}
						}
				a'8
				ef'8
				d'8
				e'8 \stopGroup
				g'8 \startGroup
				af'8 \stopGroup
				fs'8 \startGroup
				e'8
				f'8 \stopGroup \stopGroup
				e'8 \startGroup \stopGroup \startGroup \stopGroup
					^ \markup {
						\bold
							{
								24
							}
						}
				f'8 \startGroup \startGroup
					^ \markup {
						\bold
							{
								25
							}
						}
				a'8
				ef'8
				d'8 \stopGroup
				b'8 \startGroup
				c'8
				cs'8
				bf'8
				a'8 \stopGroup
				d'8 \startGroup
				e'8 \stopGroup
				f'8 \startGroup
				a'8
				ef'8 \stopGroup \stopGroup
				a'8 \startGroup \startGroup
					^ \markup {
						\bold
							{
								26
							}
						}
				b'8
				c'8
				cs'8
				bf'8 \stopGroup
				f'8 \startGroup
				g'8 \stopGroup \stopGroup
				af'8 \startGroup \startGroup
					^ \markup {
						\bold
							{
								27
							}
						}
				fs'8
				e'8 \stopGroup
				bf'8 \stopGroup \startGroup \stopGroup
				a'8 \startGroup \startGroup
					^ \markup {
						\bold
							{
								28
							}
						}
				b'8
				c'8
				cs'8 \stopGroup
				e'8 \startGroup
				f'8
				g'8
				af'8
				fs'8 \stopGroup
				ef'8 \startGroup
				d'8 \stopGroup \stopGroup
				e'8 \startGroup \startGroup
					^ \markup {
						\bold
							{
								29
							}
						}
				f'8
				a'8 \stopGroup \stopGroup
				\bar "|."
			}
		}
	>>
}