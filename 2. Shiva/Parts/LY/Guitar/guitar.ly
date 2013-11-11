\include "../../../../include/bend.ly"

\include "predefined-guitar-fretboards.ly"
\storePredefinedDiagram #default-fret-table
                        \chordmode { fis }
                        #guitar-tuning
                        #'((barre 6 1 2)
                        	 (place-fret 6 2)
													 (place-fret 5 4)
													 (place-fret 4 4)
													 (place-fret 3 3)
													 (mute 2)
													 (mute 1))
\storePredefinedDiagram #default-fret-table
                        \chordmode { e }
                        #guitar-tuning
                        #'((open 6)
													 (place-fret 5 2)
													 (place-fret 4 2)
													 (place-fret 3 1)
													 (mute 2)
													 (mute 1))
\storePredefinedDiagram #default-fret-table
                        \chordmode { f }
                        #guitar-tuning
                        #'((barre 6 1 1)
                        	 (place-fret 6 1)
													 (place-fret 5 3)
													 (place-fret 4 3)
													 (place-fret 3 2)
													 (mute 2)
													 (mute 1))
													 
\storePredefinedDiagram #default-fret-table
                        \chordmode { d }
                        #guitar-tuning
                        #'((barre 6 1 10)
                        	 (place-fret 6 10)
													 (place-fret 5 12)
													 (place-fret 4 12)
													 (place-fret 3 11)
													 (mute 2)
													 (mute 1))

\storePredefinedDiagram #default-fret-table
                        \chordmode { b }
                        #guitar-tuning
                        #'((barre 6 1 7)
                        	 (place-fret 6 7)
													 (place-fret 5 9)
													 (place-fret 4 9)
													 (place-fret 3 8)
													 (mute 2)
													 (mute 1))
													 
\storePredefinedDiagram #default-fret-table
                        \chordmode { a }
                        #guitar-tuning
                        #'((barre 6 1 5)
                        	 (place-fret 6 5)
													 (place-fret 5 7)
													 (place-fret 4 7)
													 (place-fret 3 6)
													 (mute 2)
													 (mute 1))

\storePredefinedDiagram #default-fret-table
                        \chordmode { fis:6 }
                        #guitar-tuning
                        #'((barre 6 1 2)
                        	 (mute 6)
													 (place-fret 5 4)
													 (place-fret 4 4)
													 (mute 3)
													 (place-fret 2 4)
													 (place-fret 1 2))

\storePredefinedDiagram #default-fret-table
                        \chordmode { fis'' }
                        #guitar-tuning
                        #'((barre 6 1 2)
                        	 (mute 6)
													 (mute 5)
													 (place-fret 4 4)
													 (place-fret 3 4)
													 (place-fret 2 2)
													 (place-fret 1 2))

\storePredefinedDiagram #default-fret-table
                        \chordmode { fis:min }
                        #guitar-tuning
                        #'((barre 6 1 2)
                        	 (place-fret 6 2)
													 (place-fret 5 4)
													 (place-fret 4 4)
													 (place-fret 3 2)
													 (mute 2)
													 (mute 1))

