all: SI.docx

SI.docx: SI.Rmd
	Rscript -e 'rmarkdown::render("$<")'

clean:
	rm -f SI.docx snps.bed *.log excluded_sites.snp
