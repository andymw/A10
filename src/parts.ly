% -*- master: ../A10WindOrch.ly;

\include "english.ly"
\include "articulate.ly"
\version "2.16.2"

\include "src/functions.ly"

#(set-global-staff-size 20) % for parts' book
\book {
  \bookOutputName "output/WangAndy_A10WindOrchParts"
  \bookpart {
    \header { instrument = "Flute I" }
    \score { \removeWithTag #'score \new StaffGroup << \fluteIPart >>
             \layout { \context { \Score \override SpacingSpanner #'common-shortest-duration = #(ly:make-moment 1 8) } } }
  }
  
  \bookpart {
    \header { instrument = "Flute II (doubles Piccolo)" }
    \score { \removeWithTag #'score \new StaffGroup << \fluteIIPart >>
             \layout { \context { \Score \override SpacingSpanner #'common-shortest-duration = #(ly:make-moment 1 8) } } }
  }
  
  \bookpart {
    \header { instrument = "Oboe I" }
    \score { \removeWithTag #'score \new StaffGroup << \oboeIPart >>
             \layout { \context { \Score \override SpacingSpanner #'common-shortest-duration = #(ly:make-moment 1 8) } } }
  }
  
  \bookpart {
    \header { instrument = "Oboe II" }
    \score { \removeWithTag #'score \new StaffGroup << \oboeIIPart >>
             \layout { \context { \Score \override SpacingSpanner #'common-shortest-duration = #(ly:make-moment 1 8) } } }
  }
  
  \bookpart {
    \header { instrument = "Clarinet I" }
    \score { \removeWithTag #'score \new StaffGroup << \clarinetIPart >>
             \layout { \context { \Score \override SpacingSpanner #'common-shortest-duration = #(ly:make-moment 1 8) } } }
  }
  
  \bookpart {
    \header { instrument = "Clarinet II" }
    \score { \removeWithTag #'score \new StaffGroup << \clarinetIIPart >>
             \layout { \context { \Score \override SpacingSpanner #'common-shortest-duration = #(ly:make-moment 1 8) } } }
  }
  
  \bookpart {
    \header { instrument = "Bassoon I" }
    \score { \removeWithTag #'score \new StaffGroup << \bassoonIPart >>
             \layout { \context { \Score \override SpacingSpanner #'common-shortest-duration = #(ly:make-moment 1 8) } } }
  }
  
  \bookpart {
    \header { instrument = "Bassoon II" }
    \score { \removeWithTag #'score \new StaffGroup << \bassoonIIPart >>
             \layout { \context { \Score \override SpacingSpanner #'common-shortest-duration = #(ly:make-moment 1 8) } } }
  }
  
  \bookpart {
    \header { instrument = "Horn I" }
    \score { \removeWithTag #'score \new StaffGroup << \hornIPart >>
             \layout { \context { \Score \override SpacingSpanner #'common-shortest-duration = #(ly:make-moment 1 8) } } }
  }
  
  \bookpart {
    \header { instrument = "Horn II" }
    \score { \removeWithTag #'score \new StaffGroup << \hornIIPart >>
             \layout { \context { \Score \override SpacingSpanner #'common-shortest-duration = #(ly:make-moment 1 8) } } }
  }
  
  \bookpart {
    \header { instrument = "Horn III" }
    \score { \removeWithTag #'score \new StaffGroup << \hornIIIPart >>
             \layout { \context { \Score \override SpacingSpanner #'common-shortest-duration = #(ly:make-moment 1 8) } } }
  }
  
  \bookpart {
    \header { instrument = "Horn IV" }
    \score { \removeWithTag #'score \new StaffGroup << \hornIVPart >>
             \layout { \context { \Score \override SpacingSpanner #'common-shortest-duration = #(ly:make-moment 1 8) } } }
  }
  
  \bookpart {
    \header { instrument = "Trumpet I" }
    \score { \removeWithTag #'score \new StaffGroup << \trumpetIBfPart >>
             \layout { \context { \Score \override SpacingSpanner #'common-shortest-duration = #(ly:make-moment 1 8) } } }
  }
  
  \bookpart {
    \header { instrument = "Trumpet II" }
    \score { \removeWithTag #'score \new StaffGroup << \trumpetIIBfPart >>
             \layout { \context { \Score \override SpacingSpanner #'common-shortest-duration = #(ly:make-moment 1 8) } } }
  }
  
  \bookpart {
    \header { instrument = "Trumpet III" }
    \score { \removeWithTag #'score \new StaffGroup << \trumpetIIIBfPart >>
             \layout { \context { \Score \override SpacingSpanner #'common-shortest-duration = #(ly:make-moment 1 8) } } }
  }
  
  \bookpart {
    \header { instrument = "Trombone I" }
    \score { \removeWithTag #'score \new StaffGroup << \tromboneIPart >>
             \layout { \context { \Score \override SpacingSpanner #'common-shortest-duration = #(ly:make-moment 1 8) } } }
  }
  
  \bookpart {
    \header { instrument = "Trombone II" }
    \score { \removeWithTag #'score \new StaffGroup << \tromboneIIPart >>
             \layout { \context { \Score \override SpacingSpanner #'common-shortest-duration = #(ly:make-moment 1 8) } } }
  }
  
  \bookpart {
    \header { instrument = "Trombone III" }
    \score { \removeWithTag #'score \new StaffGroup << \tromboneIIIPart >>
             \layout { \context { \Score \override SpacingSpanner #'common-shortest-duration = #(ly:make-moment 1 8) } } }
  }
  
  \bookpart {
    \header { instrument = "Tuba" }
    \score { \removeWithTag #'score \new StaffGroup << \tubaPart >>
             \layout { \context { \Score \override SpacingSpanner #'common-shortest-duration = #(ly:make-moment 1 8) } } }
  }
  
}

#(set-global-staff-size 18) % for percussion' book
\book {
  \bookOutputName "output/WangAndy_A10WindOrchPercussion"
  \bookpart {
    \header { instrument = "Percussion" }
    \markup \column {
      \italic"* 2nd and 3rd percussionists rotate between mallet instruments, triangle, and bass drum."
      \italic"  If only 2 percussionists: triangle and bass drum ad libitum."
    }
    \score { \removeWithTag #'score \percussionParts
             \layout { \context { \Score \override SpacingSpanner #'common-shortest-duration = #(ly:make-moment 1 8) } } }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%% ADDITIONAL MIDIs %%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%{
  \book {
  \bookOutputName "output/WangAndy_A10WindOrchWoodwind"
  \score {
  <<
  \removeCues \fluteIPart
  \removeCues \fluteIIPart
  \removeCues \oboeIPart
  \removeCues \oboeIIPart
  \removeCues \clarinetIPart
  \removeCues \clarinetIIPart
  \removeCues \bassoonIPart
  \removeCues \bassoonIIPart
  >>
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 108 4) } }
  }
  }
  
  \book {
  \bookOutputName "output/WangAndy_A10WindOrchBrass"
  \score {
  <<
  \removeCues \hornPartsI
  \removeCues \hornPartsII
  \removeCues \trumpetBfParts
  \removeCues \tromboneParts
  \removeCues \tromboneTubaParts
  >>
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 108 4) } }
  }
  }
%}
