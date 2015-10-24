\include "common/version.ily"
\include "common/preamble.ily"
\include "headers/alone.ily"
\include "globals/alone.ily"
%% \include "notes/alone/guitar.ily"
\include "scores/alone.ly"

partNotes = { \clef "treble_8" \Key \guitarNotes }
midiNotes = \guitarNotes

#(if (defined? 'lalilyTest)
  #{
    \lalilyTest
  #}
  #{ #})