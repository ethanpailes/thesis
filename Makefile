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
	rm -f *.toc
	rm -f *.lot
	rm -f *.lof

watch:
	watchexec --exts tex,bib make
