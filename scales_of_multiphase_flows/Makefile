scales_of_multiphase_flows.pdf: main.tex
	latexmk -pdf -quiet $<
	mv $(basename $<).pdf $@
	latexmk -c
	rm *.nav *.snm
