\include "../../../../include/preamble.ly"
\include "../../Score/LY/header.ly"
\include "../../Parts/LY/Guitar/guitar.ly"
\include "articulate.ly"

#(set-default-paper-size "arch a" 'portrait)
\header {
	% instrument = "Guitar"
}

\score {
	<<
		<<
			\new ChordNames = "chords" \gtrHarmony
			\new StaffGroup <<
				\set StaffGroup.instrumentName = #"Guitar"
				\new Staff {
					\override StringNumber #'stencil = ##f
					\Tempo \clef "treble_8" \Guitar
				}
%				\new TabStaff { \tabFullNotation \Guitar }
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
		<< \new Staff { \Tempo \Guitar } >>
	>>
	\midi { }
}