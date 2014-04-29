all:
	rm -rf output/
	mkdir -p output/
	lilypond -dno-point-and-click --loglevel=PROGRESS A10WindOrch.ly
	pdftk output/WangAndy_A10WindOrchParts.pdf output/WangAndy_A10WindOrchPercussion.pdf \
		cat output output/WangAndy_A10WindOrchPartsAll.pdf
	rm -f output/WangAndy_A10WindOrchParts.pdf output/WangAndy_A10WindOrchPercussion.pdf
	mv output/WangAndy_A10WindOrchPartsAll.pdf output/WangAndy_A10WindOrchParts.pdf

clean:
	rm -rf output/
	mkdir -p output/

frescobaldi:
	frescobaldi A10WindOrch.ly src/functions.ly src/score.ly src/parts.ly \
		src/woodwindNotes.ly src/brassNotes.ly src/percussionNotes.ly &

count:
	wc -l *.ly src/*.ly
