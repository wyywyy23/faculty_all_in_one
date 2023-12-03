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

RS_COMMON_SRC = $(filter-out common/research_statement/*2_page.tex, $(wildcard common/research_statement/*.tex)) $(wildcard common/research_statement/bibliography.bib) $(STATEMENT_PRE) $(RS_FIG)
RS_COMMON_2PAGE_SRC = $(filter-out common/research_statement/research_statement_common.tex, $(wildcard common/research_statement/*.tex)) $(wildcard common/research_statement/bibliography_short.bib) $(STATEMENT_PRE) $(RS_FIG)
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

PURDUE_COMPUTES_LETTER_SRC = purdue_computes/cover_letter/cover_letter_yw.tex
PURDUE_COMPUTES_LETTER_PDF = $(PURDUE_COMPUTES_LETTER_SRC:.tex=.pdf)
PURDUE_COMPUTES_LETTER_DEP = $(filter-out $(wildcard common/letterhead/attachment/*) $(wildcard common/letterhead/signature/*), $(LH_DEP)) $(SIG_PDF) $(LETTER_COMMON_SRC) purdue_computes/common.tex

PURDUE_COMPUTES_RS_SRC = purdue_computes/research_statement/research_statement_yw.tex
PURDUE_COMPUTES_RS_PDF = $(PURDUE_COMPUTES_RS_SRC:.tex=.pdf)
PURDUE_COMPUTES_RS_DEP = $(RS_COMMON_SRC) purdue_computes/common.tex

PURDUE_COMPUTES_TS_SRC = purdue_computes/teaching_statement/teaching_statement_yw.tex
PURDUE_COMPUTES_TS_PDF = $(PURDUE_COMPUTES_TS_SRC:.tex=.pdf)
PURDUE_COMPUTES_TS_DEP = $(TS_COMMON_SRC) purdue_computes/common.tex

PURDUE_COMPUTES_DS_SRC = purdue_computes/diversity_statement/diversity_statement_yw.tex
PURDUE_COMPUTES_DS_PDF = $(PURDUE_COMPUTES_DS_SRC:.tex=.pdf)
PURDUE_COMPUTES_DS_DEP = $(DS_COMMON_SRC) purdue_computes/common.tex

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

MIT_LETTER_SRC = mit/cover_letter/cover_letter_yw.tex
MIT_LETTER_PDF = $(MIT_LETTER_SRC:.tex=.pdf)
MIT_LETTER_DEP = $(filter-out $(wildcard common/letterhead/attachment/*) $(wildcard common/letterhead/signature/*), $(LH_DEP)) $(SIG_PDF) $(LETTER_COMMON_SRC) mit/common.tex

MIT_RS_SRC = mit/research_statement/research_statement_yw.tex
MIT_RS_PDF = $(MIT_RS_SRC:.tex=.pdf)
MIT_RS_DEP = $(RS_COMMON_SRC) mit/common.tex

MIT_TS_SRC = mit/teaching_statement/teaching_statement_yw.tex
MIT_TS_PDF = $(MIT_TS_SRC:.tex=.pdf)
MIT_TS_DEP = $(TS_COMMON_SRC) mit/common.tex

MIT_DS_SRC = mit/diversity_statement/diversity_statement_yw.tex
MIT_DS_PDF = $(MIT_DS_SRC:.tex=.pdf)
MIT_DS_DEP = $(DS_COMMON_SRC) mit/common.tex

UCB_LETTER_SRC = ucb/cover_letter/cover_letter_yw.tex
UCB_LETTER_PDF = $(UCB_LETTER_SRC:.tex=.pdf)
UCB_LETTER_DEP = $(filter-out $(wildcard common/letterhead/attachment/*) $(wildcard common/letterhead/signature/*), $(LH_DEP)) $(SIG_PDF) $(LETTER_COMMON_SRC) ucb/common.tex

UCB_RS_SRC = ucb/research_statement/research_statement_yw.tex
UCB_RS_PDF = $(UCB_RS_SRC:.tex=.pdf)
UCB_RS_DEP = $(RS_COMMON_SRC) ucb/common.tex

UCB_TS_SRC = ucb/teaching_statement/teaching_statement_yw.tex
UCB_TS_PDF = $(UCB_TS_SRC:.tex=.pdf)
UCB_TS_DEP = $(TS_COMMON_SRC) ucb/common.tex

UCB_DS_SRC = ucb/diversity_statement/diversity_statement_yw.tex
UCB_DS_PDF = $(UCB_DS_SRC:.tex=.pdf)
UCB_DS_DEP = $(DS_COMMON_SRC) ucb/common.tex

UPENN_LETTER_SRC = upenn/cover_letter/cover_letter_yw.tex
UPENN_LETTER_PDF = $(UPENN_LETTER_SRC:.tex=.pdf)
UPENN_LETTER_DEP = $(filter-out $(wildcard common/letterhead/attachment/*) $(wildcard common/letterhead/signature/*), $(LH_DEP)) $(SIG_PDF) $(LETTER_COMMON_SRC) upenn/common.tex

UPENN_RS_SRC = upenn/research_statement/research_statement_yw.tex
UPENN_RS_PDF = $(UPENN_RS_SRC:.tex=.pdf)
UPENN_RS_DEP = $(RS_COMMON_SRC) upenn/common.tex

UPENN_TS_SRC = upenn/teaching_statement/teaching_statement_yw.tex
UPENN_TS_PDF = $(UPENN_TS_SRC:.tex=.pdf)
UPENN_TS_DEP = $(TS_COMMON_SRC) upenn/common.tex

UPENN_DS_SRC = upenn/diversity_statement/diversity_statement_yw.tex
UPENN_DS_PDF = $(UPENN_DS_SRC:.tex=.pdf)
UPENN_DS_DEP = $(DS_COMMON_SRC) upenn/common.tex

UIUC_LETTER_SRC = uiuc/cover_letter/cover_letter_yw.tex
UIUC_LETTER_PDF = $(UIUC_LETTER_SRC:.tex=.pdf)
UIUC_LETTER_DEP = $(filter-out $(wildcard common/letterhead/attachment/*) $(wildcard common/letterhead/signature/*), $(LH_DEP)) $(SIG_PDF) $(LETTER_COMMON_SRC) uiuc/common.tex

UIUC_RS_SRC = uiuc/research_statement/research_statement_yw.tex
UIUC_RS_PDF = $(UIUC_RS_SRC:.tex=.pdf)
UIUC_RS_DEP = $(RS_COMMON_SRC) uiuc/common.tex

UIUC_TS_SRC = uiuc/teaching_statement/teaching_statement_yw.tex
UIUC_TS_PDF = $(UIUC_TS_SRC:.tex=.pdf)
UIUC_TS_DEP = $(TS_COMMON_SRC) uiuc/common.tex

UIUC_DS_SRC = uiuc/diversity_statement/diversity_statement_yw.tex
UIUC_DS_PDF = $(UIUC_DS_SRC:.tex=.pdf)
UIUC_DS_DEP = $(DS_COMMON_SRC) uiuc/common.tex

DARTMOUTH_LETTER_SRC = dartmouth/cover_letter/cover_letter_yw.tex
DARTMOUTH_LETTER_PDF = $(DARTMOUTH_LETTER_SRC:.tex=.pdf)
DARTMOUTH_LETTER_DEP = $(filter-out $(wildcard common/letterhead/attachment/*) $(wildcard common/letterhead/signature/*), $(LH_DEP)) $(SIG_PDF) $(LETTER_COMMON_SRC) dartmouth/common.tex

DARTMOUTH_RS_SRC = dartmouth/research_statement/research_statement_yw.tex
DARTMOUTH_RS_PDF = $(DARTMOUTH_RS_SRC:.tex=.pdf)
DARTMOUTH_RS_DEP = $(RS_COMMON_SRC) dartmouth/common.tex

DARTMOUTH_TS_SRC = dartmouth/teaching_statement/teaching_statement_yw.tex
DARTMOUTH_TS_PDF = $(DARTMOUTH_TS_SRC:.tex=.pdf)
DARTMOUTH_TS_DEP = $(TS_COMMON_SRC) dartmouth/common.tex

DARTMOUTH_DS_SRC = dartmouth/diversity_statement/diversity_statement_yw.tex
DARTMOUTH_DS_PDF = $(DARTMOUTH_DS_SRC:.tex=.pdf)
DARTMOUTH_DS_DEP = $(DS_COMMON_SRC) dartmouth/common.tex

UVA_LETTER_SRC = uva/cover_letter/cover_letter_yw.tex
UVA_LETTER_PDF = $(UVA_LETTER_SRC:.tex=.pdf)
UVA_LETTER_DEP = $(filter-out $(wildcard common/letterhead/attachment/*) $(wildcard common/letterhead/signature/*), $(LH_DEP)) $(SIG_PDF) $(LETTER_COMMON_SRC) uva/common.tex

UVA_RS_SRC = uva/research_statement/research_statement_yw.tex
UVA_RS_PDF = $(UVA_RS_SRC:.tex=.pdf)
UVA_RS_DEP = $(RS_COMMON_SRC) uva/common.tex

UVA_TS_SRC = uva/teaching_statement/teaching_statement_yw.tex
UVA_TS_PDF = $(UVA_TS_SRC:.tex=.pdf)
UVA_TS_DEP = $(TS_COMMON_SRC) uva/common.tex

UVA_DS_SRC = uva/diversity_statement/diversity_statement_yw.tex
UVA_DS_PDF = $(UVA_DS_SRC:.tex=.pdf)
UVA_DS_DEP = $(DS_COMMON_SRC) uva/common.tex

NYU_LETTER_SRC = nyu/cover_letter/cover_letter_yw.tex
NYU_LETTER_PDF = $(NYU_LETTER_SRC:.tex=.pdf)
NYU_LETTER_DEP = $(filter-out $(wildcard common/letterhead/attachment/*) $(wildcard common/letterhead/signature/*), $(LH_DEP)) $(SIG_PDF) $(LETTER_COMMON_SRC) nyu/common.tex

NYU_RS_SRC = nyu/research_statement/research_statement_yw.tex
NYU_RS_PDF = $(NYU_RS_SRC:.tex=.pdf)
NYU_RS_DEP = $(RS_COMMON_SRC) nyu/common.tex

NYU_TS_SRC = nyu/teaching_statement/teaching_statement_yw.tex
NYU_TS_PDF = $(NYU_TS_SRC:.tex=.pdf)
NYU_TS_DEP = $(TS_COMMON_SRC) nyu/common.tex

NYU_DS_SRC = nyu/diversity_statement/diversity_statement_yw.tex
NYU_DS_PDF = $(NYU_DS_SRC:.tex=.pdf)
NYU_DS_DEP = $(DS_COMMON_SRC) nyu/common.tex

ASU_COMPUTING_LETTER_SRC = asu_computing/cover_letter/cover_letter_yw.tex
ASU_COMPUTING_LETTER_PDF = $(ASU_COMPUTING_LETTER_SRC:.tex=.pdf)
ASU_COMPUTING_LETTER_DEP = $(filter-out $(wildcard common/letterhead/attachment/*) $(wildcard common/letterhead/signature/*), $(LH_DEP)) $(SIG_PDF) $(LETTER_COMMON_SRC) asu_computing/common.tex

ASU_COMPUTING_RS_SRC = asu_computing/research_statement/research_statement_yw.tex
ASU_COMPUTING_RS_PDF = $(ASU_COMPUTING_RS_SRC:.tex=.pdf)
ASU_COMPUTING_RS_DEP = $(RS_COMMON_2PAGE_SRC) asu_computing/common.tex

ASU_COMPUTING_TS_SRC = asu_computing/teaching_statement/teaching_statement_yw.tex
ASU_COMPUTING_TS_PDF = $(ASU_COMPUTING_TS_SRC:.tex=.pdf)
ASU_COMPUTING_TS_DEP = $(TS_COMMON_SRC) asu_computing/common.tex

ASU_COMPUTING_DS_SRC = asu_computing/diversity_statement/diversity_statement_yw.tex
ASU_COMPUTING_DS_PDF = $(ASU_COMPUTING_DS_SRC:.tex=.pdf)
ASU_COMPUTING_DS_DEP = $(DS_COMMON_SRC) asu_computing/common.tex

CACHE_DIR   := $(shell pwd)/.latex-cache
COMPILE_LUA := latexmk -lualatex -output-directory=$(CACHE_DIR)
COMPILE_PDF := latexmk -pdflatex -output-directory=$(CACHE_DIR)

.PHONY: all clean clean-cache cv letterhead example example-letter example-rs example-ts example-ds tamu-cesg tamu-cesg-letter tamu-cesg-rs tamu-cesg-ts tamu-cesg-ds tamu-nano tamu-nano-letter tamu-nano-rs tamu-nano-ts tamu-nano-ds duke duke-letter duke-rs duke-ts duke-ds purdue-ece purdue-ece-letter purdue-ece-rs purdue-ece-ts purdue-ece-ds purdue-computes purdue-computes-letter purdue-computes-rs purdue-computes-ts purdue-computes-ds uw-ece uw-ece-letter uw-ece-rs uw-ece-ts uw-ece-ds uw-cse uw-cse-letter uw-cse-rs uw-cse-ts uw-cse-ds mit mit-letter mit-rs mit-ts mit-ds ucb ucb-letter ucb-rs ucb-ts ucb-ds upenn upenn-letter upenn-rs upenn-ts upenn-ds uiuc uiuc-letter uiuc-rs uiuc-ts uiuc-ds dartmouth dartmouth-letter dartmouth-rs dartmouth-ts dartmouth-ds uva uva-letter uva-rs uva-ts uva-ds nyu nyu-letter nyu-rs nyu-ts nyu-ds asu-computing asu-computing-letter asu-computing-rs asu-computing-ts asu-computing-ds

all: cv letterhead example tamu-cesg tamu-nano duke purdue-ece purdue-computes uw-ece uw-cse mit ucb upenn uiuc dartmouth uva nyu asu-computing

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

purdue-computes: purdue-computes-letter purdue-computes-rs purdue-computes-ts purdue-computes-ds
purdue-computes-letter: $(PURDUE_COMPUTES_LETTER_PDF)
purdue-computes-rs: $(PURDUE_COMPUTES_RS_PDF)
purdue-computes-ts: $(PURDUE_COMPUTES_TS_PDF)
purdue-computes-ds: $(PURDUE_COMPUTES_DS_PDF)

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

mit: mit-letter mit-rs mit-ts mit-ds
mit-letter: $(MIT_LETTER_PDF)
mit-rs: $(MIT_RS_PDF)
mit-ts: $(MIT_TS_PDF)
mit-ds: $(MIT_DS_PDF)

ucb: ucb-letter ucb-rs ucb-ts ucb-ds
ucb-letter: $(UCB_LETTER_PDF)
ucb-rs: $(UCB_RS_PDF)
ucb-ts: $(UCB_TS_PDF)
ucb-ds: $(UCB_DS_PDF)

upenn: upenn-letter upenn-rs upenn-ts upenn-ds
upenn-letter: $(UPENN_LETTER_PDF)
upenn-rs: $(UPENN_RS_PDF)
upenn-ts: $(UPENN_TS_PDF)
upenn-ds: $(UPENN_DS_PDF)

uiuc: uiuc-letter uiuc-rs uiuc-ts uiuc-ds
uiuc-letter: $(UIUC_LETTER_PDF)
uiuc-rs: $(UIUC_RS_PDF)
uiuc-ts: $(UIUC_TS_PDF)
uiuc-ds: $(UIUC_DS_PDF)

dartmouth: dartmouth-letter dartmouth-rs dartmouth-ts dartmouth-ds
dartmouth-letter: $(DARTMOUTH_LETTER_PDF)
dartmouth-rs: $(DARTMOUTH_RS_PDF)
dartmouth-ts: $(DARTMOUTH_TS_PDF)
dartmouth-ds: $(DARTMOUTH_DS_PDF)

uva: uva-letter uva-rs uva-ts uva-ds
uva-letter: $(UVA_LETTER_PDF)
uva-rs: $(UVA_RS_PDF)
uva-ts: $(UVA_TS_PDF)
uva-ds: $(UVA_DS_PDF)

nyu: nyu-letter nyu-rs nyu-ts nyu-ds
nyu-letter: $(NYU_LETTER_PDF)
nyu-rs: $(NYU_RS_PDF)
nyu-ts: $(NYU_TS_PDF)
nyu-ds: $(NYU_DS_PDF)

asu-computing: asu-computing-letter asu-computing-rs asu-computing-ts asu-computing-ds
asu-computing-letter: $(ASU_COMPUTING_LETTER_PDF)
asu-computing-rs: $(ASU_COMPUTING_RS_PDF)
asu-computing-ts: $(ASU_COMPUTING_TS_PDF)
asu-computing-ds: $(ASU_COMPUTING_DS_PDF)

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

$(PURDUE_COMPUTES_LETTER_PDF): $(PURDUE_COMPUTES_LETTER_SRC) $(PURDUE_COMPUTES_LETTER_DEP) | clean-cache $(CACHE_DIR)
	@cp -r $(LH_FONT_DIR) $(dir $(PURDUE_COMPUTES_LETTER_SRC))/.
	@cd $(dir $(PURDUE_COMPUTES_LETTER_SRC)) && $(COMPILE_LUA) $(notdir $(PURDUE_COMPUTES_LETTER_SRC))
	@cp $(CACHE_DIR)/$(notdir $(PURDUE_COMPUTES_LETTER_PDF)) $(PURDUE_COMPUTES_LETTER_PDF)

$(PURDUE_COMPUTES_RS_PDF): $(PURDUE_COMPUTES_RS_SRC) $(PURDUE_COMPUTES_RS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(PURDUE_COMPUTES_RS_SRC)) && $(COMPILE_LUA) $(notdir $(PURDUE_COMPUTES_RS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(PURDUE_COMPUTES_RS_PDF)) $(PURDUE_COMPUTES_RS_PDF)

$(PURDUE_COMPUTES_TS_PDF): $(PURDUE_COMPUTES_TS_SRC) $(PURDUE_COMPUTES_TS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(PURDUE_COMPUTES_TS_SRC)) && $(COMPILE_LUA) $(notdir $(PURDUE_COMPUTES_TS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(PURDUE_COMPUTES_TS_PDF)) $(PURDUE_COMPUTES_TS_PDF)

$(PURDUE_COMPUTES_DS_PDF): $(PURDUE_COMPUTES_DS_SRC) $(PURDUE_COMPUTES_DS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(PURDUE_COMPUTES_DS_SRC)) && $(COMPILE_LUA) $(notdir $(PURDUE_COMPUTES_DS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(PURDUE_COMPUTES_DS_PDF)) $(PURDUE_COMPUTES_DS_PDF)

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
	
$(MIT_LETTER_PDF): $(MIT_LETTER_SRC) $(MIT_LETTER_DEP) | clean-cache $(CACHE_DIR)
	@cp -r $(LH_FONT_DIR) $(dir $(MIT_LETTER_SRC))/.
	@cd $(dir $(MIT_LETTER_SRC)) && $(COMPILE_LUA) $(notdir $(MIT_LETTER_SRC))
	@cp $(CACHE_DIR)/$(notdir $(MIT_LETTER_PDF)) $(MIT_LETTER_PDF)

$(MIT_RS_PDF): $(MIT_RS_SRC) $(MIT_RS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(MIT_RS_SRC)) && $(COMPILE_LUA) $(notdir $(MIT_RS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(MIT_RS_PDF)) $(MIT_RS_PDF)

$(MIT_TS_PDF): $(MIT_TS_SRC) $(MIT_TS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(MIT_TS_SRC)) && $(COMPILE_LUA) $(notdir $(MIT_TS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(MIT_TS_PDF)) $(MIT_TS_PDF)

$(MIT_DS_PDF): $(MIT_DS_SRC) $(MIT_DS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(MIT_DS_SRC)) && $(COMPILE_LUA) $(notdir $(MIT_DS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(MIT_DS_PDF)) $(MIT_DS_PDF)

$(UCB_LETTER_PDF): $(UCB_LETTER_SRC) $(UCB_LETTER_DEP) | clean-cache $(CACHE_DIR)
	@cp -r $(LH_FONT_DIR) $(dir $(UCB_LETTER_SRC))/.
	@cd $(dir $(UCB_LETTER_SRC)) && $(COMPILE_LUA) $(notdir $(UCB_LETTER_SRC))
	@cp $(CACHE_DIR)/$(notdir $(UCB_LETTER_PDF)) $(UCB_LETTER_PDF)

$(UCB_RS_PDF): $(UCB_RS_SRC) $(UCB_RS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(UCB_RS_SRC)) && $(COMPILE_LUA) $(notdir $(UCB_RS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(UCB_RS_PDF)) $(UCB_RS_PDF)

$(UCB_TS_PDF): $(UCB_TS_SRC) $(UCB_TS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(UCB_TS_SRC)) && $(COMPILE_LUA) $(notdir $(UCB_TS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(UCB_TS_PDF)) $(UCB_TS_PDF)

$(UCB_DS_PDF): $(UCB_DS_SRC) $(UCB_DS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(UCB_DS_SRC)) && $(COMPILE_LUA) $(notdir $(UCB_DS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(UCB_DS_PDF)) $(UCB_DS_PDF)

$(UPENN_LETTER_PDF): $(UPENN_LETTER_SRC) $(UPENN_LETTER_DEP) | clean-cache $(CACHE_DIR)
	@cp -r $(LH_FONT_DIR) $(dir $(UPENN_LETTER_SRC))/.
	@cd $(dir $(UPENN_LETTER_SRC)) && $(COMPILE_LUA) $(notdir $(UPENN_LETTER_SRC))
	@cp $(CACHE_DIR)/$(notdir $(UPENN_LETTER_PDF)) $(UPENN_LETTER_PDF)

$(UPENN_RS_PDF): $(UPENN_RS_SRC) $(UPENN_RS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(UPENN_RS_SRC)) && $(COMPILE_LUA) $(notdir $(UPENN_RS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(UPENN_RS_PDF)) $(UPENN_RS_PDF)

$(UPENN_TS_PDF): $(UPENN_TS_SRC) $(UPENN_TS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(UPENN_TS_SRC)) && $(COMPILE_LUA) $(notdir $(UPENN_TS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(UPENN_TS_PDF)) $(UPENN_TS_PDF)

$(UPENN_DS_PDF): $(UPENN_DS_SRC) $(UPENN_DS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(UPENN_DS_SRC)) && $(COMPILE_LUA) $(notdir $(UPENN_DS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(UPENN_DS_PDF)) $(UPENN_DS_PDF)

$(UIUC_LETTER_PDF): $(UIUC_LETTER_SRC) $(UIUC_LETTER_DEP) | clean-cache $(CACHE_DIR)
	@cp -r $(LH_FONT_DIR) $(dir $(UIUC_LETTER_SRC))/.
	@cd $(dir $(UIUC_LETTER_SRC)) && $(COMPILE_LUA) $(notdir $(UIUC_LETTER_SRC))
	@cp $(CACHE_DIR)/$(notdir $(UIUC_LETTER_PDF)) $(UIUC_LETTER_PDF)

$(UIUC_RS_PDF): $(UIUC_RS_SRC) $(UIUC_RS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(UIUC_RS_SRC)) && $(COMPILE_LUA) $(notdir $(UIUC_RS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(UIUC_RS_PDF)) $(UIUC_RS_PDF)

$(UIUC_TS_PDF): $(UIUC_TS_SRC) $(UIUC_TS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(UIUC_TS_SRC)) && $(COMPILE_LUA) $(notdir $(UIUC_TS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(UIUC_TS_PDF)) $(UIUC_TS_PDF)

$(UIUC_DS_PDF): $(UIUC_DS_SRC) $(UIUC_DS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(UIUC_DS_SRC)) && $(COMPILE_LUA) $(notdir $(UIUC_DS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(UIUC_DS_PDF)) $(UIUC_DS_PDF)

$(DARTMOUTH_LETTER_PDF): $(DARTMOUTH_LETTER_SRC) $(DARTMOUTH_LETTER_DEP) | clean-cache $(CACHE_DIR)
	@cp -r $(LH_FONT_DIR) $(dir $(DARTMOUTH_LETTER_SRC))/.
	@cd $(dir $(DARTMOUTH_LETTER_SRC)) && $(COMPILE_LUA) $(notdir $(DARTMOUTH_LETTER_SRC))
	@cp $(CACHE_DIR)/$(notdir $(DARTMOUTH_LETTER_PDF)) $(DARTMOUTH_LETTER_PDF)

$(DARTMOUTH_RS_PDF): $(DARTMOUTH_RS_SRC) $(DARTMOUTH_RS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(DARTMOUTH_RS_SRC)) && $(COMPILE_LUA) $(notdir $(DARTMOUTH_RS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(DARTMOUTH_RS_PDF)) $(DARTMOUTH_RS_PDF)

$(DARTMOUTH_TS_PDF): $(DARTMOUTH_TS_SRC) $(DARTMOUTH_TS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(DARTMOUTH_TS_SRC)) && $(COMPILE_LUA) $(notdir $(DARTMOUTH_TS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(DARTMOUTH_TS_PDF)) $(DARTMOUTH_TS_PDF)

$(DARTMOUTH_DS_PDF): $(DARTMOUTH_DS_SRC) $(DARTMOUTH_DS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(DARTMOUTH_DS_SRC)) && $(COMPILE_LUA) $(notdir $(DARTMOUTH_DS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(DARTMOUTH_DS_PDF)) $(DARTMOUTH_DS_PDF)

$(UVA_LETTER_PDF): $(UVA_LETTER_SRC) $(UVA_LETTER_DEP) | clean-cache $(CACHE_DIR)
	@cp -r $(LH_FONT_DIR) $(dir $(UVA_LETTER_SRC))/.
	@cd $(dir $(UVA_LETTER_SRC)) && $(COMPILE_LUA) $(notdir $(UVA_LETTER_SRC))
	@cp $(CACHE_DIR)/$(notdir $(UVA_LETTER_PDF)) $(UVA_LETTER_PDF)

$(UVA_RS_PDF): $(UVA_RS_SRC) $(UVA_RS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(UVA_RS_SRC)) && $(COMPILE_LUA) $(notdir $(UVA_RS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(UVA_RS_PDF)) $(UVA_RS_PDF)

$(UVA_TS_PDF): $(UVA_TS_SRC) $(UVA_TS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(UVA_TS_SRC)) && $(COMPILE_LUA) $(notdir $(UVA_TS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(UVA_TS_PDF)) $(UVA_TS_PDF)

$(UVA_DS_PDF): $(UVA_DS_SRC) $(UVA_DS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(UVA_DS_SRC)) && $(COMPILE_LUA) $(notdir $(UVA_DS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(UVA_DS_PDF)) $(UVA_DS_PDF)

$(NYU_LETTER_PDF): $(NYU_LETTER_SRC) $(NYU_LETTER_DEP) | clean-cache $(CACHE_DIR)
	@cp -r $(LH_FONT_DIR) $(dir $(NYU_LETTER_SRC))/.
	@cd $(dir $(NYU_LETTER_SRC)) && $(COMPILE_LUA) $(notdir $(NYU_LETTER_SRC))
	@cp $(CACHE_DIR)/$(notdir $(NYU_LETTER_PDF)) $(NYU_LETTER_PDF)

$(NYU_RS_PDF): $(NYU_RS_SRC) $(NYU_RS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(NYU_RS_SRC)) && $(COMPILE_LUA) $(notdir $(NYU_RS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(NYU_RS_PDF)) $(NYU_RS_PDF)

$(NYU_TS_PDF): $(NYU_TS_SRC) $(NYU_TS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(NYU_TS_SRC)) && $(COMPILE_LUA) $(notdir $(NYU_TS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(NYU_TS_PDF)) $(NYU_TS_PDF)

$(NYU_DS_PDF): $(NYU_DS_SRC) $(NYU_DS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(NYU_DS_SRC)) && $(COMPILE_LUA) $(notdir $(NYU_DS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(NYU_DS_PDF)) $(NYU_DS_PDF)

$(ASU_COMPUTING_LETTER_PDF): $(ASU_COMPUTING_LETTER_SRC) $(ASU_COMPUTING_LETTER_DEP) | clean-cache $(CACHE_DIR)
	@cp -r $(LH_FONT_DIR) $(dir $(ASU_COMPUTING_LETTER_SRC))/.
	@cd $(dir $(ASU_COMPUTING_LETTER_SRC)) && $(COMPILE_LUA) $(notdir $(ASU_COMPUTING_LETTER_SRC))
	@cp $(CACHE_DIR)/$(notdir $(ASU_COMPUTING_LETTER_PDF)) $(ASU_COMPUTING_LETTER_PDF)

$(ASU_COMPUTING_RS_PDF): $(ASU_COMPUTING_RS_SRC) $(ASU_COMPUTING_RS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(ASU_COMPUTING_RS_SRC)) && $(COMPILE_LUA) $(notdir $(ASU_COMPUTING_RS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(ASU_COMPUTING_RS_PDF)) $(ASU_COMPUTING_RS_PDF)

$(ASU_COMPUTING_TS_PDF): $(ASU_COMPUTING_TS_SRC) $(ASU_COMPUTING_TS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(ASU_COMPUTING_TS_SRC)) && $(COMPILE_LUA) $(notdir $(ASU_COMPUTING_TS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(ASU_COMPUTING_TS_PDF)) $(ASU_COMPUTING_TS_PDF)

$(ASU_COMPUTING_DS_PDF): $(ASU_COMPUTING_DS_SRC) $(ASU_COMPUTING_DS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(ASU_COMPUTING_DS_SRC)) && $(COMPILE_LUA) $(notdir $(ASU_COMPUTING_DS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(ASU_COMPUTING_DS_PDF)) $(ASU_COMPUTING_DS_PDF)