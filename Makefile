PROJECT=Moo-at-System-Image-Update

all: $(PROJECT).pdf

clean:
	rm -rf .aux *.nav *.snm *.vrb *.out *.toc *.dvi *.log
	rm -rf $(PROJECT).ps $(PROJECT).pdf

$(PROJECT).dvi: $(PROJECT).tex
	latex $(PROJECT).tex
	latex $(PROJECT).tex
	latex $(PROJECT).tex

$(PROJECT).ps: $(PROJECT).dvi Makefile
	dvips $(PROJECT).dvi

$(PROJECT).pdf: $(PROJECT).ps
	ps2pdf $(PROJECT).ps
