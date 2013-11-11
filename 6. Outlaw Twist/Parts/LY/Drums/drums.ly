duIntro = \drummode {
	toml4 sn8 toml toml4 sn8 toml |
	toml4 sn8 toml16 toml toml8 toml sn8 toml |
	toml4 sn8 toml toml4 sn8 toml |
	toml4 <sn toml>8 toml <cymr sn>8. <cymr sn> <cymr sn>8 |
}

ddIntro = \drummode {
	\repeat "unfold" 3 { bd4 bd bd bd | }
	bd4 bd bd8. bd bd8 |
}

duVerse = \drummode {
	\repeat "unfold" 4 {
			<cymc toml>4 sn8 toml toml4 sn8 toml |
			toml4 sn8 toml16 toml toml8 toml sn8 toml |
			toml4 sn8 toml toml4 sn8 toml |
			toml4 <sn toml>8 toml <cymr sn>8. <cymr sn> <cymr sn>8 |	
	}
}

ddVerse = \drummode {
	\repeat "unfold" 4 {
		\repeat "unfold" 3 { bd4 hhp bd hhp | }
		bd4 hhp bd8. bd bd8 |
	}
}

duSoloA = \drummode {
	cymc4 <cymr sn>8 cymr16 sn cymr8 cymr <cymr sn> cymr16 sn |
	cymr8 cymr <cymr sn> <cymr sn> cymr cymr <cymr sn> <cymr sn> |
	cymr8 cymr <cymr sn> cymr16 sn cymr8 cymr <cymr sn> cymr16 sn |
	cymr8 cymr <cymr sn> cymr cymc2 |
	cymc4 <cymr sn>8 cymr16 sn cymr8 cymr <cymr sn> cymr16 sn |
	cymr8 cymr <cymr sn> <cymr sn> cymr cymr <cymr sn> <cymr sn> |
	cymr8 cymr <cymr sn> cymr16 sn cymr8 cymr <cymr sn> cymr16 sn |
	cymr8 cymr <cymr sn> cymr cymr cymr <cymr sn> cymr16 sn |
}

ddSoloA = \drummode {
	bd4 s bd s |
	bd8 bd s4 bd8 bd s4 |
	bd4 s bd s |
	bd8 bd s bd bd4 s |
	bd4 s bd s |
	bd8 bd s4 bd s |
	bd4 s bd s |
	bd8 bd bd bd bd4 bd8 bd  |
}



up = \drummode {
	\voiceOne
	\stemUp
	
	\duIntro
	\duVerse \duVerse
	\duSoloA
	\duVerse
	
}


down = \drummode {
	\voiceTwo
	
	\ddIntro
	\ddVerse \ddVerse
	\ddSoloA
	\ddVerse
}


theDrums = {
	\set DrumStaff.drumStyleTable = #(alist->hash-table mydrums)
	\global << \new DrumVoice \up \new DrumVoice \down >>
}