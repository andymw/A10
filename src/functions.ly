% -*- master: ../A10WindOrch.ly;

\include "english.ly"
\include "articulate.ly"
\version "2.16.2"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% FUNCTIONS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

makeMultiStaffInstrument =
#(define-music-function
  (parser location insName shortInsName midiIns rhpart lhpart pdynamics)
  (markup? markup? string? ly:music? ly:music? ly:music?) #{
    \new PianoStaff <<
      \set PianoStaff.instrumentName = \markup \small #insName
      \set PianoStaff.shortInstrumentName = \markup \small #shortInsName
      \set PianoStaff.midiInstrument = #midiIns
      \new Staff { #rhpart }
      \new Dynamics { #pdynamics }
      \new Staff { #lhpart }
    >>
  #})

makeDivisi =
#(define-music-function
  (parser location insName shortInsName partone parttwo)
  (markup? markup? ly:music? ly:music?) #{
    \new StaffGroup <<
      \set StaffGroup.systemStartDelimiter = #'SystemStartSquare
      \set StaffGroup.instrumentName =
      \markup \column { \center-align #insName "div." }
      \set StaffGroup.shortInstrumentName =
      \markup \column { \center-align #shortInsName "div." }
      #partone
      #parttwo
    >>
  #})

makeCue =
#(define-music-function
  (parser location insName cueInsName direc notes)
  (string? string? scheme? ly:music?) #{
    \tag #'part { \new CueVoice { \set instrumentCueName = #insName } }
    \cueDuring #cueInsName #direc { #notes } #})

makeClefCue =
#(define-music-function
  (parser location insName cueInsName direc clef origclef notes)
  (string? string? scheme? scheme? scheme? ly:music?) #{
    \tag #'part { \new CueVoice { \set instrumentCueName = #insName \clef #clef } }
    \cueDuring #cueInsName #direc { #notes } \clef #origclef #})

setInsName =
#(define-music-function
  (parser location insName shortInsName midiIns)
  (markup? markup? string?) #{
    \set Staff.instrumentName = #insName
    \set Staff.shortInstrumentName = #shortInsName
    \set Staff.midiInstrument = #midiIns
  #})

setInsNameNoInstrument =
#(define-music-function
  (parser location insName shortInsName)
  (markup? markup?) #{
    \set Staff.instrumentName = #insName
    \set Staff.shortInstrumentName = #shortInsName
  #})

makePart =
#(define-music-function
  (parser location insName shortInsName midiIns part)
  (markup? markup? string? ly:music?)
  #{ \new Staff { \setInsName #insName #shortInsName #midiIns #part } #})

setInsNameWithSoloText =
#(define-music-function
  (parser location insName shortInsName midiIns soloText soloIIText)
  (markup? markup? string? string? string?) #{
    \set Staff.instrumentName = \markup \small #insName
    \set Staff.shortInstrumentName = \markup \smaller #shortInsName
    \set Staff.midiInstrument = #midiIns
    \set Staff.soloText = #soloText
    \set Staff.soloIIText = #soloIIText
  #})

makePartWithSoloText =
#(define-music-function
  (parser location insName shortInsName midiIns soloText soloIIText part)
  (markup? markup? string? string? string? ly:music?)
  #{ \new Staff { \setInsNameWithSoloText #insName #shortInsName #midiIns #soloText #soloIIText #part } #})

makePercussionPart =
#(define-music-function
  (parser location insName shortInsName part)
  (markup? markup? ly:music?)
  #{
    \new DrumStaff \with {
      \override StaffSymbol #'line-count = #1
      \override MultiMeasureRest #'expand-limit = #1
    } {
      \setInsNameNoInstrument #insName #shortInsName #part
    }
  #})

removeCues =
#(define-music-function (parser location part) (ly:music?)
   #{ \removeWithTag #'part { \killCues #part } #})

partrest = { { \tag #'part { R2^\markup\number 1 } } { \tag #'score { R2 } } }

%% additional things
semprepMarkup = \markup { \halign #-0.8 \italic "sempre" \dynamic "p" }
