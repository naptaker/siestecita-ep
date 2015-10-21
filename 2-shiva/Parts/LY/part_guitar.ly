\include "../../../../include/preamble.ly"
\include "../../Score/LY/header.ly"
\include "../../Parts/LY/Guitar/guitar.ly"


#(set-global-staff-size 21)
#(set-default-paper-size "letter" 'portrait)
\paper {
  max-systems-per-page = 7
  bottom-margin = .5\in
}

\header {
  title = \markup { \fontsize #4  "Shiva" }
  instrument = "Guitar"
  subtitle = \markup { \column { \center-align \fontsize #2 %{"from the Siestecita EP" \center-align \fontsize #2 %} "by Naptaker" } }
composer = "Music by E. Bailey"
poet = "Words by A. Smith"
arranger = \markup { \column { \right-align "Arr. by S. Albers, E. Bailey" \right-align  "P. Drum, and A. Smith" } }
tagline = ##f
%% copyright = "© 2013 Naptaker"
}

%% http://lsr.dsi.unimi.it/LSR/Snippet?id=664
toCoda = {
  %% the align part
  \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT
  \once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
  \once \override Score.RehearsalMark #'direction = #DOWN
  %% preferred size
  \once \override Score.RehearsalMark #'font-size = #-2
  \mark \markup {
    \concat { \lower #1 { "D.S. al  " } { \musicglyph #"scripts.coda" } }
  }
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
      \new Staff \with {
        \RemoveEmptyStaves
        \override VerticalAxisGroup #'remove-first = ##t
        \compressFullBarRests
        \override MultiMeasureRest #'expand-limit = #3
      } { \compressFullBarRests \Guitar }

      \new Staff \with {
        \RemoveEmptyStaves \override VerticalAxisGroup #'remove-first = ##t
      } <<
        \new Voice {
          s1*6 \break
          s1*4 \break
          \theSegno
          \repeat unfold 5 { s1*4 \break }
          \theCoda \pageBreak

          \repeat unfold 2 { s1*4 \break }
          \repeat unfold 2 { s1*4 \break }
          s1*12 \pageBreak
          \repeat unfold 2 { s1*4 \break }
          \repeat unfold 2 { s1*4 \break }
          s1*6 \toFine \break
%{
          \repeat unfold 3 { s1*4 \break }
          %% \repeat unfold 2 { s1*4 \break }
          \pageBreak

          s1*4
          \time 1/4
          s4 \bar "|."
%}
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
