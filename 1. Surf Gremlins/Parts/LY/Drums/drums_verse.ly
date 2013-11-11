duVerse = \drummode {
	\repeat volta 2 {
		s4 sn8 sn s4 sn |
		s4 sn8 s4. sn4 |
		s4 sn8 sn s4 sn8 s |
		s4 sn s sn8 sn |
		s4 sn s sn8 s |
		s4 sn s sn |
		s4 sn s8 tomfl sn s |
	}
	\alternative {
		{ s tomfl sn tomfl s sn sn tomfl | }
		{ s tomfl sn tomfl s sn sn tomfl | }
	}
	
	s8 tomfl s tomfl s tomfl16 tomfl s8 tomfl |
	s8 tomfl sn s4 sn8 sn4 |
}

ddVerse = \drummode {
	\repeat volta 2 {
		bd4 s bd s |
		bd4 s8 bd4. s4 |
		bd4 s bd s8 bd8 ~ |
		bd bd s4 bd s4 |
		bd4 s bd4 s8 bd ~ |
		bd bd s4 bd s |
		bd4 s bd8 s4 bd8 ~ |
	}
	\alternative {
		{ bd\repeatTie s s s bd s s s | }
		{ bd\repeatTie s s s bd s s s | }
	}
	
	bd8 s bd s bd s bd s |
	bd s s bd4 s8 s4 |
}