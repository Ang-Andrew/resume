.phony: clean pdf

pdf:
	pdflatex *.tex

clean:
	rm -rf *.dvi *.log *.pdf