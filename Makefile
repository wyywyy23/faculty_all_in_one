CV_SRC = common/cv/cv_yw.tex
CV_PDF = $(CV_SRC:.tex=.pdf)
CV_DEP = $(filter-out $(CV_PDF) $(CV_SRC) $(wildcard common/cv/*.log) common/cv/LICENSE common/cv/Makefile common/cv/README.md $(wildcard common/cv/.git*), $(shell find common/cv -type f))

LH_SRC = common/letterhead/letter.tex
LH_PDF = $(LH_SRC:.tex=.pdf)
LH_DEP = $(filter-out $(LH_PDF) $(LH_SRC) $(wildcard common/letterhead/*.log) common/letterhead/LICENSE common/letterhead/Makefile common/letterhead/README.md $(wildcard common/letterhead/.git*), $(shell find common/letterhead -type f))

LH_FONT_DIR       = common/letterhead/font
SIG_PDF           = common/signature/yuyang.pdf
LETTER_COMMON_SRC = $(wildcard common/cover_letter/*.tex)

RS_COMMON_SRC = $(wildcard common/research_statement/*.tex)
TS_COMMON_SRC = $(wildcard common/teaching_statement/*.tex)
DS_COMMON_SRC = $(wildcard common/diversity_statement/*.tex)

EXAMPLE_LETTER_SRC = example/cover_letter/cover_letter_example_yw.tex
EXAMPLE_LETTER_PDF = $(EXAMPLE_LETTER_SRC:.tex=.pdf)
EXAMPLE_LETTER_DEP = $(filter-out $(wildcard common/letterhead/attachment/*) $(wildcard common/letterhead/signature/*), $(LH_DEP)) $(SIG_PDF) $(LETTER_COMMON_SRC)

EXAMPLE_RS_SRC = example/research_statement/research_statement_example_yw.tex
EXAMPLE_RS_PDF = $(EXAMPLE_RS_SRC:.tex=.pdf)
EXAMPLE_RS_DEP = $(RS_COMMON_SRC)

EXAMPLE_TS_SRC = example/teaching_statement/teaching_statement_example_yw.tex
EXAMPLE_TS_PDF = $(EXAMPLE_TS_SRC:.tex=.pdf)
EXAMPLE_TS_DEP = $(TS_COMMON_SRC)

EXAMPLE_DS_SRC = example/diversity_statement/diversity_statement_example_yw.tex
EXAMPLE_DS_PDF = $(EXAMPLE_DS_SRC:.tex=.pdf)
EXAMPLE_DS_DEP = $(DS_COMMON_SRC)

CACHE_DIR   := $(shell pwd)/.latex-cache
COMPILE_LUA := latexmk -lualatex -output-directory=$(CACHE_DIR)
COMPILE_PDF := latexmk -pdflatex -output-directory=$(CACHE_DIR)

.PHONY: all cv letterhead example example-letter example-rs example-ts example-ds clean clean-cache

all: cv letterhead example

cv: $(CV_PDF)

letterhead: $(LH_PDF)

example: example-letter example-rs example-ts example-ds

example-letter: $(EXAMPLE_LETTER_PDF)
example-rs: $(EXAMPLE_RS_PDF)
example-ts: $(EXAMPLE_TS_PDF)
example-ds: $(EXAMPLE_DS_PDF)

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

$(EXAMPLE_RS_PDF): $(EXAMPLE_RS_SRC) $(EXAMPLE_RS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(EXAMPLE_RS_SRC)) && $(COMPILE_LUA) $(notdir $(EXAMPLE_RS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(EXAMPLE_RS_PDF)) $(EXAMPLE_RS_PDF)

$(EXAMPLE_TS_PDF): $(EXAMPLE_TS_SRC) $(EXAMPLE_TS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(EXAMPLE_TS_SRC)) && $(COMPILE_LUA) $(notdir $(EXAMPLE_TS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(EXAMPLE_TS_PDF)) $(EXAMPLE_TS_PDF)

$(EXAMPLE_DS_PDF): $(EXAMPLE_DS_SRC) $(EXAMPLE_DS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(EXAMPLE_DS_SRC)) && $(COMPILE_LUA) $(notdir $(EXAMPLE_DS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(EXAMPLE_DS_PDF)) $(EXAMPLE_DS_PDF)