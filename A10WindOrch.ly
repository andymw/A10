% main.
% lilypond -dno-point-and-click
% to avoid Frescobaldi link to source code. (not necessary)

\include "english.ly"
\include "articulate.ly"
\version "2.16.2"

\include "src/functions.ly"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% Paper, header, global
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%{
  % make noteheads, rests, other things a bit smaller on the staff
  setNoteSize = {
  \override NoteHead #'font-size = #-1.5
  \override Script #'font-size = #-1.5
  \override Rest #'font-size = #-1.5
  \override Accidental #'font-size = #-1.5
  \override Dots #'font-size = #-1.5
  \override Beam #'beam-thickness = #0.59
  }
  
  % make time signature, key signature, clefs smaller
  setStaffElements = {
  \override Staff.Clef #'font-size = #-2
  \override Staff.TimeSignature #'font-size = #-1
  \override Staff.KeySignature #'font-size = #-1.5
  \override Staff.BarLine #'hair-thickness = #1
  \override Staff.BarLine #'thick-thickness = #3.5
  \override Staff.MultiMeasureRest #'font-size = #-2
  }
%}

\paper {
  left-margin = 1.05\in
  right-margin = 0.5\in
  top-margin = 0.4\in
  bottom-margin = 0.4\in
  paper-width = 8.5\in
  paper-height = 11\in
  
  %page-count = #3
  %max-systems-per-page = #4
  
  % increases the spacing between first system and title stuff
  %markup-system-spacing #'basic-distance = #16
  % for the last page, stretch to fill
  %ragged-last-bottom = ##f
  
  %#(define fonts
  %   (make-pango-font-tree "Adobe Jenson Pro" "Optima" "Courier New"
  %     (/ staff-height pt 20)))
}

% global header
\header {
  title    = \markup { "A10: " \italic "Golliwogg's Cakewalk" }
  subtitle = \markup { "from \"Children's Corner\"" }
  composer = \markup { "Claude Debussy" }
  arranger = \markup { "arr. Andy M. Wang" }
  tagline  = \markup { "" }
}

global = {
  \numericTimeSignature
  \time 2/4
  \tempo "Allegro giusto" 4=100
  \compressFullBarRests
  \override MultiMeasureRest #'expand-limit = 1
  \set Score.markFormatter = #format-mark-box-alphabet
}

%%%% NOTES AND STAVES FOR PARTS
\include "src/woodwindNotes.ly"
\include "src/brassNotes.ly"
\include "src/percussionNotes.ly"

%%%%%%%% SCORE %%%%%%%%
\include "src/score.ly"

%%%%%%%% PARTS %%%%%%%%
\include "src/parts.ly"
