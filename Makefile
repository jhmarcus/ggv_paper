paper.pdf: paper.Rmd figures/png/figure1.png figures/png/figure2.png figures/png/figure3.png figures/png/figure4.png figures/png/figure5.png
	R -e "rmarkdown::render('paper.Rmd')"
	open paper.pdf

figures/png/figure2.png: figures/svg/figure2.svg
	inkscape -z -f figures/svg/figure2.svg -e figures/png/figure2.png

figures/png/figure3.png: figures/svg/figure3.svg
	inkscape -z -f figures/svg/figure3.svg -e figures/png/figure3.png

figures/png/figure4.png: figures/svg/figure4.svg
	inkscape -z -f figures/svg/figure4.svg -e figures/png/figure4.png

figures/png/figure5.png: figures/svg/figure5.svg
	inkscape -z -f figures/svg/figure5.svg -e figures/png/figure5.png

clean:
	rm paper.tex
	rm paper.pdf

open:
	open paper.pdf

