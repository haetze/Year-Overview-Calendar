### Makefile --- 

AUTHOR := Richard Stewing
EMAIL := richard@stewing.dev
PROJECT := Yearly-Overview-Calender
LATEX-CMD := latexmk -cd -pdflatex='pdflatex -shell-escape -interaction nonstopmode' -pdf -bibtex
description:
	@echo "Author: $(AUTHOR) <$(EMAIL)>"
	@echo "Project: $(PROJECT)"


calender.pdf: calender.tex pic.tex line.tex
	$(LATEX-CMD) calender.tex

grid.pdf: grid.tex
	$(LATEX-CMD) grid.tex

