paper.pdf: paper.Rmd
	R -e "rmarkdown::render('paper.Rmd')"
	open paper.pdf

clean:
	rm paper.tex
	rm paper.pdf

open:
	open paper.pdf
