voltaFirst = \markup { 1. \text \italic { play 1x and 4x only } }

duChorus = \drummode {
	\set Score.repeatCommands = #'(start-repeat)
	\repeat unfold 2 {
		cymc4 <sn hhho>8 hhho8 hhho8 hhho8 <sn hhho>8 <sn hhho>16 sn16 |
		cymc4 sn8 cymc4. sn16 sn sn sn |
	}
	\repeat unfold 3 {
		cymc4 sn cymc sn
	}
  \set Score.repeatCommands = #(list(list 'volta voltaFirst))
	cymc4 sn <sn cymc>16 sn sn sn sn sn sn sn |
	\once \override Score.RehearsalMark #'outside-staff-priority = #5000
	\once \override Score.RehearsalMark #'self-alignment-X = #RIGHT
	\once \override Score.RehearsalMark #'break-align-symbols = #'(volta)
  \set Score.repeatCommands = #'((volta #f) (volta "2.") end-repeat)
	cymc4 sn <sn cymc>16 sn sn sn sn sn sn sn |
	\set Score.repeatCommands = #'((volta #f))
	
	cymc4 <sn hhho>8 hhho8 hhho8 hhho8 <sn hhho>8 <sn hhho>16 sn16 |
	<sn cymc>8 <sn cymc>4 <sn cymc>4 sn8 sn sn |
}

ddChorus = \drummode {
	\set Score.repeatCommands = #'(start-repeat)
	\repeat unfold 2 {
		bd4 s8 bd4 bd8 s4 |
		bd4. bd4. s4 |
	}
	bd4 s8 bd4 bd8 s8 bd ~ |
	bd8 bd8 s8 bd4 bd8 s8 bd8 ~ |
	bd8 bd8 s8 bd4 bd8 s8 bd8 ~ |
  \set Score.repeatCommands = #(list(list 'volta voltaFirst))
	bd8 bd8 s8 bd8 s2 |
	\once \override Score.RehearsalMark #'outside-staff-priority = #5000
	\once \override Score.RehearsalMark #'self-alignment-X = #RIGHT
	\once \override Score.RehearsalMark #'break-align-symbols = #'(volta)
  \set Score.repeatCommands = #'((volta #f) (volta "2.") end-repeat)
%%%%
	bd8 bd8 s8 bd8 s2 |
	\set Score.repeatCommands = #'((volta #f))
	
	bd4 s4 bd8 bd s4 |
	bd4. bd4 s4. |
}