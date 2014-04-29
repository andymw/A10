% -*- master: ../A10WindOrch.ly;

\include "english.ly"
\include "articulate.ly"
\version "2.16.2"

\include "src/functions.ly"

fluteI = \relative c''' {
  \key ef \major
  \clef treble
  \global
  bf16\f->[(af8-.) bf16] f8-.[bf-.] af16->[(f8) ef16] cf4-^
  R2*7
  %{10%}
  \mark \default
  R2*6
  \makeCue "Tpt. III" "trumpetIIICue" #DOWN { R2*2 }
  %{18%}
  bf'16\f-\markup\italic"très net et très sec"->(af8)bf16 f8-. bf-.
  af16->(f8) ef16 cf8-. ef-.
  bf16(bf8-.) c!16\< bf8(\acciaccatura g' bf-.\sff) bf,2-^\>
  R2*2\!
  f'16->\f\<(f8-.) g16-> f8-> \acciaccatura g d'-.-^\ff
  bf4\<(bf'8-.-^\!) r

  %{26%}
  \mark \default
  R2 r4 bf,8-.\p r
  R2*6
  \makeCue "Tpt. II" "trumpetIICue" #DOWN { R2 r4 }
  bf8-.\p r R2*2
  bf16\f->(af8) bf16 f8-> bf-> af16->[(f8) ef16] cf4-^
  R2*7

  %{47%}
  \bar "||"
  \mark \default
  \tempo "Un peu moins vite"
  \key gf \major
  R2*14
  
  %{61%}
  \mark \default
  \makeCue "Hn. I" "hornICue" #DOWN { R2*2 r8 }
  \slurUp \acciaccatura d' ef-.\pp[\slurUp \acciaccatura c df-. \slurUp \acciaccatura d ef-.]
  r8 \slurUp \acciaccatura d ef-.[\slurUp \acciaccatura c df-. \slurUp \acciaccatura d ef-.]
  \makeCue "Hn. I" "hornICue" #DOWN { R2*2 r8 }
  \slurUp \acciaccatura d ef-.\pp[\slurUp \acciaccatura c df-. \slurUp \acciaccatura d ef-.]
  r8 \slurUp \acciaccatura d ef-.[\slurUp \acciaccatura c df-. \slurUp \acciaccatura d ef-.]
  
  \tempo "Cédez"
  r4 a,\mf\<(f'8 af!4->\f gf8)
  \tempo "A tempo"
  ef16\>(gf8) f16 df4 af16(cf8) bf16 df,4\p~df
  \makeCue "Hn. I" "hornICue" #DOWN { r4 R2*5 r4 }
  df--\f\<(a'!8 cf!4->\ff bf8)

  f16\>(af!8) gf16 ef4-- bf16(df8)cf16 f,8\p r
  R2*7

  %{90%}
  \bar "||"
  \mark \default
  \tempo "Toujours retenu..."
  \key ef \major
  R2*2

  %{92%}
  \tempo "Tempo I"
  R2*4
  %{18%}
  \makeCue "Tpt. III" "trumpetIIICue" #DOWN { R2*2 }
  bf'16\f->(af8)bf16 f8-. bf-.
  af16->(f8) ef16 cf8-. ef-.
  bf16(bf8-.) c!16\< bf8(\acciaccatura g' bf-.\sff) bf,2-^\>
  R2*2\!
  f'16->\f\<(f8-.) g16-> f8-> \acciaccatura g d'-.-^\ff
  bf4\<(bf'8-.-^\!) r

  %{26%}
  \mark \default
  R2 r4 bf,8-.\p r
  R2*6
  \makeCue "Tpt. II" "trumpetIICue" #DOWN { R2 r4 }
  bf8-.\p r R2*2
  bf16\f->(af8) bf16 f8-> bf-> af16->[(f8) ef16] cf4-^
  R2*8

  ef,8-.-^\ff r r4 \bar "|."
} % flute 1

fluteII = \relative c''' {
  \transposition c''
  \key ef \major
  \clef treble
  \global
  bf16\f->^\markup"Piccolo"[(af8-.) bf16] f8-.[bf-.] af16->[(f8) ef16] cf4-^
  R2*7
  %{10%}
  \mark \default
  R2*8
  \makeCue "Fl. I" "fluteICue" #DOWN { R2*2 r4 r8 }
  \acciaccatura g'^\markup"Piccolo" bf-.\sff bf,2-^\>
  R2*2\!
  f16->\f\<(f8-.) g16-> f8-> \acciaccatura g d'-.-^\ff
  bf4\<(bf''8-.-^\!) r

  %{26%}
  \mark \default
  R2 r4 bf,8-.\p r
  R2*6
  \makeCue "Tpt. II" "trumpetIICue" #DOWN { R2 r4 }
  bf8-.\p r R2*2
  bf16\f->(af8) bf16 f8-> bf-> af16->[(f8) ef16] cf4-^
  R2*7

  %{47%}
  \bar "||"
  \mark \default
  \tempo "Un peu moins vite"
  \key gf \major
  R2*14
  
  %{61%}
  \mark \default
  \transposition c' % flute
  \makeCue "Hn. I" "hornICue" #DOWN { R2*2 r8 }
  cf'-.\pp^\markup"Flute"[cf-. cf-.] r8 cf-.[cf-. cf-.]
  \makeCue "Hn. I" "hornICue" #DOWN { R2*2 r8 }
  bf-.\pp[bf-. bf-.] r8 bf-.[bf-. bf-.]
  \makeCue "Fl. I" "fluteICue" #UP { R2*2 }
  bf8\f\>([af gf f] ef[df cf bf]\p~bf) r
  \makeCue "Hn. I" "hornICue" #DOWN { r4 R2*5 r4 }
  df--\f\<(a'!8 cf!4->\ff bf8)

  f16\>(af!8) gf16 ef4-- bf16(df8)cf16 f,8\p r
  R2*7

  %{90%}
  \bar "||"
  \mark \default
  \tempo "Toujours retenu..."
  \key ef \major
  R2*2

  %{92%}
  \tempo "Tempo I"
  \transposition c'' % piccolo
  R2*6
  \makeCue "Fl. I" "fluteICue" #DOWN { R2*2 r4 r8 }
  \acciaccatura g'^\markup"Piccolo" bf-.\sff bf,2-^\>
  R2*2\!
  f16->\f\<(f8-.) g16-> f8-> \acciaccatura g d'-.-^\ff
  bf4\<(bf''8-.-^\!) r

  %{26%}
  \mark \default
  R2 r4 bf,8-.\p r
  R2*6
  \makeCue "Tpt. II" "trumpetIICue" #DOWN { R2 r4 }
  bf8-.\p r R2*2
  bf16\f->(af8) bf16 f8-> bf-> af16->[(f8) ef16] cf4-^
  R2*8

  \transposition c' % flute
  ef,8^\markup"flute"-.-^\ff r r4 \bar "|."
} % flute 2

oboeI = \relative c''' {
  \key ef \major
  \clef treble
  \global
  bf16\f->[(af8-.) bf16] f8-.[bf-.] af16->[(f8) ef16] cf4-^
  R2*7
  %{10%}
  \mark \default
  R2*6
  \makeCue "Tpt. III" "trumpetIIICue" #DOWN { R2*2 }
  %{18%}
  bf'16\f-\markup\italic"très net et très sec"->(af8)bf16 f8-. bf-.
  af16->(f8) ef16 cf8-. ef-.
  bf16(bf8-.) c!16\< bf8(\acciaccatura ef bf'-.\sff) bf,2-^\>
  \makeCue "Cl. I" "clarinetICue" #DOWN { R2*2\! r4 r8 }
  \acciaccatura g' d'-.-^\ff
  bf4-^\<~bf8-.\! r

  %{26%}
  \mark \default
  R2*8
  \makeCue "Tpt. II" "trumpetIICue" #DOWN { R2*4 }
  ef,2\f~ef4 r
  R2*7

  %{47%}
  \bar "||"
  \mark \default
  \tempo "Un peu moins vite"
  \key gf \major
  \makeCue "Cl. I" "clarinetICue" #DOWN { R2 r4 r8 }
  \acciaccatura cf,!\pp c-.
  \makeCue "Cl. I" "clarinetICue" #DOWN { R2 r4 r8 }
  \acciaccatura cf!\pp c-.
  R2*4
  \makeCue "Cl. I" "clarinetICue" #DOWN { R2 r4 r8 }
  \acciaccatura cf!\pp c-.
  R2 r4 r8 \acciaccatura cf!\pp c-.
  R2*2
  %{61%}
  \mark \default
  \makeCue "Hn. I" "hornICue" #DOWN { R2*2 r8 }
  \slurUp \acciaccatura d' ef-.\pp[\slurUp \acciaccatura c df-. \slurUp \acciaccatura d ef-.]
  r8 \slurUp \acciaccatura d ef-.[\slurUp \acciaccatura c df-. \slurUp \acciaccatura d ef-.]
  \makeCue "Hn. I" "hornICue" #DOWN { R2*2 r8 }
  \slurUp \acciaccatura d ef-.\pp[\slurUp \acciaccatura c df-. \slurUp \acciaccatura d ef-.]
  r8 \slurUp \acciaccatura d ef-.[\slurUp \acciaccatura c df-. \slurUp \acciaccatura d ef-.]

  \tempo "Cédez"
  r4 a,\mf\<(f'8 af!4->\f gf8)
  \tempo "A tempo"
  ef16\>(gf8) f16 df4 af16(cf8) bf16 df,4\p~df4
  \makeCue "Hn. I" "hornICue" #DOWN { r4 R2*5 r4 }
  df'--\f\<(a'!8 cf!4->\ff bf8)

  f16\>(af!8) gf16 ef4-- bf16(df8)cf16 f,8.-- gf16
  ef2\mp\> R2*6\!

  %{90%}
  \bar "||"
  \mark \default
  \tempo "Toujours retenu..."
  \key ef \major
  R2*2

  %{92%}
  \tempo "Tempo I"
  R2*4
  \makeCue "Tpt. III" "trumpetIIICue" #DOWN { R2*2 }
  %{18%}
  bf''16\f->(af8)bf16 f8-. bf-.
  af16->(f8) ef16 cf8-. ef-.
  bf16(bf8-.) c!16\< bf8(\acciaccatura ef bf'-.\sff) bf,2-^\>
  R2*2\!
  r4 r8 \acciaccatura g' d'-.-^\ff
  bf4-^\<~bf8-.\! r

  %{26%}
  \mark \default
  R2*10
  \makeCue "Tpt. II" "trumpetIICue" #DOWN { R2*2 }
  ef,2\f~ef4 r
  R2*6

  r4 cf8-^\f\<(bf32 af g f ef8-.-^\ff) 
  r8 r4 ef8-.-^\ff r r4 \bar "|."
} % oboe 1

oboeII = \relative c''' {
  \key ef \major
  \clef treble
  \global
  bf16\f->[(af8-.) bf16] f8-.[bf-.] af16->[(f8) ef16] cf4-^
  R2*7
  %{10%}
  \mark \default
  R2*6
  \makeCue "Tpt. III" "trumpetIIICue" #DOWN { R2*2 }
  %{18%}
  bf'16\f-\markup\italic"très net et très sec"->(af8)bf16 f8-. bf-.
  af16->(f8) ef16 cf8-. ef-.
  bf16(bf8-.) c!16\< bf8(\acciaccatura ef bf'-.\sff) bf,2-^\>
  \makeCue "Cl. I" "clarinetICue" #DOWN { R2*2\! r4 r8 }
  \acciaccatura g' d'-.-^\ff
  bf4-^\<~bf8-.\! r

  %{26%}
  \mark \default
  R2*8
  \makeCue "Tpt. II" "trumpetIICue" #DOWN { R2*3 r8 }
  ef,,\p\<(f c'-.->\!)
  cf2\f~cf4 r
  R2*7

  %{47%}
  \bar "||"
  \mark \default
  \tempo "Un peu moins vite"
  \key gf \major
  R2*14
  %{61%}
  \mark \default
  \makeCue "Hn. I" "hornICue" #DOWN { R2*2 r8 }
  cf-.\pp[cf-. cf-.] r8 cf-.[cf-. cf-.]
  \makeCue "Hn. I" "hornICue" #DOWN { R2*2 r8 }
  bf-.\pp[bf-. bf-.] r8 bf-.[bf-. bf-.]

  \tempo "Cédez"
  r4 a\mf\<(f'8 af!4->\f gf8)
  \tempo "A tempo"
  ef16\>(gf8) f16 df4 af16(cf8) bf16 df,4\p R2
  \makeCue "Hn. I" "hornICue" #DOWN { R2*5 r4 }
  df'--\f\<(a'!8 cf!4->\ff bf8)

  f16\>(af!8) gf16 ef4-- bf16(df8)cf16 f,8.-- gf16
  ef2\p\> R2*6\!

  %{90%}
  \bar "||"
  \mark \default
  \tempo "Toujours retenu..."
  \key ef \major
  R2*2

  %{92%}
  \tempo "Tempo I"
  R2*4
  \makeCue "Tpt. III" "trumpetIIICue" #DOWN { R2*2 }
  %{18%}
  bf''16\f->(af8)bf16 f8-. bf-.
  af16->(f8) ef16 cf8-. ef-.
  bf16(bf8-.) c!16\< bf8(\acciaccatura ef bf'-.\sff) bf,2-^\>
  \makeCue "Cl. I" "clarinetICue" #DOWN { R2*2\! r4 r8 }
  \acciaccatura g' d'-.-^\ff
  bf4-^\<~bf8-.\! r

  %{26%}
  \mark \default
  R2*8
  \makeCue "Tpt. II" "trumpetIICue" #DOWN { R2*3 r8 }
  ef,,\p\<(f c'-.->\!)
  cf2\f~cf4 r
  R2*6

  r4 cf8-^\f\<(bf32 af g f ef8-.-^\ff) 
  r8 r4 ef8-.-^\ff r r4 \bar "|."
} % oboe 2

clarinetIC = \relative c''' {
  \key ef \major
  \clef treble
  \global
  bf16\f->[(af8-.) bf16] f8-.[bf-.] af16->[(f8) ef16] cf4-^
  R2 r4 r8 g,^\sff-.-^
  R2*5
  %{10%}
  \mark \default
  bf'16\f-\markup\italic"très net et très sec"->(af8)bf16 f8-. bf-.
  af16->(f8) ef16 cf8-. ef-.
  bf16(bf8-.) c!16\< bf8(\acciaccatura ef bf'-.\sff) bf,2-^\>\!
  bf16->\mf(af8) bf16 c8-. af-.
  bf16->(af8) bf16 cf8-. af-.
  R2*2
  %{18%}
  bf''16\f->(af8)bf16 f8-. bf-.
  af16->(f8) ef16 cf8-. ef-.
  bf16(bf8-.) c!16\< bf8(\acciaccatura ef bf'-.\sff) bf,2-^\>
  bf,16\mp->\<(bf8-.) c16 bf8-. df-. ef-.-> f-.-> ef-.-> gf-.->\!
  f16->\f\<(f8-.) g16-> f8-> \acciaccatura g d'-.-^\ff
  bf4-^\<~bf8-.\! r

  %{26%}
  \mark \default
  ef,16\p\<(f8\!) g16 f8-.\>(ef-.\!) f2--
  ef16\<(f8\!) g16 f8-.\>(ef-.\! f-.) ef\<(f bf-.->)\!
  R2*4
  bf,8-.\p bf'-. bf,-. bf'-. bf,-. bf'-. bf,-. bf'-.
  bf,-. bf'-. bf,-. bf'-. bf,-. bf'-.\< bf,-. r
  bf''16\f->(af8) bf16 f8-> bf-> af16->[(f8) ef16] cf4-^
  r4 r8 g,\ff-.-^
  R2*5
  \makeClefCue "Bsn. II" "bassoonIICue" #DOWN bass treble { R2 }

  %{47%}
  \bar "||"
  \mark \default
  \tempo "Un peu moins vite"
  \key gf \major
  r8 \acciaccatura c\pp df-. r \acciaccatura c df-.
  r \acciaccatura bf cf!-. r \acciaccatura e f-.
  r \acciaccatura c df-. r \acciaccatura c df-.
  r \acciaccatura bf cf!-. r \acciaccatura e f-.
  r \acciaccatura c df-. r4 r \acciaccatura c8 df-. r
  R2 r4 \acciaccatura c8 df-. r
  r8 \acciaccatura c\pp df-. r \acciaccatura c df-.
  r \acciaccatura bf cf!-. r \acciaccatura e f-.
  r \acciaccatura c df-. r \acciaccatura c df-.
  r \acciaccatura bf cf!-. r \acciaccatura e f-.
  r \acciaccatura c df-. r4 R2

  %{61%}
  \mark \default
  R2*2
  \makeCue "Ob. I" "oboeICue" #UP { R2*2 }
  \makeCue "Hn. I" "hornICue" #DOWN { R2*2 }
  \makeCue "Ob. I" "oboeICue" #UP { R2*2 }
  \tempo "Cédez"
  r4 a\mf\<(f'8 af!4->\f gf8)
  \tempo "A tempo"
  bf8\>([af gf f] ef[df cf bf]\p~bf) r
  \makeCue "Hn. I" "hornICue" #DOWN { r4 R2*5 }
  \partcombineApart r4 df--\f\<(a'!8 cf!4->\ff bf8)
  ef,2 ef8\>(df \times 2/3 { cf bf af) } gf4\p r
  R2
  \tag #'part \pageBreak
  r8. bf'16\f\>(af8-.) bf-.
  r8.\! bf16\f\>(af8-.) bf-.
  R2\!
  r8. bf16\p\>(af8-.) bf-.
  r8.\! bf16\p\>(af8-.) bf-.\!

  %{90%}
  \bar "||"
  \mark \default
  \tempo "Toujours retenu..."
  \key ef \major
  \partcombineAutomatic
  bf16\pp(af8) bf16 f8-. bf-. af16\>(f8\!) ef16 cf8-. ef-.
  
  %{92%}
  \tempo "Tempo I"
  bf16\mp(bf8-.) c!16\< bf8(\acciaccatura ef bf'-.) bf,4.-^\> r8
  bf16->\p(af8) bf16 c8-. af-.
  bf16->(af8) bf16 cf8-. af-.
  R2*2
  %{98%}
  bf''16\f->(af8)bf16 f8-. bf-.
  af16->(f8) ef16 cf8-. ef-.
  bf16(bf8-.) c!16\< bf8(\acciaccatura ef bf'-.\sff) bf,2-^\>
  bf,16\mp->\<(bf8-.) c16 bf8-. df-. ef-.-> f-.-> ef-.-> gf-.->\!
  f16->\f\<(f8-.) g16-> f8-> \acciaccatura g d'-.-^\ff
  bf4-^\<~bf8-.\! r

  %{26%}
  \mark \default
  ef,16\p\<(f8\!) g16 f8-.\>(ef-.\!) f2--
  ef16\<(f8\!) g16 f8-.\>(ef-.\! f-.) ef\<(f bf-.->)\!
  R2*4
  bf,8-.\p bf'-. bf,-. bf'-. bf,-. bf'-. bf,-. bf'-.
  bf,-. bf'-. bf,-. bf'-. bf,-. bf'-.\< bf,-. r
  bf''16\f->(af8) bf16 f8-> bf-> af16->[(f8) ef16] cf4-^
  r4 r8 g\ff-.-^
  R2*5

  r4 cf8-^\f\<(bf32 af g f ef8-.-^\ff) 
  r8 r4 ef8-.-^\ff r r4 \bar "|."
} % clarinet 1

clarinetIIC = \relative c'' {
  \key ef \major
  \clef treble
  \global
  bf16\f->[(af8-.) bf16] f8-.[bf-.] af16->[(f8) ef16] cf4-^
  R2 r4 r8 d,^\sff-.-^
  R2*5
  %{10%}
  \mark \default
  bf''16\f-\markup\italic"très net et très sec"->(af8)bf16 f8-. bf-.
  af16->(f8) ef16 cf8-. ef-.
  bf16(bf8-.) c!16\< bf8(\acciaccatura ef bf'-.\sff) bf,2-^\>\!
  bf16->\mf(af8) bf16 c8-. af-.
  bf16->(af8) bf16 cf8-. af-.
  R2*2
  %{18%}
  bf'16\f->(af8)bf16 f8-. bf-.
  af16->(f8) ef16 cf8-. ef-.
  bf16(bf8-.) c!16\< bf8(\acciaccatura ef bf'-.\sff) bf,2-^\>
  bf16\mp->\<(bf8-.) c16 bf8-. df-. ef-.-> f-.-> ef-.-> gf-.->\!
  f16->\f\<(f8-.) g16-> f8-> \acciaccatura g d'-.-^\ff
  bf4-^\<~bf8-.\! r

  %{26%}
  \mark \default
  c,16\p\<(d8\!) ef16 d8-.\>(c-.\!) d2--
  c16\<(d8\!) ef16 d8-.\>(c-.\! d-.) c\<(d g-.->)\!
  R2*4
  af,8-.\p af'-. af,-. af'-. af,-. af'-. af,-. af'-.
  g,-. g'-. g,-. g'-. g,-. g'-.\< g,-. r
  bf'16\f->(af8) bf16 f8-> bf-> af16->[(f8) ef16] cf4-^
  r4 r8 d,\ff-.-^
  R2*5
  \makeClefCue "Bsn. II" "bassoonIICue" #DOWN bass treble { R2 }

  %{47%}
  \bar "||"
  \mark \default
  \tempo "Un peu moins vite"
  \key gf \major
  r8 \acciaccatura a'\pp bf-. r \acciaccatura a bf-.
  r \acciaccatura g af!-. r \acciaccatura af a-.
  r \acciaccatura a bf-. r \acciaccatura a bf-.
  r \acciaccatura g af!-. r \acciaccatura af a-.
  r \acciaccatura a bf-. r4 r \acciaccatura a8 bf-. r
  R2 r4 \acciaccatura bf8 cf-. r
  r8 \acciaccatura a\pp bf-. r \acciaccatura a bf-.
  r \acciaccatura g af!-. r \acciaccatura af a-.
  r \acciaccatura a bf-. r \acciaccatura a bf-.
  r \acciaccatura g af!-. r \acciaccatura af a-.
  r \acciaccatura a bf-. r4 R2

  %{61%}
  \mark \default
  R2*8
  \makeCue "Cl. I" "clarinetICue" #DOWN { R2*2 r8 }
  f'\f\>([ef df] cf4 df\p~df2)
  R2*5
  \makeCue "Cl. I" "clarinetICue" #UP { R2*2 }
  af2\f\>~af~af4\p\> r\! R2*6

  \pageBreak
  %{90%}
  \bar "||"
  \mark \default
  \tempo "Toujours retenu..."
  \key ef \major
  \makeCue "Cl. I" "clarinetICue" #DOWN { R2*2 }

  %{92%}
  \tempo "Tempo I"
  bf16\mp(bf8-.) c!16\< bf8(\acciaccatura ef bf'-.) bf,4.-^\> r8
  bf16->\p(af8) bf16 c8-. af-.
  bf16->(af8) bf16 cf8-. af-.
  R2*2
  bf'16\f->(af8)bf16 f8-. bf-.
  af16->(f8) ef16 cf8-. ef-.
  bf16(bf8-.) c!16\< bf8(\acciaccatura ef bf'-.\sff) bf,2-^\>
  bf16\mp->\<(bf8-.) c16 bf8-. df-. ef-.-> f-.-> ef-.-> gf-.->\!
  f16->\f\<(f8-.) g16-> f8-> \acciaccatura g d'-.-^\ff
  bf4-^\<~bf8-.\! r

  %{26%}
  \mark \default
  c,16\p\<(d8\!) ef16 d8-.\>(c-.\!) d2--
  c16\<(d8\!) ef16 d8-.\>(c-.\! d-.) c\<(d g-.->)\!
  R2*4
  af,8-.\p af'-. af,-. af'-. af,-. af'-. af,-. af'-.
  g,-. g'-. g,-. g'-. g,-. g'-.\< g,-. r
  bf'16\f->(af8) bf16 f8-> bf-> af16->[(f8) ef16] cf4-^
  r4 r8 bf\ff-.-^
  R2*5

  r4 cf8-^\f\<(bf32 af g f ef8-.-^\ff) 
  r8 r4 ef8-.-^\ff r r4 \bar "|."
} % clarinet 2

bassoonI = \relative c' {
  \key ef \major
  \clef bass
  \global
  \makeClefCue "Cl. I" "clarinetICue" #UP treble bass { R2*2 }
  r16 af\f\< f ef cf4-^\!
  r4 r8 bf\sff-.-^
  R2*5
  %{10%}
  \mark \default
  R2*4
  \makeCue "Cl. I" "clarinetICue" #UP { R2*2 }
  bf'16\f\<(g8) f16-. ef8-. d-. c-. g-.-> c-.-> d-.->\!
  bf-.\mf af'-. bf,-. af'-. bf,-. af'-. bf,-. af'-.
  bf,-.\< g'-. bf,-. g'-.->\> bf,-. g'-. bf,-. g'-.\!
  df-.\mp\< af'-. df,-. a'-. df,-. bf'-. df,-. cf'-.\!
  r4 r8 ef\ff-.-^ d4-^\<(bf,8-.-^\!) r8

  %{26%}
  \mark \default
  R2*4
  c'2--\p~c ef--\pp
  r16 bf,\f\<(c d c8) bf-.\ff
  R2*4
  \makeClefCue "Cl. I" "clarinetICue" #UP treble bass { R2*2 }
  r16 af'\f(f ef) cf8-. bf-.-^\ff
  R2*5
  \makeCue "Bsn. II" "bassoonIICue" #DOWN { R2 }

  %{47%}
  \bar "||"
  \mark \default
  \tempo "Un peu moins vite"
  \key gf \major
  df2\pp--~df \acciaccatura ef8 df2--~df df~df
  R2*2
  df2\pp--~df \acciaccatura ef8 df2--~df df~df~
  
  %{61%}
  \mark \default
  df8 r r4 R2*7
  \tempo "Cédez"
  \clef tenor
  r4 a'\mf\<(f'8 af!4->\f gf8)
  \tempo "A tempo"
  r8 f\>([ef df] cf4 df\p~df2)
  R2*5
  \makeClefCue "Ob. I" "oboeICue" #UP treble bass { R2*2 }
  gf,2\f\>~gf4 r\!
  bf,16\p(df8 cf16) df,16\>(ef8 f16) ef8(df\!~df4~df2~df)
  bf'16\p(df8 bf16) df,16\>(ef8 f16) ef8(df\!~df4~df2)
  
  %{90%}
  \bar "||"
  \mark \default
  \key ef \major
  R2*2

  %{92%}
  \tempo "Tempo I"
  R2*2
  \makeCue "Cl. I" "clarinetICue" #UP { R2*2 }
  bf''16\f\<(g8) f16-. ef8-. d-. c-. g-.-> c-.-> d-.->\!
  bf-.\mf af'-. bf,-. af'-. bf,-. af'-. bf,-. af'-.
  bf,-.\< g'-. bf,-. g'-.->\> bf,-. g'-. bf,-. g'-.\!
  df-.\mp\< af'-. df,-. a'-. df,-. bf'-. df,-. cf'-.\!
  r4 r8 ef\ff-.-^ d4-^\<(bf,8-.-^\!) r8

  %{26%}
  \mark \default
  R2*4
  \makeCue "Tuba" "tubaCue" #DOWN { R2*3 }
  r16 bf\p\<(c d c8-.\f) bf-.-^\sff
  R2*6
  r16 af'\f(f ef) cf8-. bf-.-^\ff
  R2*5

  r4 cf'8-^\f\<(bf32 af g f ef8-.-^\ff) 
  r8 r4 ef8-.-^\ff r r4 \bar "|."
} % bassoon 1

bassoonII = \relative c' {
  \key ef \major
  \clef bass
  \global
  \makeClefCue "Cl. I" "clarinetICue" #UP treble bass { R2*2 }
  r16 af\f\< f ef cf4-^\!
  r4 r8 bf,\sff-.-^
  R2*5
  %{10%}
  \mark \default
  R2*4
  \makeCue "Cl. I" "clarinetICue" #UP { R2*2 }
  bf'16\f\<(g8) f16-. ef8-. d-. c-.
  g'-.-> c,-.-> d-.->\!
  ef-.\mf f'-. ef,-. f'-. ef,-. f'-. ef,-. f'-.
  ef,-.\< f'-. ef,-. f'-.->\> ef,-. f'-. ef,-. f'-.\!
  gf,-.\mp\< gf'-. gf,-. gf'-. gf,-. gf'-. gf,-. gf'-.\!
  r4 r8 f-.-^\ff bf4-^\<(bf,,8-.-^\!) r

  %{26%}
  \mark \default
  R2*4
  af''2--\p~af g--\pp
  r16 bf,\f\<(c d c8) bf-.\ff
  R2*4
  \makeClefCue "Cl. I" "clarinetICue" #UP treble bass { R2*2 }
  r16 af\f(f ef) cf8-. bf-.-^\ff
  R2*5

  ef4\p(f)
  %{47%}
  \bar "||"
  \mark \default
  \tempo "Un peu moins vite"
  \key gf \major
  gf8-.\pp r gf-. r gf-. r gf-. r
  gf-. r gf-. r gf-. r gf-. r
  r gf-. f-. ef-. df4-. r
  r8 gf'-.\p\> f-. ef-. df-. cf-. bf-. af-.
  gf-.\pp r gf-. r gf-. r gf-. r
  gf-. r gf-. r gf-. r gf-. r
  r gf-. f-. ef-. df-. r r4

  %{61%}
  \mark \default
  R2*8
  \makeCue "Bsn. I" "bassoonICue" #UP { R2*2 }
  r8 af''4.\f gf8\>([f ef df]\p~df8) r r4
  R2*5
  \makeClefCue "Ob. I" "oboeICue" #UP treble bass { R2*2 }
  cf2\f\>~cf4 r\!
  R2*7

  %{90%}
  \bar "||"
  \mark \default
  \key ef \major
  R2*2

  %{92%}
  \tempo "Tempo I"
  R2*2
  \makeCue "Cl. I" "clarinetICue" #UP { R2*2 }
  bf16\f\<(g8) f16-. ef8-. d-. c-.
  g'-.-> c,-.-> d-.->\!
  ef-.\mf f'-. ef,-. f'-. ef,-. f'-. ef,-. f'-.
  ef,-.\< f'-. ef,-. f'-.->\> ef,-. f'-. ef,-. f'-.\!
  gf,-.\mp\< gf'-. gf,-. gf'-. gf,-. gf'-. gf,-. gf'-.\!
  r4 r8 f-.-^\ff bf4-^\<(bf,,8-.-^\!) r

  %{26%}
  \mark \default
  R2*4
  \makeCue "Tuba" "tubaCue" #DOWN { R2*3 }
  r16 bf\p\<(c d c8-.\f) bf-.-^\sff
  R2*6
  r16 af'\f(f ef) cf8-. bf-.-^\ff
  R2*5

  r4 cf'8-^\f\<(bf32 af g f ef8-.-^\ff) 
  r8 r4 ef8-.-^\ff r r4 \bar "|."
} % bassoon 2

clarinetIBf = \transpose bf c' { \relative c' { \transposition c' \clarinetIC } }
clarinetIIBf = \transpose bf c' { \relative c' { \transposition c' \clarinetIIC } }

%%%%%%%% CUES %%%%%%%%
\addQuote "fluteICue" { \removeCues \fluteI }
\addQuote "fluteIICue" { \removeCues \fluteII }
\addQuote "oboeICue" { \removeCues \oboeI }
\addQuote "oboeIICue" { \removeCues \oboeII }
\addQuote "clarinetICue" { \removeCues \clarinetIC }
\addQuote "clarinetIICue" { \removeCues \clarinetIIC }
\addQuote "bassoonICue" { \removeCues \bassoonI }
\addQuote "bassoonIICue" { \removeCues \bassoonII }

%%%%%%%% PARTS %%%%%%%%
fluteIPart = \makePart "Flute I" "Fl. I" "flute" \fluteI
fluteIIPart = \makePart "Fl. II/Picc" "Fl. II/Picc" "flute" \fluteII
flutePartsMarkup = \markup \column { \right-align "Fl. I" \right-align "Fl. II" }
fluteParts = \makePartWithSoloText \flutePartsMarkup \flutePartsMarkup "flute" "I." "II."
{ \partcombine \fluteI \fluteII }

oboeIPart = \makePart "Oboe I" "Ob. I" "oboe" \oboeI
oboeIIPart = \makePart "Oboe II" "Ob. II" "oboe" \oboeII
oboePartsMarkup = \markup \column { \right-align "Ob. I" \right-align "Ob. II" }
oboeParts = \makePartWithSoloText \oboePartsMarkup \oboePartsMarkup "oboe" "I." "II."
{ \partcombine \oboeI \oboeII }

clarinetIPart = \makePart "B♭ Clarinet I" "B♭ Cl. I" "clarinet" \clarinetIBf
clarinetIIPart = \makePart "B♭ Clarinet II" "B♭ Cl. II" "clarinet" \clarinetIIBf
clarinetPartsMarkup = \markup \column { \right-align "B♭ Cl. I" \right-align "B♭ Cl. II" }
clarinetParts = \makePartWithSoloText \clarinetPartsMarkup \clarinetPartsMarkup "clarinet" "I." "II."
{ \partcombine \clarinetIBf \clarinetIIBf }

bassoonIPart = \makePart "Bassoon I" "Bsn. I" "bassoon" \bassoonI
bassoonIIPart = \makePart "Bassoon II" "Bsn. II" "bassoon" \bassoonII
bassoonPartsMarkup = \markup \column { \right-align "Bsn. I" \right-align "Bsn. II" }
bassoonParts = \makePartWithSoloText \bassoonPartsMarkup \bassoonPartsMarkup "bassoon" "I." "II."
{ \partcombine \bassoonI \bassoonII }

woodwindSParts = \new StaffGroup <<
  \removeCues \fluteIPart
  \removeCues \fluteIIPart % picc
  \removeCues \oboeParts
  \removeCues \clarinetParts
  \removeCues \bassoonParts
>>
