DIR = $(CURDIR)
TEX = $(wildcard $(CURDIR)/*.tex)
PDF = $(patsubst %.tex,%.pdf,$(TEX))

.phony: clean debug

$(PDF):
	pdflatex $(patsubst %.pdf,%.tex,$@)

clean:
	rm -rf *.dvi *.log *.pdf

debug:
	@echo TEX : $(TEX)
	@echo PDF : $(PDF)