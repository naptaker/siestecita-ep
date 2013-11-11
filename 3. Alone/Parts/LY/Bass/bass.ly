bgtr = \relative c, {
	\Key
	f4 f8 [ es'8 ] es8 [ bes8 bes8 a8 ] | % 2
	f4 f8 [ es'8 ] es8 [ ces8 ces8 bes8 ] | % 3
	f4 f8 es'4 bes8 bes8 [ a8 ] \break | % 4
	f8 [ f8 ] f8 es'4 a,8 bes8 [ ces8 ] | % 5
	f,4 f8 [ es'8 ] es8 [ bes8 bes8 a8 ] | % 6
	f4 f8 [ es'8 ] es8 [ ces8 ces8 bes8 ] | % 7
	f4 f8 es'4 bes8 bes8 [ a8 ] \break | % 8
	f8 [ f8 ] f8 es'4 a,8 bes8 [ ces8 ] | % 9
	as8 [ as8 as8 as8 ] as8 [ as8 as8 as8 ] | \barNumberCheck #10
	c8 [ c8 c8 c8 ] ces8 [ ces8 ces8 c8 ] | % 11
	f,4. f'4 as,4 c8 \break | % 12
	f,4 f8 f'4 as,8 c8 [ ces8 ] | % 13
	f,4. f'4 as,4 ces8 | % 14
	f,4 f8 f'4 c8 ces8 [ as8 ] \bar "|."
}

%showLastLength = R1*24

bassGuitar = {
	\set Staff.midiInstrument = #"electric bass (finger)"
	\global	\clef bass << \bgtr >>
}