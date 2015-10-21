\include "common/bend.ly"
\include "globals/surf_gremlins.ily"

instrumentName = "Vocals"

vocalsNotes    = {
  \global \clef treble \Key
  \include "notes/surf_gremlins/vocals/music/intro.ily"
  \include "notes/surf_gremlins/vocals/music/verse.ily"
}

#(if (defined? 'lalilyCreate)
     #{
       \optionsAdd opts part.vocals.vocname "voxOne"
       \optionsAdd opts part.vocals.template \Path lalily.vocal
       \optionsAdd opts part.vocals.staff-mods \with {
         %% instrumentName = \instrumentName
         midiInstrument = #"tenor sax"
         %% \remove "Staff_performer"
         \RemoveEmptyStaves
         \override VerticalAxisGroup #'remove-first = ##t
       }
       \putMusic vocals.music \vocalsNotes
       \putMusic vocals.lyrics {
         \include "notes/surf_gremlins/vocals/lyrics/verse/one.ily"
       }
     #}
     #{ #})
