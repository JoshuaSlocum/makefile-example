all: histogram.tsv

clean:
	del words.txt histogram.tsv

words.txt:
	Rscript -e 'download.file("http://svnweb.freebsd.org/base/head/share/dict/web2?view=co", destfile = "words.txt", quiet = TRUE)'

histogram.tsv: histogram.r words.txt
	Rscript $<