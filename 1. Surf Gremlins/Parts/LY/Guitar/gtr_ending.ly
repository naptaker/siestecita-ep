breakingCoda = {
	\break
	\once \override Score.RehearsalMark.font-size = #6 
  \mark \markup { \musicglyph #"scripts.coda" }
}

gtrEnding = \relative c {
	\once \override Score.TimeSignature #'stencil = ##f \time 1/4
	\breakingCoda
	<bes f' bes d>4->  \bar "|."
}