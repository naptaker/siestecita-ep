gtrVerse = \relative c {
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
  }
  \alternative {
    { e8 e e e16 e e8 f f f | }
    { e8\repeatTie e e e4 ees'8 ees \parenthesize ees | }
  }
  des4 des8 des des des des des |
  des8 c4 ces4. r4 |
  %% \once \override Score.RehearsalMark #'break-align-symbols = #'(staff-bar)
  %% \once \override Score.RehearsalMark #'self-alignment-X = #right
  \toCoda \bar "||" \stopStaff \hideNotes
}
