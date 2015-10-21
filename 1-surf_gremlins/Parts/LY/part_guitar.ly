\include "../../../../include/preamble.ly"
\include "../../Score/LY/header.ly"
\include "../../Parts/LY/Guitar/guitar.ly"


#(set-global-staff-size 23)
#(set-default-paper-size "letter" 'portrait)
\paper {
  max-systems-per-page = 7
  bottom-margin = .5\in
}

\header {
  title = \markup { \fontsize #4  "Surf Gremlins" }
  instrument = "Guitar"
  subtitle = \markup { \column { \center-align \fontsize #2 %{"from the Siestecita EP" \center-align \fontsize #2 %} "by Naptaker" } }
  composer = "Music by E. Bailey"
  poet = "Words by A. Smith"
  arranger = \markup { \column { \right-align "Arr. by S. Albers, E. Bailey" \right-align  "P. Drum, and A. Smith" } }
  tagline = ##f
  %% copyright = "© 2013 Naptaker"
}


\score {
  <<
    <<
      \new ChordNames = "chords" \gtrHarmony
      \new FretBoards { \gtrHarmony }
      \new RhythmicStaff \with {
        \RemoveEmptyStaves
        \override VerticalAxisGroup #'remove-first = ##t
      } { \Tempo \GuitarStrum }
      \new TabStaff \with {
        \RemoveEmptyStaves
        \override VerticalAxisGroup #'remove-first = ##t
      } { \tabFullNotation \GuitarTab }

      \new Staff \with {
        \RemoveEmptyStaves \override VerticalAxisGroup #'remove-first = ##t
      } <<
        \new Voice {
          \repeat unfold 4 { s1*4 \break }
          s1*3 \pageBreak
          s1*3 \break
          s1*2 \break
          s1*3 \break
          s1*3 \break
          s1*4 \break
          s1*4 \pageBreak
          \repeat unfold 3 { s1*4 \break }
          \time 1/4 s4
        }
      >>
    >>
  >>
  \layout {
    indent = 0\in
    ragged-last = ##t
    \context {
      \Staff
      \override StringNumber #'stencil = ##f
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
