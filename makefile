PDF=xor_proj.pdf

all:$(PDF)

$(PDF):xor_proj.tex
	pdflatex xor_proj.tex

clean:
	rm *.aux *.log *.nav *.out *.pdf *.snm *.toc