\include "common/version.ily"
\include "common/preamble.ily"
\include "headers/surf_gremlins.ily"
\include "globals/surf_gremlins.ily"
\include "notes/surf_gremlins/guitar.ily"
%% \include "scores/surf_gremlins.ly"

partNotes = { \clef "treble_8" \Key \guitarNotes }
midiNotes = \guitarNotes


%% \callTemplate #'(/ lalily instrument electric-guitar) guitar #'()
%% \lalilyTest
