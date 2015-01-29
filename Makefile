MANUSCRIPT = ggv
TEX = pdflatex -interaction nonstopmode
BIB = bibtex

all: $(MANUSCRIPT).pdf

clean::
	rm -fv *.pdf *.aux *.log *.bbl *.blg *.toc *.out *.lot *.lof *.gz

$(MANUSCRIPT).pdf: $(MANUSCRIPT).tex $(MANUSCRIPT).bib
	$(TEX) $(MANUSCRIPT)
	$(BIB) $(MANUSCRIPT)



