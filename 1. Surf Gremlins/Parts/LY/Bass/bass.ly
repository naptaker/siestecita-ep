\include "../../Parts/LY/Bass/bass_intro.ly"
\include "../../Parts/LY/Bass/bass_chorus.ly"
\include "../../Parts/LY/Bass/bass_verse.ly"
\include "../../Parts/LY/Bass/bass_solo.ly"
\include "../../Parts/LY/Bass/bass_ending.ly"


bgtr = \relative c {
	\Key
	
	\bassIntro
	\bassChorus
	\bassVerse
	\bassSolo
	\bassEnding
}

%showLastLength = R1*24

bassGuitar = {
	\set Staff.midiInstrument = #"electric bass (finger)"
	\global	\clef bass << \bgtr >>
}