.PHONY: analysis plotting all

analysis:
	Rscript analysis.R

plotting:
	Rscript plotting.R

all:
	make analysis
	make plotting

clean:
	rm penguins.csv || true
	rm plot.pdf || true
