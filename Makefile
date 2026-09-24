.DEFAULT_GOAL := pdf

MAIN := main
LATEXMK := latexmk
TEX_SOURCES := $(wildcard *.tex slides/*.tex theme/*.sty)
ASSETS := $(wildcard assets/*)

.PHONY: all pdf watch clean distclean help

all: pdf

pdf: $(MAIN).pdf

$(MAIN).pdf: $(TEX_SOURCES) $(ASSETS)
	$(LATEXMK) -pdf -interaction=nonstopmode -halt-on-error $(MAIN).tex

# Prubezne znovu sestavi PDF po zmene zdrojovych souboru.
watch:
	$(LATEXMK) -pdf -pvc -interaction=nonstopmode -halt-on-error $(MAIN).tex

# Odstrani pouze pomocne soubory, hotove PDF ponecha.
clean:
	$(LATEXMK) -c $(MAIN).tex

# Odstrani pomocne soubory i vygenerovane PDF.
distclean:
	$(LATEXMK) -C $(MAIN).tex

help:
	@echo "make           sestavi main.pdf"
	@echo "make watch     sleduje zmeny a prubezne sestavuje PDF"
	@echo "make clean     odstrani pomocne soubory"
	@echo "make distclean odstrani pomocne soubory i main.pdf"
