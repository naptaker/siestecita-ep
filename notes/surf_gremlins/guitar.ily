\include "common/bend.ly"
\include "globals/surf_gremlins.ily"

instrumentName = "Guitar"

guitarNotes    = {
  \global
  \hide StringNumber
  \include "notes/surf_gremlins/guitar/intro.ily"
  R1*11     % chorus
  R1*9 s1*2 % verse
  \include "notes/surf_gremlins/guitar/solo.ily"
  \include "notes/surf_gremlins/guitar/ending.ily"
  \bar "|."
}

rhythmNotes    = \relative c {
%{
  \override Staff.StaffSymbol.line-count = #1
  \override Staff.Beam.neutral-direction = #1
  \override Staff.Stem.neutral-direction = #1
  \override Staff.VoltaBracket.staff-padding = #3
  \set createSpacing = ##t
  \set squashedPosition = #0
%}
  R1*8 % intro
  \improvisationOn
  \include "notes/surf_gremlins/guitar/chorus.ily"
  \include "notes/surf_gremlins/guitar/verse.ily"
  R1*8
  \repeat volta 2 { s1*4 }
  R1*8
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
