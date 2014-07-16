\include "../../../../include/preamble.ly"
\include "header.ly"

\layout {
	ragged-last = ##t
}

\header {
	instrument = "Full Score"
}

\paper {
%	system-system-spacing #'minimum-distance = #6
%  system-system-spacing #'padding = #5
	top-margin = 0.75\in
	left-margin = 0.5\in
	right-margin = 0.5\in
	bottom-margin = 0.75\in
}

#(set-global-staff-size 11)
#(set-default-paper-size "letter" 'portrait)
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
					\new Voice = "voxOne" { \Tempo \voxVerse \voxChorusOne }
				}
				\new Lyrics \lyricsto "voxOne" { \lyricsVerseOne }
				\new Lyrics \lyricsto "voxOne" { \lyricsVerseTwo \lyricsChorusOne }
				\new Lyrics \lyricsto "voxOne" { \lyricsVerseThree \lyricsChorusThree }
				
				\new Staff \with {
					\RemoveEmptyStaves \override VerticalAxisGroup #'remove-first = ##t
				} {
					\new Voice = "voxTwo" {
						\Tempo
						\stopStaff
						\override Staff.Clef #'stencil = ##f
						\skip 1*19
						\override Staff.Clef #'stencil = ##t
						\startStaff
						\voxChorusTwo
					}
				}
				\new Lyrics \lyricsto "voxTwo" { \lyricsChorusTwo }
			>>
			\new ChordNames = "chords" \gtrHarmony
			\new FretBoards { \gtrHarmony }
%			\new StaffGroup <<
				\new RhythmicStaff \with {
					\RemoveEmptyStaves
					\override VerticalAxisGroup #'remove-first = ##t
				} { \Tempo \GuitarStrum }
				\new TabStaff \with {
					\RemoveEmptyStaves \override VerticalAxisGroup #'remove-first = ##t
				} { \tabFullNotation \GuitarTab }
%			>>
			
				\new Staff \with {
					\RemoveEmptyStaves \override VerticalAxisGroup #'remove-first = ##t
				} <<
	        \new Voice {
						\overrideProperty Score.NonMusicalPaperColumn.line-break-system-details
	            #'((Y-offset . 5))
	          s1*8 \break
	          \overrideProperty Score.NonMusicalPaperColumn.line-break-system-details
	            #'((Y-offset . 55))
	          s1*4 \break
	          \overrideProperty Score.NonMusicalPaperColumn.line-break-system-details
	            #'((Y-offset . 125))
	          s1*4 \break
	          \overrideProperty Score.NonMusicalPaperColumn.line-break-system-details
	            #'((Y-offset . 195))
	          s1*3 \pageBreak
	          \overrideProperty Score.NonMusicalPaperColumn.line-break-system-details
	            #'((Y-offset . 15))
	          s1*5 \break
	          \overrideProperty Score.NonMusicalPaperColumn.line-break-system-details
	            #'((Y-offset . 85))
	          s1*6 \break
	          \overrideProperty Score.NonMusicalPaperColumn.line-break-system-details
	            #'((Y-offset . 150))
	          s1*4 \break
	          \overrideProperty Score.NonMusicalPaperColumn.line-break-system-details
	            #'((Y-offset . 190))
	          s1*4 \break
	          \overrideProperty Score.NonMusicalPaperColumn.line-break-system-details
	            #'((Y-offset . 230))
	          s1*4 \pageBreak
	          \overrideProperty Score.NonMusicalPaperColumn.line-break-system-details
	            #'((Y-offset . 5))
	          s1*4 \break
	          \overrideProperty Score.NonMusicalPaperColumn.line-break-system-details
	            #'((Y-offset . 40))
	          s4
	          \overrideProperty Score.NonMusicalPaperColumn.line-break-system-details
	            #'((Y-offset . 120))
	        }
					\new Voice {
						\Tempo \clef bass \bassGuitar
					}
				>>
		\new DrumStaff = "drums" \theDrums
		>>
	>>

	\layout {
		indent = 0\in
		\context {
			\Staff
			\override StringNumber #'stencil = ##f
		}
	}
}

\score {
	\unfoldRepeats \articulate
	<<
		\new Staff {
			\context Voice = "vocals" { \transposition c' \Tempo \voxVerse \voxChorusTwo }
		}
		<<
			\new StaffGroup <<
				\new Staff { \Tempo \Guitar }
			>>
			\new StaffGroup <<
				\new Staff { \transposition c \Tempo \clef bass \bassGuitar }
			>>
			\new DrumStaff { \theDrums }
		>>
	>>
	\midi { }
}