\include "../../../../include/preamble.ly"
\include "../../Score/LY/header.ly"
\include "../../Parts/LY/Drums/drums.ly"

#(set-default-paper-size "arch a" 'portrait)
\header {
	% instrument = "Drums"
}

\score {
	<<
		<< \new DrumStaff { \theDrums } >>
	>>

	\layout {
		indent = 0\in
		\context {
			\Score
			\consists #(bars-per-line-engraver '(4))
			\scoreMagic
		}
	}
}

\score {
	\unfoldRepeats \articulate
	<<
		<< \new DrumStaff { \theDrums } >>
	>>
	\midi { }
}