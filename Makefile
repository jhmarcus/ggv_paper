MANUSCRIPT = ggv

all: $(MANUSCRIPT).pdf

clean:
	rm $(MANUSCRIPT).pdf

$(MANUSCRIPT).pdf: $(MANUSCRIPT).md template.latex
	pandoc --filter pandoc-citeproc -S --standalone $(MANUSCRIPT).md --template=template.latex -o $(MANUSCRIPT).pdf
