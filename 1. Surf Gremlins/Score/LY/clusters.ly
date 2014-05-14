\include "../../../../include/preamble.ly"

%%% TIME & KEY SETUP %%%
global = { \time 4/4 }
Key = { \key c \major}
Tempo = { \tempo 4 = 192 }

\include "../../Parts/LY/Guitar/guitar.ly"
\include "../../Parts/LY/Bass/bass.ly"

#(set! paper-alist (cons '("my size" . (cons (* 12 in) (* 12 in))) paper-alist))

\paper {
  #(set-paper-size "my size")
  print-page-number = ##f
	top-margin = 0\in
	left-margin = 0.125\in
	right-margin = 0.125\in
	bottom-margin = 0\in
}

#(set-global-staff-size 20)

\header {
	tagline = ##f
}

showFirstLength = R1*70
%showLastLength = R1*16

\score {
\new Staff \with {
	\remove "Time_signature_engraver"
	\remove "Clef_engraver"
	\remove "Bar_engraver"
	\remove "Staff_symbol_engraver"
} { %\makeClusters

\relative c' {
	%% Vocals Intro
	s1*8

	%% Vocals Verse 1
	s4 d bes s |
	des8 des8 bes8 des8 ~ des4 s4 |
	s4 s8 des8 f8 f8 bes,8 bes8 |
	bes8 bes8 bes8 bes8 ~ bes4 s4 |
	bes4 bes8 bes8 d8 d8 d8 d8 |
	aes4 aes8 f8 ~ f4 s4 |
	bes8 bes8 bes8 bes8 g8 g8 g8 g8 |
	aes4 aes8 f8 ~ f4 s4 |
	
	s4 d' bes s |
	des8 des8 bes8 des8 ~ des4 s4 |
	s4 des8 des8 f8 f8 bes,8 bes8 |
	bes4 bes8 bes8 ~ bes4 bes8 bes8 |
	bes8 bes8 bes8 bes8 d8 d8 d8 d8 |
	aes4 aes8 f8 ~ f4 s4 |
	bes8 bes8 bes8 bes8 g8 g8 g8 g8 |
	aes4 aes8 f8 ~ f4 \xNotesOn aes'8 aes8 |
	aes8 aes8 s4 s2 |
	aes8 aes8 aes8 aes4 aes8 aes8 aes8 \xNotesOff |
	
	%% Vocals Chorus 1
	\xNotesOn aes4 s4 s2 |
	s2 s8 aes8 aes8 aes8 |
	aes4 s4 s2 |
	s2 s8 aes8 aes8 aes8 |
	aes4 s4 s2 |
	s2 s8 aes8 aes8 aes8 |
	aes4 s2 s8 aes8 |
	aes4 s4 s2 \xNotesOff |
	<bes d>4 <bes d>4 <bes d>8 <bes d>4 <bes d>8 ~ |
	<bes d>8 <bes d>4 <bes d>8 <des f>4 <ees g>4 |
	<bes d>4 <bes d>4 <bes d>8 <bes d>4 <bes d>8 ~ |
	<bes d>8 <bes d>4 <bes d>8 <des f>4 <aes c>4 |
	<bes d>4 <bes d>4 <bes d>8 <bes d>4 <bes d>8 ~ |
	<bes d>8 <bes d>4 <bes d>8 <des f>4 <ees g>4 |
	f4 s4 s2 | s1 |
	\xNotesOn aes,8 aes8 aes8 aes8 \xNotesOff s2 |
	s1*2
	
	%% Vocals Verse 2
	s4 d8 d8 bes4 s8 bes8 |
	des4 bes8 des8 ~ des4 s4 |
	s4 des8 des8 f8 f4 bes8 ~ |
	bes8 bes4 bes8 bes4 s4 |
	bes4 bes8 bes8 d8 d8 d4 |
	aes8 aes4 f8 ~ f4 s8 f8 |
	bes8 bes8 bes8 bes8 g8 g8 g8 g8 |
	aes4 aes8 f8 ~ f4 \xNotesOn aes8 aes8 |
	aes8 aes8 s4 s2 |
	aes8 aes8 aes8 aes4 aes8 aes8 aes8 \xNotesOff |
	
	%% Vocals Chorus 2
	\xNotesOn aes4 s4 s2 |
	s2 s8 aes8 aes8 aes8 |
	aes4 s4 s2 |
	s2 s8 aes8 aes8 aes8 |
	aes4 s4 s2 |
	s2 s8 aes8 aes8 aes8 |
	aes4 s2 s8 aes8 |
	aes4 s4 s2 \xNotesOff |
	<bes d>4 <bes d>4 <bes d>8 <bes d>4 <bes d>8 ~ |
	<bes d>8 <bes d>4 <bes d>8 <des f>4 <ees g>4 |
	<bes d>4 <bes d>4 <bes d>8 <bes d>4 <bes d>8 ~ |
	<bes d>8 <bes d>4 <bes d>8 <des f>4 <aes c>4 |
	<bes d>4 <bes d>4 <bes d>8 <bes d>4 <bes d>8 ~ |
	<bes d>8 <bes d>4 <bes d>8 <des f>4 <ees g>4 |
	f4 s4 s2 | s1 |
	\xNotesOn aes,8 aes8 aes8 aes8 \xNotesOff s2 |
	s1*2
	
	%% Vocals Solo
	s1*8
	s1*8
	s1*8 
	
	%% Vocals Verse 3
	s4 d bes s |
	des8 des8 bes8 des8 ~ des4 s4 |
	s4 s8 des8 f8 f8 bes,8 bes8 |
	bes8 bes8 bes8 bes8 ~ bes4 s4 |
	bes4 bes8 bes8 d8 d8 d8 d8 |
	aes4 aes8 f8 ~ f4 s4 |
	bes8 bes8 bes8 bes8 g8 g8 g8 g8 |
	aes4 aes8 f8 ~ f4 s4 |
	
	s4 d bes s |
	des8 des8 bes8 des8 ~ des4 s4 |
	s4 des8 des8 f8 f8 bes,8 bes8 |
	bes4 bes8 bes8 ~ bes4 bes8 bes8 |
	bes8 bes8 bes8 bes8 d8 d8 d8 d8 |
	aes4 aes8 f8 ~ f4 s4 |
	bes8 bes8 bes8 bes8 g8 g8 g8 g8 |
	aes4 aes8 f8 ~ f4 \xNotesOn aes'8 aes8 |
	aes8 aes8 s4 s2 |
	aes8 aes8 aes8 aes4 \xNotesOff s8 s4 |
	s4
} }
\layout {
	indent = #0
	\context {
		\Score
		\remove "Bar_number_engraver"
	}
} }