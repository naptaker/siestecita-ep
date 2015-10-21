\include "../../../../include/preamble.ly"
\include "../../Score/LY/header.ly"
\include "../../Parts/LY/Guitar/guitar.ly"

#(set-global-staff-size 18)
#(set-default-paper-size "letter" 'portrait)
\paper {
  max-systems-per-page = 7
  bottom-margin = .5\in
}

\header {
  title = \markup { \fontsize #4  "Alone" }
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
      \new Staff \with {
        \RemoveEmptyStaves
        \override VerticalAxisGroup #'remove-first = ##t
      } { \Tempo \clef "treble_8" \Guitar }

      \new Staff \with {
        \RemoveEmptyStaves \override VerticalAxisGroup #'remove-first = ##t
      } <<
        \new Voice {
          \bar ".|:"
          s1*4 \break
          \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT
          \once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
          \once \override Score.RehearsalMark #'direction = #DOWN
          \once \override Score.RehearsalMark #'font-size = #-2
          \mark \markup { \italic { "play 4x" } }
          s1*4 \break
          \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT
          \once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
          \once \override Score.RehearsalMark #'direction = #DOWN
          \once \override Score.RehearsalMark #'font-size = #-2
          \mark \markup { \italic { "play 3x" } }
          s1*3
          \set Timing.measureLength = #(ly:make-moment 5/8)
          s2 s8 |
          \once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
          \mark \markup { \musicglyph #"scripts.coda" }
          \break
          \set Timing.measureLength = #(ly:make-moment 3/8)
          s4.
          \set Timing.measureLength = #(ly:make-moment 4/4)
          s1*4 \noBreak
          \set Timing.measureLength = #(ly:make-moment 4/8)
          s2 \break
          \set Timing.measureLength = #(ly:make-moment 4/4)
          s1*4 \break
          s1*4
          \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT
          \once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
          \once \override Score.RehearsalMark #'direction = #DOWN
          \once \override Score.RehearsalMark #'font-size = #-2
          \mark \markup { "D.C. al Coda" }
        }
      >>
    >>
  >>
  \layout {
    indent = 0\in
    ragged-last = ##f
    \context { \Score \scoreMagic }
    \context { \Staff \override StringNumber #'stencil = ##f }
  }
}

\score {
  \unfoldRepeats \articulate
  <<
    << \new Staff { \Tempo \Guitar } >>
  >>
  \midi { }
}
