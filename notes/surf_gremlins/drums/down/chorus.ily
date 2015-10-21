\drummode {
  \set Score.repeatCommands = #'(start-repeat)
  \repeat unfold 2 {
    bd4. bd4 bd bd8 |
    bd4. bd4 bd bd8 |
  }
  bd4. bd4 bd bd8 ~ |
  bd8 bd4 bd bd bd8 ~ |
  bd8 bd4 bd bd bd8 ~ |
  \set Score.repeatCommands = #(list(list 'volta voltaFirst))
  bd8 bd4 bd8 bd bd bd bd |
  \once \override Score.RehearsalMark #'outside-staff-priority = #5000
  \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT
  \once \override Score.RehearsalMark #'break-align-symbols = #'(volta)
  \set Score.repeatCommands = #'((volta #f) (volta "2.") end-repeat)
  bd8 bd4 bd8 bd bd bd bd |
  \set Score.repeatCommands = #'((volta #f))

  bd2 r8 bd4. |
  bd4. bd4 ~ bd4. |
}