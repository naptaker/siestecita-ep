\gridPutMusic "drums up" 1 \drummode {
  \override Rest.staff-position = #0
  \override MultiMeasureRest.Y-offset = #1
  \voiceOne \stemUp
  R1 | r2 r8 <tomfh sn> <tomfh sn> <tomfh sn> |
  cymc4 r r2 | r2 r8 <tomfh sn> <tomfh sn> <tomfh sn> |
  cymc4 r r2 | r2 r8 <tomfh sn> <tomfh sn> <tomfh sn> |
  cymc4 r r2 |
  \repeat unfold 4 { cymc16 sn sn sn } |
}

\gridPutMusic "drums down" 1 \drummode {
  \voiceTwo
  s1*2 |
  bd4-> s s s | s1 |
  bd4 s s s | s1 |
  bd4 s s s | \repeat unfold 4 { bd4 } |
}

\gridPutMusic "drums up" 2 \drummode {
  \section
  \repeat volta 4 {
    %% \repeat unfold 2 {
    cymc4 <sn hhho>8 hhho8 hhho8 hhho8 <sn hhho>8 <sn hhho>16 sn16 |
    cymc4 <sn hhc>8 cymc4. sn16 sn sn8:16 |
    %% }
    cymc4 <sn hhho>8 hhho8 hhho8 hhho8 <sn hhho>8 <sn hhho>16 sn16 |
    cymc4 <sn hhc>8 cymc4. sn16 sn sn8:16 |
    %% \repeat unfold 3 {
    cymc4 <sn hhc> cymc <sn hhc> |
    %% }
    cymc4 <sn hhc> cymc <sn hhc> |
    cymc4 <sn hhc> cymc <sn hhc> |
    \alternative {
      \volta 1,4
      { cymc4 sn <sn cymc>16 sn sn8:16 sn8:16 sn:16 | }
      \volta 2,3
      { cymc4 sn <sn cymc>16 sn sn8:16 sn4:16 | }
    }
  }
  \set Score.repeatCommands = #'((volta #f))
  cymc4 <sn hhho>8 hhho8 hhho8 hhho8 <sn hhho>8 hhho8 |
  <sn hhc>8 sn4 <sn cymc>4 sn4.:16 |
}

\gridPutMusic "drums down" 2 \drummode {
  \section
  \repeat volta 4 {
    \repeat unfold 2 {
      bd4. bd4 bd bd8 |
      bd4. bd4 bd bd8 |
    }
    bd4. bd4 bd bd8 ~ |
    bd8 bd4 bd bd bd8 ~ |
    bd8 bd4 bd bd bd8 ~ |
    \alternative {
      \volta 1,4
      { bd8 bd4 bd8 bd bd bd bd | }
      \volta 2,3
      { bd8 bd4 bd8 bd bd bd bd | }
    }
  }
  \set Score.repeatCommands = #'((volta #f))
  bd2 r8 bd4. |
  bd4. bd4 ~ bd4. |
}

\gridPutMusic "drums up" 3 \drummode {
  \section
  \repeat volta 2 {
    cymr4 sn tomfh8 tomfh sn tomfh ~ |
    tomfh tomfh sn4 <toml cymr>16 tomfh sn8 <sn cymr>16 sn sn8:16 |
    \repeat unfold 2 {
      cymr4 sn8 tomfh tomfh tomfh sn tomfh ~ |
      tomfh tomfh sn4 <toml cymr>16 tomfh8. <sn cymr>8 sn:16 |
    }
    cymc4 <sn hhho> hhho <sn hhho>
    \alternative {
      { hhho4 <sn hhho>8 sn:16 cymc16 sn sn8:16 sn4:16 }
      { hhho4 <sn hhho>8 sn:16 cymc16 sn sn8:16 sn4:16 }
    }
  }

  cymc4 <sn hhho>8 hhho8 hhho8 hhho8 <sn hhho>8 hhho8 |
  <sn hhc>8 sn4 <sn cymc>4 sn4.:16 |
}

\gridPutMusic "drums down" 3 \drummode {
  \section
  \repeat volta 2 {
    bd4 hhp hhp8 bd hhp bd |
    hhp8 bd hhp bd bd bd <hhp bd> bd |
    bd4 hhp hhp8 bd hhp bd |
    hhp8 bd hhp bd bd bd <hhp bd> bd | % \hideNotes
    bd4 hhp hhp8 bd hhp bd |
    hhp8 bd hhp bd bd bd <hhp bd> bd |
    %% \unHideNotes

    bd2 r8 bd4 bd8 ~ |
  }
  \alternative {
    { bd8 bd4 bd8 <hhp bd>4 bd | }
    { bd8\repeatTie bd4 bd8 <hhp bd>4 bd | }
  }

  bd2 r8 bd4. |
  bd4. bd4 ~ bd4. |
}

\gridPutMusic "drums up" 4 \drummode {
  \section
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

\gridPutMusic "drums down" 4 \drummode {
  \section
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