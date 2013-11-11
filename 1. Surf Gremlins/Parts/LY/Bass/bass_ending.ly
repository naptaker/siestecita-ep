bassEnding = \relative c {
  \cadenzaOn \once \override Score.TimeSignature #'stencil = ##f
  \time 1/16 s16 \bar "" \cadenzaOff
	\once \override Score.TimeSignature #'stencil = ##f \time 1/4

	\set TabStaff.minimumFret = #6
  bes4-> \bar "|."
}