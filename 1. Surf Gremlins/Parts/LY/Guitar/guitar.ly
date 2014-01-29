\include "../../../../include/bend.ly"
\include "../../Parts/LY/Guitar/gtr_intro.ly"
\include "../../Parts/LY/Guitar/gtr_chorus.ly"
\include "../../Parts/LY/Guitar/gtr_verse.ly"
\include "../../Parts/LY/Guitar/gtr_solo.ly"
\include "../../Parts/LY/Guitar/gtr_ending.ly"

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

gtrHarmony = \chordmode {
	\override FretBoards.FretBoard #'size = #'1.2
	%% gtrIntro %%
	s1*8
	
	%% gtrChorus %%
	bes1 | a4. g4 des4. |
	bes1 | aes4. f4 s4. |
	bes2 d2 | aes4. f4 s4. |
	bes2 g2 | s8 aes4 f4 s4. | s8 aes4 f4 ees4. |
	des1 | des8 c4 ces4. s4 |
	
	%% gtrVerse %%
	bes1 | s2 des4 ees |
	bes1 | s2 des4 a |
	bes1 | s2 des4 aes |
	f2 s4 s8 e8 | s2 s8 f4. | s2 s8 ees4. |
	des1 | s8 c4 ces4. s4 |
	s1*8
	\repeat volta 2 {
		s1*4
	}
	s1*8
	bes4
}

gtr = \relative c {
	\Key
	
	\gtrIntro
	\gtrChorus
	\gtrVerse
	\gtrSolo
	\gtrEnding
}

gtrTab = \relative c {
	\Key
	\override Staff.Clef #'stencil = ##f
	
	\gtrIntro
	R1*11 % \gtrChorus
	R1*9 s1*2 % \gtrVerse
	\gtrSolo
	\gtrEnding
}

gtrStrum = \relative c {
	\improvisationOn
	R1*8 %gtrIntro
	\gtrChorus
	\gtrVerse
	s1*8
	\repeat volta 2 {
		s1*4
	}
	s1*8
%	\gtrEnding
}

%showLastLength = R1*10

Guitar = {
	\set Staff.midiInstrument = #"electric guitar (clean)"
	\global \clef "treble_8" << \gtr >>
}

GuitarTab = {
	\set Staff.midiInstrument = #"electric guitar (clean)"
	\global \gtrTab
}

GuitarStrum = {
	\set Staff.midiInstrument = #"electric guitar (clean)"
	\global \clef "treble_8" <<
		\new Voice \with {
			\consists Pitch_squash_engraver
		}
		\gtrStrum
	>>
}