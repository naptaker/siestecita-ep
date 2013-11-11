voltaFirst = \markup { 1. \text \italic { play 1x and 4x only } }

bassChorus = \relative c {
	\set Score.repeatCommands = #'(start-repeat)
	\set TabStaff.minimumFret = #13
	bes'4 bes8 bes4^\prall bes8 bes bes |
	\set TabStaff.minimumFret = #10
	a4\3 a8\3 g4\3 des'8\2 des\2 des\2 |
	bes4 bes8 bes4^\prall bes8 bes bes |
	\set TabStaff.minimumFret = #8
	aes4\3 aes8\3 f4 f8 f f |
	\set TabStaff.minimumFret = #12
	bes4\3 bes8\3 bes\3 d4 d8 d |
	\set TabStaff.minimumFret = #8
	aes4\3 aes8\3 f4 f8 f f |
	\set TabStaff.minimumFret = #10
	bes4 bes8 bes g4\3 g8\3 g\3 |
	\set Score.repeatCommands = #(list(list 'volta voltaFirst))
	\set TabStaff.minimumFret = #8
	g8\3( aes\3) aes\3 f4 f8 f4 |

	\once \override Score.RehearsalMark #'outside-staff-priority = #5000
	\once \override Score.RehearsalMark #'self-alignment-X = #RIGHT
	\once \override Score.RehearsalMark #'break-align-symbols = #'(volta)
	\set Score.repeatCommands = #'((volta #f) (volta "2.") end-repeat)
	g8\3( aes) aes f4 ees'8\2 ees\2 ees\2 |
	\set Score.repeatCommands = #'((volta #f))
	des4 des8 des des des des des |
	des8 c4 ces4.-> r4 |
}