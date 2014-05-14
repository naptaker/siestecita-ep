bassBridge = \relative c {
	fis4 fis4 cis8 e8 ( eis8 fis8 ) ~ |
	fis8 fis8 fis8 e4 e8 b'8 eis,8 |
	fis4 fis4 cis8 e8 ( eis8 fis8 ) ~ |
	fis8 fis8 fis8 e8 fis8 a8 fis8 e8 |
	fis4 fis4 cis8 e8 ( eis8 fis8 ) ~ |
	fis8 fis8 fis8 e4 e8 b'8 eis,8 |
	fis4 fis4 cis8 e8 ( eis8 fis8 ) ~ |
	fis8 fis8 a8 fis8 b8 a8 fis8 e8 |
}

bassIntro = \relative c {
	R1*2 |
	\bassBridge
}

bassVerse = \relative c {
	fis4 fis4 cis8 e8 ( eis8 fis8 ) ~ |
	fis8 fis8 fis8 e4 e8 b'8 eis,8 |
	fis4 fis4 cis8 e8 ( eis8 fis8 ) ~ |
	fis8 fis8 fis8 e8 fis8 a8 fis8 e8 |
	fis4 fis4 cis8 e8 ( eis8 fis8 ) ~ |
	fis8 fis8 fis8 e4 e8 b'8 eis,8 |
	fis4 fis4 cis8 e8 ( eis8 ) fis,8 ~ |
	fis8 fis8 fis8 fis'4 fis8 fis,8 fis8 |
}

bassChorus = \relative c {
	d4 d4 b8 b4 fis8 ~ |
	fis8 fis8 fis8 fis4. fis8 fis8 |
	a4 a8 a8 a8 b4 fis8 ~ |
	fis8 fis8 fis8 fis4 fis8 fis8 fis8 |
	d'4 d4 b8 b4 fis8 ~ |
	fis8 fis8 fis8 fis4. fis8 fis8 |
	a4 a8 a8 a8 b4 fis8 ~ |
	fis8 fis8 fis8 fis4 fis8 fis4 |
	a4 a8 a8 a8 b4 fis8 ~ |
	fis8 fis8 fis8 fis4 fis8 fis4 |
	a4 a8 a8 a8 b4 fis8 ~ |
}

bassChorusEnding = \relative c, {
	fis8 fis8 fis8 fis'4 fis8 fis4 |
}

bassEnding = \relative c {
	R1*8
	
	\override Staff.TimeSignature #'stencil = ##f
	\time 8/1
	\autoBeamOff
	\repeat volta 2 {
		fis,\longa:8
	}
	\time 4/4
	\autoBeamOn

	\repeat unfold 3 {
		\repeat unfold 2 {
			\repeat percent 2 {
				fis'8 fis fis fis fis e4 a,8 ~ |
				a8 a a a a b b b |
			}
		}
	}
	
	\repeat unfold 2 {
		\repeat percent 2 {
			fis'8 fis fis fis fis e4 a,8 ~ |
			a8 a a a a b b b |
		}
	}
	fis'8 fis fis fis fis e4 a,8 ~ |
	a8 a a a a b b b |
	
	\repeat percent 4 {
		fis1:8
	}

	\bassChorus
	R1 \bar "|."
}


bgtr = \relative c {
	\Key
	
	\bassIntro
	\bassVerse
	\bassChorus \bassChorusEnding
	\bassBridge
	\bassVerse
	\bassChorus \bassChorusEnding
	\bassBridge
	\bassVerse
	\bassChorus
	fis4 r4 r2 |
	\bassEnding
}

%showLastLength = R1*24

bassGuitar = {
	\set Staff.midiInstrument = #"electric bass (finger)"
	\global	\clef bass << \bgtr >>
}