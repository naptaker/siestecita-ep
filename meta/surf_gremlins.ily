\include "common/persons.ily"

\paper {
  #(set-paper-size "letter" 'landscape)
  indent      = 0.0\in
  ragged-last = ##t
}

\setTitle    "Surf Gremlins"
\setComposer #'eric.bailey
\setPoet     #'andrew.smith
\setArranger #'naptaker

\putMusic meta {
  %% \overrideProperty Score.NonMusicalPaperColumn.line-break-system-details
  %% #'((Y-offset . 5))
  s1*4 \break
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