gtrHarmony = \chordmode {
\override FretBoard #'(fret-diagram-details barre-type) = #'straight
%	\override FretBoards.FretBoard #'size = #'1.2
	\override FretBoard #'(fret-diagram-details orientation) = #'landscape
%	\override FretBoard #'transparent = ##t
	
	s1*6 \break s1*4
	fis4 s e8 s f fis |
	s8 s s e4 s8 s f |
	fis4 s e8 s f fis |
	s8 s s fis:6 s s s fis'' |
	fis4 s e8 s f fis |
	s8 s s e4 s8 s f |
	fis4 s e8 s f fis |
	s1 |
		
	d4 s b8 s4 fis8:min |
	s8 fis s s4 s8 s s |
	a4 s8 s s b4 fis8 |
	s1 |
	d4 s b8 s4 fis8:min |
	s8 fis s s4 s8 s s |
	a4 s8 s s b4 fis8 |
	s1 |
	a4 s8 s s b4 fis8 |
	s1 |
	a4 s8 s s b4 fis8 |
	s1 | \pageBreak
	
	s1*16 | \pageBreak
	
	d4 s b8 s4 fis8:min |
	s8 fis s s4 s8 s s |
	a4 s8 s s b4 fis8 |
	s1 |
	d4 s b8 s4 fis8:min |
	s8 fis s s4 s8 s s |
	a4 s8 s s b4 fis8 |
	s1 |
	a4 s8 s s b4 fis8 |
	s1 |
	a4 s8 s s b4 fis8 |
	s1 |
	
	s1*8
	fis4 s e8 s f fis |
	s8 s s e4 s8 s f |
	fis4 s e8 s f fis |
	s8 s s fis:6 s s s fis'' |
	fis4 s e8 s f fis |
	s8 s s e4 s8 s f |
	fis4 s e8 s f fis |
	s1 |
	

	d4 s b8 s4 fis8:min |
	s8 fis s s4 s8 s s |
	a4 s8 s s b4 fis8 |
	s1 |
	d4 s b8 s4 fis8:min |
	s8 fis s s4 s8 s s |
	a4 s8 s s b4 fis8 |
	s1 |
	a4 s8 s s b4 fis8 |
	s1 |
	a4 s8 s s b4 fis8 |
	s1 |
}

gtrBridge = \relative c {
	fis4 fis4 e8 e8 eis8( fis8) ~ |
	fis8 fis8 fis8 e4 e8 e8 eis8( |
	fis4) fis4 e8 e8 eis8( fis8) ~ |
	fis8 fis8( a8 fis8) b8( a8) fis8( e8) |
	<fis ais'>4 <fis ais'>4 <e gis'>8 <e gis'>8 <eis gisis'>8 <fis ais'>8 ~
	 ~ |
	<fis ais'>8 <fis ais'>8 <fis ais'>8 <e gis'>4 <e gis'>8 <e gis'>8
	 <eis gisis'>8 |
	<fis ais'>4 <fis ais'>4 <e gis'>8 <e gis'>8 <eis gisis'>8 <fis ais'>8 ~
	 ~ |
	<fis ais'>8 <fis ais'>8 <a cis'>8 <fis ais'>8 <b dis'>8 <a
		cis'>8 <fis ais'>8 <e gis'>8 |
}

gtrIntro = \relative c {
	R1 | r2 r4 e8 eis8 |
	\gtrBridge
}

gtrVerse = \relative c {
	\improvisationOn
	fis4 fis4 e8 e8 eis8 fis8 ~ |
	fis8 fis8 fis8 e4 e8 e8 eis8 |
	fis4 fis4 e8 e8 eis8 fis8 ~ |
	fis8 fis8 fis8 fis8:16 fis8 fis8 fis8 fis8 | \break
	fis4 fis4 e8 e8 eis8 fis8 ~ |
	fis8 fis8 fis8 e4 e8 e8 eis8 |
	fis4 fis4 e8 e8 eis8 fis8 ~ |
	fis8 fis8 fis8 fis4 fis8 fis8 fis8 | \break
	\improvisationOff
}

gtrChorus = \relative c' {
	\improvisationOn
	d4 d4 b8 b4 fis8 ~ |
	fis8 fis8 fis8 fis4 e8 fis8 e8 |
	a4 a8 a8 a8 b4 fis8 ~ |
	fis8 fis8 fis8 fis8 fis8 eis8 e8 eis8 | \break
	d'4 d4 b8 b4 fis8 ~ |
	fis8 fis8 fis8 fis4 e8 fis8 e8 |
	a4 a8 a8 a8 b4 fis8 ~ |
	fis8 fis8 fis8 fis8 fis8 eis8 e8 eis8 |
	a4 a8 a8 a8 b4 fis8 ~ |
	fis8 fis8 fis8 fis8 fis8 eis8 e8 eis8 |
	a4 a8 a8 a8 b4 fis8 ~ | fis4 r4 r2 | \break
	\improvisationOff
}

