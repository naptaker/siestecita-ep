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

\setMusicFolder naptaker.siestecita.surf_gremlins
\optionsInit    opts

\include "notes/surf_gremlins/vocals.ily"
\include "notes/surf_gremlins/guitar.ily"
\include "notes/surf_gremlins/bass.ily"
\include "notes/surf_gremlins/drums.ily"

\setDefaultTemplate naptaker.siestecita.surf_gremlins lalily.group #opts

\include "meta/surf_gremlins.ily"

\lalilyTest
