LTX=pdflatex
VEC=rsvg-convert
PDF=xor.pdf

all:$(PDF)

# ---------------------------------------------------------

Figures/logoEEL11.pdf: Figures/logoEEL11.svg
	$(VEC) -f pdf -o logoEEL11.pdf Figures/logoEEL11.svg
	mv logoEEL11.pdf Figures
	
Figures/xor_Venn.pdf: Figures/xor_Venn.svg
	$(VEC) -f pdf -o xor_Venn.pdf Figures/xor_Venn.svg
	mv xor_Venn.pdf Figures
	
# ---------------------------------------------------------

$(PDF): sketch.sty \
	Sections/prep.tex \
	Sections/dialogues_intro.tex \
	Sections/dialogues_disc.tex \
	Sections/dialogues_evang.tex \
	Sections/insp.tex \
	xor.tex \
	Figures/logoEEL11.pdf \
	Figures/xor_Venn.pdf
	$(LTX) xor.tex

clean:
	rm -f *.aux *.log *.out *.toc
	
mrproper: clean
	rm -f *.pdf Figures/*.pdf