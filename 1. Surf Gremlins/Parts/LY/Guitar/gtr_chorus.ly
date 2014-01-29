voltaFirst = \markup { 1. \text \italic { play 1x and 4x only } }

gtrChorus = \relative c {
	\mark \markup { \musicglyph #"scripts.segno" }
	\set Score.repeatCommands = #'(start-repeat)
	bes4 \deadNotesOn bes8 \deadNotesOff bes4 bes8 bes bes | \noBreak
	a4 \deadNotesOn a8 \deadNotesOff g4 des'8 des \parenthesize des | \noBreak
	bes4 \deadNotesOn bes8 \deadNotesOff bes4 bes8 bes bes | \noBreak
	aes4 \deadNotesOn aes8 \deadNotesOff f4 f8 f f | \noBreak
	bes4 bes8 bes d4 d8 d | \noBreak
	aes4 \deadNotesOn aes8 \deadNotesOff f4 f8 f f | \break
	bes4 bes8 bes g4 g8 g | \noBreak 

  \set Score.repeatCommands = #(list(list 'volta voltaFirst))
	g8( aes) aes f4 f8 f4 | \noBreak
	\once \override Score.RehearsalMark #'self-alignment-X = #RIGHT
	\once \override Score.RehearsalMark #'break-align-symbols = #'(volta)

  \set Score.repeatCommands = #'((volta #f) (volta "2.") end-repeat)
	g8( aes) aes f4 ees'8 ees \parenthesize ees | \noBreak
  \set Score.repeatCommands = #'((volta #f))
  
	des4 des8 des des des des des | \noBreak
	des c4 ces4.-> r4 | \pageBreak 
	\mark \markup { \musicglyph #"scripts.coda" }
}