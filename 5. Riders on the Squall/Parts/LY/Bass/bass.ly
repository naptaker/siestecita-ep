bassTurnaround = \relative c {
	b8( c) c c c c c c |
	g4 g8 g4 g8 g g |
	fis4 fis8 fis c'4 c8 c |
	b4 a g8 c fis,4 |
}

bassVerse = \relative c, {
	e8 e g e e e g e | e e g a4 ais4 b8 |
	e,8 e g e e e g e | e e g a4 ais4 b8 |
	a8 a c a a a c a | a a c d4 dis4 e8 |
	e,8 e g e e e g e | e e g a4 ais4 b8 |
	\bassTurnaround
}

bassIntro = \relative c, {
	\bassVerse
}


bassBridge = \relative c {
	e4 e8 e4 e8 e e |
	e4 e8 e4 e8 e e |
	d'8( e) e d( e e) d( e) |
	e d( e) e d( e) d4 |
}

bassChorus = \relative c {
	\repeat "unfold" 2 {
		a4 a8 a4 a8 a b |
		c4 c8 c b( c) a4 |
		e4 e8 e4 e8 g4 |
		e4 e8 e4 e8 g( gis) |
	}
	\bassTurnaround
}

bgtr = \relative c, {
	\Key

	\bassIntro
	\bassVerse
	\bassVerse
	\bassVerse
	\bassBridge
	\bassChorus
	\bassVerse
	\bassVerse
	\bassVerse
	\bassBridge
	\bassChorus
	\bassBridge
	\bassChorus
	\bassBridge
	e4 r r2 |
}

bassGuitar = {
	\set Staff.midiInstrument = #"electric bass (finger)"
	\global	\clef bass << \bgtr >>
}