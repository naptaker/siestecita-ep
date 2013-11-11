bassSolo = \relative c {
	\repeat percent 2 {
		bes'4 bes8 bes bes4 bes8 bes |
		bes4. bes4-> bes8 bes aes |
	}
	\set TabStaff.minimumFret = #4
	\repeat percent 2 {
		bes,4 bes8 bes bes4 bes8 bes |
		bes4. bes4-> bes8 bes aes |
	}
	
	
	\repeat volta 2 {
		\repeat percent 2 {
			bes4 bes8 bes des\3 des\3 a\4 bes ~ |
			bes bes bes4 des8\3 des\3 ees\3 des\3 |
		}
	}
	\repeat percent 4 {
		bes4 bes8 bes des\3 des\3 a\4 bes ~ |
		bes bes bes4 des8\3 des\3 ees\3 des\3 |
	}	
}
