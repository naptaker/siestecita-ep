\include "../../../../include/preamble.ly"
\include "../../Score/LY/header.ly"
\include "../../Parts/LY/Bass/bass.ly"


#(set-global-staff-size 20)
#(set-default-paper-size "letter" 'portrait)
\paper {
  max-systems-per-page = 7
  bottom-margin = .5\in
}

\header {
  instrument = "Bass"
  %% copyright = "© 2013 Naptaker"
}

voltaOneThree = \markup { 1. 3. }

bassScore = {
  \set Staff.midiInstrument = #"electric bass (finger)"
%{
  \once \override Staff.Clef #'break-visibility =
  #begin-of-line-invisible
  \once \override Staff.Clef #'stencil = ##f
  \once \override Score.Clef #'stencil = ##f
%}
  <<
    \relative c {
      \clef percussion

      <<
        { \skip 2 }
        \new CueVoice {
          \set Staff.middleCPosition = #6
          \stemUp
          r4^"drums" e r e8 r | r4 e8 r r16 e[ e e] r16 e[ e e]
        }
        \new CueVoice {
          \stemDown a,2 a8 a4 a8 ~ a a4 a8 a4 a4
        }
        %% bd4 sn bd8 bd sn bd ~ bd bd sn bd sn2:16
      >>
      %% bassIntro   = \bassRiffABACABAD

      \clef bass
      \Key
      \theSegno
      \bassRiffA
      \set Score.repeatCommands =
      #(list (list 'volta "1. 3." ) )
      \bassRiffB
      \set Score.repeatCommands =
      #(list (list 'volta "2." ) 'end-repeat)
      \bassRiffC
      \set Score.repeatCommands =
      #'((volta #f) (volta "4.") end-repeat)
      \bassRiffD
      \set Score.repeatCommands = #'((volta #f))

      %% bassVerse   = \bassRiffABACABE
      \mark \default
      \bassRiffA
      \set Score.repeatCommands =
      #(list (list 'volta "1. 3." ) )
      \bassRiffB
      \set Score.repeatCommands =
      #(list (list 'volta "2." ) 'end-repeat)
      \bassRiffC
      \set Score.repeatCommands =
      #'((volta #f) (volta #f) end-repeat)
      \bassRiffE

      \mark \default
      %% bassChorusA = \bassRiffFGHIFGHKHKHL
      %% bassChorusB = \bassRiffFGHIFGHKHKHO
      \repeat volta 2 { \bassRiffFGH }
      \alternative {  { \bassRiffI }
                      { \bassRiffK }  }
      \once \override Score.RehearsalMark #'break-visibility =
      #begin-of-line-invisible
      \once \override Score.RehearsalMark #'padding = #4
      \mark \markup { \musicglyph #"scripts.coda" }

      \mark \default
      \repeat volta 2 { \bassRiffH }
      \alternative {  { \bassRiffK }
                      { \bassRiffL }  }


      \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT
      \once \override Score.RehearsalMark #'break-visibility =
      #begin-of-line-invisible
      \once \override Score.RehearsalMark #'direction = #DOWN
      \once \override Score.RehearsalMark #'font-size = #-2
      \mark \markup { "D.S. al Coda" }

%{
      %% bassBridge   = \bassRiffABACABAD
      \mark \default

      \bassRiffA
      \set Score.repeatCommands =
      #(list (list 'volta "1. 3." ) )
      \bassRiffB
      \set Score.repeatCommands =
      #(list (list 'volta "2." ) 'end-repeat)
      \bassRiffC
      \set Score.repeatCommands =
      #'((volta #f) (volta "4.") end-repeat)
      \bassRiffD
      \set Score.repeatCommands = #'((volta #f))



                                % bassVerse   = \bassRiffABACABE
      \mark \default
      \bassRiffA
      \set Score.repeatCommands =
      #(list (list 'volta "1. 3." ) )
      \bassRiffB
      \set Score.repeatCommands =
      #(list (list 'volta "2." ) 'end-repeat)
      \bassRiffC
      \set Score.repeatCommands =
      #'((volta #f) (volta #f) end-repeat)
      \bassRiffE
%}
      \bassChorusB \bassEnding
    }
  >>
}


\score {
  <<
    <<
      \new Staff {
        \override StringNumber #'stencil = ##f
        \compressFullBarRests
        \override MultiMeasureRest #'expand-limit = #1
        \Tempo \clef bass \bassScore
      }

      \new Staff \with {
        \RemoveEmptyStaves \override VerticalAxisGroup #'remove-first = ##t
      } << \new Voice {
        %% R1*2 \break
        %% R1*4 \break
        R1*6 \break
        R1*5 \break
        R1*5 \break
        R1*3 \break
        R1*4 \break
        R1*5 \break
      } >>
    >>
  >>

  \layout {
    indent = 0\in
    ragged-last = ##t
    \context {
      \Score
      %% \consists #(bars-per-line-engraver '(4))
      \scoreMagic
    }
  }
}

\score {
  \unfoldRepeats \articulate
  <<
    << \new Staff { \Tempo \bassGuitar } >>
  >>
  \midi { }
}
