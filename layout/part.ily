\include "parts/defaults.ily"

\score {
  <<
    <<
      \new Staff \with {
        \RemoveEmptyStaves
      } {
        \partDefaults
        << \global \partNotes >>
      }
      \maybeRhythmicStaff
    >>
  >>

  \layout {
    indent = 0\in
    \context {
      \Score
      \override NonMusicalPaperColumn #'line-break-permission = ##f
      \consists #(custom-line-breaks-engraver '(4))
    }
  }
}
