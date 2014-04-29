% -*- master: ../A10WindOrch.ly;

\include "english.ly"
\include "articulate.ly"
\version "2.16.2"

\include "src/functions.ly"

#(set-global-staff-size 15) % for score's book
\book {
  \bookOutputName "output/WangAndy_A10WindOrchScore"
  \bookpart {
    \header {
      subsubtitle = \markup { "Instrumentation: 2+picc.,2,2,2; 4,3,3,1; timp., glck., mba., tri., b. dr." }
      instrument = \markup { "Score" }
    }
    \paper {
      %ragged-last-bottom = ##f
      system-separator-markup = \slashSeparator % specific only to the score
    }
    \markup \column {
      \italic"  * If only 2 percussionists: triangle and bass drum ad libitum."
    }
    \score {
      <<
        \woodwindSParts
        \brassSParts
        \percussionSParts
      >>
      \layout {
        indent = 0.25\cm
        \context { \Score \override SpacingSpanner #'common-shortest-duration = #(ly:make-moment 1 8) }
        \context {
          \Staff \RemoveEmptyStaves
          % including remove first empty staves
          %\override VerticalAxisGroup #'remove-first = ##t
        }
      }
      \midi {
        \context { \Score tempoWholesPerMinute = #(ly:make-moment 100 4) }
      }
    }
  }
}
