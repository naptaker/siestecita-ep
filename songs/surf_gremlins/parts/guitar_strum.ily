\gridPutMusic "guitar strum" 2 \relative c {
  \section
  \repeat volta 4 {  
    bes4 \deadNotesOn bes8 \deadNotesOff bes4 bes8 bes bes |
    a4 \deadNotesOn a8 \deadNotesOff g4 des'8 des \parenthesize des |
    bes4 \deadNotesOn bes8 \deadNotesOff bes4 bes8 bes bes |
    aes4 \deadNotesOn aes8 \deadNotesOff f4 f8 f f |
    bes4 bes8 bes d4 d8 d |
    aes4 \deadNotesOn aes8 \deadNotesOff f4 f8 f f |
    bes4 bes8 bes g4 g8 g |
    \alternative {
      \volta 1,4
      { g8( aes) aes f4 f8 f4 | }
      \volta 2,3
      { g8( aes) aes f4 ees'8 ees \parenthesize ees | }
    }
  }
  \set Score.repeatCommands = #'((volta #f))
  des4 des8 des des des des des |
  des c4 ces4.-> r4 |
}

\gridPutMusic "guitar strum" 3 \relative c {
  \section
  \repeat volta 2 {
    bes4 \deadNotesOn bes8 \deadNotesOff bes4
    \deadNotesOn bes8 \deadNotesOff bes  bes ~ |
    bes bes bes4 des ees |
    bes4 \deadNotesOn bes8 \deadNotesOff bes4
    \deadNotesOn bes8 \deadNotesOff bes  bes ~ |
    bes bes bes4 des a |
    bes4 \deadNotesOn bes8 \deadNotesOff bes4
    \deadNotesOn bes8 \deadNotesOff bes  bes ~ |
    bes bes bes4 des aes |
    f4 \deadNotesOn f8 \deadNotesOff f4 \deadNotesOn f8 \deadNotesOff f e ~ |
    \alternative {
      { e8 e e e16 e e8 f f f | }
      { e8\repeatTie e e e4 ees'8 ees \parenthesize ees | }
    }
  }
  des4 des8 des des des des des |
  des8 c4 ces4. r4 |
  \toCoda \section
}

\gridPutMusic "guitar strum" 5 \relative c {
  \once \override Score.TimeSignature.stencil = ##f
  \time 1/4
  bes4
  \bar "|."
}
