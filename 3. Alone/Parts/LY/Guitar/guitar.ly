\include "../../../../include/bend.ly"

\include "predefined-guitar-fretboards.ly"
\addChordShape #'powersurf #guitar-tuning #"1-1;3-3;3-4;2-2;x;x;"
\storePredefinedDiagram #default-fret-table
                        \chordmode { bes }
                        #guitar-tuning
                        #'((barre 6 3 6)
                        	 (place-fret 6 6)
													 (place-fret 5 8)
													 (place-fret 4 8)
													 (place-fret 3 7)
													 (mute 2)
													 (mute 1))
\storePredefinedDiagram #default-fret-table
                        \chordmode { a }
                        #guitar-tuning
                        #'((barre 6 3 5)
                        	 (place-fret 6 5)
													 (place-fret 5 7)
													 (place-fret 4 7)
													 (place-fret 3 6)
													 (mute 2)
													 (mute 1))
\storePredefinedDiagram #default-fret-table
                        \chordmode { g }
                        #guitar-tuning
                        #'((barre 6 3 3)
                        	 (place-fret 6 3)
													 (place-fret 5 5)
													 (place-fret 4 5)
													 (place-fret 3 4)
													 (mute 2)
													 (mute 1))
\storePredefinedDiagram #default-fret-table
                        \chordmode { des }
                        #guitar-tuning
                        #'((barre 6 3 9)
                        	 (place-fret 6 9)
													 (place-fret 5 11)
													 (place-fret 4 11)
													 (place-fret 3 10)
													 (mute 2)
													 (mute 1))
\storePredefinedDiagram #default-fret-table
                        \chordmode { aes }
                        #guitar-tuning
                        #'((barre 6 3 4)
                        	 (place-fret 6 4)
													 (place-fret 5 6)
													 (place-fret 4 6)
													 (place-fret 3 5)
													 (mute 2)
													 (mute 1))
\storePredefinedDiagram #default-fret-table
                        \chordmode { f }
                        #guitar-tuning
                        #'((barre 6 3 1)
                        	 (place-fret 6 1)
													 (place-fret 5 3)
													 (place-fret 4 3)
													 (place-fret 3 2)
													 (mute 2)
													 (mute 1))
\storePredefinedDiagram #default-fret-table
                        \chordmode { d }
                        #guitar-tuning
                        #'((barre 6 3 10)
                        	 (place-fret 6 10)
													 (place-fret 5 12)
													 (place-fret 4 12)
													 (place-fret 3 11)
													 (mute 2)
													 (mute 1))
\storePredefinedDiagram #default-fret-table
                        \chordmode { ees }
                        #guitar-tuning
                        #'((barre 6 3 11)
                        	 (place-fret 6 11)
													 (place-fret 5 13)
													 (place-fret 4 13)
													 (place-fret 3 12)
													 (mute 2)
													 (mute 1))
\storePredefinedDiagram #default-fret-table
                        \chordmode { c }
                        #guitar-tuning
                        #'((barre 6 3 8)
                        	 (place-fret 6 8)
													 (place-fret 5 10)
													 (place-fret 4 10)
													 (place-fret 3 9)
													 (mute 2)
													 (mute 1))
\storePredefinedDiagram #default-fret-table
                        \chordmode { ces }
                        #guitar-tuning
                        #'((barre 6 3 5)
                        	 (place-fret 6 7)
													 (place-fret 5 9)
													 (place-fret 4 9)
													 (place-fret 3 8)
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

gtrRiffOne = \relative c {
	b4 b8 b8 b8 a4 d8 ~ |
	d8 d8 d8 d8 d8 e4. |
	e,8 fis8 fis8 e8 fis4 e8 fis8 ~ |
	fis8 fis8 e8 f8 fis4 r4 |
}

