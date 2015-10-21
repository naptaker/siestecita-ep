instrumentName = "Drums"

drumsUpNotes   = \drummode {
  \override Rest #'staff-position = #0
  \override MultiMeasureRest #'Y-offset = #1
  \voiceOne \stemUp
  \include "notes/surf_gremlins/drums/up/intro.ily"
  \include "notes/surf_gremlins/drums/up/chorus.ily"
  \include "notes/surf_gremlins/drums/up/verse.ily"
  \include "notes/surf_gremlins/drums/up/solo.ily"
  \include "notes/surf_gremlins/drums/up/ending.ily"
}

drumsDownNotes = \drummode {
  \voiceTwo
  \include "notes/surf_gremlins/drums/down/intro.ily"
  \include "notes/surf_gremlins/drums/down/chorus.ily"
  \include "notes/surf_gremlins/drums/down/verse.ily"
  \include "notes/surf_gremlins/drums/down/solo.ily"
  \include "notes/surf_gremlins/drums/down/ending.ily"
}

#(if (defined? 'lalilyCreate)
     #{
       \optionsAdd opts part.drums.template \Path lalily.drums
       \optionsAdd opts part.drums.staff-mods \with {
         drumStyleTable = #(alist->hash-table preston-drums)
       }
       \putMusic drums.up \drumsUpNotes
       \putMusic drums.down \drumsDownNotes
     #}
     #{ #})
