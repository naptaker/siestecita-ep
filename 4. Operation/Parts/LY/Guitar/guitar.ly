gtrMotifA = \relative c {
	aes4 ees'8\5 ces\6 aes'\4 g4\4 ees8\5 |
	ges4\5 aes8\4 f4\5 fes4\5 ees8\5 |
}

gtrMotifB = \relative c {
	aes4 ees'8\5 ces\6 aes'\4 g4\4 ees8\5 |
	ges4\5 ees8\5 f4\5 des8\5 d4\5 ~ |
}

gtrMotifAA = \relative c {
	d4\5 ees8\5 ces\6 aes'\4 g4\4 ees8\5 |
	ges4\5 aes8\4 f4\5 fes4\5 ees8\5 |
}


gtrMotifC = \relative c {
	aes8 aes:16 ces8\6 aes des\5 d\5 des\5 ces\6 |
	aes8 aes ces\6 aes d\5 ees\5 d\5 ces\6 |
}

gtrMotifD = \relative c {
	aes8 aes:16 ces8\6 aes des\5 d\5 des\5 ces\6 |
	aes8 aes ces\6 aes d\5 ees\5 ges\4 aes\4 |
}

gtrIntro = \relative c {
	\arpeggioArrowDown
	R1*4 | <aes ees' aes ces ees aes>1\arpeggio ~ | <aes ees' aes ces ees aes>1 |
	<aes ees' aes c ees aes>8-> r8 r4 r2 | R1 |
	R1*2 | <aes ees' aes ces ees aes>1\arpeggio ~ | <aes ees' aes ces ees aes>1 ~ |
	<aes ees' aes ces ees aes>4 <aes ees' aes c ees aes>8-> r8 r2 | R1 |
	aes4 ees'\5 d\5 ces\6 | aes ces\6 d8\5 ees\5 ces4\6 |
	\gtrMotifA \gtrMotifB \gtrMotifAA \gtrMotifC
}

gtrVerseEnding = \relative c {
	d8->\5( ees\5) ees\5 d->\5( ees\5) ees\5 d->\5( ees\5) |
	<ees\6 bes'\5 ees\4>-> <ees\6 bes'\5 ees\4> <d\6 a'\5 d\4>-> r
		<b\6 fis'\5 b\4> r <bes\6 f'\5 bes\4>
		<aes ees' aes ces\3> |	
}

