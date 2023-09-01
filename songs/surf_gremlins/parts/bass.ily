\gridPutMusic "bass" 2 \relative c, {
  \section
  \Key
  \repeat volta 4 {
    bes'4. bes4^\prall bes8 bes4 |
    a4. g4 des'8 des4 |
    bes4. bes4^\prall bes8 bes4 |
    aes4. f4 f8 f aes |
    bes4 bes8 bes d4 d4 |
    aes8 aes8 aes8 f4 f8 f aes8 |
    bes4 bes8 bes g4 g8 g |  
    \alternative {
      \volta 1,4
      { g8( aes) aes f4 f8 f8 aes8 | }
      \volta 2,3
      {
        g8( aes) aes f4 ees'8 ees ees |
      }
    }
  }
  \set Score.repeatCommands = #'((volta #f))
  des4 des8 des des des des des |
  des8 c4 ces4.-> r4 |
}

\gridPutMusic "bass" 3 \relative c, {
  \section
  \include "notes/bass-III.ily"
  \toCoda
}

\gridPutMusic "bass" 4 \relative c, {
  \section
  \include "notes/bass-IV.ily"
}

\gridPutMusic "bass" 5 \relative c, {
  \section
  \once \override Score.TimeSignature.stencil = ##f
  \time 1/4
  bes4->
  \bar "|."
}
