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

gtrRiffOne = \relative c {
	<b fis' b>4 <b fis' b>8 <b fis' b>8 <b fis' b>8 <a e' a>4 <d a' d>8 ~ |
	<d a' d>8 <d a' d>8 <d a' d>8 <d a' d>8 <d a' d>8 <e b' e>4. |
	<e, cis' fis>8 <fis cis' fis>8 <fis cis' fis>8 <e cis' fis>8 <fis cis' fis>4 <e cis' fis>8 <fis cis' fis>8 ~ |
	<fis cis' fis>8 <fis cis' fis>8 <e cis' fis>8 <f cis' fis>8 <fis cis' fis>4 r4 |
}

gtrRiffTwo = \relative c, {
	<e b' e>4 <e b' e>8 <e b' e>8 <e b' e>8 <g d' g>4 <a e' a>8 ~ |
	<a e' a>8 <a e' a>8 <a e' a>8 <a e' a>8 <a e' a>8 <fis cis' fis>4 <b fis' b>8 ~ |
	<b fis' b>8 <b fis' b>8 <b fis' b>8 <b fis' b>8 <b fis' b>8 <ais eis' ais>8 <b fis' b>8 <d a' d>8 |
	r8 <b fis' b>8 r8 <ais eis' ais>8 r8 <a e' a>8 <g d' g>4 |
	
	<e b' e>4 <e b' e>8 <e b' e>8 <e b' e>8 <g d' g>4 <a e' a>8 ~ |
	<a e' a>8 <a e' a>8 <a e' a>8 <a e' a>8 <a e' a>8 fis4 <b fis' b>8 ~ |
	<b fis' b>8 <b fis' b>8 <b fis' b>8 <b fis' b>8 <b fis' b>8 <ais eis' ais>8 <b fis' b>8 <d a' d>8 |
	r8 <b fis' b>8 r8 <ais eis' ais>8 r8 <a e' a>8 r8 <g d' g>8 |
	
	<e b' e>4 <e b' e>8 <e b' e>8 <e b' e>8 <g d' g>4 <a e' a>8 ~ |
	<a e' a>8 <a e' a>8 <a e' a>8 <a e' a>8 <a e' a>8 <fis cis' fis>4 <b fis' b>8 ~ |
	<b fis' b>8 <b fis' b>8 <b fis' b>8 <b fis' b>8 <b fis' b>8 <ais eis' ais>8 <b fis' b>8 <d a' d>8 |
	r8 <b fis' b>8 r8 <ais eis' ais>8 r8 <a e' a>8 <g d' g>4 |

	<e b' e>4 <e b' e>8 <e b' e>8 <e b' e>8 <g d' g>4 <a e' a>8 ~ |
	<a e' a>8 <a e' a>8 <a e' a>8 <a e' a>8 <a e' a>8 <fis cis' fis>4 r8 |
	<fis cis' fis>4 <fis cis' fis>8 <fis cis' fis>8 <fis cis' fis>8 <fis cis' fis>8 <fis cis' fis>8 <fis cis' fis>8 |
	<fis cis' fis>8 <g d' g>8 <g d' g>8 <g d' g>8 <g d' g>4 r4 |
}

gtr = \relative c {
	\Key

	\repeat "unfold" 4 { \gtrRiffOne }
	\gtrRiffTwo
}


%showLastLength = R1*10

Guitar = {
	\set Staff.midiInstrument = #"electric guitar (clean)"
	\global \clef "treble_8" << \gtr >>
}
