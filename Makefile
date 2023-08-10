CV_SRC = common/cv/cv_yw.tex
CV_PDF = $(CV_SRC:.tex=.pdf)
CV_DEP = $(filter-out $(CV_PDF) $(CV_SRC) $(wildcard common/cv/*.log) common/cv/LICENSE common/cv/Makefile common/cv/README.md $(wildcard common/cv/.git*), $(shell find common/cv -type f))

LH_SRC = common/letterhead/letter.tex
LH_PDF = $(LH_SRC:.tex=.pdf)
LH_DEP = $(filter-out $(LH_PDF) $(LH_SRC) $(wildcard common/letterhead/*.log) common/letterhead/LICENSE common/letterhead/Makefile common/letterhead/README.md $(wildcard common/letterhead/.git*), $(shell find common/letterhead -type f))

LH_FONT_DIR = common/letterhead/font
SIG_PDF     = common/signature/yuyang.pdf

EXAMPLE_LETTER_SRC = example/cover_letter/cover_letter_example_yw.tex
EXAMPLE_LETTER_PDF = $(EXAMPLE_LETTER_SRC:.tex=.pdf)
EXAMPLE_LETTER_DEP = $(filter-out $(wildcard common/letterhead/attachment/*) $(wildcard common/letterhead/signature/*), $(LH_DEP)) $(SIG_PDF)

CACHE_DIR   := $(shell pwd)/.latex-cache
COMPILE_LUA := latexmk -lualatex -output-directory=$(CACHE_DIR)
COMPILE_PDF := latexmk -pdflatex -output-directory=$(CACHE_DIR)

.PHONY: all cv letterhead example example-letter clean clean-cache

all: cv letterhead example

cv: $(CV_PDF)

letterhead: $(LH_PDF)

example: example-letter

example-letter: $(EXAMPLE_LETTER_PDF)

clean: clean-cache

clean-cache:
	@rm -rf $(CACHE_DIR)

$(CACHE_DIR):
	@mkdir -p $(CACHE_DIR)

$(CV_PDF): $(CV_SRC) $(CV_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(CV_SRC)) && $(COMPILE_LUA) $(notdir $(CV_SRC))
	@cp $(CACHE_DIR)/$(notdir $(CV_PDF)) $(CV_PDF)

$(LH_PDF): $(LH_SRC) $(LH_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(LH_SRC)) && $(COMPILE_LUA) $(notdir $(LH_SRC))
	@cp $(CACHE_DIR)/$(notdir $(LH_PDF)) $(LH_PDF)

$(EXAMPLE_LETTER_PDF): $(EXAMPLE_LETTER_SRC) $(EXAMPLE_LETTER_DEP) | clean-cache $(CACHE_DIR)
	@cp -r $(LH_FONT_DIR) $(dir $(EXAMPLE_LETTER_SRC))/.
	@cd $(dir $(EXAMPLE_LETTER_SRC)) && $(COMPILE_LUA) $(notdir $(EXAMPLE_LETTER_SRC))
	@cp $(CACHE_DIR)/$(notdir $(EXAMPLE_LETTER_PDF)) $(EXAMPLE_LETTER_PDF)

