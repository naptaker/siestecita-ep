\include "../../../../include/preamble.ly"
\include "header.ly"
\layout {
	ragged-last = ##t
}

#(set-default-paper-size "letter" 'landscape)
\include "../../Parts/LY/Guitar/guitar.ly"
\include "../../Parts/LY/Bass/bass.ly"
\include "../../Parts/LY/Drums/drums.ly"
\include "../../Parts/LY/Vocals/vocals.ly"

\score {
	<<
		<<
			\new StaffGroup <<
				\new Staff \with {
					\RemoveEmptyStaves \override VerticalAxisGroup #'remove-first = ##t
				} {
					\new Voice = "voxOne" { \Tempo \voxVerseOne }
				}	
				\new Lyrics \lyricsto "voxOne" { \lyricsVerseOne }
			>>

			\new ChordNames = "chords" \gtrHarmony
			\new FretBoards { \gtrHarmony }
			\new StaffGroup <<
				\new RhythmicStaff \with {
					\RemoveEmptyStaves
					\override VerticalAxisGroup #'remove-first = ##t
				} { \Tempo \clef "treble_8" \GuitarStrum }
				\new Staff \with {
					\RemoveEmptyStaves \override VerticalAxisGroup #'remove-first = ##t
				} { \Tempo \clef "treble_8" \Guitar }
			>>
			
			\new StaffGroup <<
				\new Staff \with {
					\RemoveEmptyStaves \override VerticalAxisGroup #'remove-first = ##t
				}
				{ \Tempo \clef bass \bassGuitar }
%				\new TabStaff \with {
%					\RemoveEmptyStaves \override VerticalAxisGroup #'remove-first = ##t
%				} {
%					\set TabStaff.stringTunings = #bass-tuning
%					\transpose c c, \bassGuitar
%				}
			>>
		\new DrumStaff \with {
			\RemoveEmptyStaves \override VerticalAxisGroup #'remove-first = ##t
			}
			{ \theDrums }
		>>
	>>

	\layout {
		indent = 0\in
		\context { \Score
%							 \consists #(bars-per-line-engraver '(8))
							 \scoreMagic
		}
		\context { \Staff \override StringNumber #'stencil = ##f }
	}
}


\score {
	\unfoldRepeats \articulate
	<<
		\new Staff {
			\context Voice = "vocals" { \Tempo \voxVerseOne }
		}
		<<
			\new StaffGroup <<
				\new Staff { \transposition c \Tempo \clef "treble_8" \Guitar }
				\new Staff { \transposition c \Tempo \clef "treble_8" \GuitarStrum }
			>>
			\new StaffGroup <<
				\new Staff { \transposition c \Tempo \clef bass \bassGuitar }
			>>
			\new DrumStaff { \theDrums }
		>>
	>>
	\midi { }
}
