gtrEnding = \relative c {
  \cadenzaOn \once \override Score.TimeSignature #'stencil = ##f
  \time 1/16 s16 \bar "" \cadenzaOff
  \once \override Score.TimeSignature #'stencil = ##f \time 1/4
  
  \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT
	\mark \markup { \musicglyph #"scripts.coda" }
	\set TabStaff.minimumFret = #6
	bes4-> \bar "|."
}

gtrEndingStacked = \relative c {
  \cadenzaOn \once \override Score.TimeSignature #'stencil = ##f
  \time 1/16 s16 \bar "" \cadenzaOff
  \once \override Score.TimeSignature #'stencil = ##f \time 1/4
  
  \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT
	\mark \markup { \musicglyph #"scripts.coda" }
	\set TabStaff.minimumFret = #6
	<bes f' bes d>4-> \bar "|."
}