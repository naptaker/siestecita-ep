bassBridge = \relative c {
	fis4 fis4 cis8 e8 ( eis8 fis8 ) ~ |
	fis8 fis8 fis8 e4 e8 b'8 eis,8 |
	fis4 fis4 cis8 e8 ( eis8 fis8 ) ~ |
	fis8 fis8 fis8 e8 fis8 a8 fis8 e8 |
	fis4 fis4 cis8 e8 ( eis8 fis8 ) ~ |
	fis8 fis8 fis8 e4 e8 b'8 eis,8 |
	fis4 fis4 cis8 e8 ( eis8 fis8 ) ~ |
	fis8 fis8 a8 fis8 b8 a8 fis8 e8 |
}

bassIntro = \relative c {
	R1*2 |
	\bassBridge
}

bassVerse = \relative c {
	fis4 fis4 cis8 e8 ( eis8 fis8 ) ~ |
	fis8 fis8 fis8 e4 e8 b'8 eis,8 |
	fis4 fis4 cis8 e8 ( eis8 fis8 ) ~ |
	fis8 fis8 fis8 e8 fis8 a8 fis8 e8 |
	fis4 fis4 cis8 e8 ( eis8 fis8 ) ~ |
	fis8 fis8 fis8 e4 e8 b'8 eis,8 |
	fis4 fis4 cis8 e8 ( eis8 ) fis,8 ~ |
	fis8 fis8 fis8 fis'4 fis8 fis,8 fis8 |
}

bassChorus = \relative c {
	d4 d4 b8 b4 fis8 ~ |
	fis8 fis8 fis8 fis4. fis8 fis8 |
	a4 a8 a8 a8 b4 fis8 ~ |
	fis8 fis8 fis8 fis4 fis8 fis8 fis8 |
	d'4 d4 b8 b4 fis8 ~ |
	fis8 fis8 fis8 fis4. fis8 fis8 |
	a4 a8 a8 a8 b4 fis8 ~ |
	fis8 fis8 fis8 fis4 fis8 fis4 |
	a4 a8 a8 a8 b4 fis8 ~ |
	fis8 fis8 fis8 fis4 fis8 fis4 |
	a4 a8 a8 a8 b4 fis8 ~ |
	fis8 fis8 fis8 fis'4 fis8 fis4 |
}


bgtr = \relative c {
	\Key
	
	\bassIntro
	\bassVerse
	\bassChorus
	\bassBridge
	\bassVerse
	\bassChorus
	\bassBridge
	\bassVerse
	\bassChorus
}

%showLastLength = R1*24

bassGuitar = {
	\set Staff.midiInstrument = #"electric bass (finger)"
	\global	\clef bass << \bgtr >>
}