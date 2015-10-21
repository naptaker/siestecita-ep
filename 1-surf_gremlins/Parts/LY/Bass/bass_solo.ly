stoneWank = \relative c {
  bes'4 \bendOn \holdBend bes4.(
  %% \once \override TabNoteHead #'transparent = ##t
  c8) bes4 \bendOff |
  bes4.^\prall bes4-> bes8 aes a |
  bes4 \bendOn \holdBend bes4.(
  %% \once \override TabNoteHead #'transparent = ##t
  c8) bes4 \bendOff |
  bes8 aes f aes4 f8 ees des |
}

bassSolo = \relative c {
  bes'4 bes4. \glissando c8 bes4 |
  bes4.^\prall bes4-> bes8 aes a |
  bes4 bes4. \glissando c8 bes4 |
  bes8 aes f aes4 f8 ees des |

  %% \set TabStaff.minimumFret = #4
  bes4-. bes4 bes8 bes4 bes8 ~ |
  bes8 bes bes bes4 bes8 aes bes |
  des4 bes4 aes8( bes) des bes ~ |
  bes8 bes aes( bes) des bes aes( a) |

  \repeat volta 2 {
    \repeat unfold 2 {
      bes4 bes8 bes des bes aes bes ~ |
      bes bes bes bes des des ees des |
    }
  }
  \repeat unfold 4 {
    bes4 bes8 bes des bes aes bes ~ |
    bes bes bes bes des des ees des |
  }
}
