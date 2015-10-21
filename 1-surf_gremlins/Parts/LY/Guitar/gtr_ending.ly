gtrEnding = \relative c {
  \once \override Score.TimeSignature #'stencil = ##f \time 1/4
  \breakingCoda
  <bes f' bes d>4->  \bar "|."
}
