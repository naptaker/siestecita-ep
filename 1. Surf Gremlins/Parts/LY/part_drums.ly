\include "../../../../include/preamble.ly"
\include "../../Score/LY/header.ly"
\include "../../Parts/LY/Drums/drums.ly"

#(set-global-staff-size 23)
#(set-default-paper-size "letter" 'portrait)
\paper {
  max-systems-per-page = 7
  bottom-margin = .5\in
}

\header {
  title = \markup { \fontsize #4  "Surf Gremlins" }
  instrument = "Drums"
  subtitle = \markup { \column { \center-align \fontsize #2 %{"from the Siestecita EP" \center-align \fontsize #2 %} "by Naptaker" } }
  composer = "Music by E. Bailey"
  poet = "Words by A. Smith"
  arranger = \markup { \column { \right-align "Arr. by S. Albers, E. Bailey" \right-align  "P. Drum, and A. Smith" } }
  tagline = ##f
% copyright = "© 2013 Naptaker"
}


\score {
	<<
		<< \new DrumStaff { \Tempo \theDrums } >>

      \new Staff \with {
        \RemoveEmptyStaves \override VerticalAxisGroup #'remove-first = ##t
      } << \new Voice {
        s1*4 \break
        s1*4 \break
        \mark \markup { \musicglyph #"scripts.segno" }
        s1*4 \break
        s1*4 \break
        s1*3 \theCoda \bar "||" \break
        s1*4 \break
        s1*4 \break
        s1*3 \toCoda \bar "||" \break
        \repeat unfold 3 { s1*4 \break } \break
        s1*4 \break
        s1*4 \break
        \breakingCoda
        \time 1/4 s4
      } >>
	>>

	\layout {
		indent = 0\in
		ragged-last = ##t
	}
}

\score {
	\unfoldRepeats \articulate
	<<
		<< \new DrumStaff { \Tempo \theDrums } >>
	>>
	\midi { }
}