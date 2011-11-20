.SUFFIXES: .pdf .tex

# How to convert a .tex into a .pdf
.tex.pdf:
	pdflatex $<

all: competition.pdf tech-day-soton.pdf

competition.pdf: assessment-guidance.tex

tech-day-soton.pdf: assessment-guidance.tex

.PHONY: clean

tidy:
	-rm -f `cat .gitignore | grep -v pdf`

clean: tidy
	-rm -f competition.pdf tech-day-soton.pdf
