paper.pdf: paper.tex paper.bib figures/pdf/figure1.pdf figures/png/figure2.png figures/pdf/figure3.pdf figures/pdf/figure4.pdf figures/pdf/figure5.pdf	
	pdflatex paper.tex
	bibtex paper
	pdflatex paper.tex
	pdflatex paper.tex
	open paper.pdf

figures/pdf/figure2.pdf: figures/svg/figure2.svg
	rsvg-convert -f pdf -o figures/pdf/figure2.pdf figures/svg/figure2.svg

figures/pdf/figure3.pdf: figures/svg/figure3.svg
	rsvg-convert -f pdf -o figures/pdf/figure3.pdf figures/svg/figure3.svg

figures/png/figure3.png: figures/svg/figure3.svg
	rsvg-convert -f png -o figures/png/figure3.png figures/svg/figure3.svg

figures/pdf/figure4.pdf: figures/svg/figure4.svg
	rsvg-convert -f pdf -o figures/pdf/figure4.pdf figures/svg/figure4.svg

figures/pdf/figure5.pdf: figures/svg/figure5.svg
	rsvg-convert -f pdf -o figures/pdf/figure5.pdf figures/svg/figure5.svg

figure/pdf/pie_blue.pdf: figures/svg/pie_blue.svg
	rsvg-convert -f pdf -o figures/pdf/pie_blue.pdf figures/svg/pie_blue.svg

figure/pdf/pie_green.pdf: figures/svg/pie_green.svg
	rsvg-convert -f pdf -o figures/pdf/pie_green.pdf figures/svg/pie_green.svg

figure/pdf/pie_red.pdf: figures/svg/pie_red.svg
	rsvg-convert -f pdf -o figures/pdf/pie_red.pdf figures/svg/pie_red.svg

figure/pdf/pie_purple.pdf: figures/svg/pie_purple.svg
	rsvg-convert -f pdf -o figures/pdf/pie_purple.pdf figures/svg/pie_purple.svg

clean:
	rm -fv *.pdf *.aux *.log *.bbl *.blg *.toc *.out *.lot *.lof *.gz