gtrSolo = \relative c'' {
	\ottava #1
	\repeat "unfold" 2 {
		\acciaccatura b8 cis4 e8 cis8 c8 fis8 c8 b8 ~ |
		b8 fis8 a8 ais4. r4 |
		\appoggiatura b8 cis4 e8 cis8 c8 fis8 c8 b8 ~ |
		b8 fis8 a8 fis4. r4 |
	}
	fis'4 a8 fis8 eis8 e8 c8 cis8 ~ |
	cis2 r2 |
	a4 a8 a8 c8 cis8 g8 fis8 ~ |
	fis4 \ottava #0 r4 r2 |
	\ottava #2
	fis'4 a8 fis8 eis8 e'8 d8 cis8 ~ |
	cis4. c4. r4 |
	a4 c8 cis8 b8 a8 gis8 fis8 ~ |
	fis4 \ottava #0 r4 r2 |
	
}

gtrEnding = \relative c' {
	R1*8 | R1*8 | R1*8 |
	fis2 ~ fis8 cis8 fis8 c8 ~ |
	c1 |
	r4 fis,8 fis8 a8 b4 fis8 |
	c'8( b8 a8) fis4 fis8 a8 fis8 |
	fis'2 ~ fis8 cis8 fis8 c8 ~ |
	c1 |
	r4 a4 a8 b4 fis8 |
	c'8( b8 a8) fis4. r4 |
	fis'2 ~ fis8 cis8 fis8 c8 ~ |
	c1 |
	r4 fis4 a8 b4 fis8 |
	c'8( b8 a8) fis4 fis8 a4 |
	fis2 ~ fis8 cis8 fis8 c8 ~ |
	c1 |
	r4 fis4 a8 b4 fis8 |
	c'8( b8 a8) fis4 fis8 a8 fis8 ~ |
	fis8 fis8 a8 fis4 fis8 a8 fis8 ~ |
	fis8 fis8 a8 fis8 fis8 eis8 e8 eis8 |
	fis8 fis8 a8 fis4 fis8 a8 fis8 ~ |
	fis8 fis8 a8 b8 c8( b8) a4 ~ |
	a8 fis8 a8 fis4 fis8 a8 fis8 ~ |
	fis8 fis8 a8 fis8 b8 b8 b8 a8 |
	b8( c8) c8 c8 c8 c8 c8 c8 |
	c8( cis8) cis8 cis8 cis8 cis8 cis8 b8 |
	cis4 cis8 cis8 cis8 cis8 cis8 cis8 |
	cis4 cis8 cis8 cis8 cis8 c8 c8 |
	cis4 cis8 cis8 cis8 cis8 cis8 cis8 |
	cis8 cis8 cis8 cis8 cis8 cis8 e4 |
}

gtr = \relative c {
	\Key

	\gtrIntro
	\break
	R1*8 % \gtrVerse
	R1*12 % \gtrChorus
	\break
	\gtrSolo
	\break
	R1*12 % \gtrChorus
	\break
	\gtrBridge
	\break
	R1*8 % \gtrVerse
	R1*12 % \gtrChorus
%	\break
%	\gtrEnding
%	\break
%	R1*10 % \gtrChorus
}


%showLastLength = R1*10

Guitar = {
	\set Staff.midiInstrument = #"electric guitar (clean)"
	\global \clef "treble_8" << \gtr >>
}

GuitarStrum = {
	\set Staff.midiInstrument = #"electric guitar (clean)"
	\global \clef "treble_8" <<
		\new Voice \with {
			\consists Pitch_squash_engraver
		}
		\relative c {
			R1*10
			\gtrVerse
			\pageBreak
			\gtrChorus
			R1*16
			\gtrChorus
			R1*8
			\gtrVerse
			\gtrChorus
%			R1*52
%			\gtrChorus
		}
	>>
}