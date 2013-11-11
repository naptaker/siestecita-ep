up = \drummode {
	\override Rest #'staff-position = #0
	\override MultiMeasureRest #'Y-offset = #1
	\voiceOne
	\stemUp

}


down = \drummode {
	\voiceTwo
	
}


theDrums = {
	\set DrumStaff.drumStyleTable = #(alist->hash-table mydrums)
%	\set DrumStaff.instrumentName = #"Drums"
	\global << \new DrumVoice \up \new DrumVoice \down >>
}