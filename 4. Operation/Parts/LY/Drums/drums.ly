duIntro = \drummode {
	\repeat "unfold" 2 {
		\repeat "unfold" 6 { s1 }
		s1 | s1 |
	}
}

ddIntro = \drummode {
	\repeat "unfold" 2 {
		\repeat "unfold" 6 {
			bd4 sn8 bd bd4 sn8 bd |
		}
		bd4 sn8 bd4 bd8 sn4 | bd4 sn8 bd4 sn8 bd sn |
	}
}

duRiffA = \drummode {
	hh8 hh s hh hh hh s hh |
	hh hh s hh hh hh hh hh16 hh |
}

ddRiffA = \drummode {
	bd4 sn8 sn s bd sn s | bd4 sn8 bd4 bd8 sn sn |
}

duRiffB = \drummode {
	hh8 hh s hh hh hh hh16 hh hh8 |
	hh hh hh hh hh16 hh hh8 hh hh16 s |
}

ddRiffB = \drummode {
	bd4 sn8 bd bd4 sn4 | bd8 bd sn bd bd sn sn sn16 sn |
}

duRiffC = \drummode {
	hh8 hh s hh hh hh s hh | hh8 hh s hh hh hh hh16 hh hh8 |
}

ddRiffC = \drummode {
	bd4 sn8 sn s bd sn s | bd4 sn8 bd4 sn8 bd sn |
}

duRiffD = \drummode {
	cymc4. cymc cymc4 |
	cymc4. cymc2 hh16 hh |
}

ddRiffD = \drummode {
	bd8 bd sn sn bd sn sn sn | bd8 bd sn bd bd sn bd sn |
}

duRiff = \drummode {
	\duRiffA \duRiffB \duRiffC \duRiffD
}

ddRiff = \drummode {
	\ddRiffA \ddRiffB \ddRiffC \ddRiffD
}

duChorus = \drummode {
	s1 | s1 |
	s1 | s1 |
	s1 | s1 |
	s1 | s1 |
}

ddChorus = \drummode {
	bd8 bd sn sn bd bd sn8. sn16 | bd8 bd sn bd bd sn bd sn |
	bd8 bd sn sn bd bd sn8. sn16 | <bd toml sn>8 toml <bd sn> toml <bd toml sn> sn16 toml <bd toml sn>8 toml
	bd8 bd sn sn bd bd sn8. sn16 | bd8 bd sn bd bd sn bd sn |
	bd8. bd16 sn8. toml16 bd8 bd sn sn16 sn |
	<bd sn>8 toml <bd sn> toml <bd sn> sn <bd sn>4 |
}

duEnd = \drummode {
	cymc1 | R1 | cymc4 r r2 |
}

ddEnd = \drummode {
	s1*2 | <bd sn>4 s s2 |
}

up = \drummode {
	\voiceOne \stemUp
	
	\duIntro
	\repeat "unfold" 3 { \duRiff }
%	\duChorus \duRiff
%	\repeat "unfold" 2 { \duRiff }
%	\duChorus \duChorus
%	\duEnd
}


down = \drummode {
	\voiceTwo \stemDown
	
	\ddIntro
	\repeat "unfold" 3 { \ddRiff }
%	\ddChorus \ddRiff
%	\repeat "unfold" 2 { \ddRiff }
%	\ddChorus \ddChorus
%	\ddEnd
}


theDrums = {
	\set DrumStaff.instrumentName = #"Drums"
	\set DrumStaff.shortInstrumentName = #"D  "
%	\global << \new DrumVoice \up \new DrumVoice \down >>
}