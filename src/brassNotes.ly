% -*- master: ../A10WindOrch.ly;

\include "english.ly"
\include "articulate.ly"
\version "2.16.2"

\include "src/functions.ly"

hornIC = \relative c'' {
  \key ef \major % no key signature
  \clef treble
  \global
  bf16\f->[(af8-.) bf16] f8-.[bf-.] af16->[(f8) ef16] cf4-^
  R2
  r4 r8 g\sff-.-^ R2
  r8 g8-.\mp r g-.-> r g-. r g-.
  r g-.-> r g-. r g-.\> r g-.\!
  %{10%}
  \mark \default
  r af-.\p r af-. r af-. r af-.
  r g-. r g-.->\mf r g-.\p r g-.\!
  r f-. r f-. r f-. r f-.
  R2*2
  %{18%}
  bf'16\f->(af8)bf16 f8-. bf-.
  af16->(f8) ef16 cf8-. ef-.
  bf16(bf8-.) c!16\< bf8\glissando^\markup\italic"gliss."(bf'-.\sff) bf,2-^\>
  R2*2\!
  f'16->\f\<(f8-.) g16-> f8-> d'-.-^\ff bf4-^\<~bf8-.\! r8

  %{26%}
  \mark \default
  R2*4
  ef,2--\p~ef ef--\pp R2
  \makeCue "Tpt. II" "trumpetIICue" #UP { R2*4 }
  af2-+\f~af4 r R2

  r8 g,-.--\flageolet\p r g-.-- R2
  r8 g-.--\p\> r g-.-- R2\!
  r8 g-.--\pp\> r g-.-- R2\!

  %{47%}
  \bar "||"
  \mark \default
  \tempo "Un peu moins vite"
  \key gf \major
  R2*12

  \makeClefCue "Bsn. II" "bassoonIICue" #DOWN bass treble { R2*2 }

  %{61%}
  \mark \default
  \partcombineApart
  \tempo "Cédez"
  r4 a\p\<(f'4. e8
  \tempo "A tempo"
  ef!2\!) R2
  \tempo "Cédez"
  r4 a,\p\<(f'4.\> e8
  \tempo "A tempo"
  ef!2\!) R2

  \tempo "Cédez"
  r4 a,\mf\<(f'8 af!4->\f gf8)
  \tempo "A tempo"
  bf8\>([af gf f] ef[df cf bf]\p~
  
  \tempo "Cédez"
  bf) r a4-\markup"stopped, sarcastic"-+\p\<(f'4.-+ e8-+\>
  \tempo "A tempo"
  ef!2-+\!)
  \tempo "Cédez"
  r4 a,-+\p\<(f'4.-+\> e8-+
  \tempo "A tempo"
  ef!2-+\!)

  \partcombineAutomatic
  r4 df--\f\<(a'!8 cf!4->\ff bf8)
  bf\f\>([af gf f]) ef2~ef\p~ef~ef~ef
  df--\pp~df~df

  \pageBreak
  %{90%}
  \bar "||"
  \mark \default
  \tempo "Toujours retenu..."
  \key ef \major
  \makeCue "Cl. I" "clarinetICue" #UP { R2*2 }

  %{92%}
  \tempo "Tempo I"
  r8 g,-. r g-.->\mp r g-.\p r g-.\!
  r f-. r f-. r f-. r f-.
  R2*2
  %{18%}
  bf'16\f->(af8)bf16 f8-. bf-.
  af16->(f8) ef16 cf8-. ef-.
  bf16(bf8-.) c!16\< bf8\glissando^\markup\italic"gliss."(bf'-.\sff) bf,2-^\>
  R2*2\!
  f'16->\f\<(f8-.) g16-> f8-> d'-.-^\ff bf4-^\<~bf8-.\! r8

  %{26%}
  \mark \default
  R2*4
  e,!2\p\<(f!\>) bf,\p\>~bf\!
  R2*2
  \makeCue "Tpt. II" "trumpetIICue" #UP { R2*2 }
  af'2-+\f~af4 r
  r4 r8 g\flageolet-.-^\ff

  r8 g,-.--\p r g-.-- R2
  r8 g-.--\p\> r g-.-- R2\!
  r8 g-.--\pp\> r g-.--\!
  R2*2
  ef'8-.-^\ff r r4 \bar "|."

} % horn 1

hornIIIC = \relative c'' {
  \key ef \major % no key signature
  \clef treble
  \global
  bf16\f->[(af8-.) bf16] f8-.[bf-.] af16->[(f8) ef16] cf4-^
  R2
  r4 r8 g\sff-.-^ R2
  %{06%}
  r8 f8-.\mp r f-.-> r f-. r f-.
  r f-.-> r f-. r f-.\> r f-.\!
  %{10%}
  \mark \default
  r f-.\p r f-. r f-. r f-.
  r f-. r f-.->\mf r f-.\p r f-.\!
  r ef-. r ef-. r ef-. r ef-.
  R2*2
  %{18%}
  bf''16\f->(af8)bf16 f8-. bf-.
  af16->(f8) ef16 cf8-. ef-.
  bf16(bf8-.) c!16\< bf8\glissando^\markup\italic"gliss."(bf'-.\sff) bf,2-^\>
  R2*2\!
  f'16->\f\<(f8-.) g16-> f8-> g-.-^\ff f4-^\<~f8-.\! r8

  %{26%}
  \mark \default
  R2*4
  c2--\p~c c--\pp R2
  \makeCue "Tpt. II" "trumpetIICue" #UP { R2*4 }
  %{38%}
  f2-+\f~f4 r R2*7

  %{47%}
  \bar "||"
  \mark \default
  \tempo "Un peu moins vite"
  \key gf \major
  R2*14

  %{61%}
  \mark \default
  \makeCue "Hn. I" "hornICue" #DOWN { R2*2 r8 }
  f-.\pp[f-. f-.] r f-.[f-. f-.]
  \makeCue "Hn. I" "hornICue" #DOWN { R2*2 r8 }
  gf-.\pp[gf-. gf-.] r gf-.[gf-. gf-.]
  R2*2 bf8\f\>([af gf f] ef[df cf bf]\p~
  bf) r r4
  
  R2 r8 gf'-.\pp[f-. ef-.]
  R2*2 r8 gf-.\pp[f-. ef-.]

  r4 df--\f\<(a'!8 cf!4->\ff bf8)
  bf\f\>([af gf f] ef df) cf4~cf2\p~cf~cf~cf
  cf--\pp~cf~cf

  %{90%}
  \bar "||"
  \mark \default
  \tempo "Toujours retenu..."
  \key ef \major
  \makeCue "Cl. I" "clarinetICue" #UP { R2*2 }

  %{92%}
  \tempo "Tempo I"
  r8 f,-. r f-.->\mp r f-.\p r f-.\!
  r ef-. r ef-. r ef-. r ef-.
  R2*2
  %{18%}
  bf''16\f->(af8)bf16 f8-. bf-.
  af16->(f8) ef16 cf8-. ef-.
  bf16(bf8-.) c!16\< bf8\glissando^\markup\italic"gliss."(bf'-.\sff) bf,2-^\>
  R2*2\!
  f'16->\f\<(f8-.) g16-> f8-> g-.-^\ff f4-^\<~f8-.\! r8

  %{26%}
  \mark \default
  R2*4
  cs!2\p\<(c!\>) g\p\>~g\!
  R2*4
  %{38%}
  f'2-+\f~f4 r
  r4 r8 d\flageolet-.-^\ff

  R2*7
  ef8-.-^\ff r r4 \bar "|."

} % horn 3

hornIIC = \relative c' {
  \key ef \major % no key signature
  \clef treble
  \global
  \makeCue "Hn. I" "hornICue" #UP { R2*2 }
  r16 af\f\< f ef cf4-^\!
  r4 r8 d\sff-.-^
  R2*5
  %{10%}
  \mark \default
  \makeCue "Cl. I" "clarinetICue" #UP { R2*2 r4 r8 }
  ef'\p-.-> bf-. r8 r4
  R2*2
  bf16\f\<(g8) f16-. ef8-. d-. c-. g'-.-> c,-.-> d-.->\!
  %{18%}
  r af'-.\mf r af-. r af-. r af-.
  r g-.\< r bf-.->\> r g-. r g-.\!
  r gf-.\p\< r gf-. r df'-. r df-.\!
  r4 r8 ef-.-^\ff d4-^\<~d8-.\! r8

  %{26%}
  \mark \default
  R2*4
  \partcombineApart
  af2--\p~af g--\pp R2
  \partcombineAutomatic
  \makeCue "Tpt. II" "trumpetIICue" #UP { R2*4 }
  ef'2-+\f~ef4 r R2
  
  r8 f,-.--\flageolet\p r f-.-- R2
  r8 f-.--\p\> r f-.-- R2\!
  r8 f-.--\pp\> r f-.-- R2\!

  %{47%}
  \bar "||"
  \mark \default
  \tempo "Un peu moins vite"
  \key gf \major
  R2*14

  %{61%}
  \mark \default
  \makeCue "Hn. I" "hornICue" #DOWN { R2*2 r8 }
  cf'-.\pp[cf-. cf-.] r cf-.[cf-. cf-.]
  \makeCue "Hn. I" "hornICue" #DOWN { R2*2 r8 }
  df-.\pp[df-. df-.] r df-.[df-. df-.]
  R2*2 r8
  f\f\>([ef df] cf4 df\p~df2)

  R2 r8 cf-.\pp[cf-. cf-.]
  R2*2 r8 df-.\pp[df-. df-.]

  R2*2 cf2\f ef8\>(df \times 2/3 { cf bf af) } gf2\p~
  gf~gf~gf
  gf--\pp f~f

  %{90%}
  \bar "||"
  \mark \default
  \key ef \major
  \makeCue "Cl. I" "clarinetICue" #UP { R2*2 }

  %{92%}
  \tempo "Tempo I"
  r4 r8 ef'\p-.-> bf-. r8 r4
  R2*2
  bf16^\f^\<(g8) f16-. ef8-. d-. c-. g'-.-> c,-.-> d-.->\!
  %{18%}
  r af'-.\mf r af-. r af-. r af-.
  r g-.\< r bf-.->\> r g-. r g-.\!
  r gf-.\p\< r gf-. r df'-. r df-.\!
  r4 r8 ef-.-^\ff d4-^\<~d8-.\! r8

  %{26%}
  \mark \default
  R2*4
  \partcombineApart
  a!2\p\<(af!\>) f\p\>(ef)\!
  \partcombineAutomatic
  R2*4
  ef'2-+\f~ef4 r
  r4 r8 d\flageolet-.-^\ff
  
  r8 f,-.--\p r f-.-- R2
  r8 f-.--\p\> r f-.-- R2\!
  r8 f-.--\pp\> r f-.--\!

  R2*2
  ef8-.-^\ff r r4 \bar "|."
} % horn 2

hornIVC = \relative c' {
  \key ef \major % no key signature
  \clef treble
  \global
  \makeCue "Hn. I" "hornICue" #UP { R2*2 }
  r16 af\f\< f ef cf4-^\!
  r4 r8 bf\sff-.-^
  R2*5
  %{10%}
  \mark \default
  \makeCue "Cl. I" "clarinetICue" #UP { R2*2 r4 r8 }
  bf'\p-.-> bf,-. r8 r4
  R2*2
  bf'16\f\<(g8) f16-. ef8-. d-. c-. g'-.-> c,-.-> d-.->\!
  %{18%}
  r f-.\mf r f-. r f-. r f-.
  r f-.\< r g-.->\> r f-. r f-.\!
  r df-.\p\< r df-. r gf-. r gf-.\!
  r4 r8 f-.-^\ff f4-^\<~f8-.\! r8

  %{26%}
  \mark \default
  R2*4
  \makeCue "Hn. III" "hornIIICue" #DOWN { R2*3 }
  r16 bf,\f\<(c d c8) bf-.\ff
  R2*4
  cf'2-+\f~cf4 r R2*7

  %{47%}
  \bar "||"
  \mark \default
  \tempo "Un peu moins vite"
  \key gf \major
  R2*14

  %{61%}
  \mark \default
  \makeCue "Hn. I" "hornICue" #DOWN { R2*2 r8 }
  af-.\pp[af-. af-.] r af-.[af-. af-.]
  \makeCue "Hn. I" "hornICue" #DOWN { R2*2 r8 }
  bf-.\pp[bf-. bf-.] r bf-.[bf-. bf-.]
  \makeCue "Hn. I" "hornICue" #UP { R2*2 r8 }
  cf4.\f\>~(cf2 bf8\p) r r4

  R2 r8 af-.\pp[af-. af-.]
  R2*2 r8 bf-.\pp[bf-. bf-.]
  
  R2*2 af2\f\>~af~af\p~af~af~af
  af--\pp~af~af

  %{90%}
  \bar "||"
  \mark \default
  \tempo "Toujours retenu..."
  \key ef \major
  \makeCue "Cl. I" "clarinetICue" #UP { R2*2 }

  %{92%}
  \tempo "Tempo I"
  r4 r8 bf\p-.-> bf,-. r8 r4
  R2*2
  bf'16\f\<(g8) f16-. ef8-. d-. c-. g'-.-> c,-.-> d-.->\!
  %{18%}
  r f-.\mf r f-. r f-. r f-.
  r f-.\< r g-.->\> r f-. r f-.\!
  r df-.\p\< r df-. r gf-. r gf-.\!
  r4 r8 f-.-^\ff f4-^\<~f8-.\! r8

  %{26%}
  \mark \default
  R2*4
  \makeCue "Hn. III" "hornIIICue" #DOWN { R2*3 }
  r16 bf,\f\<(c d c8) bf-.\ff
  R2*4
  cf'2-+\f~cf4 r
  r4 r8 bf\flageolet-.-^\ff

  R2*7
  ef,8-.-^\ff r r4 \bar "|."
} % horn 4

trumpetIC = \relative c'' {
  % \key c \major % no key sig
  \key ef \major
  \clef treble
  \global
  \makeCue "Cl. I" "clarinetICue" #UP { R2*2 }
  r16 af\f\< f ef cf4-^\!
  r4 r8 g'-.-^\sff
  R2*5
  %{10%}
  \mark \default
  \makeCue "Cl. I" "clarinetICue" #DOWN { R2*2 r4 r8^\markup"with mute" }
  bf\mp-.-> bf,-. r8 r4
  r8 c-.\p r c-. r cf-. r cf-.
  R2*2
  \makeCue "Cl. I" "clarinetICue" #UP { R2*2 }
  r4 r8 bf'-.\sff bf,2-^\>
  R2*2\!
  f'16->\f\<^\markup"w.o. mute"(f8-.) g16-> f8-> d'-.-^\ff
  bf4\<(bf'8-.-^\!) r

  %{26%}
  \mark \default
  \partcombineApart
  \makeCue "Cl. I" "clarinetICue" #DOWN { R2*3 r8 }
  ef,,\p\<(f c'-.->\!)
  \partcombineAutomatic
  R2*4
  \makeCue "Tpt. II" "trumpetIICue" #DOWN { R2*4 }
  bf16\f->(af8) bf16 f8-> bf-> af16->[(f8) ef16] cf4-^
  r4 r8 g'-.-^\ff
  R2*6

  %{47%}
  \bar "||"
  \mark \default
  \tempo "Un peu moins vite"
  \key gf \major
  R2*14

  %{61%}
  \mark \default
  R2*12
  \makeCue "Hn. I + Tbn. I" "tromboneICue" #DOWN { R2*2 r8-\markup"with mute" }
  \slurUp \acciaccatura d' ef-.\pp[\slurUp \acciaccatura c df-. \slurUp \acciaccatura d ef-.]
  \makeCue "Hn. I + Tbn. I" "tromboneICue" #DOWN { R2*2 r8 }
  \slurUp \acciaccatura d ef-.\pp[\slurUp \acciaccatura c df-. \slurUp \acciaccatura d ef-.]
  R2*11

  %{90%}
  \bar "||"
  \mark \default
  \tempo "Toujours retenu..."
  \key ef \major
  \makeCue "Cl. I" "clarinetICue" #DOWN { R2*2 }

  %{92%}
  \tempo "Tempo I"
  r4 r8^\markup"with mute" bf\mp-.-> bf,-. r8 r4
  r8 c-.\p r c-. r cf-. r cf-.
  R2*2
  %{18%}
  \makeCue "Cl. I" "clarinetICue" #UP { R2*2 }
  r4 r8 bf'-.\sff bf,2-^\>
  R2*2\!
  f'16->\f\<^\markup"w.o. mute"(f8-.) g16-> f8-> d'-.-^\ff
  bf4\<(bf'8-.-^\!) r

  %{26%}
  \mark \default
  \partcombineApart
  \makeCue "Cl. I" "clarinetICue" #DOWN { R2*3 r8 }
  ef,,\p\<(f c'-.->\!)
  \partcombineAutomatic
  R2*4
  \makeCue "Tpt. II" "trumpetIICue" #DOWN { R2*4 }
  bf16\f->(af8) bf16 f8-> bf-> af16->[(f8) ef16] cf4-^
  r4 r8 g'-.-^\ff
  R2*5

  r4 cf8-^\f\<(bf32 af g f ef8-.-^\ff) 
  r8 r4 ef8-.-^\ff r r4 \bar "|."
} % trumpet 1

trumpetIIC = \relative c'' {
  % \key c \major % no key sig
  \key ef \major
  \clef treble
  \global
  \makeCue "Cl. I" "clarinetICue" #UP { R2*2 }
  r16 af\f\< f ef cf4-^\!
  r4 r8 d-.-^\sff
  R2*5
  %{10%}
  \mark \default
  \makeCue "Cl. I" "clarinetICue" #DOWN { R2*2 r4 r8^\markup"with mute" }
  g\mp-.-> bf,-. r8 r4
  r8 af-.\p r af-. r af-. r af-.
  R2*2
  \makeCue "Cl. I" "clarinetICue" #UP { R2*2 r4 r8 }
  g'-.\sff bf,2-^\>
  R2*2\!
  f'16->\f\<^\markup\small"(Tpt. I no mute)"(f8-.) g16-> f8-> g-.-^\ff
  f4\<(bf8-.-^\!) r

  %{26%}
  \mark \default
  bf,8-.\p bf'-. bf,-. bf'-. bf,-. bf'-. bf,-. bf'-.
  bf,-. bf'-. bf,-. bf'-. bf,-. bf'-. bf,-. bf'-.
  R2*4
  ef,16\p\<^\markup"w.o. mute"(f8\!) g16 f8-.\>(ef-.\!) f2--
  ef16\<(f8\!) g16 f8-.\>(ef-.\! f-.) ef\<(f bf-.->)\!
  R2*2
  r4 r8 d,-.-^\ff
  R2*6

  %{47%}
  \bar "||"
  \mark \default
  \tempo "Un peu moins vite"
  \key gf \major
  R2*14

  %{61%}
  \mark \default
  R2*12
  \makeCue "Hn. I" "hornICue" #DOWN { R2*2 r8-\markup"with mute" }
  cf'-.\pp[cf-. cf-.]
  \makeCue "Hn. I" "hornICue" #DOWN { R2*2 r8 }
  bf-.\pp[bf-. bf-.]
  R2*11

  %{90%}
  \bar "||"
  \mark \default
  \tempo "Toujours retenu..."
  \key ef \major
  \makeCue "Cl. I" "clarinetICue" #DOWN { R2*2 }

  %{92%}
  \tempo "Tempo I"
  r4 r8^\markup"with mute" g\mp-.-> bf,-. r8 r4
  r8 af-.\p r af-. r af-. r af-.
  R2*2
  %{18%}
  R2*2
  r4 r8 g'-.\sff bf,2-^\>
  R2*2\!
  f'16->\f\<^\markup\small"(Tpt. I no mute)"(f8-.) g16-> f8-> g-.-^\ff
  f4\<(bf8-.-^\!) r

  %{26%}
  \mark \default
  bf,8-.\p bf'-. bf,-. bf'-. bf,-. bf'-. bf,-. bf'-.
  bf,-. bf'-. bf,-. bf'-. bf,-. bf'-. bf,-. bf'-.
  R2*4
  ef,16\p\<^\markup"w.o. mute"(f8\!) g16 f8-.\>(ef-.\!) f2--
  ef16\<(f8\!) g16 f8-.\>(ef-.\! f-.) ef\<(f bf-.->)\!
  R2*2
  r4 r8 d,-.-^\ff
  R2*5

  r4 cf'8-^\f\<(bf32 af g f ef8-.-^\ff) 
  r8 r4 ef8-.-^\ff r r4 \bar "|."
} % trumpet 2

trumpetIIIC = \relative c' {
  % \key c \major % no key sig
  \key ef \major
  \clef treble
  \global
  \makeCue "Cl. I" "clarinetICue" #UP { R2*2 }
  \makeCue "Tpt. I" "trumpetICue" #DOWN { R2 }
  r4 r8 bf-.-^\sff
  R2*5
  %{10%}
  \mark \default
  R2*2
  r4 r8^\markup"with mute" f'\mp-.-> bf,-. r8 r4
  R2*2
  bf'16\f\<(g8) f16-. ef8-. d-. c-. g-.-> c-.-> d-.->\!
  %{18%}
  r8 f-.\mf r f-. r f-. r f-.
  r g-. r8 f-.\sff bf,2-^\>
  bf16\!\mp->\<(bf8-.) c16 bf8-. df-. ef-.-> f-.-> ef-.-> gf-.->
  r4\! r8 ef-.-^\ff d4\<(bf'8-.-^\!) r

  %{26%}
  \mark \default
  af,8-.\p af'-. af,-. af'-. af,-. af'-. af,-. af'-.
  g,-. g'-. g,-. g'-. g,-. g'-. g,-. g'-.
  R2*4
  c,16\p\<^\markup"w.o. mute"(d8\!) ef16 d8-.\>(c-.\!) d2--
  c16\<(d8\!) ef16 d8-.\>(c-.\! d-.) c\<(d g-.->)\!
  R2*2
  r4 r8 bf,-.-^\ff
  R2*6
  
  %{47%}
  \bar "||"
  \mark \default
  \tempo "Un peu moins vite"
  \key gf \major
  R2*14

  %{61%}
  \mark \default
  R2*12
  \makeCue "Hn. I" "hornICue" #DOWN { R2*2 r8-\markup"with mute" }
  af'-.\pp[af-. af-.]
  R2*2 r8
  gf-.\pp[gf-. gf-.]
  R2*11

  %{90%}
  \bar "||"
  \mark \default
  \key ef \major
  \makeCue "Cl. I" "clarinetICue" #DOWN { R2*2 }

  %{92%}
  \tempo "Tempo I"
  r4 r8^\markup"with mute" f\mp-.-> bf,-. r8 r4
  R2*2
  bf'16\f\<(g8) f16-. ef8-. d-. c-. g-.-> c-.-> d-.->\!
  %{18%}
  r8 f-.\mf r f-. r f-. r f-.
  r g-. r8 f-.\sff bf,2-^\>
  bf16\!\mp->\<(bf8-.) c16 bf8-. df-. ef-.-> f-.-> ef-.-> gf-.->
  r4\! r8 ef-.-^\ff d4\<(bf'8-.-^\!) r

  %{26%}
  \mark \default
  af,8-.\p af'-. af,-. af'-. af,-. af'-. af,-. af'-.
  g,-. g'-. g,-. g'-. g,-. g'-. g,-. g'-.
  R2*4
  c,16\p\<^\markup"w.o. mute"(d8\!) ef16 d8-.\>(c-.\!) d2--
  c16\<(d8\!) ef16 d8-.\>(c-.\! d-.) c\<(d g-.->)\!
  R2*2
  r4 r8 bf,-.-^\ff
  R2*5
  
  r4 cf8-^\f\<(~cf32 c df d ef8-.-^\ff)
  r8 r4 ef8-.-^\ff r r4 \bar "|."
} % trumpet 3

tromboneI = \relative c' {
  \key ef \major
  \clef bass
  \global
  R2*2
  \makeCue "Bsn. I" "bassoonICue" #UP { R2 }
  r16 af\f\< f ef cf8-> g'-.-^\sff
  R2
  r8 bf-.\p r bf16-.\f\< bf16-. r8\! bf-.\p r bf-.
  r bf16-.\f\< bf16-. r8\! bf-.\mp r bf-.\> r bf-.\!
  %{10%}
  \mark \default
  r ef-.\p r ef-. r ef-. r ef-.
  r bf-. r ef-.->\mf r bf-.\p r bf-.\!
  R2*2
  bf16\f\<(g8) f16-. ef8-. d-. c-.\! r r4
  r8 \partcombineAutomatic ef'-.\mf r ef-. r ef-. r ef-.
  r ef-.\< r ef-.->\> r ef-. r ef-.\!
  R2*2
  r8 e!->\f\< ef-> ef-.-^\ff d4-^\<~d8-.\! r8

  %{26%}
  \mark \default
  R2*4
  \makeCue "Tuba" "tubaCue" #DOWN { R2*3 }
  r16 bf\f\< c d c8 bf-.\ff
  R2*4
  \makeClefCue "Cl. II" "clarinetIICue" #UP treble bass { R2*2 }
  r16 af\f f ef cf8-. g'-.-^\ff
  r8 bf-.--\p r bf-.-- R2
  r8 bf-.--\p\> r bf-.-- R2\!
  r8 bf-.--\pp\> r bf-.-- R2\!

  %{47%}
  \bar "||"
  \mark \default
  \key gf \major
  R2*14

  %{61%}
  \mark \default
  R2*10
  \partcombineApart
  \makeClefCue "Ob. I" "oboeICue" #UP treble tenor { R2*2 }
  \tempo "Cédez"
  r4
  a\p\<-\markup\small"with mute"
  (f'4. e8\>
  ef!2\!)
  \tempo "Cédez"
  r4 a,\p\<(f'4.\> e8
  ef!2\!)
  \partcombineAutomatic
  R2*11

  %{90%}
  \bar "||"
  \mark \default
  \key ef \major
  \makeClefCue "Cl. I" "clarinetICue" #UP tenor bass { R2*2 }

  %{92%}
  \tempo "Tempo I"
  r8 bf-\markup\small"w.o. mute"-.\p r ef-.->\mp r bf-.\p r bf-.\!
  R2*2
  bf16\f\<(g8) f16-. ef8-. d-. c-.\! r r4
  r8 \partcombineAutomatic ef'-.\mf r ef-. r ef-. r ef-.
  r ef-.\< r ef-.->\> r ef-. r ef-.\!
  R2*2
  r8 e!->\f\< ef-> ef-.-^\ff d4-^\<~d8-.\! r8

  %{26%}
  \mark \default
  R2*4
  \makeCue "Tuba" "tubaCue" #DOWN { R2*3 }
  r16 bf\< c d c8-.\f bf-.-^\sff
  R2*4
  \makeClefCue "Cl. I" "clarinetICue" #UP treble bass { R2*2 }
  r16 af\f f ef cf8-. g'-.-^\ff
  r8 bf-.--\p r bf-.-- R2
  r8 bf-.--\p\> r bf-.-- R2\!
  r8 bf-.--\pp\> r bf-.--\!

  r4 cf4\glissando^\markup\italic"gliss."-^\f\<ef8-.-^\ff
  r8 r4 ef8-.-^\ff r r4 \bar "|."
} % trombone 1

tromboneII = \relative c' {
  \key ef \major
  \clef bass
  \global
  R2*2
  \makeCue "Bsn. I" "bassoonICue" #DOWN { R2 }
  r16 af\f\< f ef cf8-> d-.-^\sff R2
  r8 ef-.\p r ef16-.\f\< ef16-. r8\! ef-.\p r ef-.
  r ef16-.\f\< ef16-. r8\! ef-.\mp r ef-.\> r ef-.\!
  %{10%}
  \mark \default
  r cf'-.\p r cf-. r cf-. r cf-.
  r ef,-. r bf'-.->\mf r ef,-.\p r ef-.\!
  R2*2
  bf'16\f\<(g8) f16-. ef8-. d-. c-.\! r r4
  %{18%}
  r8\! cf'-.\mf r cf-. r cf-. r cf-.
  r bf-.\< r bf-.->\> r bf-. r bf-.\!
  R2*2
  r8 df->\f\< c-> a-.-^\ff bf4-^\<~bf8-.\! r8

  %{26%}
  \mark \default
  R2*4
  \makeCue "Tuba" "tubaCue" #DOWN { R2*3 }
  r16 bf\f\< c d c8 bf-.\ff
  R2*6
  r16 af\f f ef cf8-. d-.-^\ff
  r8 ef-.--\p r ef-.-- R2
  r8 ef-.--\p\> r ef-.-- R2\!
  r8 ef-.--\pp\> r ef-.-- R2\!

  %{47%}
  \bar "||"
  \mark \default
  \key gf \major
  R2*12
  \makeCue "Bsn. II" "bassoonIICue" #DOWN { R2*2 }

  %{61%}
  \mark \default
  \tempo "Cédez"
  r4 a4\p\<~(a4. bf8
  cf2\!) R2
  \tempo "Cédez"
  r4 a4\p\<~a2\>
  bf2 R2\!
  \makeClefCue "Ob. I" "oboeICue" #UP treble bass { R2*2 }
  r8 af4.\f gf8\>([f ef df]\p~
  
  \tempo "Cédez"
  df8) r a'4\p\<~(a4 bf\>
  cf2\!)
  \tempo "Cédez"
  r4 a4\p\<~a2\>
  bf2\!
  \clef bass
  R2*11

  %{90%}
  \bar "||"
  \mark \default
  \key ef \major
  R2*2

  %{92%}
  \tempo "Tempo I"
  r8 ef,-.\p r bf'-.->\mp r ef,-.\p r ef-.\!
  R2*2
  bf'16\f\<(g8) f16-. ef8-. d-. c-.\! r r4
  %{18%}
  r8\! cf'-.\mf r cf-. r cf-. r cf-.
  r bf-.\< r bf-.->\> r bf-. r bf-.\!
  R2*2
  r8 df->\f\< c-> a-.-^\ff bf4-^\<~bf8-.\! r8

  %{26%}
  \mark \default
  R2*4
  \makeCue "Tuba" "tubaCue" #DOWN { R2*3 }
  r16 bf\< c d c8-.\f bf-.-^\sff
  R2*6
  r16 af\f f ef cf8-. d-.-^\ff
  r8 ef-.--\p r ef-.-- R2
  r8 ef-.--\p\> r ef-.-- R2\!
  r8 ef-.--\pp\> r ef-.--\!

  r4 cf'4\glissando^\markup\italic"gliss."-^\f\<ef8-.-^\ff
  r8 r4 ef,8-.-^\ff r r4 \bar "|."
} % trombone 2

tromboneIII = \relative c {
  \key ef \major
  \clef bass
  \global
  R2*2
  \makeCue "Bsn. I" "bassoonICue" #DOWN { R2 }
  r16 af\f\< f ef cf'8-> bf-.-^\sff R2
  bf8-.\mp r bf-. r bf-. r bf-. r
  bf8-. r bf-. r
  bf8-.\> r bf-. r
  %{10%}
  \mark \default
  bf8-.\!\p r bf-. r
  bf8-. r bf-. r
  bf8-.\< r bf-. r
  bf8-.->\mf\> r bf-. r\!
  bf8-.\pp r bf-. r
  bf-. r bf-. r
  R2 r8\f g-.-> c-.-> d-.->
  %{18%}
  bf8-.\mf \partcombineChords r bf-. r
  bf-. r bf-. r bf-.\< r bf-. r bf-.\> r bf-. r\!
  \partcombineAutomatic
  R2*2
  \partcombineApart
  r4 r8 f'-.-^\ff bf,4-^\<~bf8-.-^\! r

  %{26%}
  \mark \default
  \partcombineAutomatic
  R2*4
  \makeCue "Tuba" "tubaCue" #DOWN { R2*3 }
  r16 bf\f\< c d c8 bf-.\ff
  R2*4
  \makeClefCue "Cl. I" "clarinetICue" #UP treble bass { R2*2 }
  r16 af\f f ef cf'8-. bf-.-^\ff

  r4 bf8-.\p r bf-. r r4
  r4 bf8-.\p\> r bf-. r\! r4
  r4 bf8-.\pp\> r bf-. r\! r4
  
  %{47%}
  \bar "||"
  \mark \default
  \tempo "Un peu moins vite"
  \key gf \major
  R2*12
  \makeCue "Bsn. II" "bassoonIICue" #DOWN { R2*2 }

  %{61%}
  \mark \default
  \partcombineApart
  \tempo "Cédez"
  r8 ef,\p\<(f gf a bf cf c
  \tempo "A tempo"
  df2\!) R2*2 df2\p--(df) R2
  \partcombineAutomatic
  \makeClefCue "Ob. I" "oboeICue" #UP treble bass { R2*2 }
  df2\f\>~df~
  \tempo "Cédez"
  df8\p df4 df8~df df4.
  \tempo "A tempo"
  df2
  \tempo "Cédez"
  \partcombineApart
  r8 gf\p(f ef~ef4 c!)
  \tempo "A tempo"
  df2
  \partcombineAutomatic
  R2*11

  %{90%}
  \bar "||"
  \mark \default
  \key ef \major
  R2*2

  %{92%}
  \tempo "Tempo I"
  bf8-.\p\< r bf-. r
  bf8-.->\mf\> r bf-. r\!
  bf8-.\pp r bf-. r
  bf-. r bf-. r
  R2 r8\f g-.-> c-.-> d-.->
  %{18%}
  bf8-.\mf \partcombineChords r bf-. r
  bf-. r bf-. r bf-.\< r bf-. r bf-.\> r bf-. r\!
  \partcombineAutomatic
  R2*2
  \partcombineApart
  r4 r8 f'-.-^\ff bf,4-^\<~bf8-.-^\! r

  %{26%}
  \mark \default
  \partcombineAutomatic R2*4
  \makeCue "Tuba" "tubaCue" #DOWN { R2*3 }
  r16 bf\< c d c8-.\f bf-.-^\sff
  R2*6
  r16 af\f f ef cf'8-. bf-.-^\ff

  r4 bf8-.\p r bf-. r r4
  r4 bf8-.\p\> r bf-. r\! r4
  r4 bf8-.\pp r

  r4 cf4\glissando^\markup\italic"gliss."-^\f\<ef8-.-^\ff
  r8 r4 ef,8-.-^\ff r r4 \bar "|."
} % trombone 3

tuba = \relative c {
  \key ef \major
  \clef bass
  \global
  R2*2
  \makeCue "Bsn. I" "bassoonICue" #UP { R2 }
  r16 af\f\< f ef cf8-> bf-.-^\sff R2
  ef8-.\mp r ef-. r ef-. r ef-. r
  ef8-. r ef-. r
  ef8-.\> r ef-. r
  %{10%}
  \mark \default
  ef8-.\!\p r ef-. r
  ef8-. r ef-. r
  ef8-.\< r ef-. r
  ef8-.->\mf\> r ef-. r\!
  ef8-.\pp r ef-. r
  ef8-. r ef-. r
  R2 r8\f g,-.-> c-.-> d-.->
  %{18%}
  ef-.\mf r ef-. r ef-. r ef-. r
  ef-.\< r ef-. r ef-.\> r ef-. r\!
  R2*2
  \makeClefCue "Tpt. I" "trumpetICue" #UP treble bass { R2 r4 }
  bf8-.-^\ff r

  %{26%}
  \mark \default
  R2*4
  bf'16\p(c8) d16 c8-. bf-. bf16(c8) d16 c8-. bf-. bf16\pp(c8) d16 c8-. bf-.
  r16 bf,\f\< c d c8 bf-.\ff
  R2*4
  \makeClefCue "Cl. I" "clarinetICue" #UP treble bass { R2*2 }
  r16 af'\f f ef cf8-. bf-.-^\ff
  r4 ef8-.\p r ef-. r r4
  r4 ef8-.\p\> r ef-. r\! r4
  r4 ef8-.\pp\> r ef-. r\! r4
  
  %{47%}
  \bar "||"
  \mark \default
  \key gf \major
  R2*14

  %{61%}
  \mark \default
  \makeCue "Tbn. III" "tromboneIIICue" #UP { R2*2 }
  af2\p R2*2
  R2 gf2
  R2*3
  \makeCue "Tbn. II" "tromboneIICue" #UP { R2*2 }
  gf2\p(g! af) R2*2 gf2
  R2*11

  %{90%}
  \bar "||"
  \mark \default
  \key ef \major
  R2*2

  %{92%}
  \tempo "Tempo I"
  ef8-.\p\< r ef-. r
  ef8-.->\mf\> r ef-. r\!
  ef8-.\pp r ef-. r
  ef8-. r ef-. r
  R2 r8\f g,-.-> c-.-> d-.->
  %{18%}
  ef-.\mf r ef-. r ef-. r ef-. r
  ef-.\< r ef-. r ef-.\> r ef-. r\!
  R2*3
  r4 bf8-.-^\ff r

  %{26%}
  \mark \default
  R2*4
  b'16\p\<(cs8) ds16 cs8-. b-. bf!16\>(c!8) d!16 c8-. bf-. bf16\p\>(c8) d16 c8-. bf-.\!
  r16 bf,\< c d c8-.\f bf-.-^\sff
  R2*6
  r16 af'\f f ef cf8-. bf-.-^\ff
  r4 ef8-.\p r ef-. r r4
  r4 ef8-.\p\> r ef-. r\! r4
  r4 ef8-.\pp r
  
  r4 cf'8-^\f\<(bf32 af g f ef8-.-^\ff) 
  r8 r4 ef8-.-^\ff r r4 \bar "|."
} % tuba

hornIF = \transpose f c' { \relative c' { \transposition c' \hornIC } }
hornIIIF = \transpose f c' { \relative c' { \transposition c' \hornIIIC } }
hornIIF = \transpose f c' { \relative c' { \transposition c' \hornIIC } }
hornIVF = \transpose f c' { \relative c' { \transposition c' \hornIVC } }
trumpetIBf = \transpose bf c' { \relative c' { \transposition c' \trumpetIC } }
trumpetIIBf = \transpose bf c' { \relative c' { \transposition c' \trumpetIIC } }
trumpetIIIBf = \transpose bf c' { \relative c' { \transposition c' \trumpetIIIC } }

%%%%%%%% CUES %%%%%%%%
\addQuote "hornICue" { \removeCues \hornIC }
\addQuote "hornIICue" { \removeCues \hornIIC }
\addQuote "hornIIICue" { \removeCues \hornIIIC }
\addQuote "hornIVCue" { \removeCues \hornIVC }
\addQuote "trumpetICue" { \removeCues \trumpetIC }
\addQuote "trumpetIICue" { \removeCues \trumpetIIC }
\addQuote "trumpetIIICue" { \removeCues \trumpetIIIC }
\addQuote "tromboneICue" { \removeCues \tromboneI }
\addQuote "tromboneIICue" { \removeCues \tromboneII }
\addQuote "tromboneIIICue" { \removeCues \tromboneIII }
\addQuote "tubaCue" { \removeCues \tuba }

%%%%%%%% PARTS %%%%%%%%
hornIPart = \makePart "Horn I in F" "Hn. I" "french horn" \hornIF
hornIIPart = \makePart "Horn II in F" "Hn. II" "french horn" \hornIIF
hornIIIPart = \makePart "Horn III in F" "Hn. III" "french horn" \hornIIIF
hornIVPart = \makePart "Horn IV in F" "Hn. IV" "french horn" \hornIVF
hornPartsIMarkup = \markup \column { \right-align "F Hn. I" \right-align "F Hn. III" }
hornPartsIIMarkup = \markup \column { \right-align "F Hn. II" \right-align "F Hn. IV" }
hornPartsI = \makePartWithSoloText \hornPartsIMarkup \hornPartsIMarkup
"french horn" "I." "III." { \partcombine \hornIF \hornIIIF }
hornPartsII = \makePartWithSoloText \hornPartsIIMarkup \hornPartsIIMarkup
"french horn" "II." "IV." { \partcombine \hornIIF \hornIVF }

trumpetICPart = \makePart "Trumpet I in C" "Tpt. I in C" "trumpet" \trumpetIC
trumpetIICPart = \makePart "Trumpet II in C" "Tpt. II in C" "trumpet" \trumpetIIC
trumpetIIICPart = \makePart "Trumpet III in C" "Tpt. III in C" "trumpet" \trumpetIIIC
trumpetIBfPart = \makePart "Trumpet I in B♭" "Tpt. I" "trumpet" \trumpetIBf
trumpetIIBfPart = \makePart "Trumpet II in B♭" "Tpt. II" "trumpet" \trumpetIIBf
trumpetIIIBfPart = \makePart "Trumpet III in B♭" "Tpt. III" "trumpet" \trumpetIIIBf
trumpetIIIBfSPart = \makePart \markup\small"B♭ Tpt. III" \markup\small"B♭ Tpt. III" "trumpet" \trumpetIIIBf
trumpetCPartsMarkup = \markup \column { \right-align "C Tpt. I" \right-align "C Tpt. II" }
trumpetCParts = \makePartWithSoloText \trumpetCPartsMarkup \trumpetCPartsMarkup
"trumpet" "I." "II." { \partcombine \trumpetIC \trumpetIIC }
trumpetBfPartsMarkup = \markup \column { \right-align "B♭ Tpt. I" \right-align "B♭ Tpt. II" }
trumpetBfParts = \makePartWithSoloText \trumpetBfPartsMarkup \trumpetBfPartsMarkup
"trumpet" "I." "II." { \partcombine \trumpetIBf \trumpetIIBf }

tromboneIPart = \makePart "Tbn. I" "Tbn. I" "trombone" \tromboneI
tromboneIIPart = \makePart "Tbn. II" "Tbn. II" "trombone" \tromboneII
tromboneIIIPart = \makePart "Tbn. III" "Tbn. III" "trombone" \tromboneIII
tubaPart = \makePart "Tuba" "Tuba" "tuba" \tuba
trombonePartsMarkup = \markup \column { \right-align "Tbn. I" \right-align "Tbn. II" }
tromboneTubaPartsMarkup = \markup \column { \right-align "Tbn. III" \right-align "Tuba" }
tromboneParts = \makePartWithSoloText \trombonePartsMarkup \trombonePartsMarkup
"trombone" "I." "II." { \partcombine \tromboneI \tromboneII }
tromboneTubaParts = \makePartWithSoloText \tromboneTubaPartsMarkup \tromboneTubaPartsMarkup
"tuba" "Tbn. III" "Tuba" { \partcombine \tromboneIII \tuba }

brassSParts = \new StaffGroup <<
  \removeCues \hornPartsI
  \removeCues \hornPartsII
  \removeCues \trumpetBfParts
  \removeCues \trumpetIIIBfSPart
  \removeCues \tromboneParts
  \removeCues \tromboneTubaParts
>>
