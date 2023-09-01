\gridPutMusic "meta" 1 {
  \global
  s1*8
  \break
}

\gridPutMusic "meta" 2 {
  \section
  \sectionLabel \markup { \musicglyph #"scripts.segno" }
  s1*4 \break
  s1*4 \break
  s1*3 \break
  \theCoda \section
}

\gridPutMusic "meta" 3 {
  s1*5 \break
  s1*6 \break
}

\gridPutMusic "meta" 4 {
  s1*4 \break
  s1*4 \break
  s1*4 \break
  s1*4 \break
  s1*4 \break
  \section
}

\gridPutMusic "meta" 5 {
  \once \override Score.TimeSignature.stencil = ##f
  \time 1/4
  s4
  \bar "|."
}
