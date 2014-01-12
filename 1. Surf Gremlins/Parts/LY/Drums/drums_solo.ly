duSolo = \drummode {
	cymc4 <sn hhho> hhho <sn hhho>
	\repeat percent 6 {
		hhho4 <sn hhho> hhho <sn hhho>
	}
	cymc16 sn sn8:16 \repeat percent 3 { sn4:16 } |
	\repeat volta 2 {
		s1*4
	}
	
	s1*8
}

ddSolo = \drummode {
	bd4. bd4 bd bd8 ~ | 
	bd8 bd4 bd bd bd8 ~ | \hideNotes
	\override Tie #'transparent = ##t
	\repeat unfold 5 {
		bd8 bd4 bd4 bd4 bd8 ~ |
	}
	\revert Tie #'transparent
	\unHideNotes
	bd8\repeatTie bd bd4:8 \hideNotes bd8 bd bd bd \unHideNotes|
	
	\repeat volta 2 {
		s1*4
	}
	
	s1*8
}
