(define maybeRhythmicStaff
  (define-music-function
    (parser location)
    ()
    (if (defined? 'rhythmNotes)
        #{
          \new RhythmicStaff \with {
            \RemoveEmptyStaves
            \override VerticalAxisGroup #'remove-first = ##t
          } { \global \rhythmNotes }
        #}
        #{ #})))
