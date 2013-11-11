voxVerse = \relative c' {
	\set Staff.midiInstrument = #"tenor sax"
	\global \clef treble \Key
	
	\stopStaff
	\override Staff.Clef #'stencil = ##f
	\skip 1*8
	\override Staff.Clef #'stencil = ##t
	\startStaff
	\slurDashed
	
	r4 \set melismaBusyProperties = #'() d8 ( d8 ) \unset melismaBusyProperties bes4 r4 |
	des8 des8 bes8 des8 ~ des4 r4 |
	r4 \parenthesize des8 des8 f8 f8 \parenthesize bes,8 bes8 |
	\set melismaBusyProperties = #'()
	\parenthesize bes8 ( bes8 ) bes8 bes8 ( bes4 ) \unset melismaBusyProperties \startParenthesis bes8 \endParenthesis bes8 |
	\set melismaBusyProperties = #'()
	\parenthesize bes8 ( bes8 ) bes8 ( bes8 ) d8 d8 d8 ( d8 ) |
	aes8 (aes 8) \unset melismaBusyProperties \parenthesize aes8 f8 ~ f4 r8 \parenthesize bes8 |
	bes8 bes8 bes8 bes8 g8 g8 g8 g8 |
	aes4 aes8 f8 ~ f4 r4 |
	
	aes4 aes8 f8 ~ f4 \xNotesOn aes'8 aes8 |
	aes8 aes8 r4 r2 |
	aes8 aes8 aes8 aes4 aes8 aes8 aes8 \xNotesOff |
	\pageBreak
}

voxChorusOne = \relative c'' {
	\xNotesOn aes4 r4 r2 |
	r4 r8 aes4 aes8 aes8 aes8 |
	aes4 r4 r2 |
	r4 r8 aes4 aes8 aes8 aes8 |
	aes4 r4 r2 |
	r2 r8 aes8 aes8 aes8 |
	aes4 r2 r8 aes8 |
	aes4 r4 r2 \xNotesOff |
}

voxChorusTwo = \relative c'' {
	<bes d>4 <bes d>4 <bes d>8 <bes d>4 <bes d>8 ~ |
	<bes d>8 <bes d>4 <bes d>8 <des f>4 <ees g>4 |
	<bes d>4 <bes d>4 <bes d>8 <bes d>4 <bes d>8 ~ |
	<bes d>8 <bes d>4 <bes d>8 <des f>4 <aes c>4 |
	<bes d>4 <bes d>4 <bes d>8 <bes d>4 <bes d>8 ~ |
	<bes d>8 <bes d>4 <bes d>8 <des f>4 <ees g>4 |
	f4 r4 r2 | R1 |
	\xNotesOn aes,8 aes8 aes8 aes8 \xNotesOff r2 |
}

lyricsVerseOne = {
	\set stanza = #"1 & 4. "
	\lyricmode {
		Hey _ you, run -- ning a -- round,
		\skip 1 you're sex -- y when you're run -- ning a -- round. _
		\repeat unfold 2 { \skip 1 } Hey _ there _ Su -- zi, I _ love _ your thighs. \skip 1
		Nev -- er could I ev -- er could I close my eyes.
	}
}

lyricsVerseTwo = {
	\set stanza = #"2 & 5. "
	\lyricmode {
		New _ band, dig -- ging your sound.
		Lit -- tle ba -- by, don't you let _ me down. _
		If your mu -- sic was a girl, I'd like to touch _ your chest, \skip 1
		lis -- ten to your al -- bum, and for -- \repeat unfold 3 { \skip 1 } get the rest.
		This is cra -- zy!
		This is in -- sane!
		She's got a 
	}
}

lyricsVerseThree = {
	\set stanza = #"3. "
	\lyricmode {
		Look a -- round, there's lots to love.
		Tell me, was it \skip 1 sent \skip 1 from  \skip 1 a -- bove? \repeat unfold 2 { \skip 1 }
		Al -- lah, Bud -- dha, Lu -- ci -- fer, \skip 1 Yah -- weh, _ God,
		who -- ev -- er made that girl, I wan -- na \repeat unfold 3 { \skip 1 } touch your bod.
		I said, leave her? I'd be in -- sane
	}
}

lyricsChorusOne  = {
	\lyricmode {
		knife!
		Oh, she's got a knife.
		\skip 1 She's got a knife.
		She's got a knife, but still...
	}
}

lyricsChorusTwo = {
	\lyricmode {
		Will you be my girl?
		Will you be my girl?
		Will you be my will you be my girl?
		Will you be my will you be my girl?
		I'd be in -- sane!
	}
}

lyricsChorusThree = {
	\lyricmode {
		She's got a gun.
		Oh, she's got a gun.
		Ooh, she's got a gun.
		She's got a gun, but still...
	}
}