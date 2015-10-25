\include "common/version.ily"
\include "common/preamble.ily"
\include "lalily.ly"
% \include "headers/surf_gremlins.ily"

#(begin
   (set-registry-val '(lalily person arranger pre) "Arranged by")
   (set-registry-val '(lalily person composer pre) "Music by")
   (set-registry-val '(lalily person poet     pre) "Words by")
   (set-registry-val '(lalily header copyright)
     #{ \markup { \with-url #"http://naptakerrr.com" "Naptaker" } #}))

\setMusicFolder naptaker.siestecita.surf_gremlins
\optionsInit    opts

\include "notes/surf_gremlins/guitar.ily"


\setDefaultTemplate naptaker.siestecita.surf_gremlins lalily.group #opts


\include "meta/surf_gremlins.ily"
\include "parts/defaults.ily"

\putMusic meta {
  s1*4 \break
  s1*4 \break
  s1*4 \break
  s1*3 \break
  s1*4 \pageBreak

  s1*3 \break
  s1*4 \break
  s1*4 \break
  s1*4 \break
  s1*4 \pageBreak

  s1*4 \break
  s1*4 \break
  s4
}

\lalilyTest
