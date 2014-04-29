% -*- master: ../A10WindOrch.ly;

\include "english.ly"
\include "articulate.ly"
\version "2.16.2"

\include "src/functions.ly"

% glockmarimba helpers
switchToMarimba = {
  \transposition c' % marimba
  \set Staff.midiInstrument = "marimba"  
}

switchToGlockenspiel = {
  \transposition c'''
  \set Staff.midiInstrument = "glockenspiel"
}

timpani = \relative c {
  % no key.
  \clef bass
  \global
  R2*2
  \makeCue "Bsn. I" "bassoonICue" #UP { R2 }
  \makeCue "Tuba" "tubaCue" #DOWN { r4 r8 }
  bf\f-.-^
  R2*5
  %{10%}
  \mark \default
  R2*7
  r8 bf-.\p\< bf-. bf-.\f
  %{18%}
  R2*7\!
  r4 bf8-.->\ff r

  %{26%}
  \mark \default
  R2*4
  \makeCue "Tuba" "tubaCue" #DOWN { R2*3 }
  \makeCue "Tbn. III" "tromboneIIICue" #DOWN { r4 r8 }
  bf-.\f
  R2*6
  r4 r8 bf\f-.-^
  R2*6

  %{47%}
  \bar "||"
  \mark \default
  \tempo "Un peu moins vite"
  R2*14

  %{61%}
  \mark \default
  R2*29

  %{90%}
  \bar "||"
  \mark \default
  \tempo "Toujours retenu..."
  R2*2

  %{92%}
  \tempo "Tempo I"
  R2*4
  \makeCue "Tbn. II" "tromboneIICue" #UP { R2 r8 }
  bf-.\p\< bf-. bf-.\f
  %{18%}
  R2*7\!
  r4 bf8-.->\ff r

  %{26%}
  \mark \default
  R2*4
  \makeCue "Tuba" "tubaCue" #DOWN { R2*3 }
  r16 ef\p\< ef ef ef8-. bf-.-^\f
  R2*6
  r16 ef\p\< ef ef ef8-. bf\f-.-^
  R2*5
  r4 bf4:32\f\< ef8-.-^\ff r r4
  ef8-.-^\ff r r4 \bar "|."
} % timp

glockmarimba = \relative c' {
  %{ this staff is for 1 player doubling marimba and glockenspiel.
     glock: \switchToGlockenspiel
     marimba: \switchToMarimba %}
  \switchToMarimba
  \key ef \major
  \clef treble
  \global
  \makeCue "Cl. I" "clarinetICue" #UP { R2*2 }
  R2*7
  %{10%}
  \mark \default
  \makeCue "Cl. I" "clarinetICue" #UP { R2*2 r4^\markup"marimba, soft mallets" r8 }
  \acciaccatura ef\p bf'-.-> bf,4-^ r
  R2*4\!
  %{18%}
  R2*2 r4 r8 \acciaccatura ef'\f bf'-.-> bf,4-^ r
  R2*4\!

  %{26%}
  \mark \default
  \switchToGlockenspiel
  R2 r4^\markup"glockenspiel" <bf bf'>8-.\p r
  R2*6
  R2 r4 <bf bf'>8-.\p r
  R2*11

  %{47%}
  \bar "||"
  \mark \default
  \key gf \major
  R2*14
  
  %{61%}
  \mark \default
  \transposition c' % marimba
  \set Staff.midiInstrument = "marimba"  
  \makeCue "Hn. I" "hornICue" #DOWN { R2*2 r8^\markup\small"marimba. (C♭ may be omitted ?)" }
  \slurUp \acciaccatura d <ef cf>-.\pp[\slurUp \acciaccatura c <df cf>-. \slurUp \acciaccatura d <ef cf>-.]
  r8 \slurUp \acciaccatura d <ef cf>-.[\slurUp \acciaccatura c <df cf>-. \slurUp \acciaccatura d <ef cf>-.]
  R2*2
  r8 \slurUp \acciaccatura d <ef bf>-.\pp[\slurUp \acciaccatura c <df bf>-. \slurUp \acciaccatura d <ef bf>-.]
  r8 \slurUp \acciaccatura d <ef bf>-.[\slurUp \acciaccatura c <df bf>-. \slurUp \acciaccatura d <ef bf>-.]
  R2*4
  \makeCue "Hn. I" "hornICue" #DOWN { R2*6 }
  R2*11

  %{90%}
  \bar "||"
  \mark \default
  \tempo "Toujours retenu..."
  \key ef \major
  R2*2

  %{92%}
  \tempo "Tempo I"
  \transposition c' % marimba
  \set Staff.midiInstrument = "marimba"
  R2*6
  %{18%}
  bf'16^\markup"marimba"\mf->(af8)bf16 f8-. bf-.
  af16->(f8) ef16 cf8-. ef-.
  bf16(bf8-.) c!16\< bf8(\acciaccatura ef bf'-.->) bf,4-^\> r\!
  R2*4

  %{26%}
  \mark \default
  \transposition c''' % glock
  \set Staff.midiInstrument = "glockenspiel"
  R2 r4^\markup"glockenspiel" <bf bf'>8-.\p r
  R2*6
  R2 r4 <bf bf'>8-.\p r
  R2*13 \bar "|."
} % mallets

