\include "common/persons.ily"

\paper {
  #(set-paper-size "letter" 'landscape)
  indent      = 0.0\in
  ragged-last = ##t
}

\setTitle    "Shiva"
\setComposer #'sam.albers
\setPoet     #'andrew.smith
\setArranger #'naptaker

\putMusic meta {
  \repeat unfold 3 {
    s1*10 \break
  }

%%%%%%%%%%%%%%%%%%%%
%{
  \repeat unfold 7 {
    s1*8  \break
  }
%}
  s1*8  \break
  s1*8  \break
  s1*16  \break
  s1*8  \break
  s1*8  \break
  s1*8  \break
%%%%%%%%%%%%%%%%%%%%

  s1*6  \break
}
