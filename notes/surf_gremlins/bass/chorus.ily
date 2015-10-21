\relative c {
  \set Score.repeatCommands = #'(start-repeat)
  %% \set TabStaff.minimumFret = #13
  bes'4. bes4^\prall bes8 bes4 |
  %% \set TabStaff.minimumFret = #10
  a4. g4 des'8 des4 |
  bes4. bes4^\prall bes8 bes4 |
  %% \set TabStaff.minimumFret = #8
  aes4. f4 f8 f aes |
  %% \set TabStaff.minimumFret = #12
  bes4 bes8 bes d4 d4 |
  %% \set TabStaff.minimumFret = #8
  aes8 aes8 aes8 f4 f8 f aes8 |
  %% \set TabStaff.minimumFret = #10
  bes4 bes8 bes g4 g8 g |
  \set Score.repeatCommands = #(list(list 'volta voltaFirst))
  %% \set TabStaff.minimumFret = #8
  g8( aes) aes f4 f8 f8 aes8 |

  \once \override Score.RehearsalMark #'outside-staff-priority = #5000
  \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT
  \once \override Score.RehearsalMark #'break-align-symbols = #'(volta)
  \set Score.repeatCommands = #'((volta #f) (volta "2.") end-repeat)
  g8( aes) aes f4 ees'8 ees ees |
  \set Score.repeatCommands = #'((volta #f))
  des4 des8 des des des des des |
  des8 c4 ces4.-> r4 |
}
