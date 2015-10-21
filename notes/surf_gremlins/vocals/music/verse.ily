\relative c' {
  \startStaff
  \slurDashed

  r4 \set melismaBusyProperties = #'() d8 ( d8 ) \unset melismaBusyProperties bes4 r4 |
  des8 des8 bes8 des8 ~ des4 r4 |
  r4 \parenthesize des8 des8 f8 f8 \parenthesize bes,8 bes8 |
  \set melismaBusyProperties = #'()
  \parenthesize bes8 ( bes8 ) bes8 bes8 ( bes4 ) \unset melismaBusyProperties \startParenthesis bes8 \endParenthesis bes8 |
  \set melismaBusyProperties = #'()
  \parenthesize bes8 ( bes8 ) bes8 bes8 d8 d8 d8 ( d8 ) |
  aes8 (aes 8) \unset melismaBusyProperties \parenthesize aes8 f8 ~ f4 r8 \parenthesize bes8 |
  bes8 bes8 bes8 bes8 g8 g8 g8 g8 |
  aes4 aes8 f8 ~ f4 r4            |

  aes4 aes8 f8 ~ f4 \xNotesOn aes'8 aes8        |
  aes8 aes8 r4 r2                               |
  aes8 aes8 aes8 aes4 aes8 aes8 aes8 \xNotesOff |
}
