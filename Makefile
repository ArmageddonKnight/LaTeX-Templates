all: standalone.png Makefile

%.png: %.tex
	pdflatex -synctex=1 -interaction=nonstopmode -shell-escape $<

.PHONY: clean upgrade
clean:
	find . -maxdepth 1 \
		\( -name "*.aux" -o -name "*.bbl" -o -name "*.blg" -o \
	           -name "*.log" -o -name "*.out" -o -name "*.pdf" -o \
		   -name "*.png" -o -name "*.synctex.gz" \) | xargs $(RM)
