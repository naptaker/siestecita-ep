\include "../../../../include/preamble.ly"
\include "header.ly"
\layout {
	ragged-last = ##t
}

#(set-default-paper-size "arch a" 'landscape)
%#(set-default-paper-size "letter" 'portrait)
\include "../../Parts/LY/Guitar/guitar.ly"
\include "../../Parts/LY/Bass/bass.ly"
\include "../../Parts/LY/Drums/drums.ly"
\include "../../Parts/LY/Vocals/vocals.ly"

%showLastLength = R1*5

\score {
	<<
		<<
			\new StaffGroup <<
				\new Staff \with {
					\RemoveEmptyStaves \override VerticalAxisGroup #'remove-first = ##t
				} {
					\new Voice = "vocals" { \Tempo \vocals }
				}	
				\new Lyrics \lyricsto "vocals" { \vwVerseOne }
			
%				\new Staff \with {
%					\RemoveEmptyStaves \override VerticalAxisGroup #'remove-first = ##t
%				} {
%					\new Voice = "voxTwo" { \Tempo \voxVerseTwo }
%				}
%				\new Lyrics \lyricsto "voxTwo" { \lyricsVerseTwo }
			>>
			\new ChordNames = "chords" \gtrHarmony
%			\new FretBoards { \gtrHarmony }
			\new StaffGroup <<
%				\new RhythmicStaff \with {
%					\RemoveEmptyStaves
%					\override VerticalAxisGroup #'remove-first = ##t
%				} { \Tempo \clef "treble_8" \GuitarStrum }
%%				\new TabStaff \with {
%%					\RemoveEmptyStaves \override VerticalAxisGroup #'remove-first = ##t
%%				} { \tabFullNotation \Guitar }
					\new Staff \with {
						\RemoveEmptyStaves \override VerticalAxisGroup #'remove-first = ##t
					} { \Tempo \clef "G_8" \Guitar }
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
		\new DrumStaff = "drums" \theDrums
		>>
	>>

	\layout {
		indent = 0\in
		\context { \Score
							 \consists #(bars-per-line-engraver '(4))
							 \scoreMagic
		}
		\context { \Staff \override StringNumber #'stencil = ##f }
	}
}


\score {
	\unfoldRepeats \articulate
	<<
		\new Staff {
			\context Voice = "vocals" { \Tempo \vocals }
		}
		<<
			\new StaffGroup <<
				\new Staff { \Tempo \clef "treble_8" \Guitar }
			>>
			\new StaffGroup <<
				\new Staff { \transposition c \Tempo \clef bass \bassGuitar }
			>>
			\new DrumStaff { \theDrums }
		>>
	>>
	\midi { }
}
