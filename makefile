LTX=pdflatex
PDF=xor.pdf

all:$(PDF)

$(PDF):sketch.sty \
	Sections/prep.tex \
	Sections/dialogues_intro.tex \
	Sections/dialogues_disc.tex \
	Sections/dialogues_evang.tex \
	Sections/insp.tex \
	xor.tex
	$(LTX) xor.tex

clean:
	rm *.aux *.log *.out *.pdf *.toc