triangleBassDrum = \drummode {
  \global
  % tri, cl (claves), wbh wbl (woodblock)
  R2*3 r4_\markup"Bass dr." \stemDown bda8\p bda\f-.-^ R2
  \stemUp r8^\markup"Tri." tri\pp r tri
  r tri r tri r tri\> r tri R2\!
  %{10%}
  \mark \default
  R2*15 r4 \stemDown bda8\f-.-> r

  %{26%}
  \mark \default
  R2*14
  r4 bda8\p bda-.\f
  
  \stemUp
  r8 tri\pp r tri R2
  r8 tri\pp\> r tri R2\!
  R2*2

  %{47%}
  \bar "||"
  \mark \default
  R2*14
  
  %{61%}
  \mark \default
  R2*2 r8 tri\pp[tri tri] r tri[tri tri]
  R2*2 r8 tri\pp[tri tri] r tri[tri tri]
  R2*4
  R2*2 r8 tri\pp[tri tri]
  R2*2 r8 tri\pp[tri tri]
  R2*11

  %{90%}
  \bar "||"
  \mark \default
  \tempo "Toujours retenu..."
  R2*2

  %{92%}
  \tempo "Tempo I"
  R2*13 r4 \stemDown bda8\f-.-> r

  %{26%}
  \mark \default
  R2*14
  r4 bda8\p bda-.\f
  
  \stemUp
  r8 tri\pp r tri R2
  r8 tri\pp\> r tri R2\!
  R2*3
  bda8-.-^\f r r4 \bar "|."

} % tri/bass drum

%%%%%%%% CUES %%%%%%%%
\addQuote "timpaniCue" { \removeCues \timpani }
\addQuote "glockmarimbaCue" { \removeCues \glockmarimba }
\addQuote "tribassdrumCue" { \removeCues \triangleBassDrum }

%%%%%%%% PARTS %%%%%%%%
timpaniPart = \makePart "Timpani" "Timp." "timpani" \timpani
timpaniSPart = \makePart "Timpani" "Timp." "timpani" \timpani

glockmarimbaPart = \makePart "Mallets*" "Mallets" "marimba" \glockmarimba
glockmarimbaSPart = \makePart \markup\small"Mallets*" \markup\small"Mallets" "marimba" \glockmarimba

% custom
bassdrumTrianglePart = \new DrumStaff \with {
  \override StaffSymbol #'line-count = #2
  \override StaffSymbol #'line-positions = #'(0 -3)
  \override MultiMeasureRest #'expand-limit = #1
} {
  \set Staff.instrumentName = \markup \small \column { \right-align "Triangle" \right-align "Bass drum*" }
  \set Staff.shortInstrumentName = \markup \small \column { \right-align "Tri." \right-align "B. dr." }
  \new DrumVoice {
    \triangleBassDrum
  }
}

%%%% STAFFGROUPS %%%%
percussionSParts = \new StaffGroup <<
  \removeCues \timpaniSPart
  \removeCues \glockmarimbaSPart
  \removeCues \bassdrumTrianglePart
>>

percussionParts = \new StaffGroup <<
  \timpaniPart
  \glockmarimbaPart
  \bassdrumTrianglePart
>>
