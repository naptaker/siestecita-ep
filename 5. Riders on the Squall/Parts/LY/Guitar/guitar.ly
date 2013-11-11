gtrIntro = \relative c, {
	\repeat "unfold" 2 {
		<e b'>8 <e b'> <g b> <g b> <e b'> <e b'> <g b> <g b> |
		<e b'> <e b'> <g b> a4-> ais-> b8-> |
	}
	<a e'>8 <a e'> <c e> <c e> <a e'> <a e'> <c e> <c e> |
	a'8 a16 a gis8 g e dis c b |
	<e, b'>8 <e b'> <g b> <g b> <e b'> <e b'> <g b> <g b> |
	<e b'> <e b'> <g b> a4-> ais-> b8-> |
	c4. <c e g c>4 <c e g c>8 <c e g c> e, |
	g4. <g c e g c>4 <g c e g c>8 <g c e g c> e |
	fis4 fis8 fis c'4 c8 c |
	b4 a g8 a fis4 |
}

gtrVerse = \relative c, {
	\repeat "unfold" 2 {
		<e b' e g b e>1 ~ |
		<e b' e g b e>1 |
		<e b' e g b e>1 ~ |
		<e b' e g b e>1 |
		<a e' a c e>1 ~ |
		<a e' a c e>2 ~ <a e' a c e>8 <a e' a c e> <a e' a c e> <e b' e g b e> |
		<e b' e gis b e>1 ~
		<e b' e gis b e>2 ~ <e b' e gis b e>8 g a b |
		c4. <c e g c>4 <c e g c>8 <c e g c> e, |
		g4. <g c e g c>4 <g c e g c>8 <g c e g c> e |
		fis4 fis8 fis c'4 c8 c |
		b4 a g8 a fis4 |
	}
}

gtrMelodyA = \relative c'' {
	b1 ~ |
	b8 b ais b c4 b8 g\2 ~ |
	g1\2 ~ | 
	g8\2 g\2 fis\2 g\2 ais4\1 b8\1 fis\2 ~ |
	fis2.\2 e4\2 |
	dis8\2 fis\2 f\2 fis\2 g4\2 dis8\2 e\2 ~ |
	e2\2 ~ e8\2 f\2 e\2 dis\2 ~ |
	dis2.\2 \ottava #1 b'4\1 |
	c1\1 |
	g4.\2 d'4. c4 |
	b2 ~ b8 c b e, |
	ais1 | \ottava #0
}

gtrBridgeA = \relative c, {
	\repeat "unfold" 4 {
		<e b' e g b e>4 <e b' e gis b e>8 <e b' e gis b e>4 <e b' e gis b e>8
			<e b' e gis b e> <e b' e gis b e> |
		}
}

gtrChorusA = \relative c {
	<a e' a c e>4. <a e' a c e>4. <a e' a c e>4 |
	<c e g c e>4. <b fis' b dis fis>4. ~ <b fis' b dis fis>4 |
	<e, b' e g b e>4 <e b' e gis b e>8 <e b' e gis b e>4 <e b' e gis b e>8 <e b' e gis b e> <e b' e gis b e> |
	<e b' e g b e>4 <e b' e gis b e>8 <e b' e gis b e>4 <e b' e gis b e>8 <e b' e gis b e> <e b' e gis b e> |

	<a e' a c e>4. <a e' a c e>4. <a e' a c e>4 |
	<c e g c e>4. <b fis' b dis fis>4. ~ <b fis' b dis fis>4 |
	<e, b' e g b e>4 <e b' e gis b e>8 <e b' e gis b e>4 <e b' e gis b e>8 <e b' e gis b e> <e b' e gis b e> |
	<e b' e g b e>4 <e b' e gis b e>8 <e b' e gis b e>4 g8 a b |
	c4. <c e g c>4 <c e g c>8 <c e g c> e, |
	g4. <g c e g c>4 <g c e g c>8 <g c e g c> e |
	fis4 fis8 fis c'4 c8 c |
	b4 a g8 a fis4 |
}

gtrBridgeB = \relative c, {
	\ottava #0
	\repeat "unfold" 3 {
		<e b' e g b e>4 <e b' e gis b e>8 <e b' e gis b e>4 <e b' e gis b e>8
			<e b' e gis b e> <e b' e gis b e> |
		}
		<e b' e gis b e>4 \ottava #1 b''' bes b |
}

