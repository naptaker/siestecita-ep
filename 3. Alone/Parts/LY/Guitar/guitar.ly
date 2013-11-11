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

gtrHarmony = \chordmode {
	\override FretBoards.FretBoard #'size = #'1.2

}

gtr = \relative c, {
	\Key
	\repeat "unfold" 4 { <f c' f a c f>4 <f c' f a c f>8 [ \crOn <f
			c' f a c f>8 ] \crOff <bes f' bes d f bes>8 [ <bes f' bes d f bes>8 \crOn <f
			c' f a c f>8 \crOff <f c' f a c f>8 ~ ] ~ ~ ~ ~ ~ | % 2
	<f c' f a c f>8 [ <f c' f a c f>8 <f c' f a c f>8 \crOn <f c' f a c f>8 ] \crOff
	<bes f' bes d f bes>8 [ <bes f' bes d f bes>8 <bes f' bes d f bes>8
	\crOn <f c' f a c f>8 ] \crOff | } %9
	<as es' as c es as>8 [ <as es' as c es as>8 <as es' as c es as>8 <as
			es' as c es as>8 ] <as es' as c es as>8 [ <as es' as c es as>8
	<as es' as c es as>8 <as es' as c es as>8 ] | \barNumberCheck #10
	<g d' g b d g>8 [ <g d' g b d g>8 <g d' g b d g>8 <g d' g b d g>8 ]
	<ges des' ges bes des ges>8 [ <ges des' ges bes des ges>8 <ges des'
			ges bes des ges>8 <ges des' ges bes des ges>8 ] | % 11
	R1 \break | % 12
	R1*3 \bar "|."
}


%showLastLength = R1*10

Guitar = {
	\set Staff.midiInstrument = #"electric guitar (clean)"
	\global \clef "treble_8" << \gtr >>
}
