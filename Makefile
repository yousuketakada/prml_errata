LATEXMK = latexmk -bibtex -pdf -interaction=nonstopmode -file-line-error

BASENAME = prml_errata

all:
	$(LATEXMK) $(BASENAME)

clean:
	$(LATEXMK) -C $(BASENAME)
	rm -f ./fig/*-converted-to.*

