DIR = $(CURDIR)
TEX = $(wildcard $(CURDIR)/*.tex)
PDF = $(patsubst %.tex,%.pdf,$(TEX))

.phony: clean debug

$(PDF):
	latexmk

clean:
	rm -rf *.dvi *.log *.pdf *.bcf *.blg *.fdb_latexmk *.fls *.out *.run.xml *.synctex.gz *.bbl *.blg *.aux *.xmpi

debug:
	@echo TEX : $(TEX)
	@echo PDF : $(PDF)