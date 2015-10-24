\include "common/bend.ily"
\include "globals/alone.ily"

instrumentName = "Guitar"

guitarNotes    = {
  \compressFullBarRests
  \global
  \include "notes/alone/guitar/intro.ily"
  \repeat volta 3 {
    R1*8  % verse
    R1*12 % chorus
  }
  \alternative {
    { \include "notes/alone/guitar/solo.ily"   }
    %% R1*8  % verse
    %% R1*12 % chorus
    { \include "notes/alone/guitar/bridge.ily" }
    { R1*12 \noBreak                           } % bass solo
  }
  %% \pageBreak
  %% \hideMultiRests
  %% R1*12 % chorus
  \include "notes/alone/guitar/ending.ily"
  \bar "|."
}

rhythmNotes    = \relative c {
  R1*10 % intro
  \repeat volta 3 {
    \include "notes/alone/guitar/verse.ily"
    \include "notes/alone/guitar/chorus.ily"
    \include "notes/alone/guitar/chorus/ending.ily"
  }
  \alternative {
    { R1*8  } % solo
    { R1*8  } % bridge
    { R1*12 } % bass solo
  }
  R1*22 % ending
  %% chorus
  %% a4 a8 a8 a8 b4 fis8 ~ |
  %% \override Staff.TimeSignature #'stencil = ##f
  %% \time 1/4
  %% fis4
  %% \bar "|."
}

#(if (defined? 'lalilyCreate)
  #{
    \optionsAdd opts part.guitar.template \Path lalily.instrument.electric-guitar
    \optionsAdd opts part.guitar.staff-mods \with {
      %% instrumentName = "Guitar"
      midiMaximumVolume = 0.6
      %% \remove "Staff_performer"
      \RemoveEmptyStaves
    }
    \putMusic guitar \guitarNotes

    \optionsAdd opts part.guitar-strum.template \Path lalily.instrument.electric-guitar
    \optionsAdd opts part.guitar-strum.staff-context "RhythmicStaff"
    \optionsAdd opts part.guitar-strum.staff-mods \with {
      instrumentName = "Guitar"
      midiMaximumVolume = 0.6
      %% \remove "Staff_performer"
      \RemoveEmptyStaves
      \override VerticalAxisGroup #'remove-first = ##t
    }
    \putMusic guitar-strum \rhythmNotes
  #}
  #{ #})
