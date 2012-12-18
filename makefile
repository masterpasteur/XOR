LTX=pdflatex
VEC=rsvg-convert
PDF=xor.pdf

all:$(PDF)

# ---------------------------------------------------------

logoEEL11.svg:
	cp Figures/logoEEL11.svg .

logoEEL11.pdf: logoEEL11.svg
	$(VEC) -f pdf -o logoEEL11.pdf logoEEL11.svg
	mv logoEEL11.pdf Figures
	rm logoEEL11.svg
	
xor_Venn.svg:
	cp Figures/xor_Venn.svg .
	
xor_Venn.pdf: xor_Venn.svg
	$(VEC) -f pdf -o xor_Venn.pdf xor_Venn.svg
	mv xor_Venn.pdf Figures
	rm xor_Venn.svg
	
# ---------------------------------------------------------

$(PDF): sketch.sty \
	Sections/prep.tex \
	Sections/dialogues_intro.tex \
	Sections/dialogues_disc.tex \
	Sections/dialogues_evang.tex \
	Sections/insp.tex \
	xor.tex
	logoEEL11.pdf
	$(LTX) xor.tex

clean:
	rm -f *.aux *.log *.out *.toc
	
mrproper: clean
	rm -f *.pdf Figures/*.pdf