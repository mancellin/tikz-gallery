scales_of_multiphase_flows.pdf: main.tex microscopic.tex macroscopic.tex averaged.tex
	latexmk -pdf -quiet $<
	mv $(basename $<).pdf $@
	latexmk -c
	rm *.nav *.snm
