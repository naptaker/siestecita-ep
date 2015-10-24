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

\setMusicFolder naptaker.siestecita.surf_gremlins

\optionsInit opts

\include "notes/surf_gremlins/vocals.ily"
\include "notes/surf_gremlins/guitar.ily"
\include "notes/surf_gremlins/bass.ily"
\include "notes/surf_gremlins/drums.ily"

\setDefaultTemplate naptaker.siestecita.surf_gremlins lalily.group #opts

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

\setTitle "Surf Gremlins"
\setComposer #'eric.bailey
\setPoet #'andrew.smith
\setArranger #'naptaker

\putMusic meta {
  %% \overrideProperty Score.NonMusicalPaperColumn.line-break-system-details
  %% #'((Y-offset . 5))
  s1*8 \break
  %% \overrideProperty Score.NonMusicalPaperColumn.line-break-system-details
  %% #'((Y-offset . 55))
  s1*4 \break
  %% \overrideProperty Score.NonMusicalPaperColumn.line-break-system-details
  %% #'((Y-offset . 125))
  s1*4 \break
  %% \overrideProperty Score.NonMusicalPaperColumn.line-break-system-details
  %% #'((Y-offset . 195))
  s1*3 \pageBreak
  %% \overrideProperty Score.NonMusicalPaperColumn.line-break-system-details
  %% #'((Y-offset . 15))
  s1*5 \break
  %% \overrideProperty Score.NonMusicalPaperColumn.line-break-system-details
  %% #'((Y-offset . 85))
  s1*6 \break
  %% \overrideProperty Score.NonMusicalPaperColumn.line-break-system-details
  %% #'((Y-offset . 150))
  s1*4 \break
  %% \overrideProperty Score.NonMusicalPaperColumn.line-break-system-details
  %% #'((Y-offset . 190))
  s1*4 \break
  %% \overrideProperty Score.NonMusicalPaperColumn.line-break-system-details
  %% #'((Y-offset . 230))
  s1*4 \pageBreak
  %% \overrideProperty Score.NonMusicalPaperColumn.line-break-system-details
  %% #'((Y-offset . 5))
  s1*4 \break
  %% \overrideProperty Score.NonMusicalPaperColumn.line-break-system-details
  %% #'((Y-offset . 40))
  s4
  %% \overrideProperty Score.NonMusicalPaperColumn.line-break-system-details
  %% #'((Y-offset . 120))
}

\lalilyTest