gtrChorusB = \relative c'' {
	e4. e4 e8 e e, |
	c'4 c8 c c d c e, |
	b'4. b4 c8 b e, |
	bes'2 ~ bes8 b bes b |
	e4. e4 e8 e e, |
	c'4 c8 c c d c e, |
	b'4. b4 c8 b e, |
	bes'2 ~ bes8 \ottava #0 g,, a b |
	
	c4. <c e g c>4 <c e g c>8 <c e g c> e, |
	g4. d'4. c4 |
	b4. b4 c8 b bes ~ |
	bes1 |
}

gtrChorusC = \relative c'' {
	e4. e4 e8 e e, |
	c'4 c8 c c d c e, |
	b'4. b4 c8 b e, |
	bes'2 ~ bes8 b bes b |
	e4. e4 e8 e e, |
	c'4 c8 c c d c e, |
	b'4. b4 c8 b e, |
	bes'2 ~ bes8 b bes b |
	
	e1:16 ~ | e2:16 fis4:16 e:16 |
	c2:16 d:16 | b1:16
	}

gtrEnding = \relative c, {
	\ottava #0
	\repeat "unfold" 2 {
		<e b' e g b e>4( <e b' e gis b e>8) <e b' e gis b e>4 <e b' e gis b e>8
			<e b' e gis b e> <e b' e gis b e> |
	}
	<e b' e g b e>8( <e b' e gis b e>) <e b' e gis b e>
		<e b' e g b e>( <e b' e gis b e>) <e b' e gis b e>
		<e b' e g b e>8( <e b' e gis b e>)
	<e b' e gis b e> <e b' e g b e>( <e b' e gis b e>) <e b' e gis b e>
		<e b' e g b e>8( <e b' e gis b e>) <e b' e gis b e>( <e b' e g b e>) |
	\set Staff.midiInstrument = #"electric guitar (clean)"
		<e b' e gis b e>4 r r2 |
}

%showLastLength = R1*6

gtrHarmony = \chordmode {
	\repeat "unfold" 4 {
		e1:min | s | s | s |
		a:min | s | e:min | s | 
		c | c/g | fis2 c2 | b1
	}
	\repeat "unfold" 4 {
		e4.:min e s4 |
	}
	
	\repeat "unfold" 2 {	
		a1:min c2 b | e4.:min e s4 | e4.:min e s4 |
	}
	c1 | c/g | fis2 c2 | b1

	\repeat "unfold" 3 {
		e1:min | s | s | s |
		a:min | s | e:min | s | 
		c | c/g | fis2 c2 | b1
	}
	\repeat "unfold" 4 {
		e4.:min e s4 |
	}

	\repeat "unfold" 2 {	
		a1:min c2 b | e4.:min e s4 | e4.:min e s4 |
	}
	c1 | c/g | fis2 c2 | b1

	\repeat "unfold" 4 {
		e4.:min e s4 |
	}

	\repeat "unfold" 2 {	
		a1:min c2 b | e4.:min e s4 | e4.:min e s4 |
	}
	c1 | c/g | fis2 c2 | b1
	
	\repeat "unfold" 4 {
		e4.:min e s4 |
	}
	
	e4 s s2 |
}

gtr = \relative c {
	\Key
	\override Score.RehearsalMark #'staff-padding = #3
	\mark \markup { \bold Intro } \gtrIntro
	\mark \markup { \bold Verse } \gtrVerse
	\set Staff.midiInstrument = #"overdriven guitar"
	\mark \markup { \bold Solo } \gtrMelodyA
		\set Staff.midiInstrument = #"electric guitar (clean)"
	\mark \markup { \bold Bridge } \gtrBridgeA
	\set Staff.midiInstrument = #"overdriven guitar"
	\mark \markup { \bold Chorus } \gtrChorusA
	\mark \markup { \bold Solo } \gtrMelodyA
	\set Staff.midiInstrument = #"electric guitar (clean)"
	\mark \markup { \bold Verse } \gtrVerse
	\mark \markup { \bold Bridge } \gtrBridgeB
	\set Staff.midiInstrument = #"overdriven guitar"
	\mark \markup { \bold Chorus } \gtrChorusB
	\set Staff.midiInstrument = #"electric guitar (clean)"
	\mark \markup { \bold Bridge } \gtrBridgeB
	\set Staff.midiInstrument = #"overdriven guitar"
	\mark \markup { \bold Chorus } \gtrChorusC
	\mark \markup { \bold Ending } \gtrEnding
}

Guitar = {
	\set Staff.midiInstrument = #"electric guitar (clean)"
	\global \clef "treble_8" << \gtr >>
	\bar "|."
}