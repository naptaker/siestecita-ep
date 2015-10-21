\include "../../../../include/preamble.ly"
\include "../../Score/LY/header.ly"
\include "../../Parts/LY/Vocals/vocals.ly"
\include "articulate.ly"

#(set-default-paper-size "arch a" 'portrait)
\header {
	% instrument = "Vocals"
}

\score {
	<<
		<<
			\new StaffGroup <<
				\new Staff \with {
					\RemoveEmptyStaves \override VerticalAxisGroup #'remove-first = ##t
				} {
					\new Voice = "voxOne" { \Tempo \vmVerseOne }
				}	
				\new Lyrics \lyricsto "voxOne" { \vwVerseOne }
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
		<< \new Staff { \Tempo \vmVerseOne } >>
	>>
	\midi { }
}