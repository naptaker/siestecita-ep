gtrSolo = \relative c {
	\repeat percent 3 {
		bes4\6-> aes'\4-. \grace { \fretMagic aes8\4 \glissando s } bes8\4 aes\4 f\5( e\5 |
			f\5) aes4\4 des,\5-> des8\5 ees\5 des\5 |
	}
	bes4\6-> aes'\4-. \grace { \fretMagic aes8\4 \glissando s } bes8\4 aes\4 f\5( e\5 |
	f\5) aes\4 bes\4 bes,\6-> r2 |

	\break
	\repeat volta 2 {
		f'4\5 aes\4 \grace { \fretMagic aes8\4 \glissando s } bes8\4 des\3 bes\4
			aes\4-> ~ |
		aes\4 f\5 bes\4 e,4.\5-> e8\5 e\5( |
		f4\5) aes\4 \grace { \fretMagic aes8\4 \glissando s } bes8\4 des\3 bes\4
			\bendOn \holdBend ees8\3->( ~ |
		\once \override TabNoteHead #'transparent = ##t
			f4\3) f\2-. \bendOff des8->\3( c\3 ces4\3) |
	}
	
	f8\2->( e\2 ees\2 e\2) f\2->( e\2 ees\2) f\2->( ~ |
	f\2 e\2 ees\2 e\2) f\2 aes\1 f\2( e\2) |
	f\2->( e\2 ees\2 e\2 f\2) aes\1 \parenthesize f\2 bes\1-> ~ |
	bes\1( aes\1) f\2( e\2) des4\3\prall c\3\prall |
	f8\2( e\2 ees\2 e\2) f\2->( e\2 ees\2) f\2->( ~ |
	f\2 e\2 ees\2 e\2) f\2 aes\1 f\2( e\2) |
	f\2->( e\2 ees\2 e\2 f\2) aes\1-> \parenthesize f\2 bes\1-> ~ |
	bes4\1 des\1-. \grace { \fretMagic des16\1 \glissando s } ees4\1-\staccatissimo r \mark \markup { \center-column { \bold{"D.S. alla coda"} \italic { \small "play both endings"} } } \bar "||" \stopStaff \hideNotes
}
