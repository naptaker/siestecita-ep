bassMotifA = \relative c {
	aes4 ees' d aes |
	ces des ces aes8 ges |
}

bassMotifB = \relative c {
	aes4 ees' d aes |
	ces des ges, g |
}

bassMotifC = \relative c {
	aes4 ces8 aes d ees des ces | aes8 aes ces aes d ees des ces |
}

bassIntro = \relative c {
	\bassMotifA \bassMotifB
	\bassMotifA \bassMotifC
	\bassMotifA \bassMotifB
	\bassMotifA \bassMotifC
}

bassVerseEnding = \relative c, {
		d'8->( ees) ees d->( ees) ees d->( ees) |
		ees ees d r ces r bes a |
}

bassVerse = \relative c {
	\bassMotifA \bassMotifB
	\bassMotifA \bassMotifC
	\bassMotifA \bassMotifB
	\bassMotifA \bassVerseEnding
}



bassChorus = \relative c {
	ges8 aes aes ges4 g aes8 | des ees ees ces4 bes8 aes ces |
	ges8 aes aes ges4 g aes8 | ees'8. ges ees8 d8. des ces8 |
	ges8 aes aes ges4 g aes8 | des ees ees ces4 bes8 aes d |
	ees4. ees des8 d | ees8. ges ees8 d8. des ces8 |
}

bassVamp = \relative c {
	\bassMotifA \bassMotifB
	\bassMotifA \bassMotifB
}

bassEnd = \relative c {
	R1*2 | aes4 r4 r2 |
}

bgtr = \relative c {
	\Key
	\transposition c

	\bassIntro
	\bassVerse
	\bassChorus
	\bassVamp
	\bassVerse
	\bassChorus
	\bassChorus
	\bassEnd
}

bassGuitar = {
	\set Staff.midiInstrument = #"electric bass (finger)"
	\global	\clef bass << \bgtr >>
}