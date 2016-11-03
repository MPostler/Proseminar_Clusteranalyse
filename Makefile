FILE = main
DATE := $(shell /bin/date +%F)
NAME = $(FILE)_$(DATE).tgz

compile: 
	pdflatex $(FILE).tex
	bibtex $(FILE)
	pdflatex $(FILE).tex
	pdflatex $(FILE).tex

backup:
	tar cfvz $(DIR)/$(NAME) *

all: compile backup

clean: 
	rm *.aux
	rm *.toc
	rm *.out
	rm *.blg
	rm *.bbl
	rm *.log
	rm *.pdf
