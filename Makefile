all: SI.pdf

SI.pdf: SI.Rmd
	Rscript -e 'rmarkdown::render("$<")'

clean:
	rm -f snps.bed *.log excluded_sites.snp
