LATEX = pdflatex -interaction=nonstopmode -file-line-error
BIBTEX = bibtex

BASENAME = prml_errata

all:
	$(LATEX) $(BASENAME)
	$(BIBTEX) $(BASENAME)
	$(LATEX) $(BASENAME)
	$(LATEX) $(BASENAME)

clean:
	rm -f $(BASENAME).{aux,bbl,blg,log,out,pdf}
	rm -f fig/*-converted-to.*

