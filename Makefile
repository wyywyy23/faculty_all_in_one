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

TAMU_CESG_LETTER_SRC = tamu_cesg/cover_letter/cover_letter_yw.tex
TAMU_CESG_LETTER_PDF = $(TAMU_CESG_LETTER_SRC:.tex=.pdf)
TAMU_CESG_LETTER_DEP = $(filter-out $(wildcard common/letterhead/attachment/*) $(wildcard common/letterhead/signature/*), $(LH_DEP)) $(SIG_PDF) $(LETTER_COMMON_SRC) tamu_cesg/common.tex

TAMU_CESG_RS_SRC = tamu_cesg/research_statement/research_statement_yw.tex
TAMU_CESG_RS_PDF = $(TAMU_CESG_RS_SRC:.tex=.pdf)
TAMU_CESG_RS_DEP = $(RS_COMMON_SRC) tamu_cesg/common.tex

TAMU_CESG_TS_SRC = tamu_cesg/teaching_statement/teaching_statement_yw.tex
TAMU_CESG_TS_PDF = $(TAMU_CESG_TS_SRC:.tex=.pdf)
TAMU_CESG_TS_DEP = $(TS_COMMON_SRC) tamu_cesg/common.tex

TAMU_CESG_DS_SRC = tamu_cesg/diversity_statement/diversity_statement_yw.tex
TAMU_CESG_DS_PDF = $(TAMU_CESG_DS_SRC:.tex=.pdf)
TAMU_CESG_DS_DEP = $(DS_COMMON_SRC) tamu_cesg/common.tex

TAMU_NANO_LETTER_SRC = tamu_nano/cover_letter/cover_letter_yw.tex
TAMU_NANO_LETTER_PDF = $(TAMU_NANO_LETTER_SRC:.tex=.pdf)
TAMU_NANO_LETTER_DEP = $(filter-out $(wildcard common/letterhead/attachment/*) $(wildcard common/letterhead/signature/*), $(LH_DEP)) $(SIG_PDF) $(LETTER_COMMON_SRC) tamu_nano/common.tex

TAMU_NANO_RS_SRC = tamu_nano/research_statement/research_statement_yw.tex
TAMU_NANO_RS_PDF = $(TAMU_NANO_RS_SRC:.tex=.pdf)
TAMU_NANO_RS_DEP = $(RS_COMMON_SRC) tamu_nano/common.tex

TAMU_NANO_TS_SRC = tamu_nano/teaching_statement/teaching_statement_yw.tex
TAMU_NANO_TS_PDF = $(TAMU_NANO_TS_SRC:.tex=.pdf)
TAMU_NANO_TS_DEP = $(TS_COMMON_SRC) tamu_nano/common.tex

TAMU_NANO_DS_SRC = tamu_nano/diversity_statement/diversity_statement_yw.tex
TAMU_NANO_DS_PDF = $(TAMU_NANO_DS_SRC:.tex=.pdf)
TAMU_NANO_DS_DEP = $(DS_COMMON_SRC) tamu_nano/common.tex

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

UW_CSE_LETTER_SRC = uw_cse/cover_letter/cover_letter_yw.tex
UW_CSE_LETTER_PDF = $(UW_CSE_LETTER_SRC:.tex=.pdf)
UW_CSE_LETTER_DEP = $(filter-out $(wildcard common/letterhead/attachment/*) $(wildcard common/letterhead/signature/*), $(LH_DEP)) $(SIG_PDF) $(LETTER_COMMON_SRC) uw_cse/common.tex

UW_CSE_RS_SRC = uw_cse/research_statement/research_statement_yw.tex
UW_CSE_RS_PDF = $(UW_CSE_RS_SRC:.tex=.pdf)
UW_CSE_RS_DEP = $(RS_COMMON_SRC) uw_cse/common.tex

UW_CSE_TS_SRC = uw_cse/teaching_statement/teaching_statement_yw.tex
UW_CSE_TS_PDF = $(UW_CSE_TS_SRC:.tex=.pdf)
UW_CSE_TS_DEP = $(TS_COMMON_SRC) uw_cse/common.tex

UW_CSE_DS_SRC = uw_cse/diversity_statement/diversity_statement_yw.tex
UW_CSE_DS_PDF = $(UW_CSE_DS_SRC:.tex=.pdf)
UW_CSE_DS_DEP = $(DS_COMMON_SRC) uw_cse/common.tex

CACHE_DIR   := $(shell pwd)/.latex-cache
COMPILE_LUA := latexmk -lualatex -output-directory=$(CACHE_DIR)
COMPILE_PDF := latexmk -pdflatex -output-directory=$(CACHE_DIR)

.PHONY: all clean clean-cache cv letterhead example example-letter example-rs example-ts example-ds tamu-cesg tamu-cesg-letter tamu-cesg-rs tamu-cesg-ts tamu-cesg-ds tamu-nano tamu-nano-letter tamu-nano-rs tamu-nano-ts tamu-nano-ds duke duke-letter duke-rs duke-ts duke-ds purdue-ece purdue-ece-letter purdue-ece-rs purdue-ece-ts purdue-ece-ds uw-ece uw-ece-letter uw-ece-rs uw-ece-ts uw-ece-ds uw-cse uw-cse-letter uw-cse-rs uw-cse-ts uw-cse-ds

all: cv letterhead example tamu-cesg tamu-nano duke purdue-ece uw-ece uw-cse

cv: $(CV_PDF)

letterhead: $(LH_PDF)

example: example-letter example-rs example-ts example-ds
example-letter: $(EXAMPLE_LETTER_PDF)
example-rs: $(EXAMPLE_RS_PDF)
example-ts: $(EXAMPLE_TS_PDF)
example-ds: $(EXAMPLE_DS_PDF)

tamu-cesg: tamu-cesg-letter tamu-cesg-rs tamu-cesg-ts tamu-cesg-ds
tamu-cesg-letter: $(TAMU_CESG_LETTER_PDF)
tamu-cesg-rs: $(TAMU_CESG_RS_PDF)
tamu-cesg-ts: $(TAMU_CESG_TS_PDF)
tamu-cesg-ds: $(TAMU_CESG_DS_PDF)

tamu-nano: tamu-nano-letter tamu-nano-rs tamu-nano-ts tamu-nano-ds
tamu-nano-letter: $(TAMU_NANO_LETTER_PDF)
tamu-nano-rs: $(TAMU_NANO_RS_PDF)
tamu-nano-ts: $(TAMU_NANO_TS_PDF)
tamu-nano-ds: $(TAMU_NANO_DS_PDF)

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

uw-cse: uw-cse-letter uw-cse-rs uw-cse-ts uw-cse-ds
uw-cse-letter: $(UW_CSE_LETTER_PDF)
uw-cse-rs: $(UW_CSE_RS_PDF)
uw-cse-ts: $(UW_CSE_TS_PDF)
uw-cse-ds: $(UW_CSE_DS_PDF)

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

$(TAMU_CESG_LETTER_PDF): $(TAMU_CESG_LETTER_SRC) $(TAMU_CESG_LETTER_DEP) | clean-cache $(CACHE_DIR)
	@cp -r $(LH_FONT_DIR) $(dir $(TAMU_CESG_LETTER_SRC))/.
	@cd $(dir $(TAMU_CESG_LETTER_SRC)) && $(COMPILE_LUA) $(notdir $(TAMU_CESG_LETTER_SRC))
	@cp $(CACHE_DIR)/$(notdir $(TAMU_CESG_LETTER_PDF)) $(TAMU_CESG_LETTER_PDF)

$(TAMU_CESG_RS_PDF): $(TAMU_CESG_RS_SRC) $(TAMU_CESG_RS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(TAMU_CESG_RS_SRC)) && $(COMPILE_LUA) $(notdir $(TAMU_CESG_RS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(TAMU_CESG_RS_PDF)) $(TAMU_CESG_RS_PDF)

$(TAMU_CESG_TS_PDF): $(TAMU_CESG_TS_SRC) $(TAMU_CESG_TS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(TAMU_CESG_TS_SRC)) && $(COMPILE_LUA) $(notdir $(TAMU_CESG_TS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(TAMU_CESG_TS_PDF)) $(TAMU_CESG_TS_PDF)

$(TAMU_CESG_DS_PDF): $(TAMU_CESG_DS_SRC) $(TAMU_CESG_DS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(TAMU_CESG_DS_SRC)) && $(COMPILE_LUA) $(notdir $(TAMU_CESG_DS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(TAMU_CESG_DS_PDF)) $(TAMU_CESG_DS_PDF)

$(TAMU_NANO_LETTER_PDF): $(TAMU_NANO_LETTER_SRC) $(TAMU_NANO_LETTER_DEP) | clean-cache $(CACHE_DIR)
	@cp -r $(LH_FONT_DIR) $(dir $(TAMU_NANO_LETTER_SRC))/.
	@cd $(dir $(TAMU_NANO_LETTER_SRC)) && $(COMPILE_LUA) $(notdir $(TAMU_NANO_LETTER_SRC))
	@cp $(CACHE_DIR)/$(notdir $(TAMU_NANO_LETTER_PDF)) $(TAMU_NANO_LETTER_PDF)

$(TAMU_NANO_RS_PDF): $(TAMU_NANO_RS_SRC) $(TAMU_NANO_RS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(TAMU_NANO_RS_SRC)) && $(COMPILE_LUA) $(notdir $(TAMU_NANO_RS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(TAMU_NANO_RS_PDF)) $(TAMU_NANO_RS_PDF)

$(TAMU_NANO_TS_PDF): $(TAMU_NANO_TS_SRC) $(TAMU_NANO_TS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(TAMU_NANO_TS_SRC)) && $(COMPILE_LUA) $(notdir $(TAMU_NANO_TS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(TAMU_NANO_TS_PDF)) $(TAMU_NANO_TS_PDF)

$(TAMU_NANO_DS_PDF): $(TAMU_NANO_DS_SRC) $(TAMU_NANO_DS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(TAMU_NANO_DS_SRC)) && $(COMPILE_LUA) $(notdir $(TAMU_NANO_DS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(TAMU_NANO_DS_PDF)) $(TAMU_NANO_DS_PDF)

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

$(UW_CSE_LETTER_PDF): $(UW_CSE_LETTER_SRC) $(UW_CSE_LETTER_DEP) | clean-cache $(CACHE_DIR)
	@cp -r $(LH_FONT_DIR) $(dir $(UW_CSE_LETTER_SRC))/.
	@cd $(dir $(UW_CSE_LETTER_SRC)) && $(COMPILE_LUA) $(notdir $(UW_CSE_LETTER_SRC))
	@cp $(CACHE_DIR)/$(notdir $(UW_CSE_LETTER_PDF)) $(UW_CSE_LETTER_PDF)

$(UW_CSE_RS_PDF): $(UW_CSE_RS_SRC) $(UW_CSE_RS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(UW_CSE_RS_SRC)) && $(COMPILE_LUA) $(notdir $(UW_CSE_RS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(UW_CSE_RS_PDF)) $(UW_CSE_RS_PDF)

$(UW_CSE_TS_PDF): $(UW_CSE_TS_SRC) $(UW_CSE_TS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(UW_CSE_TS_SRC)) && $(COMPILE_LUA) $(notdir $(UW_CSE_TS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(UW_CSE_TS_PDF)) $(UW_CSE_TS_PDF)

$(UW_CSE_DS_PDF): $(UW_CSE_DS_SRC) $(UW_CSE_DS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(UW_CSE_DS_SRC)) && $(COMPILE_LUA) $(notdir $(UW_CSE_DS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(UW_CSE_DS_PDF)) $(UW_CSE_DS_PDF)
	