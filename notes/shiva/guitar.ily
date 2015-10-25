\include "common/bend.ily"
\include "globals/shiva.ily"

instrumentName = "Guitar"

guitarNotes    = {
  \compressFullBarRests
  \global
  \include "notes/shiva/guitar/intro.ily"
  \repeat volta 3 {
    R1*8  % verse
    R1*12 % chorus
  }
  \alternative {
    { \include "notes/shiva/guitar/solo.ily"   }
    { \include "notes/shiva/guitar/bridge.ily" }
    { R1*8 % drum vamp
      R1*8 % bass vamp
      \noBreak                                 }
  }
  \include "notes/shiva/guitar/ending.ily"
}

rhythmNotes    = \relative c {
  R1*10 % intro
  \repeat volta 3 {
    \include "notes/shiva/guitar/verse.ily"
    \include "notes/shiva/guitar/chorus.ily"
    \include "notes/shiva/guitar/chorus/ending.ily"
  }
  \alternative {
    { R1*8 } % solo
    { R1*8 } % bridge
    { R1*8   % drum vamp
      R1*8 } % bass vamp
  }
  R1*30 % ending

  d4        d4        b8   b4        fis8 ~ |
  fis8 fis8 fis8 fis4      e8   fis8 e8     |
  a4        a8   a8   a8   b4        fis8 ~ |
  fis8 fis8 fis8 fis8 fis8 eis8 e8   eis8   |
  d'4       d4        b8   b4        fis8 ~ |
  fis8 fis8 fis8 fis4      e8   fis8 e8     |
  a4        a8   a8   a8   b4      fis8 ~ |
  fis8 fis8 fis8 fis8 fis8 eis8 e8 eis8   |
  a4        a8   a8   a8   b4      fis8 ~ |
  \override Staff.TimeSignature #'stencil = ##f
  \time 1/4
  fis4
  \bar "|."
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
    \putMusic guitar-strum { \improvisationOn \rhythmNotes }
  #}
  #{ #})
