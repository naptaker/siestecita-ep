voltaFirst = \markup { 1. \text \italic { play 1x and 4x only } }

gtrChorus = \relative c {
	\mark \markup { \musicglyph #"scripts.segno" }
	\set Score.repeatCommands = #'(start-repeat)
	\set TabStaff.minimumFret = #6
	bes4 \deadNotesOn bes8 \deadNotesOff bes4 bes8 bes bes |
		 \set TabStaff.minimumFret = #5
	a4 \deadNotesOn a8 \deadNotesOff
		\set TabStaff.minimumFret = #3
		g4
		\set TabStaff.minimumFret = #9
		des'8 des \parenthesize des |
	\set TabStaff.minimumFret = #6
	bes4 \deadNotesOn bes8 \deadNotesOff bes4 bes8 bes bes |
	\set TabStaff.minimumFret = #4
	aes4 \deadNotesOn aes8 \deadNotesOff
		\set TabStaff.minimumFret = #1
		f4 f8 f f |
	\set TabStaff.minimumFret = #6
	bes4 bes8 bes
		\set TabStaff.minimumFret = #10
		d4 d8 d |
	\set TabStaff.minimumFret = #4
	aes4 \deadNotesOn aes8 \deadNotesOff
		\set TabStaff.minimumFret = #1
		f4 f8 f f | \break
	\set TabStaff.minimumFret = #6
	bes4 bes8 bes
		\set TabStaff.minimumFret = #3
		g4 g8 g | 

  \set Score.repeatCommands = #(list(list 'volta voltaFirst))
%		\once \set doubleSlurs = ##t
		g8(
			\set TabStaff.minimumFret = #4
			aes) aes
			\set TabStaff.minimumFret = #1
			f4 f8 f4 |
			\once \override Score.RehearsalMark #'self-alignment-X = #RIGHT
			\once \override Score.RehearsalMark #'break-align-symbols = #'(volta)

  \set Score.repeatCommands = #'((volta #f) (volta "2.") end-repeat)
%	\once \set doubleSlurs = ##t
	g8(
		\set TabStaff.minimumFret = #4
		aes) aes
		\set TabStaff.minimumFret = #1
		f4
		\set TabStaff.minimumFret = #11
		ees'8 ees \parenthesize ees
  \set Score.repeatCommands = #'((volta #f))
  
	\set TabStaff.minimumFret = #9
	des4 des8 des des des des des |
	\mark \markup { \musicglyph #"scripts.coda" }
	des
		\set TabStaff.minimumFret = #8
		c4
		\set TabStaff.minimumFret = #7
		ces4.-> r4 |
}


gtrChorusStacked = \relative c {
	\mark \markup { \musicglyph #"scripts.segno" }
	\set Score.repeatCommands = #'(start-repeat)
	\set TabStaff.minimumFret = #6
	<bes f' bes d>4 \deadNotesOn <bes f' bes d>8 \deadNotesOff <bes f' bes d>4 <bes f' bes d>8 <bes f' bes d> <bes f' bes d> |
		 \set TabStaff.minimumFret = #5
	<a e' a cis>4 \deadNotesOn <a e' a cis>8 \deadNotesOff
		\set TabStaff.minimumFret = #3
		<g\6 d'\5 g\4 b\3>4
		\set TabStaff.minimumFret = #9
		<des' aes' des f>8 <des aes' des f> \parenthesize <des aes' des f> |
	\set TabStaff.minimumFret = #6
	<bes f' bes d>4 \deadNotesOn <bes f' bes d>8 \deadNotesOff <bes f' bes d>4 <bes f' bes d>8 <bes f' bes d> <bes f' bes d> |
	\set TabStaff.minimumFret = #4
	<aes ees' aes c>4 \deadNotesOn <aes ees' aes c>8 \deadNotesOff
		\set TabStaff.minimumFret = #1
		<f c' f a>4 <f c' f a>8 <f c' f a> <f c' f a> |
	\set TabStaff.minimumFret = #6
	<bes f' bes d>4 <bes f' bes d>8 <bes f' bes d>
		\set TabStaff.minimumFret = #10
		<d a' d fis>4 <d a' d fis>8 <d a' d fis> |
	\set TabStaff.minimumFret = #4
	<aes ees' aes c>4 \deadNotesOn <aes ees' aes c>8 \deadNotesOff
		\set TabStaff.minimumFret = #1
		<f c' f a>4 <f c' f a>8 <f c' f a> <f c' f a> | \break
	\set TabStaff.minimumFret = #6
	<bes f' bes d>4 <bes f' bes d>8 <bes f' bes d>
		\set TabStaff.minimumFret = #3
		<g\6 d'\5 g\4 b\3>4 <g\6 d'\5 g\4 b\3>8 <g\6 d'\5 g\4 b\3> | 

  \set Score.repeatCommands = #(list(list 'volta voltaFirst))
		\once \set doubleSlurs = ##t
		<g\6 d'\5 g\4 b\3>8(
			\set TabStaff.minimumFret = #4
			<aes ees' aes c>) <aes ees' aes  c>
			\set TabStaff.minimumFret = #1
			<f c' f a>4 <f c' f a>8 <f c' f a>4 |
			\once \override Score.RehearsalMark #'self-alignment-X = #RIGHT
			\once \override Score.RehearsalMark #'break-align-symbols = #'(volta)

  \set Score.repeatCommands = #'((volta #f) (volta "2.") end-repeat)
	\once \set doubleSlurs = ##t
	<g\6 d'\5 g\4 b\3>8(
		\set TabStaff.minimumFret = #4
		<aes ees' aes c>) <aes ees' aes  c>
		\set TabStaff.minimumFret = #1
		<f c' f a>4
		\set TabStaff.minimumFret = #11
		<ees' bes' ees g>8 <ees bes' ees g> \parenthesize <ees bes' ees g>
  \set Score.repeatCommands = #'((volta #f))
  
	\set TabStaff.minimumFret = #9
	<des aes' des f>4 <des aes' des f>8 <des aes' des f> <des aes' des f> <des aes' des f> <des aes' des f> <des aes' des f> |
	\mark \markup { \musicglyph #"scripts.coda" }
	<des aes' des f>
		\set TabStaff.minimumFret = #8
		<c\6 g'\5 c\4 e\3>4
		\set TabStaff.minimumFret = #7
		<ces\6 ges'\5 ces\4 ees\3>4.-> r4 |
}