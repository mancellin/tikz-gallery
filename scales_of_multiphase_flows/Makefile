scales_of_multiphase_flows.pdf: scales_of_multiphase_flows.tex
	latexmk -pdf -quiet $<

.PHONY: clean distclean
clean:
	latexmk -c
	rm *.nav *.snm

distclean: clean
	rm *.pdf
