vwVerseOne = \lyricmode {
  I stepped through the door
  the smo __ ke hu __ ng high
  a room lit by the glow
  of a di __ m bulb
  I saw her from the
  cor -- ner of my eye
}

%showLastLength = R1*5

vmVerseOne = \relative c {
	e4. c8 a4. e'8 | c4 r2 r8 d |
	e4. c8 a4. e'8 | c4 r2 r8 d |
	e4. c8 a4. e'8 | c4 r4 r2 |
	e4. c8 a4. e'8 | c4 r4 r2 |
	e2 a,4. e'8 | c4 r2 d8 c |
	e4. c8 a4. e'8 | c4 r4 r2 |
}

vocals = \relative c {
	\set Staff.instrumentName = #"Vocals"

	\set Staff.midiInstrument = #"tenor sax"
	\global \clef bass \Key
	R1*8
	\vmVerseOne
}