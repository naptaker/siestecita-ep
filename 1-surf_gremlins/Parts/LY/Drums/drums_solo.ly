duSolo = \drummode {
	cymc4 <sn hhho> hhho <sn hhho>
	\repeat unfold 6 {
		hhho4 <sn hhho> hhho <sn hhho>
	}
	cymc16 sn sn8:16 \repeat unfold 3 { sn4:16 } |
	\repeat volta 2 {
		cymc4 <sn cymr>8 cymr cymr cymr <sn cymr> cymr |
		cymr8 cymr <sn cymr> <sn cymr> cymc4 <sn cymc>8 sn:16 |
		cymc4 <sn cymr>8 cymr cymr cymr <sn cymr> cymr |
		cymr8 cymr <sn cymr> cymr <sn cymc>16 sn sn sn toml toml toml tomfh |
	}
	
	cymr4 <sn cymc>8 <sn cymr>16 sn cymr8 cymr <sn cymr> cymr |
	cymr8 cymr <sn cymr> <sn cymr>16 sn cymr8 cymr <sn cymr> <sn cymr> |
	cymr8 cymr <sn cymr> <sn cymr>16 sn cymr8 cymr <sn cymr> cymr |
	cymr8 cymr <sn cymr> <sn cymr>16 sn cymr8 cymr <sn cymr> <sn cymr> |
	cymc4 <sn cymr>8 <sn cymr>16 sn cymr8 cymr <sn cymr> cymr |
	cymr8 cymr <sn cymr> <sn cymr>16 sn cymr8 cymr <sn cymr> <sn cymr> |
	cymr8 cymr <sn cymr> <sn cymr>16 sn cymr8 cymr <sn cymr>8 cymr |
	cymc16 sn sn sn tomh sn sn sn tomh tomh toml toml toml tomfh tomfh tomfh |
}

ddSolo = \drummode {
	bd4. bd4 bd bd8 ~ | 
	bd8 bd4 bd bd bd8 ~ | % \hideNotes
%	\override Tie #'transparent = ##t
	\repeat unfold 5 {
		bd8 bd4 bd4 bd4 bd8 ~ |
	}
%	\revert Tie #'transparent
%	\unHideNotes
	bd8\repeatTie bd bd4:8
		% \hideNotes
		bd8 bd bd bd |
		% \unHideNotes
	
	\repeat volta 2 {
		bd2 r8 bd4 bd8 ~ |
		bd8 bd4 bd8 bd bd bd bd |
		bd2 r8 bd4 bd8 ~ |
		bd8 bd4 bd8 bd4 bd |
	}
	
	% this part is a lot like the verse part, except with eighth note ride instead of the pedal hat
	bd2 bd8 bd4 bd8 ~ |
	bd8 bd4. bd8 bd4. |
	bd2 bd8 bd4 bd8 ~ |
	bd8 bd4 bd8 bd bd bd bd |
	bd2 bd8 bd4 bd8 ~ |
	bd8 bd4 bd8 bd bd4 bd8 |
	bd4. bd8 bd8 bd4 bd8 |
	bd4 bd bd bd8 bd |
}