gtrRiffTwo = \relative c, {
	e4 e8 e8 e8 g4 a8 ~ |
	a8 a8 a8 a8 a8 fis4 b8 ~ |
	b8 b8 b8 b8 b8 ais8 b8 d8 |
	r8 b8 r8 ais8 r8 a8 g4 |
	
	e4 e8 e8 e8 g4 a8 ~ |
	a8 a8 a8 a8 a8 fis4 b8 ~ |
	b8 b8 b8 b8 b8 ais8 b8 d8 |
	r8 b8 r8 ais8 r8 a8 r8 g8 |
	
	e4 e8 e8 e8 g4 a8 ~ |
	a8 a8 a8 a8 a8 fis4 b8 ~ |
	b8 b8 b8 b8 b8 ais8 b8 d8 |
	r8 b8 r8 ais8 r8 a8 g4 |

	e4 e8 e8 e8 g4 a8 ~ |
	a8 a8 a8 a8 a8 fis4 r8 |
	fis4 fis8 fis8 fis8 fis8 fis8 fis8 |
}

gtrHarmony = \chordmode {
	\override FretBoards.FretBoard #'size = #'0.8
	%% gtrRiffOne %%
	\repeat "unfold" 4 {
		b2 s8 a4 d8 |
		s2 s8 e4. |
		fis1 |
		s1 |
	}
	
	%% gtrRiffTwo %%
	e2 s8 g4 a8 |
	s2 s8 fis4 b8 |
	s2 s8 ais8 b8 d8 |
	s8 b8 s8 ais8 s8 a8 g4 |

	e2 s8 g4 a8 |
	s2 s8 fis4 b8 |
	s2 s8 ais8 b8 d8 |
	s8 b8 s8 ais8 s8 a4 g8 |
	
	e2 s8 g4 a8 |
	s2 s8 fis4 b8 |
	s2 s8 ais8 b8 d8 |
	s8 b8 s8 ais8 s8 a8 g4 |

	e2 s8 g4 a8 |
	s2 s8 fis4 s8 |
	s1 |
	s8 g4. s2 |
	
}

gtr = \relative c {
	\stopStaff \hideNotes
	\skip 1*31 |
	\startStaff \unHideNotes
	\Key r2 r8 fis \( a ais |
	b b b a b4 a8 d ~ |
	d d:16 d cis d fis f e |
	e,( fis) fis e fis4 e8 fis ~ |
	fis b e,( f) fis \) fis \( a ais |
	
	b b b a b4 a8 d ~ |
	d d:16 d cis d fis f e |
	e,( fis) fis e fis4 e8 fis ~ |
	fis b e,( f) fis4 \) r4 |
	
	\grace { b8 \glissando s2 } fis'8 fis8 fis8 f8( fis8) a4 fis8 ~ |
	fis8 fis8 fis8( f8 fis8) a8 fis8 f8 |
	f8( fis8) fis8 f8( fis8) a4 f8 ~ |
	f8 fis8 a8 f8( fis8) a8 fis8 f8 |
	
	f8( fis8) a8 f8( fis8) a4 f8 ~ |
	f8 fis8 a f8( fis8) a8 fis8 f8 |
	f8( fis8) a8 f8( fis8) a4 b8 ~ |
	b8 a8 fis8 a8 \ottava #1 r2 |
}

gtrStrum = \relative c {
	\improvisationOn
	\repeat "unfold" 4 { \gtrRiffOne }
	\gtrRiffTwo \stopStaff \hideNotes
	s1*17 %gtrSolo
	\startStaff \unHideNotes
	\gtrRiffTwo
	\repeat "unfold" 2 { \gtrRiffOne }
	s1*4 %gtrSolo
	\gtrRiffOne
	\gtrRiffTwo
}

GuitarStrum = {
	\set Staff.midiInstrument = #"electric guitar (clean)"
	<<
		\new Voice \with {
			\consists Pitch_squash_engraver
		}
		\gtrStrum
	>>
}

%showLastLength = R1*10

Guitar = {
	\set Staff.midiInstrument = #"electric guitar (clean)"
	\global \clef "treble_8" << \gtr >>
}
