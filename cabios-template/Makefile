main.pdf: main.tex main.bib
	pdflatex main 
	bibtex main
	pdflatex main
	pdflatex main
	open main.pdf

clean:
	rm -fv *.aux *.log *.bbl *.blg *.toc *.out *.lot *.lof *.gz
