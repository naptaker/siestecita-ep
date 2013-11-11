bassVerse = \relative c {
	\set TabStaff.minimumFret = #5
	\repeat volta 2 {
		\repeat percent 2 {
			bes4 bes8 bes des\3 des\3 a\4 bes ~ |
			bes bes bes4 des8\3 des\3 ees\3 des\3 |
		}
		bes4-\markup { \null \lower #3 \italic { ad lib on repeat } } bes8 bes des\3 des\3 a\4 bes ~ |
		bes bes' aes f aes f ees e |
		f4 f8 e f aes f e ~ |
	}
	\alternative {
		{
			e8 e e e4 e8 f \parenthesize aes |
		}
		{
			e8\repeatTie e e4 f8 g\3 bes4-> |
		}
	}
	\set TabStaff.minimumFret = #11
	des4 des8 des des des des des |
	\set TabStaff.minimumFret = #9
	des8 c4 ces4.-> r4 |
}