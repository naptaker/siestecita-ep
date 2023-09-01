\include "common/bend.ily"

instrumentName = "Bass"

bassNotes      = {
  \global
  \hide StringNumber
  \include "notes/surf_gremlins/bass/intro.ily"
  \include "notes/surf_gremlins/bass/chorus.ily"
  \include "notes/surf_gremlins/bass/verse.ily"
  \include "notes/surf_gremlins/bass/solo.ily"
  \include "notes/surf_gremlins/bass/ending.ily"
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
