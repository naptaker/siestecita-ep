\include "../../../../include/preamble.ly"
\include "../../Score/LY/header.ly"
\include "../../Parts/LY/Bass/bass.ly"

#(set-default-paper-size "arch a" 'portrait)
\header {
	%	instrument = "Bass"
}

\score {
	<<
		<<
			\new StaffGroup <<
				\set StaffGroup.instrumentName = #"Bass"
				\new Staff {
					\override StringNumber #'stencil = ##f
					\compressFullBarRests
					\override MultiMeasureRest #'expand-limit = #3
					\Tempo \clef bass \bassGuitar
				}
				\new TabStaff {
					\set TabStaff.stringTunings = #bass-tuning
					\transpose c c,
					\bassGuitar
				}
			>>
		>>
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
		<< \new Staff { \Tempo \bassGuitar } >>
	>>
	\midi { }
}