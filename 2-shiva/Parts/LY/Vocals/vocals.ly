theMelody = \relative c' {
  \set Staff.midiInstrument = #"tenor sax"
  \global \clef bass \key fis \major

  R1*9

  r2 r4 cis4
  cis4 ais4 r2 |
  r2 cis8 dis8 cis8 b8 |
  cis4 ais4 r2 |
  r2 e'4( dis4) |
  cis4 ais4 r2 |
  r2 cis8 dis8 cis8 b8 |
  cis4 ais4 r2 |

  R1 |
  r2 r4 r8 cis8 ~ |
  cis8 cis8 cis8 cis8 e4 cis4 |
  cis4 r2 r8 ais8 ~ |
  ais8 ais8 ais8 ais8 ais4 b4 |
  cis4 r4 r2 |
  r4 cis8 cis8 e8 fis4 cis8 ~ |
  cis4 r2 r8 gis8 |
  ais4 gis8 ais4 b8 cis8( ais8) |
  r2 r4 r8 gis8 |
  ais4 gis8 ais4 b8 cis8( ais8) |
  r2 r4 r8 gis8 |
  ais4 gis8 ais8( gis8) fis8 fis4 |

  R1*7 |
  r2 r4 cis'4  |
  cis4 ais4 r2 |
  r2 cis8 dis8 cis8 b8 |
  cis4 ais4 r2 |
  r2 dis8( e8 dis4) |
  ais4 ais4 r2 |
  r2 e'8 cis8 b8 a8 |
  b4 a4 r4 r8 ais8 |

  R1*2 |
  r8 cis8 cis8 cis8 e4 cis4 |
  cis4 r2 r8 ais8 ~ |
  ais8 ais8 ais8 ais8 ais4 b4 |
  cis4 r4 r2 |
  r4 cis8 cis8 e8 fis4 cis8 ~ |
  cis4 r2 r8 e8 |
  fis4 e8 fis4 e8 fis4 |
  r2 r4 r8 e8 |
  fis4 e8 fis4 e8 fis4 |
  r2 r4 r8 gis,8 |
  ais8 ais4 ais4 fis8 fis4 |

  R1*7 |
  r2 r4 cis'4
  cis4 ais4 r2 |
  r2 cis8 dis8 cis8 b8 |
  cis4 ais4 r2 |
  r2 e'4( dis4) |
  cis4 ais4 r2 |
  r2 cis8 dis8 cis8 b8 |
  cis4 ais4 r2 |

  R1*2 |
  r8 cis8 cis8 cis8 e4 cis4 |
  cis4 r4 r2 |
  r8 ais8 ais8 ais8 ais4 b4 |
  cis4 r4 r2 |
  r4 cis8 cis8 e8 fis4 cis8 ~ |
  cis4 r2 r8 gis8 |
  ais4 gis8 ais4 b8 cis8( ais8) |
  r2 r4 r8 gis8 |
  ais4 gis8 ais4 b8 cis8( ais8) |
  r2 r4 r8 gis8 |
  ais4 ais8 ais8( gis8) fis8 fis4

  R1*8
  \override Staff.TimeSignature #'stencil = ##f
%{
  \time 8/1
  \autoBeamOff
  \repeat volta 2 {
    r\longa
  }
  \time 4/4
  \autoBeamOn
%}
  R1*4

  \repeat unfold 3 {
    fis1 ~ |
    fis2( gis2)( |
    ais1) ~ |
    ais2)( b2)( |
    cis1) ~ |
    cis2( b8)( cis4)( b8)( |
    ais1) ~ |
    ais2( gis2) |
  }

  R1*8
  R1*6

  R1*1 |
  r8 cis8 cis8 cis8 e4 cis4 |
  cis4 r4 r2 |
  r8 ais8 ais8 ais8 ais4 b4 |
  cis4 r4 r2 |
  r4 cis8 cis8 e8 fis4 cis8 ~ |
  cis4 r2 r8 gis8 |
  ais4 gis8 ais4 b8 cis8( ais8) |
  r2 r4 r8 gis8 |
  ais4 gis8 ais4 b8 cis8( ais8) |
  r2 r4 r8 gis8 |
  ais4 ais8 ais8( gis8) fis8 fis4
}

theLyrics = {
  \set stanza = #"Verse 1: "
  \lyricmode {
    Hey Shi -- va,
    we don't real -- ly need ya.
    Hey __ Shi -- va
    we don't real -- ly need ya.
  }

  \set stanza = #"Chorus: "
  \lyricmode {
    Oh I fell in love to -- day
    Ooh it was the on -- ly way
    What else could I do
    when I burn up for you? __
    And I melt down for you __
    and I burn up __ for you
  }

  \set stanza = #"Verse 2: "
  \lyricmode {
    Hey Su -- zy,
    you don't real -- ly move me.
    Hey Su -- zy,
    you don't real -- ly move me, no.
  }

  \set stanza = #"Chorus: "
  \lyricmode {
    I fell in love to -- day
    Oh it was the on -- ly way
    What else could I do
    when I burn up for you?
    And I melt down for you
    and I burn up for you
  }

  \set stanza = #"Verse 3: "
  \lyricmode {
    Hey Dor' -- thy,
    you can real -- ly bore me.
    Hey __ Dor' -- thy,
    you can real -- ly bore me.
  }

  \set stanza = #"Chorus: "
  \lyricmode {
    I fell in love to -- day
    it was the on -- ly way
    What else could I do
    when I burn up for you?
    And I melt down for you
    and I burn up for you
  }

  \lyricmode {
    Oo __
    Oo __
    Oo __
  }

  \set stanza = #"Chorus: "
  \lyricmode {
    I fell in love to -- day
    it was the on -- ly way
    What else could I do
    when I burn up for you?
    And I melt down for you
    and I burn up for you
  }
}
