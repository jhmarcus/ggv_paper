MANUSCRIPT = ggv

all: $(MANUSCRIPT).pdf

clean: $(MANUSCRIPT).pdf
	rm $(MANUSCRIPT).pdf

$(MANUSCRIPT).pdf: $(MANUSCRIPT).md
	pandoc --filter pandoc-citeproc -S --standalone $(MANUSCRIPT).md --template=plos-one.latex -o $(MANUSCRIPT).pdf
