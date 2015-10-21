up = \drummode {
	\override Rest #'staff-position = #0
	\override MultiMeasureRest #'Y-offset = #1
	\voiceOne
	\stemUp

	s4 sn4 s sn8 s |
	s4 sn8 s sn2:16 |

	\repeat "unfold" 20 {
		s4 sn4 s sn8 s |
		s4 sn8 s4 sn8 sn sn |
		s4 sn4 s sn8 s |
		s4 sn8 s sn s s sn |
	}
}


down = \drummode {
	\voiceTwo
	bd4 s bd8 bd s bd ~
	bd bd s bd s2
	
	\repeat "unfold" 20 {
		bd4 s bd8 bd s bd ~
		bd bd s bd4 s4.
		bd4 s bd8 bd s bd ~
		bd bd s bd s bd bd s
	}
}


theDrums = {
	\set DrumStaff.drumStyleTable = #(alist->hash-table mydrums)
%	\set DrumStaff.instrumentName = #"Drums"
	\global << \new DrumVoice \up \new DrumVoice \down >>
}