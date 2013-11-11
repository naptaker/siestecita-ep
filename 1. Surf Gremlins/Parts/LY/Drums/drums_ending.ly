duEnding = \drummode {
  \cadenzaOn \once \override Score.TimeSignature #'stencil = ##f
  \time 1/16 s16 \bar "" \cadenzaOff
  \once \override Score.TimeSignature #'stencil = ##f \time 1/4
  <sn cymc>4 \bar "|."
}

ddEnding = \drummode {
  \cadenzaOn \once \override Score.TimeSignature #'stencil = ##f
  \time 1/16 s16 \bar "" \cadenzaOff
  \once \override Score.TimeSignature #'stencil = ##f \time 1/4
  
  bd4 \bar "|."
}