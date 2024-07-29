.PHONY: clean all

raw.csv: raw_analysis.R
	Rscript raw_analysis.R

proc.csv: raw.csv proc_analysis.R
	Rscript proc_analysis.R

plot.pdf: proc.csv plotting.R
	Rscript plotting.R

hist.pdf: proc.csv plot_hist.R
	Rscript plot_hist.R

all:
	make hist.pdf
	make plot.pdf

clean:
	rm raw.csv || true
	rm proc.csv || true
	rm plot.pdf || true
	rm hist.pdf || true

	