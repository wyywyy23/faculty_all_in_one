CV_SRC = common/cv/cv_yw.tex
CV_PDF = $(CV_SRC:.tex=.pdf)
CV_DEP = $(filter-out $(CV_PDF) $(CV_SRC) $(wildcard common/cv/*.log) common/cv/LICENSE common/cv/Makefile common/cv/README.md $(wildcard common/cv/.git*), $(shell find common/cv -type f))

LH_SRC = common/letterhead/letter.tex
LH_PDF = $(LH_SRC:.tex=.pdf)
LH_DEP = $(filter-out $(LH_PDF) $(LH_SRC) $(wildcard common/letterhead/*.log) common/letterhead/LICENSE common/letterhead/Makefile common/letterhead/README.md $(wildcard common/letterhead/.git*), $(shell find common/letterhead -type f))

LH_FONT_DIR       = common/letterhead/font
SIG_PDF           = common/signature/yuyang.pdf
LETTER_COMMON_SRC = $(wildcard common/cover_letter/*.tex)

STATEMENT_PRE = common/statement_pre.tex
TS_FIG = fig/color.pdf
DS_FIG = fig/diversity.png
RS_FIG = fig/research.pdf

RS_COMMON_SRC = $(wildcard common/research_statement/*.tex) $(wildcard common/research_statement/*.bib) $(STATEMENT_PRE) $(RS_FIG)
TS_COMMON_SRC = $(wildcard common/teaching_statement/*.tex) $(wildcard common/research_statement/*.bib) $(STATEMENT_PRE) $(TS_FIG)
DS_COMMON_SRC = $(wildcard common/diversity_statement/*.tex) $(wildcard common/research_statement/*.bib) $(STATEMENT_PRE) $(DS_FIG)

EXAMPLE_LETTER_SRC = example/cover_letter/cover_letter_yw.tex
EXAMPLE_LETTER_PDF = $(EXAMPLE_LETTER_SRC:.tex=.pdf)
EXAMPLE_LETTER_DEP = $(filter-out $(wildcard common/letterhead/attachment/*) $(wildcard common/letterhead/signature/*), $(LH_DEP)) $(SIG_PDF) $(LETTER_COMMON_SRC) example/common.tex

EXAMPLE_RS_SRC = example/research_statement/research_statement_yw.tex
EXAMPLE_RS_PDF = $(EXAMPLE_RS_SRC:.tex=.pdf)
EXAMPLE_RS_DEP = $(RS_COMMON_SRC) example/common.tex

EXAMPLE_TS_SRC = example/teaching_statement/teaching_statement_yw.tex
EXAMPLE_TS_PDF = $(EXAMPLE_TS_SRC:.tex=.pdf)
EXAMPLE_TS_DEP = $(TS_COMMON_SRC) example/common.tex

EXAMPLE_DS_SRC = example/diversity_statement/diversity_statement_yw.tex
EXAMPLE_DS_PDF = $(EXAMPLE_DS_SRC:.tex=.pdf)
EXAMPLE_DS_DEP = $(DS_COMMON_SRC) example/common.tex

TAMU_LETTER_SRC = tamu/cover_letter/cover_letter_yw.tex
TAMU_LETTER_PDF = $(TAMU_LETTER_SRC:.tex=.pdf)
TAMU_LETTER_DEP = $(filter-out $(wildcard common/letterhead/attachment/*) $(wildcard common/letterhead/signature/*), $(LH_DEP)) $(SIG_PDF) $(LETTER_COMMON_SRC) tamu/common.tex

TAMU_RS_SRC = tamu/research_statement/research_statement_yw.tex
TAMU_RS_PDF = $(TAMU_RS_SRC:.tex=.pdf)
TAMU_RS_DEP = $(RS_COMMON_SRC) tamu/common.tex

TAMU_TS_SRC = tamu/teaching_statement/teaching_statement_yw.tex
TAMU_TS_PDF = $(TAMU_TS_SRC:.tex=.pdf)
TAMU_TS_DEP = $(TS_COMMON_SRC) tamu/common.tex

TAMU_DS_SRC = tamu/diversity_statement/diversity_statement_yw.tex
TAMU_DS_PDF = $(TAMU_DS_SRC:.tex=.pdf)
TAMU_DS_DEP = $(DS_COMMON_SRC) tamu/common.tex

TAMU2_LETTER_SRC = tamu2/cover_letter/cover_letter_yw.tex
TAMU2_LETTER_PDF = $(TAMU2_LETTER_SRC:.tex=.pdf)
TAMU2_LETTER_DEP = $(filter-out $(wildcard common/letterhead/attachment/*) $(wildcard common/letterhead/signature/*), $(LH_DEP)) $(SIG_PDF) $(LETTER_COMMON_SRC) tamu2/common.tex

TAMU2_RS_SRC = tamu2/research_statement/research_statement_yw.tex
TAMU2_RS_PDF = $(TAMU2_RS_SRC:.tex=.pdf)
TAMU2_RS_DEP = $(RS_COMMON_SRC) tamu2/common.tex

TAMU2_TS_SRC = tamu2/teaching_statement/teaching_statement_yw.tex
TAMU2_TS_PDF = $(TAMU2_TS_SRC:.tex=.pdf)
TAMU2_TS_DEP = $(TS_COMMON_SRC) tamu2/common.tex

TAMU2_DS_SRC = tamu2/diversity_statement/diversity_statement_yw.tex
TAMU2_DS_PDF = $(TAMU2_DS_SRC:.tex=.pdf)
TAMU2_DS_DEP = $(DS_COMMON_SRC) tamu2/common.tex

DUKE_LETTER_SRC = duke/cover_letter/cover_letter_yw.tex
DUKE_LETTER_PDF = $(DUKE_LETTER_SRC:.tex=.pdf)
DUKE_LETTER_DEP = $(filter-out $(wildcard common/letterhead/attachment/*) $(wildcard common/letterhead/signature/*), $(LH_DEP)) $(SIG_PDF) $(LETTER_COMMON_SRC) duke/common.tex

DUKE_RS_SRC = duke/research_statement/research_statement_yw.tex
DUKE_RS_PDF = $(DUKE_RS_SRC:.tex=.pdf)
DUKE_RS_DEP = $(RS_COMMON_SRC) duke/common.tex

DUKE_TS_SRC = duke/teaching_statement/teaching_statement_yw.tex
DUKE_TS_PDF = $(DUKE_TS_SRC:.tex=.pdf)
DUKE_TS_DEP = $(TS_COMMON_SRC) duke/common.tex

DUKE_DS_SRC = duke/diversity_statement/diversity_statement_yw.tex
DUKE_DS_PDF = $(DUKE_DS_SRC:.tex=.pdf)
DUKE_DS_DEP = $(DS_COMMON_SRC) duke/common.tex

PURDUE_ECE_LETTER_SRC = purdue_ece/cover_letter/cover_letter_yw.tex
PURDUE_ECE_LETTER_PDF = $(PURDUE_ECE_LETTER_SRC:.tex=.pdf)
PURDUE_ECE_LETTER_DEP = $(filter-out $(wildcard common/letterhead/attachment/*) $(wildcard common/letterhead/signature/*), $(LH_DEP)) $(SIG_PDF) $(LETTER_COMMON_SRC) purdue_ece/common.tex

PURDUE_ECE_RS_SRC = purdue_ece/research_statement/research_statement_yw.tex
PURDUE_ECE_RS_PDF = $(PURDUE_ECE_RS_SRC:.tex=.pdf)
PURDUE_ECE_RS_DEP = $(RS_COMMON_SRC) purdue_ece/common.tex

PURDUE_ECE_TS_SRC = purdue_ece/teaching_statement/teaching_statement_yw.tex
PURDUE_ECE_TS_PDF = $(PURDUE_ECE_TS_SRC:.tex=.pdf)
PURDUE_ECE_TS_DEP = $(TS_COMMON_SRC) purdue_ece/common.tex

PURDUE_ECE_DS_SRC = purdue_ece/diversity_statement/diversity_statement_yw.tex
PURDUE_ECE_DS_PDF = $(PURDUE_ECE_DS_SRC:.tex=.pdf)
PURDUE_ECE_DS_DEP = $(DS_COMMON_SRC) purdue_ece/common.tex

UW_ECE_LETTER_SRC = uw_ece/cover_letter/cover_letter_yw.tex
UW_ECE_LETTER_PDF = $(UW_ECE_LETTER_SRC:.tex=.pdf)
UW_ECE_LETTER_DEP = $(filter-out $(wildcard common/letterhead/attachment/*) $(wildcard common/letterhead/signature/*), $(LH_DEP)) $(SIG_PDF) $(LETTER_COMMON_SRC) uw_ece/common.tex

UW_ECE_RS_SRC = uw_ece/research_statement/research_statement_yw.tex
UW_ECE_RS_PDF = $(UW_ECE_RS_SRC:.tex=.pdf)
UW_ECE_RS_DEP = $(RS_COMMON_SRC) uw_ece/common.tex

UW_ECE_TS_SRC = uw_ece/teaching_statement/teaching_statement_yw.tex
UW_ECE_TS_PDF = $(UW_ECE_TS_SRC:.tex=.pdf)
UW_ECE_TS_DEP = $(TS_COMMON_SRC) uw_ece/common.tex

UW_ECE_DS_SRC = uw_ece/diversity_statement/diversity_statement_yw.tex
UW_ECE_DS_PDF = $(UW_ECE_DS_SRC:.tex=.pdf)
UW_ECE_DS_DEP = $(DS_COMMON_SRC) uw_ece/common.tex

CACHE_DIR   := $(shell pwd)/.latex-cache
COMPILE_LUA := latexmk -lualatex -output-directory=$(CACHE_DIR)
COMPILE_PDF := latexmk -pdflatex -output-directory=$(CACHE_DIR)

.PHONY: all clean clean-cache cv letterhead example example-letter example-rs example-ts example-ds tamu tamu-letter tamu-rs tamu-ts tamu-ds tamu2 tamu2-letter tamu2-rs tamu2-ts tamu2-ds duke duke-letter duke-rs duke-ts duke-ds purdue-ece purdue-ece-letter purdue-ece-rs purdue-ece-ts purdue-ece-ds uw-ece uw-ece-letter uw-ece-rs uw-ece-ts uw-ece-ds

all: cv letterhead example tamu tamu2 duke purdue-ece uw-ece

cv: $(CV_PDF)

letterhead: $(LH_PDF)

example: example-letter example-rs example-ts example-ds
example-letter: $(EXAMPLE_LETTER_PDF)
example-rs: $(EXAMPLE_RS_PDF)
example-ts: $(EXAMPLE_TS_PDF)
example-ds: $(EXAMPLE_DS_PDF)

tamu: tamu-letter tamu-rs tamu-ts tamu-ds
tamu-letter: $(TAMU_LETTER_PDF)
tamu-rs: $(TAMU_RS_PDF)
tamu-ts: $(TAMU_TS_PDF)
tamu-ds: $(TAMU_DS_PDF)

tamu2: tamu2-letter tamu2-rs tamu2-ts tamu2-ds
tamu2-letter: $(TAMU2_LETTER_PDF)
tamu2-rs: $(TAMU2_RS_PDF)
tamu2-ts: $(TAMU2_TS_PDF)
tamu2-ds: $(TAMU2_DS_PDF)

duke: duke-letter duke-rs duke-ts duke-ds
duke-letter: $(DUKE_LETTER_PDF)
duke-rs: $(DUKE_RS_PDF)
duke-ts: $(DUKE_TS_PDF)
duke-ds: $(DUKE_DS_PDF)

purdue-ece: purdue-ece-letter purdue-ece-rs purdue-ece-ts purdue-ece-ds
purdue-ece-letter: $(PURDUE_ECE_LETTER_PDF)
purdue-ece-rs: $(PURDUE_ECE_RS_PDF)
purdue-ece-ts: $(PURDUE_ECE_TS_PDF)
purdue-ece-ds: $(PURDUE_ECE_DS_PDF)

uw-ece: uw-ece-letter uw-ece-rs uw-ece-ts uw-ece-ds
uw-ece-letter: $(UW_ECE_LETTER_PDF)
uw-ece-rs: $(UW_ECE_RS_PDF)
uw-ece-ts: $(UW_ECE_TS_PDF)
uw-ece-ds: $(UW_ECE_DS_PDF)

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

$(TAMU_LETTER_PDF): $(TAMU_LETTER_SRC) $(TAMU_LETTER_DEP) | clean-cache $(CACHE_DIR)
	@cp -r $(LH_FONT_DIR) $(dir $(TAMU_LETTER_SRC))/.
	@cd $(dir $(TAMU_LETTER_SRC)) && $(COMPILE_LUA) $(notdir $(TAMU_LETTER_SRC))
	@cp $(CACHE_DIR)/$(notdir $(TAMU_LETTER_PDF)) $(TAMU_LETTER_PDF)

$(TAMU_RS_PDF): $(TAMU_RS_SRC) $(TAMU_RS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(TAMU_RS_SRC)) && $(COMPILE_LUA) $(notdir $(TAMU_RS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(TAMU_RS_PDF)) $(TAMU_RS_PDF)

$(TAMU_TS_PDF): $(TAMU_TS_SRC) $(TAMU_TS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(TAMU_TS_SRC)) && $(COMPILE_LUA) $(notdir $(TAMU_TS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(TAMU_TS_PDF)) $(TAMU_TS_PDF)

$(TAMU_DS_PDF): $(TAMU_DS_SRC) $(TAMU_DS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(TAMU_DS_SRC)) && $(COMPILE_LUA) $(notdir $(TAMU_DS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(TAMU_DS_PDF)) $(TAMU_DS_PDF)

$(TAMU2_LETTER_PDF): $(TAMU2_LETTER_SRC) $(TAMU2_LETTER_DEP) | clean-cache $(CACHE_DIR)
	@cp -r $(LH_FONT_DIR) $(dir $(TAMU2_LETTER_SRC))/.
	@cd $(dir $(TAMU2_LETTER_SRC)) && $(COMPILE_LUA) $(notdir $(TAMU2_LETTER_SRC))
	@cp $(CACHE_DIR)/$(notdir $(TAMU2_LETTER_PDF)) $(TAMU2_LETTER_PDF)

$(TAMU2_RS_PDF): $(TAMU2_RS_SRC) $(TAMU2_RS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(TAMU2_RS_SRC)) && $(COMPILE_LUA) $(notdir $(TAMU2_RS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(TAMU2_RS_PDF)) $(TAMU2_RS_PDF)

$(TAMU2_TS_PDF): $(TAMU2_TS_SRC) $(TAMU2_TS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(TAMU2_TS_SRC)) && $(COMPILE_LUA) $(notdir $(TAMU2_TS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(TAMU2_TS_PDF)) $(TAMU2_TS_PDF)

$(TAMU2_DS_PDF): $(TAMU2_DS_SRC) $(TAMU2_DS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(TAMU2_DS_SRC)) && $(COMPILE_LUA) $(notdir $(TAMU2_DS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(TAMU2_DS_PDF)) $(TAMU2_DS_PDF)

$(DUKE_LETTER_PDF): $(DUKE_LETTER_SRC) $(DUKE_LETTER_DEP) | clean-cache $(CACHE_DIR)
	@cp -r $(LH_FONT_DIR) $(dir $(DUKE_LETTER_SRC))/.
	@cd $(dir $(DUKE_LETTER_SRC)) && $(COMPILE_LUA) $(notdir $(DUKE_LETTER_SRC))
	@cp $(CACHE_DIR)/$(notdir $(DUKE_LETTER_PDF)) $(DUKE_LETTER_PDF)

$(DUKE_RS_PDF): $(DUKE_RS_SRC) $(DUKE_RS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(DUKE_RS_SRC)) && $(COMPILE_LUA) $(notdir $(DUKE_RS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(DUKE_RS_PDF)) $(DUKE_RS_PDF)

$(DUKE_TS_PDF): $(DUKE_TS_SRC) $(DUKE_TS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(DUKE_TS_SRC)) && $(COMPILE_LUA) $(notdir $(DUKE_TS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(DUKE_TS_PDF)) $(DUKE_TS_PDF)

$(DUKE_DS_PDF): $(DUKE_DS_SRC) $(DUKE_DS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(DUKE_DS_SRC)) && $(COMPILE_LUA) $(notdir $(DUKE_DS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(DUKE_DS_PDF)) $(DUKE_DS_PDF)

$(PURDUE_ECE_LETTER_PDF): $(PURDUE_ECE_LETTER_SRC) $(PURDUE_ECE_LETTER_DEP) | clean-cache $(CACHE_DIR)
	@cp -r $(LH_FONT_DIR) $(dir $(PURDUE_ECE_LETTER_SRC))/.
	@cd $(dir $(PURDUE_ECE_LETTER_SRC)) && $(COMPILE_LUA) $(notdir $(PURDUE_ECE_LETTER_SRC))
	@cp $(CACHE_DIR)/$(notdir $(PURDUE_ECE_LETTER_PDF)) $(PURDUE_ECE_LETTER_PDF)

$(PURDUE_ECE_RS_PDF): $(PURDUE_ECE_RS_SRC) $(PURDUE_ECE_RS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(PURDUE_ECE_RS_SRC)) && $(COMPILE_LUA) $(notdir $(PURDUE_ECE_RS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(PURDUE_ECE_RS_PDF)) $(PURDUE_ECE_RS_PDF)

$(PURDUE_ECE_TS_PDF): $(PURDUE_ECE_TS_SRC) $(PURDUE_ECE_TS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(PURDUE_ECE_TS_SRC)) && $(COMPILE_LUA) $(notdir $(PURDUE_ECE_TS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(PURDUE_ECE_TS_PDF)) $(PURDUE_ECE_TS_PDF)

$(PURDUE_ECE_DS_PDF): $(PURDUE_ECE_DS_SRC) $(PURDUE_ECE_DS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(PURDUE_ECE_DS_SRC)) && $(COMPILE_LUA) $(notdir $(PURDUE_ECE_DS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(PURDUE_ECE_DS_PDF)) $(PURDUE_ECE_DS_PDF)

$(UW_ECE_LETTER_PDF): $(UW_ECE_LETTER_SRC) $(UW_ECE_LETTER_DEP) | clean-cache $(CACHE_DIR)
	@cp -r $(LH_FONT_DIR) $(dir $(UW_ECE_LETTER_SRC))/.
	@cd $(dir $(UW_ECE_LETTER_SRC)) && $(COMPILE_LUA) $(notdir $(UW_ECE_LETTER_SRC))
	@cp $(CACHE_DIR)/$(notdir $(UW_ECE_LETTER_PDF)) $(UW_ECE_LETTER_PDF)

$(UW_ECE_RS_PDF): $(UW_ECE_RS_SRC) $(UW_ECE_RS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(UW_ECE_RS_SRC)) && $(COMPILE_LUA) $(notdir $(UW_ECE_RS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(UW_ECE_RS_PDF)) $(UW_ECE_RS_PDF)

$(UW_ECE_TS_PDF): $(UW_ECE_TS_SRC) $(UW_ECE_TS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(UW_ECE_TS_SRC)) && $(COMPILE_LUA) $(notdir $(UW_ECE_TS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(UW_ECE_TS_PDF)) $(UW_ECE_TS_PDF)

$(UW_ECE_DS_PDF): $(UW_ECE_DS_SRC) $(UW_ECE_DS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(UW_ECE_DS_SRC)) && $(COMPILE_LUA) $(notdir $(UW_ECE_DS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(UW_ECE_DS_PDF)) $(UW_ECE_DS_PDF)
