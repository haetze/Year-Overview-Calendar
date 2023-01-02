### Makefile --- 

AUTHOR := Richard Stewing
EMAIL := richard@stewing.dev
PROJECT := Year-Overview-Calendar
LATEX-CMD := latexmk -cd -pdflatex='pdflatex -shell-escape -interaction nonstopmode' -pdf -bibtex
description:
	@echo "Author: $(AUTHOR) <$(EMAIL)>"
	@echo "Project: $(PROJECT)"
	@echo "This projects creates a matrix of day grids to mark which hours of a day are already scheduled."
	@echo "The resulting PDF is supposed to be halved, then each week is a single line."
	@echo "You build the calender by calling =make calendar.pdf=."


calendar.pdf: calendar.tex pic.tex line.tex
	$(LATEX-CMD) calendar.tex

grid.pdf: grid.tex
	$(LATEX-CMD) grid.tex

