\include "../../../../include/bend.ly"

\include "predefined-guitar-fretboards.ly"
\addChordShape #'b #guitar-tuning
  #'((barre 6 3 7) (place-fret 6 7) (place-fret 5 9)
     (place-fret 4 9) (place-fret 3 8) (mute 2) (mute 1))
\storePredefinedDiagram #default-fret-table \chordmode { b }
  #guitar-tuning #(chord-shape 'b guitar-tuning)

\addChordShape #'a #guitar-tuning
  #'((barre 6 3 5) (place-fret 6 5) (place-fret 5 7)
     (place-fret 4 7) (place-fret 3 6) (mute 2) (mute 1))
\storePredefinedDiagram #default-fret-table \chordmode { a }
  #guitar-tuning #(chord-shape 'a guitar-tuning)
%{
\addChordShape #'a #guitar-tuning
  #'((barre 4 2 2) (mute 6) (open 5)
     (place-fret 4 2) (place-fret 3 2) (place-fret 2 2) (open 1))
\storePredefinedDiagram #default-fret-table \chordmode { a }
                                  #guitar-tuning #(chord-shape 'a guitar-tuning)
%}

\addChordShape #'d #guitar-tuning
  #'((barre 6 3 10) (place-fret 6 10) (place-fret 5 12)
     (place-fret 4 12) (place-fret 3 11) (mute 2) (mute 1))
\storePredefinedDiagram #default-fret-table \chordmode { d }
  #guitar-tuning #(chord-shape 'd guitar-tuning)

\addChordShape #'e #guitar-tuning
  #'((barre 6 3 12) (place-fret 6 12) (place-fret 5 14)
     (place-fret 4 14) (place-fret 3 13) (mute 2) (mute 1))
\storePredefinedDiagram #default-fret-table \chordmode { e' }
  #guitar-tuning #(chord-shape 'e guitar-tuning)

\addChordShape #'fis #guitar-tuning
  #'((barre 6 3 2) (place-fret 6 2) (place-fret 5 4)
     (place-fret 4 4) (place-fret 3 3) (mute 2) (mute 1))
\storePredefinedDiagram #default-fret-table \chordmode { fis }
  #guitar-tuning #(chord-shape 'fis guitar-tuning)


gtrRiffOne = \relative c {
  b4 b8 b8 b8 a4 d8 ~ |
  d8 d8 d8 d8 d8 e4. |
  e,8 fis8 fis8 e8 fis4 e8 fis8 ~ |
  fis8 fis8 e8 f8 fis4 r4 |
}

gtrRiffTwo = \relative c, {
  \repeat volta 3 {
    e4 e8 e8 e8 g4 a8 ~ |
    a8 a8 a8 a8 a8 fis4 b8 ~ |
    b8 b8 b8 b8 b8 ais8 b8 d8 |

    <<
      { r8 b8 r8 ais8 r8 a8 g4 }
      \new RhythmicStaff {
        \improvisationOn
        \override Score.TimeSignature #'stencil = ##f
        r8 b8 r8 ais8 r8 a8 r8 g8
      }
    >>
  }


  e4 e8 e8 e8 g4 a8 ~ |
  a8 a8 a8 a8 a8 fis4 r8 |
  fis4 fis8 fis8 fis8 fis8 fis8 fis8 |
  %% \set Timing.measureLength = #(ly:make-moment 5/8)
  \set Timing.measureLength = #(ly:make-moment 5/8)
  fis8 g8 g8 g8 g8 \bar "||"
  \set Timing.measureLength = #(ly:make-moment 3/8)
  s4.
  \set Timing.measureLength = #(ly:make-moment 4/4)
}

gtrHarmony = \chordmode {
  \override FretBoard.fret-diagram-details.barre-type = #'straight
  \override FretBoard.fret-diagram-details.mute-string = #""
  \override FretBoard.fret-diagram-details.number-type = #'arabic
  \override FretBoard.fret-diagram-details.orientation = #'landscape
  %% \override FretBoards.FretBoard #'size = #'0.8
  %% gtrRiffOne %%
  \repeat volta 4 {
    b2 s8 a4:5 d8 |
    s2 s8 e'4. |
    fis,1 |
    s1 |
  }
  %% \mark \markup { \italic { \lower #1 { \small "play 4x" } } }

  %% gtrRiffTwo %%
  \repeat volta 3 {
    e2 s8 g4 a8 |
    s2 s8 fis4 b8 |
    s2 s8 ais8 b8 d8 |
    s8 b8 s8 ais8 s8 a8 g4
  }

  e2 s8 g4 a8 |
  s2 s8 fis4 s8 |
  s1 |
  s8 g4. s2 |
}

gtr = \relative c {
  \clef treble \override Score.Clef #'stencil = ##f
  \stopStaff \hideNotes
  \skip 1*11 |
  \set Timing.measureLength = #(ly:make-moment 5/8)
  \repeat unfold 5 { s8 }
  \startStaff \unHideNotes
  \revert Score.Clef #'stencil
  \set Staff.forceClef = ##t
  \set Timing.measureLength = #(ly:make-moment 3/8)
  \clef "treble_8" \Key
  fis8 a ais |
  \repeat volta 2 {
    b b b a b4 a8 d ~ |
    d d:16 d cis d fis f e |
    e,( fis) fis e fis4 e8 fis ~ |
    %% \set Timing.measureLength = #(ly:make-moment 4/8)
    fis b e,( f)
  }
  \alternative {
    { fis fis a ais }
    { \set Timing.measureLength = #(ly:make-moment 4/8) fis4 r4 }
  }
  \set Timing.measureLength = #(ly:make-moment 4/4)
  %% b b b a b4 a8 d ~ |
  %% d d:16 d cis d fis f e |
  %% e,( fis) fis e fis4 e8 fis ~ |
  %% fis b e,( f)

  \grace { b8 \glissando s2 } fis'8 fis8 fis8 f8( fis8) a4 fis8 ~ |
  fis8 fis8 fis8( f8 fis8) a8 fis8 f8 |
  f8( fis8) fis8 f8( fis8) a4 f8 ~ |
  f8 fis8 a8 f8( fis8) a8 fis8 f8 |

  f8( fis8) a8 f8( fis8) a4 f8 ~ |
  f8 fis8 a f8( fis8) a8 fis8 f8 |
  f8( fis8) a8 f8( fis8) a4 b8 ~ |
  b8 a8 fis8 a8 \ottava #1 r2 \bar "||"
}

gtrStrum = \relative c {
  \improvisationOn
  \repeat volta 4 { \gtrRiffOne }
  \gtrRiffTwo \stopStaff \hideNotes
  %% s1*12 %gtrSolo
  %% \startStaff \unHideNotes
  %% \gtrRiffTwo
  %% \repeat unfold 2 { \gtrRiffOne }
  %% s1*4 %gtrSolo
  %% \gtrRiffOne
  %% \gtrRiffTwo
}

GuitarStrum = {
  \set Staff.midiInstrument = #"electric guitar (clean)"
  <<
    \new Voice \with {
      \consists Pitch_squash_engraver
    }
    \gtrStrum
  >>
}

%% showLastLength = R1*10

Guitar = {
  \set Staff.midiInstrument = #"electric guitar (clean)"
  \global \clef "treble_8" << \gtr >>
}
