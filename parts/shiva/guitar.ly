\include "common/version.ily"
\include "common/preamble.ily"
\include "headers/shiva.ily"
\include "globals/shiva.ily"
%% \include "notes/shiva/guitar.ily"
\include "scores/shiva.ly"

partNotes = { \clef "treble_8" \Key \guitarNotes }
midiNotes = \guitarNotes

#(if (defined? 'lalilyTest)
  #{
    \lalilyTest
  #}
  #{ #})