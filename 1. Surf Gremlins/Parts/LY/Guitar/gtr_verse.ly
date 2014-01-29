% http://lsr.dsi.unimi.it/LSR/Snippet?id=664
toSegno = {
	% the align part, to the right, and below staff
	\once \override Score.RehearsalMark #'self-alignment-X = #RIGHT 
	\once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
	\once \override Score.RehearsalMark #'direction = #DOWN 
	%prefered size, is about 1/3 smaller than normal
	\once \override Score.RehearsalMark #'font-size = #-2
	\mark \markup { { \lower #1 "D.S. al " { \musicglyph #"scripts.segno"} } } 
}

gtrVerse = \relative c {
	\repeat volta 2 {
		bes4 \deadNotesOn bes8 \deadNotesOff bes4
			\deadNotesOn bes8 \deadNotesOff bes  bes ~ | \noBreak
		bes bes bes4 des ees | \noBreak
		bes4 \deadNotesOn bes8 \deadNotesOff bes4
			\deadNotesOn bes8 \deadNotesOff bes  bes ~ | \noBreak
		bes bes bes4 des a | \noBreak
		bes4 \deadNotesOn bes8 \deadNotesOff bes4
			\deadNotesOn bes8 \deadNotesOff bes  bes ~ | \noBreak
		bes bes bes4 des aes | \noBreak
		f4 \deadNotesOn f8 \deadNotesOff f4 \deadNotesOn f8 \deadNotesOff f e ~ | \break
	}
	\alternative {
		{ e8 e e e16 e e8 f f f | \noBreak }
		{ e8\repeatTie e e e4 ees'8 ees \parenthesize ees | \noBreak }
	}
	des4 des8 des des des des des | \noBreak
	des8 c4 ces4. r4 |
%	\once \override Score.RehearsalMark #'break-align-symbols = #'(staff-bar)
%	\once \override Score.RehearsalMark #'self-alignment-X = #right
	\toSegno \bar "||" \stopStaff \hideNotes \pageBreak
}