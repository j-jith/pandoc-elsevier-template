# --------------------------------------------------------------------------
# PANDOC Makefile
# "make all" - Creates pdf and tex
# "make pdf" - Creates pdf (Replace pdf tex to get that output)
# Jithin Jith - 2016-06-28
# --------------------------------------------------------------------------
SOURCE := paper1.md

BUILD_DIR := .

OUTPUT_PDF := $(BUILD_DIR)/$(SOURCE:.md=.pdf)
OUTPUT_TEX := $(BUILD_DIR)/$(SOURCE:.md=.tex)

PANDOC := pandoc

PANDOC_OPTIONS := --standalone --filter pandoc-citeproc 
PANDOC_OPTIONS_PDF := --latex-engine=xelatex --default-image-extension=pdf --template=elsevier.latex
PANDOC_OPTIONS_TEX := --natbib --default-image-extension=eps --template=elsevier.latex --wrap=preserve

all: $(OUTPUT_PDF) $(OUTPUT_HTML) $(OUTPUT_TEX)

pdf: $(BUILD_DIR) $(OUTPUT_PDF)


tex: $(BUILD_DIR) $(OUTPUT_TEX)

$(OUTPUT_PDF) : $(SOURCE)
	$(PANDOC) $(PANDOC_OPTIONS) $(PANDOC_OPTIONS_PDF) -o $@ $<

$(OUTPUT_TEX) : $(SOURCE)
	$(PANDOC) $(PANDOC_OPTIONS) $(PANDOC_OPTIONS_TEX) -o $@ $<

$(BUILD_DIR):
	mkdir -p $@

clean:
	rm -f $(OUTPUT_PDF) $(OUTPUT_TEX)
