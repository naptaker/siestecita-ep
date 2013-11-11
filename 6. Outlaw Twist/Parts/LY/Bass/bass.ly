bassIntro = \relative c {
	R1*3
	r2 c8. b bes8 |
}

bassRiffA = \relative c {
	a4. g8 e4. f8 | fis4 a8 b c c b bes |
}

bassRiffB = \relative c {
	a4. g8 e4. f8 | fis4. b8 c8. b bes8 |
}

bassVerse = \relative c {
	\repeat "unfold" 2 { \bassRiffA \bassRiffB }
}

bassSoloA = \relative c {
	a4. g8 e4 e8 f |
	fis4 a8 b c c b bes |
	a4 a8 g e4 e8 f |
	fis4 a8 b c2 |
	a4. g8 e4 e8 f |
	fis4 a8 b c c b bes |
	a4 a8 g e4 e8 f |
	fis4 a8 b c8. b bes8  |
}

bassSoloB = \relative c {
	a4. g8 e4 e8 f |
	fis4 a8 b c c b bes |
	a4 e8 g e4 e8 f ~ |
	f8 fis4 b8 c c b bes |
	a4. g8 e4 e8 f ~ |
	f8 fis4 b8 c c b bes |
	a4 e8 g e4 e8 f ~ |
	f8 fis4 b8 c8. b bes8 |
}

bassSoloC = \relative c {
	a4. g8 e4 e8 f |
	fis4 a8 b c c b bes |
	a4 a8 g e4 e8 f |
	fis4 a8 b c2 |
	a4. g8 e4 e8 f |
	fis4 a8 b c c b bes |
	a4 a8 g e4 e8 f |
	fis4 a8 b c c' b bes |
}

bassJam = \relative c' {
	\repeat "unfold" 9 {
		a4 a8. e16 g8 a a g |
		a4 a8. g16 a8 c gis g |
		fis4 fis8. b,16 e8 fis fis e |
		fis4 fis8. b,16 fis'8 c' b bes |
	}
	\tempo 4 = 200
	a1 ~ |	a1 |
}

bassHyperJam = \relative c {
	\repeat "unfold" 12 {
		a4 a8 g e4 e8 f |
		fis4 a8 b c c b bes |
	}
	a4 r4 r2 \bar "|."
}

bgtr = \relative c, {
	\Key

	\bassIntro
	\bassVerse \bassVerse
	\bassSoloA
	\bassVerse
	\bassSoloB
	\bassVerse
	\bassSoloC
	\bassJam
	\bassHyperJam

}

bassGuitar = {
	\set Staff.midiInstrument = #"electric bass (finger)"
	\global	\clef bass << \bgtr >>
}