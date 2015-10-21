duEnding = \drummode {
  \once \override Score.TimeSignature #'stencil = ##f \time 1/4
  <sn cymc>4 \bar "|."
}

ddEnding = \drummode {
  \once \override Score.TimeSignature #'stencil = ##f \time 1/4
  bd4 \bar "|."
}