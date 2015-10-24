\relative c {
%{
  \override Staff.TimeSignature #'stencil = ##f
  \time 8/1
  \autoBeamOff
  \repeat volta 2 {
    r\longa
  }
  \time 4/4
  \autoBeamOn

  R1*12 % \break
%}

  \repeat volta 2 {
    fis2            ~ fis8 cis8 fis8 c8 ~ |
    c1                                  ~ |
    c4     fis,8 fis8 a8   b4        a8   |
    c8( b8 a8)   fis4      fis8 a8   fis8 |
  }

  \repeat volta 2 {
    fis'2           ~ fis8 cis8 fis8 c8 ~ |
    c1                                  ~ |
    c4     fis4       a8   b4        a8   |
    c8( b8 a8)  fis4       fis8 a4        |
  }

  fis8 fis8  a8   fis4      fis8 a8 fis8 ~ |
  fis8 fis8  a8   fis8 fis8 eis8 e8 eis8   |
  fis8 fis8  a8   fis4      fis8 a8 fis8 ~ |
  fis8 fis8  a8   b8   c8(  b8)  a4      ~ |
  a8   fis8  a8   fis4      fis8 a8 fis8 ~ |
  fis8 fis8  a8   fis8 fis8 eis8 e8 eis8   |
  fis8 fis8  a8   fis4      fis8 a8 fis8 ~ |
  fis8 fis8  a8   fis8 b8   b8   b8 a8     |

  b8(  c8)   c8   c8   c8   c8   c8   c8   |
  c8(  cis8) cis8 cis8 cis8 cis8 cis8 b8   |
  cis4       cis8 cis8 cis8 cis8 cis8 cis8 |
  cis4       cis8 cis8 cis8 cis8 c8   c8   |
  cis4       cis8 cis8 cis8 cis8 cis8 cis8 |
  cis8 cis8  cis8 cis8 cis8 cis8 e4        |
}
