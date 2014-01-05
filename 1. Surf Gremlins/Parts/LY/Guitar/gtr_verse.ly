gtrVerse = \relative c {
	\repeat volta 2 {
		\set TabStaff.minimumFret = #6
		bes4 \deadNotesOn bes8 \deadNotesOff bes4
			\deadNotesOn bes8 \deadNotesOff bes  bes ~ |
		bes bes bes4
			\set TabStaff.minimumFret = #9
			des
			\set TabStaff.minimumFret = #11
			ees |
		\set TabStaff.minimumFret = #6
		bes4 \deadNotesOn bes8 \deadNotesOff bes4
			\deadNotesOn bes8 \deadNotesOff bes  bes ~ |
		bes bes bes4
			\set TabStaff.minimumFret = #9
			des
			\set TabStaff.minimumFret = #5
			a |
		bes4 \deadNotesOn bes8 \deadNotesOff bes4
			\deadNotesOn bes8 \deadNotesOff bes  bes ~ |
		bes bes bes4
			\set TabStaff.minimumFret = #9
			des
			\set TabStaff.minimumFret = #4
			aes |
			\set TabStaff.minimumFret = #1
			f4 \deadNotesOn f8 \deadNotesOff f4
				\deadNotesOn f8 \deadNotesOff f
				\set TabStaff.minimumFret = #0
				e ~ |
	}
	\alternative {
		{
			e8 e e e16 e e8
				\set TabStaff.minimumFret = #1
				f f f |
		}
		{
			e8\repeatTie e e e4
				\set TabStaff.minimumFret = #11
				ees'8 ees \parenthesize ees |
		}
	}
		\set TabStaff.minimumFret = #9
	des4 des8 des des des des des |
	des
		\set TabStaff.minimumFret = #8
		c4
		\set TabStaff.minimumFret = #7
		ces4.
		\once \override Score.RehearsalMark #'break-align-symbols = #'(staff-bar)
	\once \override Score.RehearsalMark #'self-alignment-X = #right
	r4 \mark \markup { \bold "D.S." } \bar "||"
}

gtrVerseStacked = \relative c {
	\repeat volta 2 {
		\set TabStaff.minimumFret = #6
		<bes f' bes d>4 \deadNotesOn <bes f' bes d>8 \deadNotesOff <bes f' bes d>4
			\deadNotesOn <bes f' bes d>8 \deadNotesOff <bes f' bes d>  <bes f' bes d> ~ |
		<bes f' bes d> <bes f' bes d> <bes f' bes d>4
			\set TabStaff.minimumFret = #9
			<des aes' des f>
			\set TabStaff.minimumFret = #11
			<ees bes' ees g> |
		\set TabStaff.minimumFret = #6
		<bes f' bes d>4 \deadNotesOn <bes f' bes d>8 \deadNotesOff <bes f' bes d>4
			\deadNotesOn <bes f' bes d>8 \deadNotesOff <bes f' bes d>  <bes f' bes d> ~ |
		<bes f' bes d> <bes f' bes d> <bes f' bes d>4
			\set TabStaff.minimumFret = #9
			<des aes' des f>
			\set TabStaff.minimumFret = #5
			<a e' a cis> |
		<bes f' bes d>4 \deadNotesOn <bes f' bes d>8 \deadNotesOff <bes f' bes d>4
			\deadNotesOn <bes f' bes d>8 \deadNotesOff <bes f' bes d>  <bes f' bes d> ~ |
		<bes f' bes d> <bes f' bes d> <bes f' bes d>4
			\set TabStaff.minimumFret = #9
			<des aes' des f>
			\set TabStaff.minimumFret = #4
			<aes ees' aes c> |
			\set TabStaff.minimumFret = #1
			<f c' f a>4 \deadNotesOn <f c' f a>8 \deadNotesOff <f c' f a>4
				\deadNotesOn <f c' f a>8 \deadNotesOff <f c' f a>
				\set TabStaff.minimumFret = #0
				<e b' e gis> ~ |
	}
	\alternative {
		{
			<e b' e gis>8 <e b' e gis> <e b' e gis> <e b' e gis>16 <e b' e gis> <e b' e gis>8
				\set TabStaff.minimumFret = #1
				<f c' f a> <f c' f a> <f c' f a> |
		}
		{
			<e b' e gis>8\repeatTie <e b' e gis> <e b' e gis> <e b' e gis>4
				\set TabStaff.minimumFret = #11
				<ees' bes' ees g>8 <ees bes' ees g> \parenthesize <ees bes' ees g> |
		}
	}
		\set TabStaff.minimumFret = #9
	<des aes' des f>4 <des aes' des f>8 <des aes' des f> <des aes' des f> <des aes' des f> <des aes' des f> <des aes' des f> |
	<des aes' des f>
		\set TabStaff.minimumFret = #8
		<c\6 g'\5 c\4 e\3>4
		\set TabStaff.minimumFret = #7
		<ces\6 ges'\5 ces\4 ees\3>4. r4 	\once \override Score.RehearsalMark #'break-align-symbols = #'(staff-bar)
	\once \override Score.RehearsalMark #'self-alignment-X = #right
	\mark \markup { \bold "D.S." } \bar "||"
}