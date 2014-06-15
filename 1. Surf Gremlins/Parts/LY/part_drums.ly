\include "../../../../include/preamble.ly"
\include "../../Score/LY/header.ly"
\include "../../Parts/LY/Drums/drums.ly"

#(set-global-staff-size 23)
#(set-default-paper-size "letter" 'portrait)
\header {
	title = \markup { \fontsize #4  "Surf Gremlins" }
	instrument = "Drums"
	subtitle = \markup { \column { \center-align \fontsize #2 %{"from the Siestecita EP" \center-align \fontsize #2 %} "by Naptaker" } }
	composer = "Music by E. Bailey"
	poet = "Words by A. Smith"
	arranger = \markup { \column { \right-align "Arr. by S. Albers, E. Bailey" \right-align  "P. Drum, and A. Smith" } }
	tagline = ##f
%	copyright = "© 2013 Naptaker"
}

\paper {
	max-systems-per-page = 7
	bottom-margin = .5\in
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