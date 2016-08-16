main.pdf: main.tex main.bib
	pdflatex main 
	bibtex main
	pdflatex main
	pdflatex main

supplement.pdf: supplement.tex
	pdflatex supplement
	pdflatex supplement
	pdflatex supplement

clean:
	rm -fv *.aux *.log *.bbl *.blg *.toc *.out *.lot *.lof *.gz
