\include "common/version.ily"
\include "common/preamble.ily"
%% \include "parts/defaults.ily"
\include "lalily.ly"

#(set-global-staff-size 11)

#(set-registry-val '(lalily person arranger pre) "Arranged by")
#(set-registry-val '(lalily person composer pre) "Music by")
#(set-registry-val '(lalily person poet pre) "Words by")
#(set-registry-val '(lalily header copyright)
  #{ \markup { \with-url #"http://naptakerrr.com" "Naptaker" } #})

\setMusicFolder naptaker.siestecita.alone

\optionsInit opts

%% \include "notes/alone/vocals.ily"
\include "notes/alone/guitar.ily"
%% \include "notes/alone/bass.ily"
%% \include "notes/alone/drums.ily"

\setDefaultTemplate naptaker.siestecita.alone lalily.group #opts

\paper {
  %% #(set-paper-size "arch a" 'landscape)
  #(set-paper-size "letter" 'landscape)
  indent = 0.0\in
  ragged-last = ##t
%{
  #(define fonts
    (set-global-fonts
     #:music "lilyjazz"
     #:brace "lilyjazz"
     #:roman "LilyJAZZText"
     #:sans "LilyJAZZChord"
     #:factor (/ staff-height pt 20)))
%}
}

\registerPerson #'sam.albers "Sam Albers" "" % "(1992-)"
\registerPerson #'eric.bailey "Eric Bailey" "" % "(1989-)"
\registerPerson #'preston.drum "Preston Drum" "" % "(1983-)"
\registerPerson #'andrew.smith "Andrew Smith" "" % "(1990-)"
\registerPerson #'naptaker "Naptaker" "" % "(2012-)"
%{
\registerPerson #'naptaker
\markup {
  \column {
    \right-align "Arr. by S. Albers, E. Bailey"
    \right-align "P. Drum, and A. Smith"
  }
}
""
%}

\setTitle "Alone"
\setComposer #'sam.albers
\setPoet #'andrew.smith
\setArranger #'naptaker

\putMusic meta {
  s1*10 \break
  s1*10 \break
  s1*10 \break
  s1*8  \break
  s1*8  \break
}

\lalilyTest