gtrVerse = \relative c {
	\gtrMotifA \gtrMotifB \gtrMotifAA \gtrMotifD
	<aes ees' aes c\3>8 r4 <aes eeses' aes ces>8 r2 |
	<ces ees ges ces>8 r4
		<<
			{ \stemUp f'4 ges8 f8 ees8 }
			\\
			{ <des, aes' des>4 ~ <des aes' des>4. }
		>>
	<aes ees' aes c\3>8 r4 <aes eeses' aes ces>8 r2 |
	<ces ees ges ces>8 r4
		<<
			{ \stemUp f'4 ees8 <ees, aes>8 <des ges>8 }
			\\
			{ <des aes' des>4. aes4}
		>>
	<aes ees' aes c\3>8 r4 <aes eeses' aes ces>8 r2 |
	<ces ees ges ces>8 r4
		<<
			{ \stemUp f'4 ges8 f8 ees8 }
			\\
			{ <des, aes' des>4 ~ <des aes' des>4. }
		>>
	<aes ees' aes ces>1 ~ <aes ees' aes ces>1
	
	<aes ees' aes c\3>8 r4 <aes eeses' aes ces>8 r2 |
	<ces ees ges ces>8 r4
		<<
			{ \stemUp f'4 ges8 f8 ees8 }
			\\
			{ <des, aes' des>4 ~ <des aes' des>4. }
		>>
	<aes ees' aes c\3>8 r4 <aes eeses' aes ces>8 r2 |
	<ces ees ges ces>8 r4
		<<
			{ \stemUp f'4 ees8 <ees, aes>8 <des ges>8 }
			\\
			{ <des aes' des>4. aes4}
		>>
	<aes ees' aes c\3>8 r4 <aes eeses' aes ces>8 r2 |
	<ces ees ges ces>8 r4
		<<
			{ \stemUp f'4 ges8 f8 ees8 }
			\\
			{ <des, aes' des>4 ~ <des aes' des>4. }
		>>
	<aes ees' aes ces>1 ~ <aes ees' aes ces>2 aes8 ces des d |
	ees1 ~ ees 1
}

gtrChorus = \relative c {
	\set doubleSlurs = ##t
	<<
	{ ces'8( c) }
	\\
	{ \stemUp <aes, ees' aes>4 }
	>>
		<aes ees' aes c>8 <aes ees' ges c>4 <aes ees' ges c>8
		<aes ees' ges c> <aes ees' ges c>:16 |
	<<
	{ des'4( ees8) }
	\\
	{ \stemUp <des, aes' f'>4. }
	>>
		<des aes' ces f>4	<des aes' ces f>8 <des aes' ces f> <aes ees' ges c>:16 |
	<<
	{ ces'8( c) }
	\\
	{ \stemUp <aes, ees' aes>4 }
	>>
		<aes ees' aes c>8 <aes ees' ges c>4 <aes ees' ges c>8
		<aes ees' ges c> <aes ees' ges c> |
	<des aes' des f>4-> <aes ees' aes ces\3>-> <ces ges'\5 ces\4 ees\3>8->
		<ces ges'\5 ces\4 ees\3>8 <bes f' bes d>4-> |
	<<
	{ ces'8( c) }
	\\
	{ \stemUp <aes, ees' aes>4 }
	>>
		<aes ees' aes c>8 <aes ees' ges c>4 <aes ees' ges c>8
		<aes ees' ges c> <aes ees' ges c>:16 |
	<<
	{ des'4( ees8) }
	\\
	{ \stemUp <des, aes' f'>4. }
	>>
		<des aes' ces f>4 <des aes' ces f>8 <des aes' ces f> <des aes' ces f> |
	
		<ees\6 bes'\5 ees\4 g\3>4. <ees\6 bes'\5 ees\4 g\3>4 <ees\6 bes'\5 ees\4 g\3>4 <ees\6 bes'\5 ees\4 g\3>8 |
}

gtrChorusEndA = \relative c {
	<ees\6 bes'\5 ees\4 g\3>1 |
}

gtrChorusEndB = \relative c {
	<ees\6 bes'\5 ees\4 g\3>8-> <ees\6 bes'\5 ees\4 g\3> <d\6 a'\5 d\4 fis\3>-> r <b\6 fis'\5 b\4 dis\3> r <bes\6 f'\5 bes\4 d\3> r | 
}

gtrChorusA = \relative c {
	\gtrChorus \gtrChorusEndA
}

gtrChorusB = \relative c {
	\gtrChorus \gtrChorusEndB
}

gtrBridge = \relative c {
	<aes ees' aes ces ees aes>1 ~ | <aes ees' aes ces ees aes>1 ~ |
	<aes ees' aes ces ees aes>4 <aes ees' aes c ees aes>8-> r8 r2 | R1 |
	\ottava #1 aes'''1 ~ | aes2. ~ aes8 d,\2 |
	ees1\2 \ottava #0 | r2 r4 aes,,\6 \glissando |
}

gtrEnding = \relative c {
	\ottava #1 aes'''4 aes d,8\2( ees\2) a,4\3 \ottava #0 |
	aes\3 ees\4 ces\4 bes\4 | aes\4 aes,-> r2 \bar "|."
}

%showLastLength = R1*6

gtrHarmony = \chordmode {
%{
	s1*4 |
	aes1:min | s | aes | s1*3 |
	aes1:min | s | s4 aes8 s s2 | s1*3 |
	
	\repeat "unfold" 3 {
		aes4. aes:dim s4 | ces4. des s4 |
	}
	aes1 | s |
	\repeat "unfold" 3 {
		aes4. aes:dim s4 | ces4. des s4 |
	}
	ees1 | ees4 d ces bes |
	aes4. aes:7 s4 | des4. des:7 s4 | aes4. aes:7 s4 | des4 aes ces bes |
	aes4. aes:7 s4 | des4. des:7 s4 | ees1 | ees4 d ces bes |
	aes1:min | s1 | s4 aes s2 | s1 |
	s1*4 |  

	\repeat "unfold" 3 {
		aes4. aes:dim s4 | ces4. des s4 |
	}
	aes1 | s |
	\repeat "unfold" 3 {
		aes4. aes:dim s4 | ces4. des s4 |
	}
	ees1 | ees4 d ces bes |
	aes4. aes:7 s4 | des4. des:7 s4 | aes4. aes:7 s4 | des4 aes ces bes |
	aes4. aes:7 s4 | des4. des:7 s4 | ees1 | ees4 d ces bes |
	aes4. aes:7 s4 | des4. des:7 s4 | aes4. aes:7 s4 | des4 aes ces bes |
	aes4. aes:7 s4 | des4. des:7 s4 | ees1 |  s | s | s | aes |
	%}
}

gtr = \relative c {
	\Key
	
	\gtrIntro
	\gtrVerse
	\gtrChorusA
	\gtrBridge
	\gtrVerse
	\gtrChorusB
	\gtrChorusA
	\gtrEnding
}

Guitar = {
	\set Staff.midiInstrument = #"electric guitar (clean)"
	\set Staff.midiMinimumVolume = #0.3
	\set Staff.midiMaximumVolume = #0.6
	
	\global << \gtr >>
}