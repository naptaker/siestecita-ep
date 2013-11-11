voxVerseOne = \relative c' {
	\set Staff.midiInstrument = #"choir aahs"
	\global \clef treble \Key
	
	\stopStaff
	\override Staff.Clef #'stencil = ##f
	
	\skip 1*12
%	\pageBreak
	\startStaff
	\override Staff.Clef #'stencil = ##t
	\clef bass
	
	r4 a8 b4 b4. | d8 e4 b4. r4 |
	r4 a8 b4 b4. | d8 b4 b4. r4 |
	r4 r8 a4 g4. | a8 g4 a 4. r4 |
	r4 b8 b4 b4. | d8 b4 b4. r4 |
	c8 c c c4 c8 c g ~ | g g4 c4 r8 r4 |
	fis,4 fis8 fis c'4 c8 c | b4 a8 a g fis4 e8 ~ |
	e4 r r2 |
						r8 b' a b d4. e8 |
	b4 r r2 | r8 b a b d4 e4 |
	a,4 r r2 |	r8 g a g a4 g4 |
	b4 r r2 | r2 d,8 d4 d'8 ~ |
	d8 c8 c8 c4. r8 g8 ~ | g8 g8 g8 c4 c8 c4. |
	fis,8 fis4. c'8 c4. | b4 a8 a g fis4 e ~ |
	e4 r r2 | 
	
}

voxVerseTwo = \relative c' {
	\set Staff.midiInstrument = #"choir aahs"
	\global \clef bass \Key
	
	\stopStaff
	\override Staff.Clef #'stencil = ##f
	\skip 1*19
	\override Staff.Clef #'stencil = ##t
	\startStaff
	bes8 bes bes4 bes bes8 aes | des4. bes bes8 aes |
	bes4 aes des8 bes f aes | f2 r4 r8 aes |
	bes des4 bes bes8 bes aes | bes des r4 r2 |
	f,4 f f8 f f e | R1 | f4 r r2 | \stopStaff
	\skip 1*2 |
}

lyricsVerseOne = {
	\set stanza = #"1. "
	\lyricmode {
		A new psych -- o -- lo -- gy
		a new bi -- o -- lo -- gy
		per -- son -- al -- i -- ty
		in -- divi -- u -- al -- i -- ty
	}
}

lyricsVerseTwo = {
	\set stanza = #"2. "
	\lyricmode {
	}
}

