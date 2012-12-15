PDF=xor.pdf

all:$(PDF)

$(PDF):xor.tex
	pdflatex xor.tex

clean:
	rm *.aux *.log *.nav *.out *.pdf *.snm *.toc