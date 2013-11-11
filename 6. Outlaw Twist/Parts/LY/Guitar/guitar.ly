gtrIntro = \relative c {
	R1*3
	r2 <c'' e g>16 r8 <b dis fis>16 r8 <bes d f>16 r |
}

gtrRiffA = \relative c {
	a4 <e' g cis e>8 g, e b' <d gis d' e> f, |
	fis4 <a' cis fis>8 b, c c16 c b8 bes |
}

gtrRiffB = \relative c {
	a4 <e' g cis e>8 g, e b' <d gis d' e> f, |
	fis4 r4 <c'' e g>16 r8 <b dis fis>16 r8 <bes d f>16 r |
}

gtrVerse = \relative c {
	\repeat "unfold" 2 { \gtrRiffA \gtrRiffB }
}

gtrSoloA = \relative c'' {
	r4 a8 g e4 e8. dis16 |
	e8 g e dis c c16 c b8 bes |
	r4 a'8 g e4 e8. dis16 |
	e8 g e dis c2 |
	r4 a'8 g e4 e8. dis16 |
	e8 g e dis c c16 c b8 bes |
	r4 a'8 g e4 e8. dis16 |
	e8 g e dis c8. b bes8 |
}

gtrSoloB = \relative c' {
	r4 fis8 e4 e8 fis e ~ |
	e8 e fis8. e16 fis8 a fis e |
	c4 c c8 c4 c8 ~ |
	c8 c8 c8. b16 c8 b bes a |
	r4 fis'8 e4 e8 fis e ~ |
	e8 e fis8. e16 fis8 a fis e |
	c4-. b'-. a-. fis-. |
	e8 cis c b bes4 r |
}

gtrSoloC = \relative c'' {
	r4 a8 g e4 e8. dis16 |
	e8 g e dis c c16 c b8 bes |
	r4 a'8 g e4 e8. dis16 |
	e8 g e dis c2 |
	r4 a'8 g e4 e8. dis16 |
	e8 g e dis c c16 c b8 bes |
	r8 a'4 g8 fis4 e |
	dis8 e dis e c b a4 |
}

gtrJam = \relative c' {
	\set Staff.midiInstrument = #"overdriven guitar"
	R1*8
	cis4 cis8 b cis4 cis8 b |
	cis4 cis8 b cis e cis b |
	a4 fis8 e fis a fis e |
	a4 fis8 e fis a b c |
	cis4 cis8 b cis4 cis8 b |
	cis4 cis8 b cis e cis e |
	e8( fis) fis e fis4 fis8 e |
	fis4 fis8 e fis a b c |

	\ottava #1
	cis4 cis8 b cis4 cis8 b |
	cis4 cis8 b cis e cis e |
	e8( fis) fis e fis4 fis8 e |
	fis4 fis8 e fis a b c |
	<<
  { cis4 cis4. cis | cis cis cis4 ~ |
  	cis4 bis4. bis | bis bis ~ bis4 ~ |
  	bis4 cis4. cis | cis cis cis4 ~ |
  	cis4 bis4. bis | bis bis4 b8 a fis |
	}
	\\
  { s2 fis4. fis8 ~ | fis4 e4. d4 d8 |
  	cis2 cis4. cis8 ~ | cis4 cis4. cis8 d e |
  	fis2 fis4. fis8 ~ | fis4 e4. d4 d8 |
  	cis2 cis4. cis8 ~ | cis4 cis4. ~ cis |
  } 
	>>
	
	\ottava #1
	cis4 cis8 b cis4 cis8 b |
	cis4 cis8 b cis b a b |
	\ottava #0
	fis4 fis8 e fis4 fis8 e |
	fis4 fis8 e fis8 e cis e |
	cis4 cis8 b cis4 cis8 b |
	cis4 cis8 b cis b a b |
	fis4 fis8 e fis4 fis8 e |
	fis8 f4 e4 dis8 d a |
	\tempo 4 = 200
	cis1 ~ | cis1
}

gtrHyperJam = \relative c {
	\ottava #-1
	\repeat "unfold" 2 {
		a4 a8 g e4 e8 f | fis4 a8 b c c b bes |
	}
	
	\ottava #1
	\repeat "unfold" 2 {
		a''4 a8 g e4 e8 f | fis4 a8 b c c b bes |
	}
	\ottava #2
		a'4 a8 g e4 e8 f | fis4 a8 b c c b bes |
		a4 a8 g e4 e8 f | fis4 fis8 f fis f e4 |
		
	\ottava #1
		a,4 a8 g e4 e8 f | fis4 a8 b c c b bes |
		a4 a8 g e4 e8 f | fis4 fis8 f fis f e4 |
	
	\ottava #-1
	\repeat "unfold" 4 {
		a,,4 a8 g e4 e8 f | fis4 a8 b c c b bes |
	}
	a4 r4 r2 \bar "|."
}

gtr = \relative c {
	\Key
	
	\gtrIntro
	\gtrVerse \gtrVerse
	\gtrSoloA
	\gtrVerse
	\gtrSoloB
	\gtrVerse
	\gtrSoloC
	\gtrJam
	\gtrHyperJam
}

%showLastLength = R1*32

gtrHarmony = \chordmode {
	s1*3
	s2 c8. b bes8 |
	\repeat "unfold" 2 {
		a2:7 e:7 | fis:7 c |
		a2:7 e:7 | fis:7 c8. b bes8 |
	}
}

Guitar = {
	\set Staff.midiInstrument = #"electric guitar (clean)"
	\global \clef "treble_8" << \gtr >>
}