\include "globals/shiva.ily"

instrumentName = "Bass"

bassNotes    = {
  \compressFullBarRests
  \global
  \include "notes/shiva/bass/intro.ily"
  \repeat volta 3 {
    \include "notes/shiva/bass/verse.ily"
    \include "notes/shiva/bass/chorus.ily"
  }
  \alternative {
    { \include "notes/shiva/bass/bridge.ily" }
    { \include "notes/shiva/bass/bridge.ily" }
    {
      R1*8
      \repeat percent 8 { fis,1:8 }
    }
  }
  \include "notes/shiva/bass/ending.ily"
  \bar "|."
}

#(if (defined? 'lalilyCreate)
     #{
       \optionsAdd opts part.bass.template \Path lalily.instrument.bass-guitar
       \optionsAdd opts part.bass.staff-mods \with {
         \RemoveEmptyStaves
         \override VerticalAxisGroup #'remove-first = ##t
       }
       \putMusic bass \bassNotes
     #}
     #{ #})
