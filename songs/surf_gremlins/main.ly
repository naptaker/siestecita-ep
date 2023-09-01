%%% ================================================================ [ main.ly ]
%%% Description: Siestecita EP - Main score for "Surf Gremlins"
%%% Copyright:   (c) 2015-2023 Eric Bailey
%%% License:     see LICENSE
%%% ==================================================================== [ EOH ]

\version "2.24.2"

%%% ======================================================== [ Naptaker Config ]

\include "oll-core/package.ily"
\loadPackage naptaker

\setOption naptaker.guitar-tabs ##f
\setOption naptaker.staff-size #11
\setOption naptaker.extra-layout \layout {
  \omit Score.FretBoard
  \override Score.ChordName.extra-offset = #'(0 . -3)
}

%%% ================================================================= [ Header ]

Key = { \key f \minor }
Tempo = { \tempo 4 = 120 }
global = { \Tempo \defaultTimeSignature \time 4/4 }

\header {
  title     = \markup \fontsize #8 "Surf Gremlins"
  opus      = "Siestecita EP"
  composer  = "Eric Bailey"
  poet      = "Andrew Smith"
  arranger  = "Naptaker"
  copyright = "© 2015-2023 Eric Bailey"
}

%%% =============================================================== [ Preamble ]

fretMagic = {
  \once \override NoteHead.transparent = ##t
  \once \override Stem.transparent = ##t
  \once \override Flag.transparent = ##t
  \once \override NoteHead.no-ledgers = ##t
  \once \override Glissando.bound-details.left.padding = 0.3
}

%% http://lsr.di.unimi.it/LSR/Item?id=198
%% see also http://lsr.di.unimi.it/LSR/Item?id=190
theCoda = {
  \once \override Score.RehearsalMark.break-visibility = #begin-of-line-invisible
  \once \override Score.RehearsalMark.font-size = 6
  \mark \markup { \musicglyph #"scripts.coda" }
}

%% http://lsr.dsi.unimi.it/LSR/Snippet?id=664
toCoda = {
  %% the align part
  \once \override Score.RehearsalMark.self-alignment-X = #RIGHT
  \once \override Score.RehearsalMark.break-visibility = #begin-of-line-invisible
  \once \override Score.RehearsalMark.direction = #DOWN
  %% prefered size
  \once \override Score.RehearsalMark.font-size = -2
  \mark \markup {
    \center-column {
      \concat { \lower #1 { "D.S. al  " } { \musicglyph #"scripts.coda" } }
      \italic { \lower #1 { \small "play both endings" } }
    }
  }
}

%%% ================================================================= [ Layout ]

pageNumberColor = #(if (defined? 'pageNumberColor) pageNumberColor black)

\paper {
  two-sided = ##t
  print-first-page-number = ##t
  ragged-last = ##t
  
  evenHeaderMarkup = \markup {
    \column {
      \fill-line {
        \null
        \line {
          \with-color \pageNumberColor
          \if \should-print-page-number
          \fromproperty #'page:page-number-string
        }
      }
    }
  }
  
  oddHeaderMarkup = \markup {
    \column {
      \fill-line {
        \line {
          \with-color \pageNumberColor
          \if \should-print-page-number
          \fromproperty #'page:page-number-string
        }
        \null
      }
    }
  }
}

%%% =================================================================== [ Grid ]

\templateInit
#'("meta" "vox" "chords" "guitar" "guitar strum" "bass" "drums up" "drums down")
#'(8 11 11 20 (1 . 4))

\include "parts/lyrics.ily"

\Naptaker

\gridDisplay
\gridCheck

\include "naptaker/mtf-improviso.ily"

%%% ==================================================================== [ EOF ]
