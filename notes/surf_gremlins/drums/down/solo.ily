\drummode {
  bd4. bd4 bd bd8 ~ |
  bd8 bd4 bd bd bd8 ~ | % \hideNotes
  %% \override Tie #'transparent = ##t
  \repeat unfold 5 {
    bd8 bd4 bd4 bd4 bd8 ~ |
  }
  %% \revert Tie #'transparent
  %% \unHideNotes
  bd8\repeatTie bd bd4:8
  %% \hideNotes
  bd8 bd bd bd |
  %% \unHideNotes

  \repeat volta 2 {
    bd2 r8 bd4 bd8 ~ |
    bd8 bd4 bd8 bd bd bd bd |
    bd2 r8 bd4 bd8 ~ |
    bd8 bd4 bd8 bd4 bd |
  }

  %% this part is a lot like the verse part,
  %% except with eighth note ride instead of the pedal hat
  bd2 bd8 bd4 bd8 ~ |
  bd8 bd4. bd8 bd4. |
  bd2 bd8 bd4 bd8 ~ |
  bd8 bd4 bd8 bd bd bd bd |
  bd2 bd8 bd4 bd8 ~ |
  bd8 bd4 bd8 bd bd4 bd8 |
  bd4. bd8 bd8 bd4 bd8 |
  bd4 bd bd bd8 bd |
}
