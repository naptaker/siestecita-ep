\include "common/version.ily"
\include "common/preamble.ily"
%% \include "parts/defaults.ily"
\include "lalily.ly"

#(set-global-staff-size 11)

#(begin
   (set-registry-val '(lalily person arranger pre) "Arranged by")
   (set-registry-val '(lalily person composer pre) "Music by")
   (set-registry-val '(lalily person poet     pre) "Words by")
   (set-registry-val '(lalily header copyright)
     #{ \markup { \with-url #"http://naptakerrr.com" "Naptaker" } #}))

\setMusicFolder naptaker.siestecita.shiva
\optionsInit    opts

%% \include "notes/shiva/vocals.ily"
\include "notes/shiva/guitar.ily"
\include "notes/shiva/bass.ily"
%% \include "notes/shiva/drums.ily"

\setDefaultTemplate naptaker.siestecita.shiva lalily.group #opts

\include "meta/shiva.ily"

\lalilyTest
