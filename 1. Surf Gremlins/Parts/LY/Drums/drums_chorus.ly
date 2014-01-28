voltaFirst = \markup { 1. \text \italic { play 1x and 4x only } }

duChorus = \drummode {
	\set Score.repeatCommands = #'(start-repeat)
	\repeat unfold 2 {
		cymc4 <sn hhho>8 hhho8 hhho8 hhho8 <sn hhho>8 <sn hhho>16 sn16 |
		cymc4 <sn hhc>8 cymc4. sn16 sn sn8:16 |
	}
	\repeat unfold 3 {
		cymc4 <sn hhc> cymc <sn hhc>
	}
  \set Score.repeatCommands = #(list(list 'volta voltaFirst))
	cymc4 sn <sn cymc>16 sn sn8:16 sn8:16 sn:16 |
	\once \override Score.RehearsalMark #'outside-staff-priority = #5000
	\once \override Score.RehearsalMark #'self-alignment-X = #RIGHT
	\once \override Score.RehearsalMark #'break-align-symbols = #'(volta)
  \set Score.repeatCommands = #'((volta #f) (volta "2.") end-repeat)
	cymc4 sn <sn cymc>16 sn sn8:16 sn4:16 |
	\set Score.repeatCommands = #'((volta #f))
	
	cymc4 <sn hhho>8 hhho8 hhho8 hhho8 <sn hhho>8 hhho8 |
	<sn hhc>8 sn4 <sn cymc>4 sn4.:16 |
}

ddChorus = \drummode {
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