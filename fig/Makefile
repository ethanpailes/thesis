
RESOURCE_DIR := ${HOME}/repos/thesis-defense-talk/resources

all: aa-nfa.png ab-nfa.png aa-intersect-ab.png astar-nfa.png\
	 aa-intersect-astar.png \
	 aa-intersect-ab-step1.png \
	 aa-intersect-ab-step3.png \
	 aa-intersect-ab-step4.png \
	 aa-intersect-ab-step5.png \
	 aa-intersect-ab-step6.png

install:
	cp *.png ${RESOURCE_DIR}

%.png: %.pdf
	convert -resize '500%' -trim $*.pdf -transparent white -sharpen 0x10.0 $*.png

%.pdf: %-wrapped.tex
	pdflatex -interaction=nonstopmode $*-wrapped
	mv $*-wrapped.pdf $*.pdf

%-wrapped.tex: %.tex
	echo '\documentclass{minimal}' > $*-wrapped.tex
	echo '\usepackage{tikz}' >> $*-wrapped.tex
	echo '\usetikzlibrary{arrows,automata}' >> $*-wrapped.tex
	echo '\begin{document}' >> $*-wrapped.tex
	echo "\\input{$*}" >> $*-wrapped.tex
	echo '\end{document}' >> $*-wrapped.tex 

clean:
	rm -f *-wrapped.tex
	rm -f *.aux
	rm -f *.bbl
	rm -f *.bcf
	rm -f *.pdf
	rm -f *.run.xml
	rm -f *.dvi
	rm -f *.log
	rm -f *.blg
	rm -f *.toc
	rm -f *.lot
	rm -f *.lof

watch:
	watchexec --exts tex make
