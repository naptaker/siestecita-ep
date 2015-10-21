\relative c {
  %% \set TabStaff.minimumFret = #5
  \repeat volta 2 {
    bes4 bes8 bes des\3 bes aes\4 bes ~ |
    bes bes bes bes des8\3 des\3 ees\3 des\3 |
    bes4 bes8 bes des\3 bes a\4 bes ~ |
    bes bes bes bes des8\3 des\3 ees\3 des\3 |
    bes4 bes8 bes des\3 bes aes\4 bes ~ |
    bes bes' aes f aes f ees e |
    f4 f8. e16 f8 aes f e ~ |
  }
  \alternative {
    { e8 e e e e f f4 | }
    { e8\repeatTie e e e e f f aes | }
  }
  %% \set TabStaff.minimumFret = #11
  des4 des8 des des des des des |
  %% \set TabStaff.minimumFret = #9
  des8 c4 ces4.-> r4 |
}