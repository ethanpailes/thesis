all:
	pdflatex -interaction=nonstopmode thesis
	bibtex thesis
	pdflatex -interaction=nonstopmode thesis

clean:
	rm -f *.aux
	rm -f *.bbl
	rm -f *.bcf
	rm -f thesis.pdf
	rm -f *.run.xml
	rm -f *.dvi
	rm -f *.log
	rm -f *.blg
	$(MAKE) -C chapter2 clean
	$(MAKE) -C chapter3 clean
	$(MAKE) -C chapter4 clean

watch:
	watchexec --exts tex,bib make
