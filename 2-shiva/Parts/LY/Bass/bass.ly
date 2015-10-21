bassRiffA            = \relative c  { fis4     fis     cis8 e(   eis  fis) ~| }
bassRiffB            = \relative c  { fis8 fis fis e4       e8   b'   eis,  | }
bassRiffC            = \relative c  { fis8 fis fis e   fis  a    fis  e     | }
bassRiffD            = \relative c  { fis8 fis a   fis b    a    fis  e     | }
bassRiffE            = \relative c  { fis4     fis     cis8 e(   eis) fis, ~|
                                      fis8 fis fis fis'4    fis8 fis, fis   | }
bassRiffF            = \relative c  { d4       d       b8   b4        fis8 ~| }
bassRiffG            = \relative c, { fis8 fis fis fis4.         fis8 fis   | }
bassRiffH            = \relative c  { a4       a8  a   a    b4        fis8 ~| }
bassRiffI            = \relative c, { fis8 fis fis fis4     fis8 fis  fis   | }
bassRiffK            = \relative c, { fis8 fis fis fis4     fis8 fis4       | }
bassRiffL            = \relative c, { fis8 fis fis fis'4    fis8 fis4       | }
bassRiffM            = \relative c  { fis8 fis fis fis fis  e4        a,8 ~ | }
bassRiffN            = \relative c  { a8   a   a   a   a    b    b    b     | }
bassRiffO            = \relative c  { fis4     r       r2                   | }
bassRiffAB           = \relative c  { \bassRiffA              \bassRiffB      }
bassRiffAC           = \relative c  { \bassRiffA              \bassRiffC      }
bassRiffAD           = \relative c  { \bassRiffA              \bassRiffD      }
bassRiffBE           = \relative c  { \bassRiffB              \bassRiffE      }
bassRiffFG           = \relative c  { \bassRiffF              \bassRiffG      }
bassRiffGH           = \relative c  { \bassRiffG              \bassRiffH      }
bassRiffHI           = \relative c  { \bassRiffH              \bassRiffI      }
bassRiffHK           = \relative c  { \bassRiffH              \bassRiffK      }
bassRiffHL           = \relative c  { \bassRiffH              \bassRiffL      }
bassRiffHO           = \relative c  { \bassRiffH              \bassRiffO      }
bassRiffIF           = \relative c  { \bassRiffI              \bassRiffF      }
bassRiffMN           = \relative c  { \bassRiffM              \bassRiffN      }
bassRiffABE          = \relative c  { \bassRiffA              \bassRiffBE     }
bassRiffFGH          = \relative c  { \bassRiffFG             \bassRiffH      }
bassRiffABAC         = \relative c  { \bassRiffAB             \bassRiffAC     }
bassRiffABAD         = \relative c  { \bassRiffAB             \bassRiffAD     }
bassRiffFGHI         = \relative c  { \bassRiffFG             \bassRiffHI     }
bassRiffFGHK         = \relative c  { \bassRiffFG             \bassRiffHK     }
bassRiffHKHL         = \relative c  { \bassRiffHK             \bassRiffHL     }
bassRiffHKHO         = \relative c  { \bassRiffHK             \bassRiffHO     }
bassRiffMNMN         = \relative c  { \repeat     percent 2 { \bassRiffMN }   }
bassRiffABACABE      = \relative c  { \bassRiffABAC           \bassRiffABE    }
bassRiffABACABAD     = \relative c  { \bassRiffABAC           \bassRiffABAD   }
bassRiffFGHIFGHK     = \relative c  { \bassRiffFGHI           \bassRiffFGHK   }
bassRiffFGHIFGHKHKHL = \relative c  { \bassRiffFGHIFGHK       \bassRiffHKHL   }
bassRiffFGHIFGHKHKHO = \relative c  { \bassRiffFGHIFGHK       \bassRiffHKHO   }
bassIntro            =                \bassRiffABACABAD
bassVerse            =                \bassRiffABACABE
bassChorusA          =                \bassRiffFGHIFGHKHKHL
bassBridge           =                \bassIntro
bassChorusB          =                \bassRiffFGHIFGHKHKHO
bassEnding           = \relative c  { R1*8
                                      \repeat     volta   2 {
                                        \repeat     unfold  2 { fis,1:8 }
                                      } \repeat     unfold  8 {
                                        \bassRiffMNMN         }
                                      \bassRiffMN
                                      \repeat     percent 4 {
                                        fis1:8                }
                                      \bassRiffFGHIFGHK       \bassRiffHK R1  }
bgtr                 = \relative c  { \Key R1*2  \bassIntro
                                      \bassVerse \bassChorusA \bassBridge
                                      \bassVerse \bassChorusB \bassBridge
                                      \bassVerse \bassChorusA \bassEnding     }
bassGuitar           =              { \set Staff.midiInstrument =
                                      #"electric bass (finger)"
                                      \global \clef bass
                                      << \bgtr >>                             }
