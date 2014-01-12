duVerse = \drummode {
	\repeat volta 2 {
		cymr4 sn tomfh8 tomfh sn tomfh ~ |
		tomfh tomfh sn4 <toml cymr>16 tomfh sn8 <sn cymr>16 sn sn8:16 |
		\repeat percent 2 {
			cymr4 sn8 tomfh tomfh tomfh sn tomfh ~ |
			tomfh tomfh sn4 <toml cymr>16 tomfh8. <sn cymr>8 sn:16 |
		}
		cymc4 <sn hhho> hhho <sn hhho>
	}
	\alternative {
		{ hhho4 <sn hhho>8 sn:16 cymc16 sn sn8:16 sn4:16 }
		{ hhho4 <sn hhho>8 sn:16 cymc16 sn sn8:16 sn4:16 }
	}
	
	cymc4 <sn hhho>8 hhho8 hhho8 hhho8 <sn hhho>8 hhho8 |
	<sn hhc>8 sn4 <sn cymc>4 sn4.:16 |
}

ddVerse = \drummode {
	\repeat volta 2 {
		bd4 hhp hhp8 bd hhp bd |
		hhp8 bd hhp bd bd bd <hhp bd> bd |
		bd4 hhp hhp8 bd hhp bd |
		hhp8 bd hhp bd bd bd <hhp bd> bd | \hideNotes
		bd4 hhp hhp8 bd hhp bd |
		hhp8 bd hhp bd bd bd <hhp bd> bd |
		\unHideNotes

		bd2 r8 bd4 bd8 ~ |
	}
	\alternative {
		{ bd8 bd4 bd8 <hhp bd>4 bd | }
		{ bd8\repeatTie bd4 bd8 <hhp bd>4 bd | }
	}
	
	bd2 r8 bd4. |
	bd4. bd4 ~ bd4. |
}