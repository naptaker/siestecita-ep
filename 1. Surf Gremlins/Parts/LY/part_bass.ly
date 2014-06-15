\include "../../../../include/preamble.ly"
\include "../../Score/LY/header.ly"
\include "../../Parts/LY/Bass/bass.ly"

#(set-global-staff-size 23)
#(set-default-paper-size "letter" 'portrait)
\header {
	title = \markup { \fontsize #4  "Surf Gremlins" }
	instrument = "Bass"
	subtitle = \markup { \column { \center-align \fontsize #2 %{"from the Siestecita EP" \center-align \fontsize #2 %} "by Naptaker" } }
	composer = "Music by E. Bailey"
	poet = "Words by A. Smith"
	arranger = \markup { \column { \right-align "Arr. by S. Albers, E. Bailey" \right-align  "P. Drum, and A. Smith" } }
	tagline = ##f
%	copyright = "© 2013 Naptaker"
}

\paper {
	max-systems-per-page = 8
	bottom-margin = .5\in
}


bassScore = {
	\set Staff.midiInstrument = #"electric bass (finger)"
	\global	\clef bass
	<<
		\relative c {
			\Key
			
			\bassIntro \break
			\bassChorus \break
			\bassVerse \break
			\bassSolo \break
			\bassEnding
		}
	>>
}


\score {
	<<
		<<
			\new Staff {
				\override StringNumber #'stencil = ##f
				\compressFullBarRests
				\override MultiMeasureRest #'expand-limit = #3
				\Tempo \clef bass \bassScore
			}
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