\gridPutMusic "chords" 2 \chordmode {
  bes1 | a4. g4 des4. |
  bes1 | aes4. f4 s4. |
  bes2 d2 | aes4. f4 s4. |
  bes2 g2 | s8 aes4 f4 s4. | s8 aes4 f4 ees4. |
  des1 | des8 c4 ces4. s4 |
}

\gridPutMusic "chords" 3 \chordmode {
  \repeat volta 2 {
    bes1 | s2 des4 ees |
    bes1 | s2 des4 a |
    bes1 | s2 des4 aes |
    f2 s4 s8 e8 |
    \alternative {
      { s2 s8 f4. | }
      { s2 s8 ees4. | }
    }
  }
  des1 | s8 c4 ces4. s4 |
}

\gridPutMusic "chords" 5 \relative c {
  \time 1/4
  bes4
}
