\relative c {
  \repeat percent 4 {
    fis8 fis fis fis fis e4   a,8 ~ |
    a8   a   a   a   a   b  b b     |
  }

  \repeat unfold 2 {
    \repeat volta 2 {
      \repeat unfold 2 {
        fis'8 fis fis fis fis e4   a,8 ~ |
        a8   a   a   a   a   b  b b     |
      }
    }
  }

  \repeat unfold 5 {
    fis'8 fis fis fis fis e4   a,8 ~ |
    a8   a   a   a   a   b  b b     |
  }
  \repeat percent 4 {
    fis1:8
  }

  d'4      d       b8   b4        fis8  ~ |
  fis8 fis fis fis4.         fis8 fis     |
  a4       a8  a   a    b4        fis8  ~ |
  fis8 fis fis fis4     fis8 fis  fis     |
  d'4       d       b8   b4        fis8 ~ |
  fis8 fis fis fis4.         fis8 fis     |
  a4       a8  a   a    b4        fis8  ~ |
  fis8 fis fis fis4     fis8 fis4         |
  a4       a8  a   a    b4        fis8  ~ |
  \override Staff.TimeSignature #'stencil = ##f
  \time 1/4
  fis4
}
