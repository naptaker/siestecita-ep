gtrIntro = \relative c {
  bes4\6-> aes'\4-. \grace { \fretMagic aes8\4 \glissando s } bes8\4 aes\4 f\5( e\5) |

  f\5 aes4\4 des,8\6-> ~ des8\6 des8\6 ees8\5 des8\6 |

  bes4\6-> aes'\4-. \grace { \fretMagic aes8\4 \glissando s } bes8\4 aes\4 f\5( e\5) |

  f\5 aes4\4 des,8\6-> ~ des2\6^\prall |

  bes4\6-> aes'\4-. \grace { \fretMagic aes8\4 \glissando s } bes8\4 aes\4 f\5( e\5) |

  f\5 aes4\4 des,8\6-> ~ des8\6 des8\6 ees8\5 des8\6 |

%{
  \stopStaff \hideNotes
  \override Slur #'stencil = ##f
  \override Glissando #'stencil = ##f
  \override Tie #'stencil = ##f
  \override Script #'stencil = ##f

  \repeat unfold 2 {
    bes4\6-> aes'\4-. \grace { \fretMagic aes8\4 \glissando s } bes8\4 aes\4 f\5( e\5) |
    f\5 aes4\4-> des,8\5-> ~ des2\6 |
  }
  \startStaff \unHideNotes
  \revert Slur #'stencil
  \revert Glissando #'stencil
  \revert Tie #'stencil
  \revert Script #'stencil
%}

  bes4\6-> aes'\4-. \grace { \fretMagic aes8\4 \glissando s } bes8\4 aes\4 f\5( e\5 |

  f\5) aes\4 bes\4 bes,\6-> r2
  \stopStaff \hideNotes
}
