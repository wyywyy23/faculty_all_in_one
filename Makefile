CV_SRC = common/cv/cv_yw.tex
CV_PDF = $(CV_SRC:.tex=.pdf)
CV_DEP = $(filter-out $(CV_PDF) $(CV_HL_PDF) $(CV_SRC) $(CV_HL_SRC) $(wildcard common/cv/*.log) common/cv/LICENSE common/cv/Makefile common/cv/README.md $(wildcard common/cv/.git*), $(shell find common/cv -type f)) today.date

CV_HL_SRC = common/cv/cv_highlights_yw.tex
CV_HL_PDF = $(CV_HL_SRC:.tex=.pdf)
CV_HL_DEP = $(filter-out $(CV_PDF) $(CV_HL_PDF) $(CV_SRC) $(CV_HL_SRC) $(wildcard common/cv/*.log) common/cv/LICENSE common/cv/Makefile common/cv/README.md $(wildcard common/cv/.git*), $(shell find common/cv -type f)) today.date

PUB_LIST_SRC = common/publication/pub_list/pub_list_yw.tex
PUB_LIST_PDF = $(PUB_LIST_SRC:.tex=.pdf)
PUB_LIST_DEP = common/cv/simplecv.sty common/cv/comment_setup.tex common/cv/bibtype.tex common/cv/sections/publications.tex common/cv/papers.bib today.date

LH_SRC = common/letterhead/letter.tex
LH_PDF = $(LH_SRC:.tex=.pdf)
LH_DEP = $(filter-out $(LH_PDF) $(LH_SRC) $(wildcard common/letterhead/*.log) common/letterhead/LICENSE common/letterhead/Makefile common/letterhead/README.md $(wildcard common/letterhead/.git*), $(shell find common/letterhead -type f)) today.date

LH_FONT_DIR       = common/letterhead/font
SIG_PDF           = common/signature/yuyang.pdf
LETTER_COMMON_SRC = $(wildcard common/cover_letter/*.tex)

STATEMENT_PRE = common/statement_pre.tex today.date
TS_FIG = fig/color.pdf
TS_FIG_1PAGE = fig/color_vertical.pdf
DS_FIG = fig/diversity.png
RS_FIG = fig/research.pdf

RS_COMMON_SRC = $(filter-out common/research_statement/research_statement_common_2_page.tex, $(wildcard common/research_statement/*.tex)) common/research_statement/bibliography.bib $(STATEMENT_PRE) $(RS_FIG)
RS_COMMON_2PAGE_SRC = $(filter-out common/research_statement/research_statement_common.tex, $(wildcard common/research_statement/*.tex)) common/research_statement/bibliography_short.bib $(STATEMENT_PRE) $(RS_FIG)
TS_COMMON_SRC = $(filter-out common/teaching_statement/teaching_statement_common_1_page.tex, $(wildcard common/teaching_statement/*.tex)) $(wildcard common/teaching_statement/*.bib) $(STATEMENT_PRE) $(TS_FIG)
TS_COMMON_1PAGE_SRC = $(filter-out common/teaching_statement/teaching_statement_common.tex, $(wildcard common/teaching_statement/*.tex)) $(STATEMENT_PRE) $(TS_FIG_1PAGE)
DS_COMMON_SRC = $(wildcard common/diversity_statement/*.tex) $(wildcard common/diversity_statement/*.bib) $(STATEMENT_PRE) $(DS_FIG)
MS_COMMON_SRC = $(wildcard common/mentoring_statement/*.tex) $(wildcard common/mentoring_statement/*.bib) $(STATEMENT_PRE)
ES_COMMON_SRC = $(wildcard common/engagement_statement/*.tex) $(wildcard common/engagement_statement/*.bib) $(STATEMENT_PRE)

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

ASU_DIGITAL_LETTER_SRC = asu_digital/cover_letter/cover_letter_yw.tex
ASU_DIGITAL_LETTER_PDF = $(ASU_DIGITAL_LETTER_SRC:.tex=.pdf)
ASU_DIGITAL_LETTER_DEP = $(filter-out $(wildcard common/letterhead/attachment/*) $(wildcard common/letterhead/signature/*), $(LH_DEP)) $(SIG_PDF) $(LETTER_COMMON_SRC) asu_digital/common.tex

ASU_DIGITAL_RS_SRC = asu_digital/research_statement/research_statement_yw.tex
ASU_DIGITAL_RS_PDF = $(ASU_DIGITAL_RS_SRC:.tex=.pdf)
ASU_DIGITAL_RS_DEP = $(RS_COMMON_2PAGE_SRC) asu_digital/common.tex

ASU_DIGITAL_TS_SRC = asu_digital/teaching_statement/teaching_statement_yw.tex
ASU_DIGITAL_TS_PDF = $(ASU_DIGITAL_TS_SRC:.tex=.pdf)
ASU_DIGITAL_TS_DEP = $(TS_COMMON_SRC) asu_digital/common.tex

ASU_DIGITAL_DS_SRC = asu_digital/diversity_statement/diversity_statement_yw.tex
ASU_DIGITAL_DS_PDF = $(ASU_DIGITAL_DS_SRC:.tex=.pdf)
ASU_DIGITAL_DS_DEP = $(DS_COMMON_SRC) asu_digital/common.tex

ASU_MICRO_LETTER_SRC = asu_micro/cover_letter/cover_letter_yw.tex
ASU_MICRO_LETTER_PDF = $(ASU_MICRO_LETTER_SRC:.tex=.pdf)
ASU_MICRO_LETTER_DEP = $(filter-out $(wildcard common/letterhead/attachment/*) $(wildcard common/letterhead/signature/*), $(LH_DEP)) $(SIG_PDF) $(LETTER_COMMON_SRC) asu_micro/common.tex

ASU_MICRO_RS_SRC = asu_micro/research_statement/research_statement_yw.tex
ASU_MICRO_RS_PDF = $(ASU_MICRO_RS_SRC:.tex=.pdf)
ASU_MICRO_RS_DEP = $(RS_COMMON_2PAGE_SRC) asu_micro/common.tex

ASU_MICRO_TS_SRC = asu_micro/teaching_statement/teaching_statement_yw.tex
ASU_MICRO_TS_PDF = $(ASU_MICRO_TS_SRC:.tex=.pdf)
ASU_MICRO_TS_DEP = $(TS_COMMON_SRC) asu_micro/common.tex

ASU_MICRO_DS_SRC = asu_micro/diversity_statement/diversity_statement_yw.tex
ASU_MICRO_DS_PDF = $(ASU_MICRO_DS_SRC:.tex=.pdf)
ASU_MICRO_DS_DEP = $(DS_COMMON_SRC) asu_micro/common.tex

UMICH_ECE_LETTER_SRC = umich_ece/cover_letter/cover_letter_yw.tex
UMICH_ECE_LETTER_PDF = $(UMICH_ECE_LETTER_SRC:.tex=.pdf)
UMICH_ECE_LETTER_DEP = $(filter-out $(wildcard common/letterhead/attachment/*) $(wildcard common/letterhead/signature/*), $(LH_DEP)) umich_ece/common.tex

UMICH_ECE_RS_SRC = umich_ece/research_statement/research_statement_yw.tex
UMICH_ECE_RS_PDF = $(UMICH_ECE_RS_SRC:.tex=.pdf)
UMICH_ECE_RS_DEP = $(RS_COMMON_SRC) umich_ece/common.tex

UMICH_ECE_TS_SRC = umich_ece/teaching_statement/teaching_statement_yw.tex
UMICH_ECE_TS_PDF = $(UMICH_ECE_TS_SRC:.tex=.pdf)
UMICH_ECE_TS_DEP = $(TS_COMMON_SRC) umich_ece/common.tex

UMICH_ECE_DS_SRC = umich_ece/diversity_statement/diversity_statement_yw.tex
UMICH_ECE_DS_PDF = $(UMICH_ECE_DS_SRC:.tex=.pdf)
UMICH_ECE_DS_DEP = $(DS_COMMON_SRC) umich_ece/common.tex

UMICH_CSE_LETTER_SRC = umich_cse/cover_letter/cover_letter_yw.tex
UMICH_CSE_LETTER_PDF = $(UMICH_CSE_LETTER_SRC:.tex=.pdf)
UMICH_CSE_LETTER_DEP = $(filter-out $(wildcard common/letterhead/attachment/*) $(wildcard common/letterhead/signature/*), $(LH_DEP)) umich_cse/common.tex

UMICH_CSE_RS_SRC = umich_cse/research_statement/research_statement_yw.tex
UMICH_CSE_RS_PDF = $(UMICH_CSE_RS_SRC:.tex=.pdf)
UMICH_CSE_RS_DEP = $(RS_COMMON_SRC) umich_cse/common.tex

UMICH_CSE_TS_SRC = umich_cse/teaching_statement/teaching_statement_yw.tex
UMICH_CSE_TS_PDF = $(UMICH_CSE_TS_SRC:.tex=.pdf)
UMICH_CSE_TS_DEP = $(TS_COMMON_SRC) umich_cse/common.tex

UMICH_CSE_DS_SRC = umich_cse/diversity_statement/diversity_statement_yw.tex
UMICH_CSE_DS_PDF = $(UMICH_CSE_DS_SRC:.tex=.pdf)
UMICH_CSE_DS_DEP = $(DS_COMMON_SRC) umich_cse/common.tex

UT_AUSTIN_LETTER_SRC = ut_austin/cover_letter/cover_letter_yw.tex
UT_AUSTIN_LETTER_PDF = $(UT_AUSTIN_LETTER_SRC:.tex=.pdf)
UT_AUSTIN_LETTER_DEP = $(filter-out $(wildcard common/letterhead/attachment/*) $(wildcard common/letterhead/signature/*), $(LH_DEP)) ut_austin/common.tex

UT_AUSTIN_RS_SRC = ut_austin/research_statement/research_statement_yw.tex
UT_AUSTIN_RS_PDF = $(UT_AUSTIN_RS_SRC:.tex=.pdf)
UT_AUSTIN_RS_DEP = $(RS_COMMON_SRC) ut_austin/common.tex

UT_AUSTIN_TS_SRC = ut_austin/teaching_statement/teaching_statement_yw.tex
UT_AUSTIN_TS_PDF = $(UT_AUSTIN_TS_SRC:.tex=.pdf)
UT_AUSTIN_TS_DEP = $(TS_COMMON_SRC) ut_austin/common.tex

UT_AUSTIN_DS_SRC = ut_austin/diversity_statement/diversity_statement_yw.tex
UT_AUSTIN_DS_PDF = $(UT_AUSTIN_DS_SRC:.tex=.pdf)
UT_AUSTIN_DS_DEP = $(DS_COMMON_SRC) ut_austin/common.tex

UT_AUSTIN_MS_SRC = ut_austin/mentoring_statement/mentoring_statement_yw.tex
UT_AUSTIN_MS_PDF = $(UT_AUSTIN_MS_SRC:.tex=.pdf)
UT_AUSTIN_MS_DEP = $(MS_COMMON_SRC) ut_austin/common.tex

ROCHESTER_LETTER_SRC = rochester/cover_letter/cover_letter_yw.tex
ROCHESTER_LETTER_PDF = $(ROCHESTER_LETTER_SRC:.tex=.pdf)
ROCHESTER_LETTER_DEP = $(filter-out $(wildcard common/letterhead/attachment/*) $(wildcard common/letterhead/signature/*), $(LH_DEP)) rochester/common.tex

ROCHESTER_RS_SRC = rochester/research_statement/research_statement_yw.tex
ROCHESTER_RS_PDF = $(ROCHESTER_RS_SRC:.tex=.pdf)
ROCHESTER_RS_DEP = $(RS_COMMON_SRC) rochester/common.tex

ROCHESTER_TS_SRC = rochester/teaching_statement/teaching_statement_yw.tex
ROCHESTER_TS_PDF = $(ROCHESTER_TS_SRC:.tex=.pdf)
ROCHESTER_TS_DEP = $(TS_COMMON_SRC) rochester/common.tex

ROCHESTER_DS_SRC = rochester/diversity_statement/diversity_statement_yw.tex
ROCHESTER_DS_PDF = $(ROCHESTER_DS_SRC:.tex=.pdf)
ROCHESTER_DS_DEP = $(DS_COMMON_SRC) rochester/common.tex

UT_DALLAS_LETTER_SRC = ut_dallas/cover_letter/cover_letter_yw.tex
UT_DALLAS_LETTER_PDF = $(UT_DALLAS_LETTER_SRC:.tex=.pdf)
UT_DALLAS_LETTER_DEP = $(filter-out $(wildcard common/letterhead/attachment/*) $(wildcard common/letterhead/signature/*), $(LH_DEP)) ut_dallas/common.tex

UT_DALLAS_RS_SRC = ut_dallas/research_statement/research_statement_yw.tex
UT_DALLAS_RS_PDF = $(UT_DALLAS_RS_SRC:.tex=.pdf)
UT_DALLAS_RS_DEP = $(RS_COMMON_SRC) ut_dallas/common.tex

UT_DALLAS_TS_SRC = ut_dallas/teaching_statement/teaching_statement_yw.tex
UT_DALLAS_TS_PDF = $(UT_DALLAS_TS_SRC:.tex=.pdf)
UT_DALLAS_TS_DEP = $(TS_COMMON_SRC) ut_dallas/common.tex

UT_DALLAS_DS_SRC = ut_dallas/diversity_statement/diversity_statement_yw.tex
UT_DALLAS_DS_PDF = $(UT_DALLAS_DS_SRC:.tex=.pdf)
UT_DALLAS_DS_DEP = $(DS_COMMON_SRC) ut_dallas/common.tex

NCSU_LETTER_SRC = ncsu/cover_letter/cover_letter_yw.tex
NCSU_LETTER_PDF = $(NCSU_LETTER_SRC:.tex=.pdf)
NCSU_LETTER_DEP = $(filter-out $(wildcard common/letterhead/attachment/*) $(wildcard common/letterhead/signature/*), $(LH_DEP)) ncsu/common.tex

NCSU_RS_SRC = ncsu/research_statement/research_statement_yw.tex
NCSU_RS_PDF = $(NCSU_RS_SRC:.tex=.pdf)
NCSU_RS_DEP = $(RS_COMMON_SRC) ncsu/common.tex

NCSU_TS_SRC = ncsu/teaching_statement/teaching_statement_yw.tex
NCSU_TS_PDF = $(NCSU_TS_SRC:.tex=.pdf)
NCSU_TS_DEP = $(TS_COMMON_SRC) ncsu/common.tex

NCSU_DS_SRC = ncsu/diversity_statement/diversity_statement_yw.tex
NCSU_DS_PDF = $(NCSU_DS_SRC:.tex=.pdf)
NCSU_DS_DEP = $(DS_COMMON_SRC) ncsu/common.tex

BU_AI_LETTER_SRC = bu_ai/cover_letter/cover_letter_yw.tex
BU_AI_LETTER_PDF = $(BU_AI_LETTER_SRC:.tex=.pdf)
BU_AI_LETTER_DEP = $(filter-out $(wildcard common/letterhead/attachment/*) $(wildcard common/letterhead/signature/*), $(LH_DEP)) bu_ai/common.tex

BU_AI_RS_SRC = bu_ai/research_statement/research_statement_yw.tex
BU_AI_RS_PDF = $(BU_AI_RS_SRC:.tex=.pdf)
BU_AI_RS_DEP = $(RS_COMMON_SRC) bu_ai/common.tex

BU_AI_TS_SRC = bu_ai/teaching_statement/teaching_statement_yw.tex
BU_AI_TS_PDF = $(BU_AI_TS_SRC:.tex=.pdf)
BU_AI_TS_DEP = $(TS_COMMON_SRC) bu_ai/common.tex

BU_AI_DS_SRC = bu_ai/diversity_statement/diversity_statement_yw.tex
BU_AI_DS_PDF = $(BU_AI_DS_SRC:.tex=.pdf)
BU_AI_DS_DEP = $(DS_COMMON_SRC) bu_ai/common.tex

BU_ECE_LETTER_SRC = bu_ece/cover_letter/cover_letter_yw.tex
BU_ECE_LETTER_PDF = $(BU_ECE_LETTER_SRC:.tex=.pdf)
BU_ECE_LETTER_DEP = $(filter-out $(wildcard common/letterhead/attachment/*) $(wildcard common/letterhead/signature/*), $(LH_DEP)) bu_ece/common.tex

BU_ECE_RS_SRC = bu_ece/research_statement/research_statement_yw.tex
BU_ECE_RS_PDF = $(BU_ECE_RS_SRC:.tex=.pdf)
BU_ECE_RS_DEP = $(RS_COMMON_SRC) bu_ece/common.tex

BU_ECE_TS_SRC = bu_ece/teaching_statement/teaching_statement_yw.tex
BU_ECE_TS_PDF = $(BU_ECE_TS_SRC:.tex=.pdf)
BU_ECE_TS_DEP = $(TS_COMMON_SRC) bu_ece/common.tex

BU_ECE_DS_SRC = bu_ece/diversity_statement/diversity_statement_yw.tex
BU_ECE_DS_PDF = $(BU_ECE_DS_SRC:.tex=.pdf)
BU_ECE_DS_DEP = $(DS_COMMON_SRC) bu_ece/common.tex

BU_COE_LETTER_SRC = bu_coe/cover_letter/cover_letter_yw.tex
BU_COE_LETTER_PDF = $(BU_COE_LETTER_SRC:.tex=.pdf)
BU_COE_LETTER_DEP = $(filter-out $(wildcard common/letterhead/attachment/*) $(wildcard common/letterhead/signature/*), $(LH_DEP)) bu_coe/common.tex

BU_COE_RS_SRC = bu_coe/research_statement/research_statement_yw.tex
BU_COE_RS_PDF = $(BU_COE_RS_SRC:.tex=.pdf)
BU_COE_RS_DEP = $(RS_COMMON_SRC) bu_coe/common.tex

BU_COE_TS_SRC = bu_coe/teaching_statement/teaching_statement_yw.tex
BU_COE_TS_PDF = $(BU_COE_TS_SRC:.tex=.pdf)
BU_COE_TS_DEP = $(TS_COMMON_SRC) bu_coe/common.tex

BU_COE_DS_SRC = bu_coe/diversity_statement/diversity_statement_yw.tex
BU_COE_DS_PDF = $(BU_COE_DS_SRC:.tex=.pdf)
BU_COE_DS_DEP = $(DS_COMMON_SRC) bu_coe/common.tex

UFL_LETTER_SRC = ufl/cover_letter/cover_letter_yw.tex
UFL_LETTER_PDF = $(UFL_LETTER_SRC:.tex=.pdf)
UFL_LETTER_DEP = $(filter-out $(wildcard common/letterhead/attachment/*) $(wildcard common/letterhead/signature/*), $(LH_DEP)) ufl/common.tex

UFL_RS_SRC = ufl/research_statement/research_statement_yw.tex
UFL_RS_PDF = $(UFL_RS_SRC:.tex=.pdf)
UFL_RS_DEP = $(RS_COMMON_SRC) ufl/common.tex

UFL_TS_SRC = ufl/teaching_statement/teaching_statement_yw.tex
UFL_TS_PDF = $(UFL_TS_SRC:.tex=.pdf)
UFL_TS_DEP = $(TS_COMMON_SRC) ufl/common.tex

UFL_DS_SRC = ufl/diversity_statement/diversity_statement_yw.tex
UFL_DS_PDF = $(UFL_DS_SRC:.tex=.pdf)
UFL_DS_DEP = $(DS_COMMON_SRC) ufl/common.tex

RPI_LETTER_SRC = rpi/cover_letter/cover_letter_yw.tex
RPI_LETTER_PDF = $(RPI_LETTER_SRC:.tex=.pdf)
RPI_LETTER_DEP = $(filter-out $(wildcard common/letterhead/attachment/*) $(wildcard common/letterhead/signature/*), $(LH_DEP)) rpi/common.tex

RPI_RS_SRC = rpi/research_statement/research_statement_yw.tex
RPI_RS_PDF = $(RPI_RS_SRC:.tex=.pdf)
RPI_RS_DEP = $(RS_COMMON_SRC) rpi/common.tex

RPI_TS_SRC = rpi/teaching_statement/teaching_statement_yw.tex
RPI_TS_PDF = $(RPI_TS_SRC:.tex=.pdf)
RPI_TS_DEP = $(TS_COMMON_SRC) rpi/common.tex

RPI_DS_SRC = rpi/diversity_statement/diversity_statement_yw.tex
RPI_DS_PDF = $(RPI_DS_SRC:.tex=.pdf)
RPI_DS_DEP = $(DS_COMMON_SRC) rpi/common.tex

UTAH_LETTER_SRC = utah/cover_letter/cover_letter_yw.tex
UTAH_LETTER_PDF = $(UTAH_LETTER_SRC:.tex=.pdf)
UTAH_LETTER_DEP = $(filter-out $(wildcard common/letterhead/attachment/*) $(wildcard common/letterhead/signature/*), $(LH_DEP)) utah/common.tex

UTAH_RS_SRC = utah/research_statement/research_statement_yw.tex
UTAH_RS_PDF = $(UTAH_RS_SRC:.tex=.pdf)
UTAH_RS_DEP = $(RS_COMMON_SRC) utah/common.tex

UTAH_TS_SRC = utah/teaching_statement/teaching_statement_yw.tex
UTAH_TS_PDF = $(UTAH_TS_SRC:.tex=.pdf)
UTAH_TS_DEP = $(TS_COMMON_SRC) utah/common.tex

UTAH_DS_SRC = utah/diversity_statement/diversity_statement_yw.tex
UTAH_DS_PDF = $(UTAH_DS_SRC:.tex=.pdf)
UTAH_DS_DEP = $(DS_COMMON_SRC) utah/common.tex

UDEL_AI_LETTER_SRC = udel_ai/cover_letter/cover_letter_yw.tex
UDEL_AI_LETTER_PDF = $(UDEL_AI_LETTER_SRC:.tex=.pdf)
UDEL_AI_LETTER_DEP = $(filter-out $(wildcard common/letterhead/attachment/*) $(wildcard common/letterhead/signature/*), $(LH_DEP)) udel_ai/common.tex

UDEL_AI_RS_SRC = udel_ai/research_statement/research_statement_yw.tex
UDEL_AI_RS_PDF = $(UDEL_AI_RS_SRC:.tex=.pdf)
UDEL_AI_RS_DEP = $(RS_COMMON_SRC) udel_ai/common.tex

UDEL_AI_TS_SRC = udel_ai/teaching_statement/teaching_statement_yw.tex
UDEL_AI_TS_PDF = $(UDEL_AI_TS_SRC:.tex=.pdf)
UDEL_AI_TS_DEP = $(TS_COMMON_SRC) udel_ai/common.tex

UDEL_AI_DS_SRC = udel_ai/diversity_statement/diversity_statement_yw.tex
UDEL_AI_DS_PDF = $(UDEL_AI_DS_SRC:.tex=.pdf)
UDEL_AI_DS_DEP = $(DS_COMMON_SRC) udel_ai/common.tex

UDEL_DEVICE_LETTER_SRC = udel_device/cover_letter/cover_letter_yw.tex
UDEL_DEVICE_LETTER_PDF = $(UDEL_DEVICE_LETTER_SRC:.tex=.pdf)
UDEL_DEVICE_LETTER_DEP = $(filter-out $(wildcard common/letterhead/attachment/*) $(wildcard common/letterhead/signature/*), $(LH_DEP)) udel_device/common.tex

UDEL_DEVICE_RS_SRC = udel_device/research_statement/research_statement_yw.tex
UDEL_DEVICE_RS_PDF = $(UDEL_DEVICE_RS_SRC:.tex=.pdf)
UDEL_DEVICE_RS_DEP = $(RS_COMMON_SRC) udel_device/common.tex

UDEL_DEVICE_TS_SRC = udel_device/teaching_statement/teaching_statement_yw.tex
UDEL_DEVICE_TS_PDF = $(UDEL_DEVICE_TS_SRC:.tex=.pdf)
UDEL_DEVICE_TS_DEP = $(TS_COMMON_SRC) udel_device/common.tex

UDEL_DEVICE_DS_SRC = udel_device/diversity_statement/diversity_statement_yw.tex
UDEL_DEVICE_DS_PDF = $(UDEL_DEVICE_DS_SRC:.tex=.pdf)
UDEL_DEVICE_DS_DEP = $(DS_COMMON_SRC) udel_device/common.tex

UCONN_ECE_LETTER_SRC = uconn_ece/cover_letter/cover_letter_yw.tex
UCONN_ECE_LETTER_PDF = $(UCONN_ECE_LETTER_SRC:.tex=.pdf)
UCONN_ECE_LETTER_DEP = $(filter-out $(wildcard common/letterhead/attachment/*) $(wildcard common/letterhead/signature/*), $(LH_DEP)) uconn_ece/common.tex

UCONN_ECE_RS_SRC = uconn_ece/research_statement/research_statement_yw.tex
UCONN_ECE_RS_PDF = $(UCONN_ECE_RS_SRC:.tex=.pdf)
UCONN_ECE_RS_DEP = $(RS_COMMON_SRC) uconn_ece/common.tex

UCONN_ECE_TS_SRC = uconn_ece/teaching_statement/teaching_statement_yw.tex
UCONN_ECE_TS_PDF = $(UCONN_ECE_TS_SRC:.tex=.pdf)
UCONN_ECE_TS_DEP = $(TS_COMMON_SRC) uconn_ece/common.tex

UCONN_ECE_DS_SRC = uconn_ece/diversity_statement/diversity_statement_yw.tex
UCONN_ECE_DS_PDF = $(UCONN_ECE_DS_SRC:.tex=.pdf)
UCONN_ECE_DS_DEP = $(DS_COMMON_SRC) uconn_ece/common.tex

UCONN_CSE_LETTER_SRC = uconn_cse/cover_letter/cover_letter_yw.tex
UCONN_CSE_LETTER_PDF = $(UCONN_CSE_LETTER_SRC:.tex=.pdf)
UCONN_CSE_LETTER_DEP = $(filter-out $(wildcard common/letterhead/attachment/*) $(wildcard common/letterhead/signature/*), $(LH_DEP)) uconn_cse/common.tex

UCONN_CSE_RS_SRC = uconn_cse/research_statement/research_statement_yw.tex
UCONN_CSE_RS_PDF = $(UCONN_CSE_RS_SRC:.tex=.pdf)
UCONN_CSE_RS_DEP = $(RS_COMMON_SRC) uconn_cse/common.tex

UCONN_CSE_TS_SRC = uconn_cse/teaching_statement/teaching_statement_yw.tex
UCONN_CSE_TS_PDF = $(UCONN_CSE_TS_SRC:.tex=.pdf)
UCONN_CSE_TS_DEP = $(TS_COMMON_SRC) uconn_cse/common.tex

UCONN_CSE_DS_SRC = uconn_cse/diversity_statement/diversity_statement_yw.tex
UCONN_CSE_DS_PDF = $(UCONN_CSE_DS_SRC:.tex=.pdf)
UCONN_CSE_DS_DEP = $(DS_COMMON_SRC) uconn_cse/common.tex

SYRACUSE_LETTER_SRC = syracuse/cover_letter/cover_letter_yw.tex
SYRACUSE_LETTER_PDF = $(SYRACUSE_LETTER_SRC:.tex=.pdf)
SYRACUSE_LETTER_DEP = $(filter-out $(wildcard common/letterhead/attachment/*) $(wildcard common/letterhead/signature/*), $(LH_DEP)) syracuse/common.tex

SYRACUSE_RS_SRC = syracuse/research_statement/research_statement_yw.tex
SYRACUSE_RS_PDF = $(SYRACUSE_RS_SRC:.tex=.pdf)
SYRACUSE_RS_DEP = $(RS_COMMON_SRC) syracuse/common.tex

SYRACUSE_TS_SRC = syracuse/teaching_statement/teaching_statement_yw.tex
SYRACUSE_TS_PDF = $(SYRACUSE_TS_SRC:.tex=.pdf)
SYRACUSE_TS_DEP = $(TS_COMMON_SRC) syracuse/common.tex

SYRACUSE_DS_SRC = syracuse/diversity_statement/diversity_statement_yw.tex
SYRACUSE_DS_PDF = $(SYRACUSE_DS_SRC:.tex=.pdf)
SYRACUSE_DS_DEP = $(DS_COMMON_SRC) syracuse/common.tex

RIT_LETTER_SRC = rit/cover_letter/cover_letter_yw.tex
RIT_LETTER_PDF = $(RIT_LETTER_SRC:.tex=.pdf)
RIT_LETTER_DEP = $(filter-out $(wildcard common/letterhead/attachment/*) $(wildcard common/letterhead/signature/*), $(LH_DEP)) rit/common.tex

RIT_RS_SRC = rit/research_statement/research_statement_yw.tex
RIT_RS_PDF = $(RIT_RS_SRC:.tex=.pdf)
RIT_RS_DEP = $(RS_COMMON_SRC) rit/common.tex

RIT_TS_SRC = rit/teaching_statement/teaching_statement_yw.tex
RIT_TS_PDF = $(RIT_TS_SRC:.tex=.pdf)
RIT_TS_DEP = $(TS_COMMON_SRC) rit/common.tex

RIT_DS_SRC = rit/diversity_statement/diversity_statement_yw.tex
RIT_DS_PDF = $(RIT_DS_SRC:.tex=.pdf)
RIT_DS_DEP = $(DS_COMMON_SRC) rit/common.tex

GATECH_LETTER_SRC = gatech/cover_letter/cover_letter_yw.tex
GATECH_LETTER_PDF = $(GATECH_LETTER_SRC:.tex=.pdf)
GATECH_LETTER_DEP = $(filter-out $(wildcard common/letterhead/attachment/*) $(wildcard common/letterhead/signature/*), $(LH_DEP)) gatech/common.tex

GATECH_RS_SRC = gatech/research_statement/research_statement_yw.tex
GATECH_RS_PDF = $(GATECH_RS_SRC:.tex=.pdf)
GATECH_RS_DEP = $(RS_COMMON_SRC) gatech/common.tex

GATECH_TS_SRC = gatech/teaching_statement/teaching_statement_yw.tex
GATECH_TS_PDF = $(GATECH_TS_SRC:.tex=.pdf)
GATECH_TS_DEP = $(TS_COMMON_SRC) gatech/common.tex

GATECH_DS_SRC = gatech/diversity_statement/diversity_statement_yw.tex
GATECH_DS_PDF = $(GATECH_DS_SRC:.tex=.pdf)
GATECH_DS_DEP = $(DS_COMMON_SRC) gatech/common.tex

CALTECH_LETTER_SRC = caltech/cover_letter/cover_letter_yw.tex
CALTECH_LETTER_PDF = $(CALTECH_LETTER_SRC:.tex=.pdf)
CALTECH_LETTER_DEP = $(filter-out $(wildcard common/letterhead/attachment/*) $(wildcard common/letterhead/signature/*), $(LH_DEP)) caltech/common.tex

CALTECH_RS_SRC = caltech/research_statement/research_statement_yw.tex
CALTECH_RS_PDF = $(CALTECH_RS_SRC:.tex=.pdf)
CALTECH_RS_DEP = $(RS_COMMON_SRC) caltech/common.tex

CALTECH_TS_SRC = caltech/teaching_statement/teaching_statement_yw.tex
CALTECH_TS_PDF = $(CALTECH_TS_SRC:.tex=.pdf)
CALTECH_TS_DEP = $(TS_COMMON_SRC) caltech/common.tex

CALTECH_DS_SRC = caltech/diversity_statement/diversity_statement_yw.tex
CALTECH_DS_PDF = $(CALTECH_DS_SRC:.tex=.pdf)
CALTECH_DS_DEP = $(DS_COMMON_SRC) caltech/common.tex

CORNELL_LETTER_SRC = cornell/cover_letter/cover_letter_yw.tex
CORNELL_LETTER_PDF = $(CORNELL_LETTER_SRC:.tex=.pdf)
CORNELL_LETTER_DEP = $(filter-out $(wildcard common/letterhead/attachment/*) $(wildcard common/letterhead/signature/*), $(LH_DEP)) cornell/common.tex

CORNELL_RS_SRC = cornell/research_statement/research_statement_yw.tex
CORNELL_RS_PDF = $(CORNELL_RS_SRC:.tex=.pdf)
CORNELL_RS_DEP = $(RS_COMMON_SRC) cornell/common.tex

CORNELL_TS_SRC = cornell/teaching_statement/teaching_statement_yw.tex
CORNELL_TS_PDF = $(CORNELL_TS_SRC:.tex=.pdf)
CORNELL_TS_DEP = $(TS_COMMON_SRC) cornell/common.tex

CORNELL_DS_SRC = cornell/diversity_statement/diversity_statement_yw.tex
CORNELL_DS_PDF = $(CORNELL_DS_SRC:.tex=.pdf)
CORNELL_DS_DEP = $(DS_COMMON_SRC) cornell/common.tex

CORNELL_TECH_LETTER_SRC = cornell_tech/cover_letter/cover_letter_yw.tex
CORNELL_TECH_LETTER_PDF = $(CORNELL_TECH_LETTER_SRC:.tex=.pdf)
CORNELL_TECH_LETTER_DEP = $(filter-out $(wildcard common/letterhead/attachment/*) $(wildcard common/letterhead/signature/*), $(LH_DEP)) cornell_tech/common.tex

CORNELL_TECH_RS_SRC = cornell_tech/research_statement/research_statement_yw.tex
CORNELL_TECH_RS_PDF = $(CORNELL_TECH_RS_SRC:.tex=.pdf)
CORNELL_TECH_RS_DEP = $(RS_COMMON_SRC) cornell_tech/common.tex

CORNELL_TECH_TS_SRC = cornell_tech/teaching_statement/teaching_statement_yw.tex
CORNELL_TECH_TS_PDF = $(CORNELL_TECH_TS_SRC:.tex=.pdf)
CORNELL_TECH_TS_DEP = $(TS_COMMON_SRC) cornell_tech/common.tex

CORNELL_TECH_DS_SRC = cornell_tech/diversity_statement/diversity_statement_yw.tex
CORNELL_TECH_DS_PDF = $(CORNELL_TECH_DS_SRC:.tex=.pdf)
CORNELL_TECH_DS_DEP = $(DS_COMMON_SRC) cornell_tech/common.tex

CORNELL_TECH_ES_SRC = cornell_tech/engagement_statement/engagement_statement_yw.tex
CORNELL_TECH_ES_PDF = $(CORNELL_TECH_ES_SRC:.tex=.pdf)
CORNELL_TECH_ES_DEP = $(ES_COMMON_SRC) cornell_tech/common.tex

NWU_LETTER_SRC = nwu/cover_letter/cover_letter_yw.tex
NWU_LETTER_PDF = $(NWU_LETTER_SRC:.tex=.pdf)
NWU_LETTER_DEP = $(filter-out $(wildcard common/letterhead/attachment/*) $(wildcard common/letterhead/signature/*), $(LH_DEP)) nwu/common.tex

NWU_RS_SRC = nwu/research_statement/research_statement_yw.tex
NWU_RS_PDF = $(NWU_RS_SRC:.tex=.pdf)
NWU_RS_DEP = $(RS_COMMON_SRC) nwu/common.tex

NWU_TS_SRC = nwu/teaching_statement/teaching_statement_yw.tex
NWU_TS_PDF = $(NWU_TS_SRC:.tex=.pdf)
NWU_TS_DEP = $(TS_COMMON_SRC) nwu/common.tex

NWU_DS_SRC = nwu/diversity_statement/diversity_statement_yw.tex
NWU_DS_PDF = $(NWU_DS_SRC:.tex=.pdf)
NWU_DS_DEP = $(DS_COMMON_SRC) nwu/common.tex

UCLA_LETTER_SRC = ucla/cover_letter/cover_letter_yw.tex
UCLA_LETTER_PDF = $(UCLA_LETTER_SRC:.tex=.pdf)
UCLA_LETTER_DEP = $(filter-out $(wildcard common/letterhead/attachment/*) $(wildcard common/letterhead/signature/*), $(LH_DEP)) ucla/common.tex

UCLA_RS_SRC = ucla/research_statement/research_statement_yw.tex
UCLA_RS_PDF = $(UCLA_RS_SRC:.tex=.pdf)
UCLA_RS_DEP = $(RS_COMMON_SRC) ucla/common.tex

UCLA_TS_SRC = ucla/teaching_statement/teaching_statement_yw.tex
UCLA_TS_PDF = $(UCLA_TS_SRC:.tex=.pdf)
UCLA_TS_DEP = $(TS_COMMON_SRC) ucla/common.tex

UCLA_DS_SRC = ucla/diversity_statement/diversity_statement_yw.tex
UCLA_DS_PDF = $(UCLA_DS_SRC:.tex=.pdf)
UCLA_DS_DEP = $(DS_COMMON_SRC) ucla/common.tex

WU_ST_LOUIS_LETTER_SRC = wu_st_louis/cover_letter/cover_letter_yw.tex
WU_ST_LOUIS_LETTER_PDF = $(WU_ST_LOUIS_LETTER_SRC:.tex=.pdf)
WU_ST_LOUIS_LETTER_DEP = $(filter-out $(wildcard common/letterhead/attachment/*) $(wildcard common/letterhead/signature/*), $(LH_DEP)) wu_st_louis/common.tex

WU_ST_LOUIS_RS_SRC = wu_st_louis/research_statement/research_statement_yw.tex
WU_ST_LOUIS_RS_PDF = $(WU_ST_LOUIS_RS_SRC:.tex=.pdf)
WU_ST_LOUIS_RS_DEP = $(RS_COMMON_SRC) wu_st_louis/common.tex

WU_ST_LOUIS_TS_SRC = wu_st_louis/teaching_statement/teaching_statement_yw.tex
WU_ST_LOUIS_TS_PDF = $(WU_ST_LOUIS_TS_SRC:.tex=.pdf)
WU_ST_LOUIS_TS_DEP = $(TS_COMMON_SRC) wu_st_louis/common.tex

WU_ST_LOUIS_DS_SRC = wu_st_louis/diversity_statement/diversity_statement_yw.tex
WU_ST_LOUIS_DS_PDF = $(WU_ST_LOUIS_DS_SRC:.tex=.pdf)
WU_ST_LOUIS_DS_DEP = $(DS_COMMON_SRC) wu_st_louis/common.tex

NOTRE_DAME_LETTER_SRC = notre_dame/cover_letter/cover_letter_yw.tex
NOTRE_DAME_LETTER_PDF = $(NOTRE_DAME_LETTER_SRC:.tex=.pdf)
NOTRE_DAME_LETTER_DEP = $(filter-out $(wildcard common/letterhead/attachment/*) $(wildcard common/letterhead/signature/*), $(LH_DEP)) notre_dame/common.tex

NOTRE_DAME_RS_SRC = notre_dame/research_statement/research_statement_yw.tex
NOTRE_DAME_RS_PDF = $(NOTRE_DAME_RS_SRC:.tex=.pdf)
NOTRE_DAME_RS_DEP = $(RS_COMMON_SRC) notre_dame/common.tex

NOTRE_DAME_TS_SRC = notre_dame/teaching_statement/teaching_statement_yw.tex
NOTRE_DAME_TS_PDF = $(NOTRE_DAME_TS_SRC:.tex=.pdf)
NOTRE_DAME_TS_DEP = $(TS_COMMON_SRC) notre_dame/common.tex

NOTRE_DAME_DS_SRC = notre_dame/diversity_statement/diversity_statement_yw.tex
NOTRE_DAME_DS_PDF = $(NOTRE_DAME_DS_SRC:.tex=.pdf)
NOTRE_DAME_DS_DEP = $(DS_COMMON_SRC) notre_dame/common.tex

STANFORD_ECE_LETTER_SRC = stanford_ece/cover_letter/cover_letter_yw.tex
STANFORD_ECE_LETTER_PDF = $(STANFORD_ECE_LETTER_SRC:.tex=.pdf)
STANFORD_ECE_LETTER_DEP = $(filter-out $(wildcard common/letterhead/attachment/*) $(wildcard common/letterhead/signature/*), $(LH_DEP)) stanford_ece/common.tex

STANFORD_ECE_RS_SRC = stanford_ece/research_statement/research_statement_yw.tex
STANFORD_ECE_RS_PDF = $(STANFORD_ECE_RS_SRC:.tex=.pdf)
STANFORD_ECE_RS_DEP = $(RS_COMMON_2PAGE_SRC) stanford_ece/common.tex

STANFORD_ECE_TS_DEP = $(TS_COMMON_1PAGE_SRC) stanford_ece/common.tex

STANFORD_ECE_DS_SRC = stanford_ece/diversity_statement/diversity_statement_yw.tex
STANFORD_ECE_DS_PDF = $(STANFORD_ECE_DS_SRC:.tex=.pdf)
STANFORD_ECE_DS_DEP = $(DS_COMMON_SRC) stanford_ece/common.tex

STANFORD_CS_LETTER_SRC = stanford_cs/cover_letter/cover_letter_yw.tex
STANFORD_CS_LETTER_PDF = $(STANFORD_CS_LETTER_SRC:.tex=.pdf)
STANFORD_CS_LETTER_DEP = $(filter-out $(wildcard common/letterhead/attachment/*) $(wildcard common/letterhead/signature/*), $(LH_DEP)) stanford_cs/common.tex

STANFORD_CS_RS_SRC = stanford_cs/research_statement/research_statement_yw.tex
STANFORD_CS_RS_PDF = $(STANFORD_CS_RS_SRC:.tex=.pdf)
STANFORD_CS_RS_DEP = $(RS_COMMON_2PAGE_SRC) stanford_cs/common.tex

STANFORD_CS_TS_DEP = $(TS_COMMON_1PAGE_SRC) stanford_cs/common.tex

STANFORD_CS_DS_SRC = stanford_cs/diversity_statement/diversity_statement_yw.tex
STANFORD_CS_DS_PDF = $(STANFORD_CS_DS_SRC:.tex=.pdf)
STANFORD_CS_DS_DEP = $(DS_COMMON_SRC) stanford_cs/common.tex

UCSD_ECE_LETTER_SRC = ucsd_ece/cover_letter/cover_letter_yw.tex
UCSD_ECE_LETTER_PDF = $(UCSD_ECE_LETTER_SRC:.tex=.pdf)
UCSD_ECE_LETTER_DEP = $(filter-out $(wildcard common/letterhead/attachment/*) $(wildcard common/letterhead/signature/*), $(LH_DEP)) ucsd_ece/common.tex

UCSD_ECE_RS_SRC = ucsd_ece/research_statement/research_statement_yw.tex
UCSD_ECE_RS_PDF = $(UCSD_ECE_RS_SRC:.tex=.pdf)
UCSD_ECE_RS_DEP = $(RS_COMMON_SRC) ucsd_ece/common.tex

UCSD_ECE_TS_SRC = ucsd_ece/teaching_statement/teaching_statement_yw.tex
UCSD_ECE_TS_PDF = $(UCSD_ECE_TS_SRC:.tex=.pdf)
UCSD_ECE_TS_DEP = $(TS_COMMON_SRC) ucsd_ece/common.tex

UCSD_ECE_DS_SRC = ucsd_ece/diversity_statement/diversity_statement_yw.tex
UCSD_ECE_DS_PDF = $(UCSD_ECE_DS_SRC:.tex=.pdf)
UCSD_ECE_DS_DEP = $(DS_COMMON_SRC) ucsd_ece/common.tex

UCSD_CSE_LETTER_SRC = ucsd_cse/cover_letter/cover_letter_yw.tex
UCSD_CSE_LETTER_PDF = $(UCSD_CSE_LETTER_SRC:.tex=.pdf)
UCSD_CSE_LETTER_DEP = $(filter-out $(wildcard common/letterhead/attachment/*) $(wildcard common/letterhead/signature/*), $(LH_DEP)) ucsd_cse/common.tex

UCSD_CSE_RS_SRC = ucsd_cse/research_statement/research_statement_yw.tex
UCSD_CSE_RS_PDF = $(UCSD_CSE_RS_SRC:.tex=.pdf)
UCSD_CSE_RS_DEP = $(RS_COMMON_SRC) ucsd_cse/common.tex

UCSD_CSE_TS_SRC = ucsd_cse/teaching_statement/teaching_statement_yw.tex
UCSD_CSE_TS_PDF = $(UCSD_CSE_TS_SRC:.tex=.pdf)
UCSD_CSE_TS_DEP = $(TS_COMMON_SRC) ucsd_cse/common.tex

UCSD_CSE_DS_SRC = ucsd_cse/diversity_statement/diversity_statement_yw.tex
UCSD_CSE_DS_PDF = $(UCSD_CSE_DS_SRC:.tex=.pdf)
UCSD_CSE_DS_DEP = $(DS_COMMON_SRC) ucsd_cse/common.tex

USC_LETTER_SRC = usc/cover_letter/cover_letter_yw.tex
USC_LETTER_PDF = $(USC_LETTER_SRC:.tex=.pdf)
USC_LETTER_DEP = $(filter-out $(wildcard common/letterhead/attachment/*) $(wildcard common/letterhead/signature/*), $(LH_DEP)) usc/common.tex

USC_RS_SRC = usc/research_statement/research_statement_yw.tex
USC_RS_PDF = $(USC_RS_SRC:.tex=.pdf)
USC_RS_DEP = $(RS_COMMON_SRC) usc/common.tex

USC_TS_SRC = usc/teaching_statement/teaching_statement_yw.tex
USC_TS_PDF = $(USC_TS_SRC:.tex=.pdf)
USC_TS_DEP = $(TS_COMMON_SRC) usc/common.tex

USC_DS_SRC = usc/diversity_statement/diversity_statement_yw.tex
USC_DS_PDF = $(USC_DS_SRC:.tex=.pdf)
USC_DS_DEP = $(DS_COMMON_SRC) usc/common.tex

UCI_AI_LETTER_SRC = uci_ai/cover_letter/cover_letter_yw.tex
UCI_AI_LETTER_PDF = $(UCI_AI_LETTER_SRC:.tex=.pdf)
UCI_AI_LETTER_DEP = $(filter-out $(wildcard common/letterhead/attachment/*) $(wildcard common/letterhead/signature/*), $(LH_DEP)) uci_ai/common.tex

UCI_AI_RS_SRC = uci_ai/research_statement/research_statement_yw.tex
UCI_AI_RS_PDF = $(UCI_AI_RS_SRC:.tex=.pdf)
UCI_AI_RS_DEP = $(RS_COMMON_SRC) uci_ai/common.tex

UCI_AI_TS_SRC = uci_ai/teaching_statement/teaching_statement_yw.tex
UCI_AI_TS_PDF = $(UCI_AI_TS_SRC:.tex=.pdf)
UCI_AI_TS_DEP = $(TS_COMMON_SRC) uci_ai/common.tex

UCI_AI_DS_SRC = uci_ai/diversity_statement/diversity_statement_yw.tex
UCI_AI_DS_PDF = $(UCI_AI_DS_SRC:.tex=.pdf)
UCI_AI_DS_DEP = $(DS_COMMON_SRC) uci_ai/common.tex

UCI_SYSTEM_LETTER_SRC = uci_system/cover_letter/cover_letter_yw.tex
UCI_SYSTEM_LETTER_PDF = $(UCI_SYSTEM_LETTER_SRC:.tex=.pdf)
UCI_SYSTEM_LETTER_DEP = $(filter-out $(wildcard common/letterhead/attachment/*) $(wildcard common/letterhead/signature/*), $(LH_DEP)) uci_system/common.tex

UCI_SYSTEM_RS_SRC = uci_system/research_statement/research_statement_yw.tex
UCI_SYSTEM_RS_PDF = $(UCI_SYSTEM_RS_SRC:.tex=.pdf)
UCI_SYSTEM_RS_DEP = $(RS_COMMON_SRC) uci_system/common.tex

UCI_SYSTEM_TS_SRC = uci_system/teaching_statement/teaching_statement_yw.tex
UCI_SYSTEM_TS_PDF = $(UCI_SYSTEM_TS_SRC:.tex=.pdf)
UCI_SYSTEM_TS_DEP = $(TS_COMMON_SRC) uci_system/common.tex

UCI_SYSTEM_DS_SRC = uci_system/diversity_statement/diversity_statement_yw.tex
UCI_SYSTEM_DS_PDF = $(UCI_SYSTEM_DS_SRC:.tex=.pdf)
UCI_SYSTEM_DS_DEP = $(DS_COMMON_SRC) uci_system/common.tex

UCI_EECS_LETTER_SRC = uci_eecs/cover_letter/cover_letter_yw.tex
UCI_EECS_LETTER_PDF = $(UCI_EECS_LETTER_SRC:.tex=.pdf)
UCI_EECS_LETTER_DEP = $(filter-out $(wildcard common/letterhead/attachment/*) $(wildcard common/letterhead/signature/*), $(LH_DEP)) uci_eecs/common.tex

UCI_EECS_RS_SRC = uci_eecs/research_statement/research_statement_yw.tex
UCI_EECS_RS_PDF = $(UCI_EECS_RS_SRC:.tex=.pdf)
UCI_EECS_RS_DEP = $(RS_COMMON_SRC) uci_eecs/common.tex

UCI_EECS_TS_SRC = uci_eecs/teaching_statement/teaching_statement_yw.tex
UCI_EECS_TS_PDF = $(UCI_EECS_TS_SRC:.tex=.pdf)
UCI_EECS_TS_DEP = $(TS_COMMON_SRC) uci_eecs/common.tex

UCI_EECS_DS_SRC = uci_eecs/diversity_statement/diversity_statement_yw.tex
UCI_EECS_DS_PDF = $(UCI_EECS_DS_SRC:.tex=.pdf)
UCI_EECS_DS_DEP = $(DS_COMMON_SRC) uci_eecs/common.tex

LEHIGH_ECE_LETTER_SRC = lehigh_ece/cover_letter/cover_letter_yw.tex
LEHIGH_ECE_LETTER_PDF = $(LEHIGH_ECE_LETTER_SRC:.tex=.pdf)
LEHIGH_ECE_LETTER_DEP = $(filter-out $(wildcard common/letterhead/attachment/*) $(wildcard common/letterhead/signature/*), $(LH_DEP)) lehigh_ece/common.tex

LEHIGH_ECE_RS_SRC = lehigh_ece/research_statement/research_statement_yw.tex
LEHIGH_ECE_RS_PDF = $(LEHIGH_ECE_RS_SRC:.tex=.pdf)
LEHIGH_ECE_RS_DEP = $(RS_COMMON_SRC) lehigh_ece/common.tex

LEHIGH_ECE_TS_SRC = lehigh_ece/teaching_statement/teaching_statement_yw.tex
LEHIGH_ECE_TS_PDF = $(LEHIGH_ECE_TS_SRC:.tex=.pdf)
LEHIGH_ECE_TS_DEP = $(TS_COMMON_SRC) lehigh_ece/common.tex

LEHIGH_ECE_DS_SRC = lehigh_ece/diversity_statement/diversity_statement_yw.tex
LEHIGH_ECE_DS_PDF = $(LEHIGH_ECE_DS_SRC:.tex=.pdf)
LEHIGH_ECE_DS_DEP = $(DS_COMMON_SRC) lehigh_ece/common.tex

LEHIGH_CSE_LETTER_SRC = lehigh_cse/cover_letter/cover_letter_yw.tex
LEHIGH_CSE_LETTER_PDF = $(LEHIGH_CSE_LETTER_SRC:.tex=.pdf)
LEHIGH_CSE_LETTER_DEP = $(filter-out $(wildcard common/letterhead/attachment/*) $(wildcard common/letterhead/signature/*), $(LH_DEP)) lehigh_cse/common.tex

LEHIGH_CSE_RS_SRC = lehigh_cse/research_statement/research_statement_yw.tex
LEHIGH_CSE_RS_PDF = $(LEHIGH_CSE_RS_SRC:.tex=.pdf)
LEHIGH_CSE_RS_DEP = $(RS_COMMON_SRC) lehigh_cse/common.tex

LEHIGH_CSE_TS_SRC = lehigh_cse/teaching_statement/teaching_statement_yw.tex
LEHIGH_CSE_TS_PDF = $(LEHIGH_CSE_TS_SRC:.tex=.pdf)
LEHIGH_CSE_TS_DEP = $(TS_COMMON_SRC) lehigh_cse/common.tex

LEHIGH_CSE_DS_SRC = lehigh_cse/diversity_statement/diversity_statement_yw.tex
LEHIGH_CSE_DS_PDF = $(LEHIGH_CSE_DS_SRC:.tex=.pdf)
LEHIGH_CSE_DS_DEP = $(DS_COMMON_SRC) lehigh_cse/common.tex

PRINCETON_ECE_LETTER_SRC = princeton_ece/cover_letter/cover_letter_yw.tex
PRINCETON_ECE_LETTER_PDF = $(PRINCETON_ECE_LETTER_SRC:.tex=.pdf)
PRINCETON_ECE_LETTER_DEP = $(filter-out $(wildcard common/letterhead/attachment/*) $(wildcard common/letterhead/signature/*), $(LH_DEP)) princeton_ece/common.tex

PRINCETON_ECE_RS_SRC = princeton_ece/research_statement/research_statement_yw.tex
PRINCETON_ECE_RS_PDF = $(PRINCETON_ECE_RS_SRC:.tex=.pdf)
PRINCETON_ECE_RS_DEP = $(RS_COMMON_SRC) princeton_ece/common.tex

PRINCETON_ECE_TS_SRC = princeton_ece/teaching_statement/teaching_statement_yw.tex
PRINCETON_ECE_TS_PDF = $(PRINCETON_ECE_TS_SRC:.tex=.pdf)
PRINCETON_ECE_TS_DEP = $(TS_COMMON_SRC) princeton_ece/common.tex

PRINCETON_ECE_DS_SRC = princeton_ece/diversity_statement/diversity_statement_yw.tex
PRINCETON_ECE_DS_PDF = $(PRINCETON_ECE_DS_SRC:.tex=.pdf)
PRINCETON_ECE_DS_DEP = $(DS_COMMON_SRC) princeton_ece/common.tex

PRINCETON_CS_LETTER_SRC = princeton_cs/cover_letter/cover_letter_yw.tex
PRINCETON_CS_LETTER_PDF = $(PRINCETON_CS_LETTER_SRC:.tex=.pdf)
PRINCETON_CS_LETTER_DEP = $(filter-out $(wildcard common/letterhead/attachment/*) $(wildcard common/letterhead/signature/*), $(LH_DEP)) princeton_cs/common.tex

PRINCETON_CS_RS_SRC = princeton_cs/research_statement/research_statement_yw.tex
PRINCETON_CS_RS_PDF = $(PRINCETON_CS_RS_SRC:.tex=.pdf)
PRINCETON_CS_RS_DEP = $(RS_COMMON_SRC) princeton_cs/common.tex

PRINCETON_CS_TS_SRC = princeton_cs/teaching_statement/teaching_statement_yw.tex
PRINCETON_CS_TS_PDF = $(PRINCETON_CS_TS_SRC:.tex=.pdf)
PRINCETON_CS_TS_DEP = $(TS_COMMON_SRC) princeton_cs/common.tex

PRINCETON_CS_DS_SRC = princeton_cs/diversity_statement/diversity_statement_yw.tex
PRINCETON_CS_DS_PDF = $(PRINCETON_CS_DS_SRC:.tex=.pdf)
PRINCETON_CS_DS_DEP = $(DS_COMMON_SRC) princeton_cs/common.tex

CMU_LETTER_SRC = cmu/cover_letter/cover_letter_yw.tex
CMU_LETTER_PDF = $(CMU_LETTER_SRC:.tex=.pdf)
CMU_LETTER_DEP = $(filter-out $(wildcard common/letterhead/attachment/*) $(wildcard common/letterhead/signature/*), $(LH_DEP)) cmu/common.tex

CMU_RS_SRC = cmu/research_statement/research_statement_yw.tex
CMU_RS_PDF = $(CMU_RS_SRC:.tex=.pdf)
CMU_RS_DEP = $(RS_COMMON_SRC) cmu/common.tex

CMU_TS_SRC = cmu/teaching_statement/teaching_statement_yw.tex
CMU_TS_PDF = $(CMU_TS_SRC:.tex=.pdf)
CMU_TS_DEP = $(TS_COMMON_SRC) cmu/common.tex

CMU_DS_SRC = cmu/diversity_statement/diversity_statement_yw.tex
CMU_DS_PDF = $(CMU_DS_SRC:.tex=.pdf)
CMU_DS_DEP = $(DS_COMMON_SRC) cmu/common.tex

UCR_LETTER_SRC = ucr/cover_letter/cover_letter_yw.tex
UCR_LETTER_PDF = $(UCR_LETTER_SRC:.tex=.pdf)
UCR_LETTER_DEP = $(filter-out $(wildcard common/letterhead/attachment/*) $(wildcard common/letterhead/signature/*), $(LH_DEP)) ucr/common.tex

UCR_RS_SRC = ucr/research_statement/research_statement_yw.tex
UCR_RS_PDF = $(UCR_RS_SRC:.tex=.pdf)
UCR_RS_DEP = $(RS_COMMON_SRC) ucr/common.tex

UCR_TS_SRC = ucr/teaching_statement/teaching_statement_yw.tex
UCR_TS_PDF = $(UCR_TS_SRC:.tex=.pdf)
UCR_TS_DEP = $(TS_COMMON_SRC) ucr/common.tex

UCR_DS_SRC = ucr/diversity_statement/diversity_statement_yw.tex
UCR_DS_PDF = $(UCR_DS_SRC:.tex=.pdf)
UCR_DS_DEP = $(DS_COMMON_SRC) ucr/common.tex

YALE_EE_LETTER_SRC = yale_ee/cover_letter/cover_letter_yw.tex
YALE_EE_LETTER_PDF = $(YALE_EE_LETTER_SRC:.tex=.pdf)
YALE_EE_LETTER_DEP = $(filter-out $(wildcard common/letterhead/attachment/*) $(wildcard common/letterhead/signature/*), $(LH_DEP)) yale_ee/common.tex

YALE_EE_RS_SRC = yale_ee/research_statement/research_statement_yw.tex
YALE_EE_RS_PDF = $(YALE_EE_RS_SRC:.tex=.pdf)
YALE_EE_RS_DEP = $(RS_COMMON_SRC) yale_ee/common.tex

YALE_EE_TS_SRC = yale_ee/teaching_statement/teaching_statement_yw.tex
YALE_EE_TS_PDF = $(YALE_EE_TS_SRC:.tex=.pdf)
YALE_EE_TS_DEP = $(TS_COMMON_SRC) yale_ee/common.tex

YALE_EE_DS_SRC = yale_ee/diversity_statement/diversity_statement_yw.tex
YALE_EE_DS_PDF = $(YALE_EE_DS_SRC:.tex=.pdf)
YALE_EE_DS_DEP = $(DS_COMMON_SRC) yale_ee/common.tex

YALE_CS_LETTER_SRC = yale_cs/cover_letter/cover_letter_yw.tex
YALE_CS_LETTER_PDF = $(YALE_CS_LETTER_SRC:.tex=.pdf)
YALE_CS_LETTER_DEP = $(filter-out $(wildcard common/letterhead/attachment/*) $(wildcard common/letterhead/signature/*), $(LH_DEP)) yale_cs/common.tex

YALE_CS_RS_SRC = yale_cs/research_statement/research_statement_yw.tex
YALE_CS_RS_PDF = $(YALE_CS_RS_SRC:.tex=.pdf)
YALE_CS_RS_DEP = $(RS_COMMON_SRC) yale_cs/common.tex

YALE_CS_TS_SRC = yale_cs/teaching_statement/teaching_statement_yw.tex
YALE_CS_TS_PDF = $(YALE_CS_TS_SRC:.tex=.pdf)
YALE_CS_TS_DEP = $(TS_COMMON_SRC) yale_cs/common.tex

YALE_CS_DS_SRC = yale_cs/diversity_statement/diversity_statement_yw.tex
YALE_CS_DS_PDF = $(YALE_CS_DS_SRC:.tex=.pdf)
YALE_CS_DS_DEP = $(DS_COMMON_SRC) yale_cs/common.tex

UMD_CS_LETTER_SRC = umd_cs/cover_letter/cover_letter_yw.tex
UMD_CS_LETTER_PDF = $(UMD_CS_LETTER_SRC:.tex=.pdf)
UMD_CS_LETTER_DEP = $(filter-out $(wildcard common/letterhead/attachment/*) $(wildcard common/letterhead/signature/*), $(LH_DEP)) umd_cs/common.tex

UMD_CS_RS_SRC = umd_cs/research_statement/research_statement_yw.tex
UMD_CS_RS_PDF = $(UMD_CS_RS_SRC:.tex=.pdf)
UMD_CS_RS_DEP = $(RS_COMMON_SRC) umd_cs/common.tex

UMD_CS_TS_SRC = umd_cs/teaching_statement/teaching_statement_yw.tex
UMD_CS_TS_PDF = $(UMD_CS_TS_SRC:.tex=.pdf)
UMD_CS_TS_DEP = $(TS_COMMON_SRC) umd_cs/common.tex

UMD_CS_DS_SRC = umd_cs/diversity_statement/diversity_statement_yw.tex
UMD_CS_DS_PDF = $(UMD_CS_DS_SRC:.tex=.pdf)
UMD_CS_DS_DEP = $(DS_COMMON_SRC) umd_cs/common.tex

UMD_ECE_LETTER_SRC = umd_ece/cover_letter/cover_letter_yw.tex
UMD_ECE_LETTER_PDF = $(UMD_ECE_LETTER_SRC:.tex=.pdf)
UMD_ECE_LETTER_DEP = $(filter-out $(wildcard common/letterhead/attachment/*) $(wildcard common/letterhead/signature/*), $(LH_DEP)) umd_ece/common.tex

UMD_ECE_RS_SRC = umd_ece/research_statement/research_statement_yw.tex
UMD_ECE_RS_PDF = $(UMD_ECE_RS_SRC:.tex=.pdf)
UMD_ECE_RS_DEP = $(RS_COMMON_SRC) umd_ece/common.tex

UMD_ECE_TS_SRC = umd_ece/teaching_statement/teaching_statement_yw.tex
UMD_ECE_TS_PDF = $(UMD_ECE_TS_SRC:.tex=.pdf)
UMD_ECE_TS_DEP = $(TS_COMMON_SRC) umd_ece/common.tex

UMD_ECE_DS_SRC = umd_ece/diversity_statement/diversity_statement_yw.tex
UMD_ECE_DS_PDF = $(UMD_ECE_DS_SRC:.tex=.pdf)
UMD_ECE_DS_DEP = $(DS_COMMON_SRC) umd_ece/common.tex

WISC_LETTER_SRC = wisc/cover_letter/cover_letter_yw.tex
WISC_LETTER_PDF = $(WISC_LETTER_SRC:.tex=.pdf)
WISC_LETTER_DEP = $(filter-out $(wildcard common/letterhead/attachment/*) $(wildcard common/letterhead/signature/*), $(LH_DEP)) wisc/common.tex

WISC_RS_SRC = wisc/research_statement/research_statement_yw.tex
WISC_RS_PDF = $(WISC_RS_SRC:.tex=.pdf)
WISC_RS_DEP = $(RS_COMMON_SRC) wisc/common.tex

WISC_TS_SRC = wisc/teaching_statement/teaching_statement_yw.tex
WISC_TS_PDF = $(WISC_TS_SRC:.tex=.pdf)
WISC_TS_DEP = $(TS_COMMON_SRC) wisc/common.tex

WISC_DS_SRC = wisc/diversity_statement/diversity_statement_yw.tex
WISC_DS_PDF = $(WISC_DS_SRC:.tex=.pdf)
WISC_DS_DEP = $(DS_COMMON_SRC) wisc/common.tex

WISC_CS_LETTER_SRC = wisc_cs/cover_letter/cover_letter_yw.tex
WISC_CS_LETTER_PDF = $(WISC_CS_LETTER_SRC:.tex=.pdf)
WISC_CS_LETTER_DEP = $(filter-out $(wildcard common/letterhead/attachment/*) $(wildcard common/letterhead/signature/*), $(LH_DEP)) wisc_cs/common.tex

WISC_CS_RS_SRC = wisc_cs/research_statement/research_statement_yw.tex
WISC_CS_RS_PDF = $(WISC_CS_RS_SRC:.tex=.pdf)
WISC_CS_RS_DEP = $(RS_COMMON_SRC) wisc_cs/common.tex

WISC_CS_TS_SRC = wisc_cs/teaching_statement/teaching_statement_yw.tex
WISC_CS_TS_PDF = $(WISC_CS_TS_SRC:.tex=.pdf)
WISC_CS_TS_DEP = $(TS_COMMON_SRC) wisc_cs/common.tex

WISC_CS_DS_SRC = wisc_cs/diversity_statement/diversity_statement_yw.tex
WISC_CS_DS_PDF = $(WISC_CS_DS_SRC:.tex=.pdf)
WISC_CS_DS_DEP = $(DS_COMMON_SRC) wisc_cs/common.tex

RUTGERS_CS_LETTER_SRC = rutgers_cs/cover_letter/cover_letter_yw.tex
RUTGERS_CS_LETTER_PDF = $(RUTGERS_CS_LETTER_SRC:.tex=.pdf)
RUTGERS_CS_LETTER_DEP = $(filter-out $(wildcard common/letterhead/attachment/*) $(wildcard common/letterhead/signature/*), $(LH_DEP)) rutgers_cs/common.tex

RUTGERS_CS_RS_SRC = rutgers_cs/research_statement/research_statement_yw.tex
RUTGERS_CS_RS_PDF = $(RUTGERS_CS_RS_SRC:.tex=.pdf)
RUTGERS_CS_RS_DEP = $(RS_COMMON_SRC) rutgers_cs/common.tex

RUTGERS_CS_TS_SRC = rutgers_cs/teaching_statement/teaching_statement_yw.tex
RUTGERS_CS_TS_PDF = $(RUTGERS_CS_TS_SRC:.tex=.pdf)
RUTGERS_CS_TS_DEP = $(TS_COMMON_SRC) rutgers_cs/common.tex

RUTGERS_CS_DS_SRC = rutgers_cs/diversity_statement/diversity_statement_yw.tex
RUTGERS_CS_DS_PDF = $(RUTGERS_CS_DS_SRC:.tex=.pdf)
RUTGERS_CS_DS_DEP = $(DS_COMMON_SRC) rutgers_cs/common.tex

RICE_LETTER_SRC = rice/cover_letter/cover_letter_yw.tex
RICE_LETTER_PDF = $(RICE_LETTER_SRC:.tex=.pdf)
RICE_LETTER_DEP = $(filter-out $(wildcard common/letterhead/attachment/*) $(wildcard common/letterhead/signature/*), $(LH_DEP)) rice/common.tex

RICE_RS_SRC = rice/research_statement/research_statement_yw.tex
RICE_RS_PDF = $(RICE_RS_SRC:.tex=.pdf)
RICE_RS_DEP = $(RS_COMMON_SRC) rice/common.tex

RICE_TS_SRC = rice/teaching_statement/teaching_statement_yw.tex
RICE_TS_PDF = $(RICE_TS_SRC:.tex=.pdf)
RICE_TS_DEP = $(TS_COMMON_SRC) rice/common.tex

RICE_DS_SRC = rice/diversity_statement/diversity_statement_yw.tex
RICE_DS_PDF = $(RICE_DS_SRC:.tex=.pdf)
RICE_DS_DEP = $(DS_COMMON_SRC) rice/common.tex

PSU_EE_LETTER_SRC = psu_ee/cover_letter/cover_letter_yw.tex
PSU_EE_LETTER_PDF = $(PSU_EE_LETTER_SRC:.tex=.pdf)
PSU_EE_LETTER_DEP = $(filter-out $(wildcard common/letterhead/attachment/*) $(wildcard common/letterhead/signature/*), $(LH_DEP)) psu_ee/common.tex

PSU_EE_RS_SRC = psu_ee/research_statement/research_statement_yw.tex
PSU_EE_RS_PDF = $(PSU_EE_RS_SRC:.tex=.pdf)
PSU_EE_RS_DEP = $(RS_COMMON_SRC) psu_ee/common.tex

PSU_EE_TS_SRC = psu_ee/teaching_statement/teaching_statement_yw.tex
PSU_EE_TS_PDF = $(PSU_EE_TS_SRC:.tex=.pdf)
PSU_EE_TS_DEP = $(TS_COMMON_SRC) psu_ee/common.tex

PSU_EE_DS_SRC = psu_ee/diversity_statement/diversity_statement_yw.tex
PSU_EE_DS_PDF = $(PSU_EE_DS_SRC:.tex=.pdf)
PSU_EE_DS_DEP = $(DS_COMMON_SRC) psu_ee/common.tex

CACHE_DIR   := $(shell pwd)/.latex-cache
COMPILE_LUA := latexmk -lualatex -output-directory=$(CACHE_DIR)
COMPILE_PDF := latexmk -pdflatex -output-directory=$(CACHE_DIR)

.PHONY: all clean clean-cache

all: cv cv-hl pub-list letterhead example tamu-cesg tamu-nano duke purdue-ece purdue-computes uw-ece uw-cse mit ucb upenn uiuc dartmouth uva nyu asu-computing asu-digital asu-micro umich-ece umich-cse ut-austin rochester ut-dallas ncsu bu-ai bu-ece bu-coe ufl rpi utah udel-ai udel-device uconn-ece uconn-cse syracuse rit gatech caltech cornell cornell-tech nwu ucla wu-st-louis notre-dame stanford-ece stanford-cs ucsd-ece ucsd-cse usc uci-ai uci-system uci-eecs lehigh-ece lehigh-cse princeton-ece princeton-cs cmu ucr yale-ee yale-cs umd-cs umd-ece wisc wisc-cs rutgers-cs rice psu-ee

cv: $(CV_PDF)
cv-hl: $(CV_HL_PDF)

pub-list: $(PUB_LIST_PDF)

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

asu-digital: asu-digital-letter asu-digital-rs asu-digital-ts asu-digital-ds
asu-digital-letter: $(ASU_DIGITAL_LETTER_PDF)
asu-digital-rs: $(ASU_DIGITAL_RS_PDF)
asu-digital-ts: $(ASU_DIGITAL_TS_PDF)
asu-digital-ds: $(ASU_DIGITAL_DS_PDF)

asu-micro: asu-micro-letter asu-micro-rs asu-micro-ts asu-micro-ds
asu-micro-letter: $(ASU_MICRO_LETTER_PDF)
asu-micro-rs: $(ASU_MICRO_RS_PDF)
asu-micro-ts: $(ASU_MICRO_TS_PDF)
asu-micro-ds: $(ASU_MICRO_DS_PDF)

umich-ece: umich-ece-letter umich-ece-rs umich-ece-ts umich-ece-ds
umich-ece-letter: $(UMICH_ECE_LETTER_PDF)
umich-ece-rs: $(UMICH_ECE_RS_PDF)
umich-ece-ts: $(UMICH_ECE_TS_PDF)
umich-ece-ds: $(UMICH_ECE_DS_PDF)

umich-cse: umich-cse-letter umich-cse-rs umich-cse-ts umich-cse-ds
umich-cse-letter: $(UMICH_CSE_LETTER_PDF)
umich-cse-rs: $(UMICH_CSE_RS_PDF)
umich-cse-ts: $(UMICH_CSE_TS_PDF)
umich-cse-ds: $(UMICH_CSE_DS_PDF)

ut-austin: ut-austin-letter ut-austin-rs ut-austin-ts ut-austin-ds ut-austin-ms
ut-austin-letter: $(UT_AUSTIN_LETTER_PDF)
ut-austin-rs: $(UT_AUSTIN_RS_PDF)
ut-austin-ts: $(UT_AUSTIN_TS_PDF)
ut-austin-ds: $(UT_AUSTIN_DS_PDF)
ut-austin-ms: $(UT_AUSTIN_MS_PDF)

rochester: rochester-letter rochester-rs rochester-ts rochester-ds
rochester-letter: $(ROCHESTER_LETTER_PDF)
rochester-rs: $(ROCHESTER_RS_PDF)
rochester-ts: $(ROCHESTER_TS_PDF)
rochester-ds: $(ROCHESTER_DS_PDF)

ut-dallas: ut-dallas-letter ut-dallas-rs ut-dallas-ts ut-dallas-ds
ut-dallas-letter: $(UT_DALLAS_LETTER_PDF)
ut-dallas-rs: $(UT_DALLAS_RS_PDF)
ut-dallas-ts: $(UT_DALLAS_TS_PDF)
ut-dallas-ds: $(UT_DALLAS_DS_PDF)

ncsu: ncsu-letter ncsu-rs ncsu-ts ncsu-ds
ncsu-letter: $(NCSU_LETTER_PDF)
ncsu-rs: $(NCSU_RS_PDF)
ncsu-ts: $(NCSU_TS_PDF)
ncsu-ds: $(NCSU_DS_PDF)

bu-ai: bu-ai-letter bu-ai-rs bu-ai-ts bu-ai-ds
bu-ai-letter: $(BU_AI_LETTER_PDF)
bu-ai-rs: $(BU_AI_RS_PDF)
bu-ai-ts: $(BU_AI_TS_PDF)
bu-ai-ds: $(BU_AI_DS_PDF)

bu-ece: bu-ece-letter bu-ece-rs bu-ece-ts bu-ece-ds
bu-ece-letter: $(BU_ECE_LETTER_PDF)
bu-ece-rs: $(BU_ECE_RS_PDF)
bu-ece-ts: $(BU_ECE_TS_PDF)
bu-ece-ds: $(BU_ECE_DS_PDF)

bu-coe: bu-coe-letter bu-coe-rs bu-coe-ts bu-coe-ds
bu-coe-letter: $(BU_COE_LETTER_PDF)
bu-coe-rs: $(BU_COE_RS_PDF)
bu-coe-ts: $(BU_COE_TS_PDF)
bu-coe-ds: $(BU_COE_DS_PDF)

ufl: ufl-letter ufl-rs ufl-ts ufl-ds
ufl-letter: $(UFL_LETTER_PDF)
ufl-rs: $(UFL_RS_PDF)
ufl-ts: $(UFL_TS_PDF)
ufl-ds: $(UFL_DS_PDF)

rpi: rpi-letter rpi-rs rpi-ts rpi-ds
rpi-letter: $(RPI_LETTER_PDF)
rpi-rs: $(RPI_RS_PDF)
rpi-ts: $(RPI_TS_PDF)
rpi-ds: $(RPI_DS_PDF)

utah: utah-letter utah-rs utah-ts utah-ds
utah-letter: $(UTAH_LETTER_PDF)
utah-rs: $(UTAH_RS_PDF)
utah-ts: $(UTAH_TS_PDF)
utah-ds: $(UTAH_DS_PDF)

udel-ai: udel-ai-letter udel-ai-rs udel-ai-ts udel-ai-ds
udel-ai-letter: $(UDEL_AI_LETTER_PDF)
udel-ai-rs: $(UDEL_AI_RS_PDF)
udel-ai-ts: $(UDEL_AI_TS_PDF)
udel-ai-ds: $(UDEL_AI_DS_PDF)

udel-device: udel-device-letter udel-device-rs udel-device-ts udel-device-ds
udel-device-letter: $(UDEL_DEVICE_LETTER_PDF)
udel-device-rs: $(UDEL_DEVICE_RS_PDF)
udel-device-ts: $(UDEL_DEVICE_TS_PDF)
udel-device-ds: $(UDEL_DEVICE_DS_PDF)

uconn-ece: uconn-ece-letter uconn-ece-rs uconn-ece-ts uconn-ece-ds
uconn-ece-letter: $(UCONN_ECE_LETTER_PDF)
uconn-ece-rs: $(UCONN_ECE_RS_PDF)
uconn-ece-ts: $(UCONN_ECE_TS_PDF)
uconn-ece-ds: $(UCONN_ECE_DS_PDF)

uconn-cse: uconn-cse-letter uconn-cse-rs uconn-cse-ts uconn-cse-ds
uconn-cse-letter: $(UCONN_CSE_LETTER_PDF)
uconn-cse-rs: $(UCONN_CSE_RS_PDF)
uconn-cse-ts: $(UCONN_CSE_TS_PDF)
uconn-cse-ds: $(UCONN_CSE_DS_PDF)

syracuse: syracuse-letter syracuse-rs syracuse-ts syracuse-ds
syracuse-letter: $(SYRACUSE_LETTER_PDF)
syracuse-rs: $(SYRACUSE_RS_PDF)
syracuse-ts: $(SYRACUSE_TS_PDF)
syracuse-ds: $(SYRACUSE_DS_PDF)

rit: rit-letter rit-rs rit-ts rit-ds
rit-letter: $(RIT_LETTER_PDF)
rit-rs: $(RIT_RS_PDF)
rit-ts: $(RIT_TS_PDF)
rit-ds: $(RIT_DS_PDF)

gatech: gatech-letter gatech-rs gatech-ts gatech-ds
gatech-letter: $(GATECH_LETTER_PDF)
gatech-rs: $(GATECH_RS_PDF)
gatech-ts: $(GATECH_TS_PDF)
gatech-ds: $(GATECH_DS_PDF)

caltech: caltech-letter caltech-rs caltech-ts caltech-ds
caltech-letter: $(CALTECH_LETTER_PDF)
caltech-rs: $(CALTECH_RS_PDF)
caltech-ts: $(CALTECH_TS_PDF)
caltech-ds: $(CALTECH_DS_PDF)

cornell: cornell-letter cornell-rs cornell-ts cornell-ds
cornell-letter: $(CORNELL_LETTER_PDF)
cornell-rs: $(CORNELL_RS_PDF)
cornell-ts: $(CORNELL_TS_PDF)
cornell-ds: $(CORNELL_DS_PDF)

cornell-tech: cornell-tech-letter cornell-tech-rs cornell-tech-ts cornell-tech-ds cornell-tech-es
cornell-tech-letter: $(CORNELL_TECH_LETTER_PDF)
cornell-tech-rs: $(CORNELL_TECH_RS_PDF)
cornell-tech-ts: $(CORNELL_TECH_TS_PDF)
cornell-tech-ds: $(CORNELL_TECH_DS_PDF)
cornell-tech-es: $(CORNELL_TECH_ES_PDF)

nwu: nwu-letter nwu-rs nwu-ts nwu-ds
nwu-letter: $(NWU_LETTER_PDF)
nwu-rs: $(NWU_RS_PDF)
nwu-ts: $(NWU_TS_PDF)
nwu-ds: $(NWU_DS_PDF)

ucla: ucla-letter ucla-rs ucla-ts ucla-ds
ucla-letter: $(UCLA_LETTER_PDF)
ucla-rs: $(UCLA_RS_PDF)
ucla-ts: $(UCLA_TS_PDF)
ucla-ds: $(UCLA_DS_PDF)

wu-st-louis: wu-st-louis-letter wu-st-louis-rs wu-st-louis-ts wu-st-louis-ds
wu-st-louis-letter: $(WU_ST_LOUIS_LETTER_PDF)
wu-st-louis-rs: $(WU_ST_LOUIS_RS_PDF)
wu-st-louis-ts: $(WU_ST_LOUIS_TS_PDF)
wu-st-louis-ds: $(WU_ST_LOUIS_DS_PDF)

notre-dame: notre-dame-letter notre-dame-rs notre-dame-ts notre-dame-ds
notre-dame-letter: $(NOTRE_DAME_LETTER_PDF)
notre-dame-rs: $(NOTRE_DAME_RS_PDF)
notre-dame-ts: $(NOTRE_DAME_TS_PDF)
notre-dame-ds: $(NOTRE_DAME_DS_PDF)

stanford-ece: stanford-ece-letter stanford-ece-rs stanford-ece-ds
stanford-ece-letter: $(STANFORD_ECE_LETTER_PDF)
stanford-ece-rs: $(STANFORD_ECE_RS_PDF)
stanford-ece-ds: $(STANFORD_ECE_DS_PDF)

stanford-cs: stanford-cs-letter stanford-cs-rs stanford-cs-ds
stanford-cs-letter: $(STANFORD_CS_LETTER_PDF)
stanford-cs-rs: $(STANFORD_CS_RS_PDF)
stanford-cs-ds: $(STANFORD_CS_DS_PDF)

ucsd-ece: ucsd-ece-letter ucsd-ece-rs ucsd-ece-ts ucsd-ece-ds
ucsd-ece-letter: $(UCSD_ECE_LETTER_PDF)
ucsd-ece-rs: $(UCSD_ECE_RS_PDF)
ucsd-ece-ts: $(UCSD_ECE_TS_PDF)
ucsd-ece-ds: $(UCSD_ECE_DS_PDF)

ucsd-cse: ucsd-cse-letter ucsd-cse-rs ucsd-cse-ts ucsd-cse-ds
ucsd-cse-letter: $(UCSD_CSE_LETTER_PDF)
ucsd-cse-rs: $(UCSD_CSE_RS_PDF)
ucsd-cse-ts: $(UCSD_CSE_TS_PDF)
ucsd-cse-ds: $(UCSD_CSE_DS_PDF)

usc: usc-letter usc-rs usc-ts usc-ds
usc-letter: $(USC_LETTER_PDF)
usc-rs: $(USC_RS_PDF)
usc-ts: $(USC_TS_PDF)
usc-ds: $(USC_DS_PDF)

uci-ai: uci-ai-letter uci-ai-rs uci-ai-ts uci-ai-ds
uci-ai-letter: $(UCI_AI_LETTER_PDF)
uci-ai-rs: $(UCI_AI_RS_PDF)
uci-ai-ts: $(UCI_AI_TS_PDF)
uci-ai-ds: $(UCI_AI_DS_PDF)

uci-system: uci-system-letter uci-system-rs uci-system-ts uci-system-ds
uci-system-letter: $(UCI_SYSTEM_LETTER_PDF)
uci-system-rs: $(UCI_SYSTEM_RS_PDF)
uci-system-ts: $(UCI_SYSTEM_TS_PDF)
uci-system-ds: $(UCI_SYSTEM_DS_PDF)

uci-eecs: uci-eecs-letter uci-eecs-rs uci-eecs-ts uci-eecs-ds
uci-eecs-letter: $(UCI_EECS_LETTER_PDF)
uci-eecs-rs: $(UCI_EECS_RS_PDF)
uci-eecs-ts: $(UCI_EECS_TS_PDF)
uci-eecs-ds: $(UCI_EECS_DS_PDF)

lehigh-ece: lehigh-ece-letter lehigh-ece-rs lehigh-ece-ts lehigh-ece-ds
lehigh-ece-letter: $(LEHIGH_ECE_LETTER_PDF)
lehigh-ece-rs: $(LEHIGH_ECE_RS_PDF)
lehigh-ece-ts: $(LEHIGH_ECE_TS_PDF)
lehigh-ece-ds: $(LEHIGH_ECE_DS_PDF)

lehigh-cse: lehigh-cse-letter lehigh-cse-rs lehigh-cse-ts lehigh-cse-ds
lehigh-cse-letter: $(LEHIGH_CSE_LETTER_PDF)
lehigh-cse-rs: $(LEHIGH_CSE_RS_PDF)
lehigh-cse-ts: $(LEHIGH_CSE_TS_PDF)
lehigh-cse-ds: $(LEHIGH_CSE_DS_PDF)

princeton-ece: princeton-ece-letter princeton-ece-rs princeton-ece-ts princeton-ece-ds
princeton-ece-letter: $(PRINCETON_ECE_LETTER_PDF)
princeton-ece-rs: $(PRINCETON_ECE_RS_PDF)
princeton-ece-ts: $(PRINCETON_ECE_TS_PDF)
princeton-ece-ds: $(PRINCETON_ECE_DS_PDF)

princeton-cs: princeton-cs-letter princeton-cs-rs princeton-cs-ts princeton-cs-ds
princeton-cs-letter: $(PRINCETON_CS_LETTER_PDF)
princeton-cs-rs: $(PRINCETON_CS_RS_PDF)
princeton-cs-ts: $(PRINCETON_CS_TS_PDF)
princeton-cs-ds: $(PRINCETON_CS_DS_PDF)

cmu: cmu-letter cmu-rs cmu-ts cmu-ds
cmu-letter: $(CMU_LETTER_PDF)
cmu-rs: $(CMU_RS_PDF)
cmu-ts: $(CMU_TS_PDF)
cmu-ds: $(CMU_DS_PDF)

ucr: ucr-letter ucr-rs ucr-ts ucr-ds
ucr-letter: $(UCR_LETTER_PDF)
ucr-rs: $(UCR_RS_PDF)
ucr-ts: $(UCR_TS_PDF)
ucr-ds: $(UCR_DS_PDF)

yale-ee: yale-ee-letter yale-ee-rs yale-ee-ts yale-ee-ds
yale-ee-letter: $(YALE_EE_LETTER_PDF)
yale-ee-rs: $(YALE_EE_RS_PDF)
yale-ee-ts: $(YALE_EE_TS_PDF)
yale-ee-ds: $(YALE_EE_DS_PDF)

yale-cs: yale-cs-letter yale-cs-rs yale-cs-ts yale-cs-ds
yale-cs-letter: $(YALE_CS_LETTER_PDF)
yale-cs-rs: $(YALE_CS_RS_PDF)
yale-cs-ts: $(YALE_CS_TS_PDF)
yale-cs-ds: $(YALE_CS_DS_PDF)

umd-cs: umd-cs-letter umd-cs-rs umd-cs-ts umd-cs-ds
umd-cs-letter: $(UMD_CS_LETTER_PDF)
umd-cs-rs: $(UMD_CS_RS_PDF)
umd-cs-ts: $(UMD_CS_TS_PDF)
umd-cs-ds: $(UMD_CS_DS_PDF)

umd-ece: umd-ece-letter umd-ece-rs umd-ece-ts umd-ece-ds
umd-ece-letter: $(UMD_ECE_LETTER_PDF)
umd-ece-rs: $(UMD_ECE_RS_PDF)
umd-ece-ts: $(UMD_ECE_TS_PDF)
umd-ece-ds: $(UMD_ECE_DS_PDF)

wisc: wisc-letter wisc-rs wisc-ts wisc-ds
wisc-letter: $(WISC_LETTER_PDF)
wisc-rs: $(WISC_RS_PDF)
wisc-ts: $(WISC_TS_PDF)
wisc-ds: $(WISC_DS_PDF)

wisc-cs: wisc-cs-letter wisc-cs-rs wisc-cs-ts wisc-cs-ds
wisc-cs-letter: $(WISC_CS_LETTER_PDF)
wisc-cs-rs: $(WISC_CS_RS_PDF)
wisc-cs-ts: $(WISC_CS_TS_PDF)
wisc-cs-ds: $(WISC_CS_DS_PDF)

rutgers-cs: rutgers-cs-letter rutgers-cs-rs rutgers-cs-ts rutgers-cs-ds
rutgers-cs-letter: $(RUTGERS_CS_LETTER_PDF)
rutgers-cs-rs: $(RUTGERS_CS_RS_PDF)
rutgers-cs-ts: $(RUTGERS_CS_TS_PDF)
rutgers-cs-ds: $(RUTGERS_CS_DS_PDF)

rice: rice-letter rice-rs rice-ts rice-ds
rice-letter: $(RICE_LETTER_PDF)
rice-rs: $(RICE_RS_PDF)
rice-ts: $(RICE_TS_PDF)
rice-ds: $(RICE_DS_PDF)

psu-ee: psu-ee-letter psu-ee-rs psu-ee-ts psu-ee-ds
psu-ee-letter: $(PSU_EE_LETTER_PDF)
psu-ee-rs: $(PSU_EE_RS_PDF)
psu-ee-ts: $(PSU_EE_TS_PDF)
psu-ee-ds: $(PSU_EE_DS_PDF)

clean: clean-cache

clean-cache:
	@rm -rf $(CACHE_DIR)

$(CACHE_DIR):
	@mkdir -p $(CACHE_DIR)

$(CV_PDF): $(CV_SRC) $(CV_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(CV_SRC)) && $(COMPILE_LUA) $(notdir $(CV_SRC))
	@cp $(CACHE_DIR)/$(notdir $(CV_PDF)) $(CV_PDF)

$(CV_HL_PDF): $(CV_HL_SRC) $(CV_HL_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(CV_HL_SRC)) && $(COMPILE_LUA) $(notdir $(CV_HL_SRC))
	@cp $(CACHE_DIR)/$(notdir $(CV_HL_PDF)) $(CV_HL_PDF)

$(PUB_LIST_PDF): $(PUB_LIST_SRC) $(PUB_LIST_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(PUB_LIST_SRC)) && $(COMPILE_LUA) $(notdir $(PUB_LIST_SRC))
	@cp $(CACHE_DIR)/$(notdir $(PUB_LIST_PDF)) $(PUB_LIST_PDF)

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

$(ASU_DIGITAL_LETTER_PDF): $(ASU_DIGITAL_LETTER_SRC) $(ASU_DIGITAL_LETTER_DEP) | clean-cache $(CACHE_DIR)
	@cp -r $(LH_FONT_DIR) $(dir $(ASU_DIGITAL_LETTER_SRC))/.
	@cd $(dir $(ASU_DIGITAL_LETTER_SRC)) && $(COMPILE_LUA) $(notdir $(ASU_DIGITAL_LETTER_SRC))
	@cp $(CACHE_DIR)/$(notdir $(ASU_DIGITAL_LETTER_PDF)) $(ASU_DIGITAL_LETTER_PDF)

$(ASU_DIGITAL_RS_PDF): $(ASU_DIGITAL_RS_SRC) $(ASU_DIGITAL_RS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(ASU_DIGITAL_RS_SRC)) && $(COMPILE_LUA) $(notdir $(ASU_DIGITAL_RS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(ASU_DIGITAL_RS_PDF)) $(ASU_DIGITAL_RS_PDF)

$(ASU_DIGITAL_TS_PDF): $(ASU_DIGITAL_TS_SRC) $(ASU_DIGITAL_TS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(ASU_DIGITAL_TS_SRC)) && $(COMPILE_LUA) $(notdir $(ASU_DIGITAL_TS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(ASU_DIGITAL_TS_PDF)) $(ASU_DIGITAL_TS_PDF)

$(ASU_DIGITAL_DS_PDF): $(ASU_DIGITAL_DS_SRC) $(ASU_DIGITAL_DS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(ASU_DIGITAL_DS_SRC)) && $(COMPILE_LUA) $(notdir $(ASU_DIGITAL_DS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(ASU_DIGITAL_DS_PDF)) $(ASU_DIGITAL_DS_PDF)

$(ASU_MICRO_LETTER_PDF): $(ASU_MICRO_LETTER_SRC) $(ASU_MICRO_LETTER_DEP) | clean-cache $(CACHE_DIR)
	@cp -r $(LH_FONT_DIR) $(dir $(ASU_MICRO_LETTER_SRC))/.
	@cd $(dir $(ASU_MICRO_LETTER_SRC)) && $(COMPILE_LUA) $(notdir $(ASU_MICRO_LETTER_SRC))
	@cp $(CACHE_DIR)/$(notdir $(ASU_MICRO_LETTER_PDF)) $(ASU_MICRO_LETTER_PDF)

$(ASU_MICRO_RS_PDF): $(ASU_MICRO_RS_SRC) $(ASU_MICRO_RS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(ASU_MICRO_RS_SRC)) && $(COMPILE_LUA) $(notdir $(ASU_MICRO_RS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(ASU_MICRO_RS_PDF)) $(ASU_MICRO_RS_PDF)

$(ASU_MICRO_TS_PDF): $(ASU_MICRO_TS_SRC) $(ASU_MICRO_TS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(ASU_MICRO_TS_SRC)) && $(COMPILE_LUA) $(notdir $(ASU_MICRO_TS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(ASU_MICRO_TS_PDF)) $(ASU_MICRO_TS_PDF)

$(ASU_MICRO_DS_PDF): $(ASU_MICRO_DS_SRC) $(ASU_MICRO_DS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(ASU_MICRO_DS_SRC)) && $(COMPILE_LUA) $(notdir $(ASU_MICRO_DS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(ASU_MICRO_DS_PDF)) $(ASU_MICRO_DS_PDF)
	
$(UMICH_ECE_LETTER_PDF): $(UMICH_ECE_LETTER_SRC) $(UMICH_ECE_LETTER_DEP) | clean-cache $(CACHE_DIR)
	@cp -r $(LH_FONT_DIR) $(dir $(UMICH_ECE_LETTER_SRC))/.
	@cd $(dir $(UMICH_ECE_LETTER_SRC)) && $(COMPILE_LUA) $(notdir $(UMICH_ECE_LETTER_SRC))
	@cp $(CACHE_DIR)/$(notdir $(UMICH_ECE_LETTER_PDF)) $(UMICH_ECE_LETTER_PDF)

$(UMICH_ECE_RS_PDF): $(UMICH_ECE_RS_SRC) $(UMICH_ECE_RS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(UMICH_ECE_RS_SRC)) && $(COMPILE_LUA) $(notdir $(UMICH_ECE_RS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(UMICH_ECE_RS_PDF)) $(UMICH_ECE_RS_PDF)

$(UMICH_ECE_TS_PDF): $(UMICH_ECE_TS_SRC) $(UMICH_ECE_TS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(UMICH_ECE_TS_SRC)) && $(COMPILE_LUA) $(notdir $(UMICH_ECE_TS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(UMICH_ECE_TS_PDF)) $(UMICH_ECE_TS_PDF)

$(UMICH_ECE_DS_PDF): $(UMICH_ECE_DS_SRC) $(UMICH_ECE_DS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(UMICH_ECE_DS_SRC)) && $(COMPILE_LUA) $(notdir $(UMICH_ECE_DS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(UMICH_ECE_DS_PDF)) $(UMICH_ECE_DS_PDF)

$(UMICH_CSE_LETTER_PDF): $(UMICH_CSE_LETTER_SRC) $(UMICH_CSE_LETTER_DEP) | clean-cache $(CACHE_DIR)
	@cp -r $(LH_FONT_DIR) $(dir $(UMICH_CSE_LETTER_SRC))/.
	@cd $(dir $(UMICH_CSE_LETTER_SRC)) && $(COMPILE_LUA) $(notdir $(UMICH_CSE_LETTER_SRC))
	@cp $(CACHE_DIR)/$(notdir $(UMICH_CSE_LETTER_PDF)) $(UMICH_CSE_LETTER_PDF)

$(UMICH_CSE_RS_PDF): $(UMICH_CSE_RS_SRC) $(UMICH_CSE_RS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(UMICH_CSE_RS_SRC)) && $(COMPILE_LUA) $(notdir $(UMICH_CSE_RS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(UMICH_CSE_RS_PDF)) $(UMICH_CSE_RS_PDF)

$(UMICH_CSE_TS_PDF): $(UMICH_CSE_TS_SRC) $(UMICH_CSE_TS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(UMICH_CSE_TS_SRC)) && $(COMPILE_LUA) $(notdir $(UMICH_CSE_TS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(UMICH_CSE_TS_PDF)) $(UMICH_CSE_TS_PDF)

$(UMICH_CSE_DS_PDF): $(UMICH_CSE_DS_SRC) $(UMICH_CSE_DS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(UMICH_CSE_DS_SRC)) && $(COMPILE_LUA) $(notdir $(UMICH_CSE_DS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(UMICH_CSE_DS_PDF)) $(UMICH_CSE_DS_PDF)

$(UT_AUSTIN_LETTER_PDF): $(UT_AUSTIN_LETTER_SRC) $(UT_AUSTIN_LETTER_DEP) | clean-cache $(CACHE_DIR)
	@cp -r $(LH_FONT_DIR) $(dir $(UT_AUSTIN_LETTER_SRC))/.
	@cd $(dir $(UT_AUSTIN_LETTER_SRC)) && $(COMPILE_LUA) $(notdir $(UT_AUSTIN_LETTER_SRC))
	@cp $(CACHE_DIR)/$(notdir $(UT_AUSTIN_LETTER_PDF)) $(UT_AUSTIN_LETTER_PDF)

$(UT_AUSTIN_RS_PDF): $(UT_AUSTIN_RS_SRC) $(UT_AUSTIN_RS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(UT_AUSTIN_RS_SRC)) && $(COMPILE_LUA) $(notdir $(UT_AUSTIN_RS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(UT_AUSTIN_RS_PDF)) $(UT_AUSTIN_RS_PDF)

$(UT_AUSTIN_TS_PDF): $(UT_AUSTIN_TS_SRC) $(UT_AUSTIN_TS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(UT_AUSTIN_TS_SRC)) && $(COMPILE_LUA) $(notdir $(UT_AUSTIN_TS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(UT_AUSTIN_TS_PDF)) $(UT_AUSTIN_TS_PDF)

$(UT_AUSTIN_DS_PDF): $(UT_AUSTIN_DS_SRC) $(UT_AUSTIN_DS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(UT_AUSTIN_DS_SRC)) && $(COMPILE_LUA) $(notdir $(UT_AUSTIN_DS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(UT_AUSTIN_DS_PDF)) $(UT_AUSTIN_DS_PDF)

$(UT_AUSTIN_MS_PDF): $(UT_AUSTIN_MS_SRC) $(UT_AUSTIN_MS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(UT_AUSTIN_MS_SRC)) && $(COMPILE_LUA) $(notdir $(UT_AUSTIN_MS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(UT_AUSTIN_MS_PDF)) $(UT_AUSTIN_MS_PDF)
	
$(ROCHESTER_LETTER_PDF): $(ROCHESTER_LETTER_SRC) $(ROCHESTER_LETTER_DEP) | clean-cache $(CACHE_DIR)
	@cp -r $(LH_FONT_DIR) $(dir $(ROCHESTER_LETTER_SRC))/.
	@cd $(dir $(ROCHESTER_LETTER_SRC)) && $(COMPILE_LUA) $(notdir $(ROCHESTER_LETTER_SRC))
	@cp $(CACHE_DIR)/$(notdir $(ROCHESTER_LETTER_PDF)) $(ROCHESTER_LETTER_PDF)

$(ROCHESTER_RS_PDF): $(ROCHESTER_RS_SRC) $(ROCHESTER_RS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(ROCHESTER_RS_SRC)) && $(COMPILE_LUA) $(notdir $(ROCHESTER_RS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(ROCHESTER_RS_PDF)) $(ROCHESTER_RS_PDF)

$(ROCHESTER_TS_PDF): $(ROCHESTER_TS_SRC) $(ROCHESTER_TS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(ROCHESTER_TS_SRC)) && $(COMPILE_LUA) $(notdir $(ROCHESTER_TS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(ROCHESTER_TS_PDF)) $(ROCHESTER_TS_PDF)

$(ROCHESTER_DS_PDF): $(ROCHESTER_DS_SRC) $(ROCHESTER_DS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(ROCHESTER_DS_SRC)) && $(COMPILE_LUA) $(notdir $(ROCHESTER_DS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(ROCHESTER_DS_PDF)) $(ROCHESTER_DS_PDF)

$(UT_DALLAS_LETTER_PDF): $(UT_DALLAS_LETTER_SRC) $(UT_DALLAS_LETTER_DEP) | clean-cache $(CACHE_DIR)
	@cp -r $(LH_FONT_DIR) $(dir $(UT_DALLAS_LETTER_SRC))/.
	@cd $(dir $(UT_DALLAS_LETTER_SRC)) && $(COMPILE_LUA) $(notdir $(UT_DALLAS_LETTER_SRC))
	@cp $(CACHE_DIR)/$(notdir $(UT_DALLAS_LETTER_PDF)) $(UT_DALLAS_LETTER_PDF)

$(UT_DALLAS_RS_PDF): $(UT_DALLAS_RS_SRC) $(UT_DALLAS_RS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(UT_DALLAS_RS_SRC)) && $(COMPILE_LUA) $(notdir $(UT_DALLAS_RS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(UT_DALLAS_RS_PDF)) $(UT_DALLAS_RS_PDF)

$(UT_DALLAS_TS_PDF): $(UT_DALLAS_TS_SRC) $(UT_DALLAS_TS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(UT_DALLAS_TS_SRC)) && $(COMPILE_LUA) $(notdir $(UT_DALLAS_TS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(UT_DALLAS_TS_PDF)) $(UT_DALLAS_TS_PDF)

$(UT_DALLAS_DS_PDF): $(UT_DALLAS_DS_SRC) $(UT_DALLAS_DS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(UT_DALLAS_DS_SRC)) && $(COMPILE_LUA) $(notdir $(UT_DALLAS_DS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(UT_DALLAS_DS_PDF)) $(UT_DALLAS_DS_PDF)

$(NCSU_LETTER_PDF): $(NCSU_LETTER_SRC) $(NCSU_LETTER_DEP) | clean-cache $(CACHE_DIR)
	@cp -r $(LH_FONT_DIR) $(dir $(NCSU_LETTER_SRC))/.
	@cd $(dir $(NCSU_LETTER_SRC)) && $(COMPILE_LUA) $(notdir $(NCSU_LETTER_SRC))
	@cp $(CACHE_DIR)/$(notdir $(NCSU_LETTER_PDF)) $(NCSU_LETTER_PDF)

$(NCSU_RS_PDF): $(NCSU_RS_SRC) $(NCSU_RS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(NCSU_RS_SRC)) && $(COMPILE_LUA) $(notdir $(NCSU_RS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(NCSU_RS_PDF)) $(NCSU_RS_PDF)

$(NCSU_TS_PDF): $(NCSU_TS_SRC) $(NCSU_TS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(NCSU_TS_SRC)) && $(COMPILE_LUA) $(notdir $(NCSU_TS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(NCSU_TS_PDF)) $(NCSU_TS_PDF)

$(NCSU_DS_PDF): $(NCSU_DS_SRC) $(NCSU_DS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(NCSU_DS_SRC)) && $(COMPILE_LUA) $(notdir $(NCSU_DS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(NCSU_DS_PDF)) $(NCSU_DS_PDF)
	
$(BU_AI_LETTER_PDF): $(BU_AI_LETTER_SRC) $(BU_AI_LETTER_DEP) | clean-cache $(CACHE_DIR)
	@cp -r $(LH_FONT_DIR) $(dir $(BU_AI_LETTER_SRC))/.
	@cd $(dir $(BU_AI_LETTER_SRC)) && $(COMPILE_LUA) $(notdir $(BU_AI_LETTER_SRC))
	@cp $(CACHE_DIR)/$(notdir $(BU_AI_LETTER_PDF)) $(BU_AI_LETTER_PDF)

$(BU_AI_RS_PDF): $(BU_AI_RS_SRC) $(BU_AI_RS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(BU_AI_RS_SRC)) && $(COMPILE_LUA) $(notdir $(BU_AI_RS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(BU_AI_RS_PDF)) $(BU_AI_RS_PDF)

$(BU_AI_TS_PDF): $(BU_AI_TS_SRC) $(BU_AI_TS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(BU_AI_TS_SRC)) && $(COMPILE_LUA) $(notdir $(BU_AI_TS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(BU_AI_TS_PDF)) $(BU_AI_TS_PDF)

$(BU_AI_DS_PDF): $(BU_AI_DS_SRC) $(BU_AI_DS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(BU_AI_DS_SRC)) && $(COMPILE_LUA) $(notdir $(BU_AI_DS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(BU_AI_DS_PDF)) $(BU_AI_DS_PDF)

$(BU_ECE_LETTER_PDF): $(BU_ECE_LETTER_SRC) $(BU_ECE_LETTER_DEP) | clean-cache $(CACHE_DIR)
	@cp -r $(LH_FONT_DIR) $(dir $(BU_ECE_LETTER_SRC))/.
	@cd $(dir $(BU_ECE_LETTER_SRC)) && $(COMPILE_LUA) $(notdir $(BU_ECE_LETTER_SRC))
	@cp $(CACHE_DIR)/$(notdir $(BU_ECE_LETTER_PDF)) $(BU_ECE_LETTER_PDF)

$(BU_ECE_RS_PDF): $(BU_ECE_RS_SRC) $(BU_ECE_RS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(BU_ECE_RS_SRC)) && $(COMPILE_LUA) $(notdir $(BU_ECE_RS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(BU_ECE_RS_PDF)) $(BU_ECE_RS_PDF)

$(BU_ECE_TS_PDF): $(BU_ECE_TS_SRC) $(BU_ECE_TS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(BU_ECE_TS_SRC)) && $(COMPILE_LUA) $(notdir $(BU_ECE_TS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(BU_ECE_TS_PDF)) $(BU_ECE_TS_PDF)

$(BU_ECE_DS_PDF): $(BU_ECE_DS_SRC) $(BU_ECE_DS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(BU_ECE_DS_SRC)) && $(COMPILE_LUA) $(notdir $(BU_ECE_DS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(BU_ECE_DS_PDF)) $(BU_ECE_DS_PDF)

$(BU_COE_LETTER_PDF): $(BU_COE_LETTER_SRC) $(BU_COE_LETTER_DEP) | clean-cache $(CACHE_DIR)
	@cp -r $(LH_FONT_DIR) $(dir $(BU_COE_LETTER_SRC))/.
	@cd $(dir $(BU_COE_LETTER_SRC)) && $(COMPILE_LUA) $(notdir $(BU_COE_LETTER_SRC))
	@cp $(CACHE_DIR)/$(notdir $(BU_COE_LETTER_PDF)) $(BU_COE_LETTER_PDF)

$(BU_COE_RS_PDF): $(BU_COE_RS_SRC) $(BU_COE_RS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(BU_COE_RS_SRC)) && $(COMPILE_LUA) $(notdir $(BU_COE_RS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(BU_COE_RS_PDF)) $(BU_COE_RS_PDF)

$(BU_COE_TS_PDF): $(BU_COE_TS_SRC) $(BU_COE_TS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(BU_COE_TS_SRC)) && $(COMPILE_LUA) $(notdir $(BU_COE_TS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(BU_COE_TS_PDF)) $(BU_COE_TS_PDF)

$(BU_COE_DS_PDF): $(BU_COE_DS_SRC) $(BU_COE_DS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(BU_COE_DS_SRC)) && $(COMPILE_LUA) $(notdir $(BU_COE_DS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(BU_COE_DS_PDF)) $(BU_COE_DS_PDF)

$(UFL_LETTER_PDF): $(UFL_LETTER_SRC) $(UFL_LETTER_DEP) | clean-cache $(CACHE_DIR)
	@cp -r $(LH_FONT_DIR) $(dir $(UFL_LETTER_SRC))/.
	@cd $(dir $(UFL_LETTER_SRC)) && $(COMPILE_LUA) $(notdir $(UFL_LETTER_SRC))
	@cp $(CACHE_DIR)/$(notdir $(UFL_LETTER_PDF)) $(UFL_LETTER_PDF)

$(UFL_RS_PDF): $(UFL_RS_SRC) $(UFL_RS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(UFL_RS_SRC)) && $(COMPILE_LUA) $(notdir $(UFL_RS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(UFL_RS_PDF)) $(UFL_RS_PDF)

$(UFL_TS_PDF): $(UFL_TS_SRC) $(UFL_TS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(UFL_TS_SRC)) && $(COMPILE_LUA) $(notdir $(UFL_TS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(UFL_TS_PDF)) $(UFL_TS_PDF)

$(UFL_DS_PDF): $(UFL_DS_SRC) $(UFL_DS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(UFL_DS_SRC)) && $(COMPILE_LUA) $(notdir $(UFL_DS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(UFL_DS_PDF)) $(UFL_DS_PDF)

$(RPI_LETTER_PDF): $(RPI_LETTER_SRC) $(RPI_LETTER_DEP) | clean-cache $(CACHE_DIR)
	@cp -r $(LH_FONT_DIR) $(dir $(RPI_LETTER_SRC))/.
	@cd $(dir $(RPI_LETTER_SRC)) && $(COMPILE_LUA) $(notdir $(RPI_LETTER_SRC))
	@cp $(CACHE_DIR)/$(notdir $(RPI_LETTER_PDF)) $(RPI_LETTER_PDF)

$(RPI_RS_PDF): $(RPI_RS_SRC) $(RPI_RS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(RPI_RS_SRC)) && $(COMPILE_LUA) $(notdir $(RPI_RS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(RPI_RS_PDF)) $(RPI_RS_PDF)

$(RPI_TS_PDF): $(RPI_TS_SRC) $(RPI_TS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(RPI_TS_SRC)) && $(COMPILE_LUA) $(notdir $(RPI_TS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(RPI_TS_PDF)) $(RPI_TS_PDF)

$(RPI_DS_PDF): $(RPI_DS_SRC) $(RPI_DS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(RPI_DS_SRC)) && $(COMPILE_LUA) $(notdir $(RPI_DS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(RPI_DS_PDF)) $(RPI_DS_PDF)

$(UTAH_LETTER_PDF): $(UTAH_LETTER_SRC) $(UTAH_LETTER_DEP) | clean-cache $(CACHE_DIR)
	@cp -r $(LH_FONT_DIR) $(dir $(UTAH_LETTER_SRC))/.
	@cd $(dir $(UTAH_LETTER_SRC)) && $(COMPILE_LUA) $(notdir $(UTAH_LETTER_SRC))
	@cp $(CACHE_DIR)/$(notdir $(UTAH_LETTER_PDF)) $(UTAH_LETTER_PDF)

$(UTAH_RS_PDF): $(UTAH_RS_SRC) $(UTAH_RS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(UTAH_RS_SRC)) && $(COMPILE_LUA) $(notdir $(UTAH_RS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(UTAH_RS_PDF)) $(UTAH_RS_PDF)

$(UTAH_TS_PDF): $(UTAH_TS_SRC) $(UTAH_TS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(UTAH_TS_SRC)) && $(COMPILE_LUA) $(notdir $(UTAH_TS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(UTAH_TS_PDF)) $(UTAH_TS_PDF)

$(UTAH_DS_PDF): $(UTAH_DS_SRC) $(UTAH_DS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(UTAH_DS_SRC)) && $(COMPILE_LUA) $(notdir $(UTAH_DS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(UTAH_DS_PDF)) $(UTAH_DS_PDF)

$(UDEL_AI_LETTER_PDF): $(UDEL_AI_LETTER_SRC) $(UDEL_AI_LETTER_DEP) | clean-cache $(CACHE_DIR)
	@cp -r $(LH_FONT_DIR) $(dir $(UDEL_AI_LETTER_SRC))/.
	@cd $(dir $(UDEL_AI_LETTER_SRC)) && $(COMPILE_LUA) $(notdir $(UDEL_AI_LETTER_SRC))
	@cp $(CACHE_DIR)/$(notdir $(UDEL_AI_LETTER_PDF)) $(UDEL_AI_LETTER_PDF)

$(UDEL_AI_RS_PDF): $(UDEL_AI_RS_SRC) $(UDEL_AI_RS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(UDEL_AI_RS_SRC)) && $(COMPILE_LUA) $(notdir $(UDEL_AI_RS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(UDEL_AI_RS_PDF)) $(UDEL_AI_RS_PDF)

$(UDEL_AI_TS_PDF): $(UDEL_AI_TS_SRC) $(UDEL_AI_TS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(UDEL_AI_TS_SRC)) && $(COMPILE_LUA) $(notdir $(UDEL_AI_TS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(UDEL_AI_TS_PDF)) $(UDEL_AI_TS_PDF)

$(UDEL_AI_DS_PDF): $(UDEL_AI_DS_SRC) $(UDEL_AI_DS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(UDEL_AI_DS_SRC)) && $(COMPILE_LUA) $(notdir $(UDEL_AI_DS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(UDEL_AI_DS_PDF)) $(UDEL_AI_DS_PDF)

$(UDEL_DEVICE_LETTER_PDF): $(UDEL_DEVICE_LETTER_SRC) $(UDEL_DEVICE_LETTER_DEP) | clean-cache $(CACHE_DIR)
	@cp -r $(LH_FONT_DIR) $(dir $(UDEL_DEVICE_LETTER_SRC))/.
	@cd $(dir $(UDEL_DEVICE_LETTER_SRC)) && $(COMPILE_LUA) $(notdir $(UDEL_DEVICE_LETTER_SRC))
	@cp $(CACHE_DIR)/$(notdir $(UDEL_DEVICE_LETTER_PDF)) $(UDEL_DEVICE_LETTER_PDF)

$(UDEL_DEVICE_RS_PDF): $(UDEL_DEVICE_RS_SRC) $(UDEL_DEVICE_RS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(UDEL_DEVICE_RS_SRC)) && $(COMPILE_LUA) $(notdir $(UDEL_DEVICE_RS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(UDEL_DEVICE_RS_PDF)) $(UDEL_DEVICE_RS_PDF)

$(UDEL_DEVICE_TS_PDF): $(UDEL_DEVICE_TS_SRC) $(UDEL_DEVICE_TS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(UDEL_DEVICE_TS_SRC)) && $(COMPILE_LUA) $(notdir $(UDEL_DEVICE_TS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(UDEL_DEVICE_TS_PDF)) $(UDEL_DEVICE_TS_PDF)

$(UDEL_DEVICE_DS_PDF): $(UDEL_DEVICE_DS_SRC) $(UDEL_DEVICE_DS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(UDEL_DEVICE_DS_SRC)) && $(COMPILE_LUA) $(notdir $(UDEL_DEVICE_DS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(UDEL_DEVICE_DS_PDF)) $(UDEL_DEVICE_DS_PDF)

$(UCONN_ECE_LETTER_PDF): $(UCONN_ECE_LETTER_SRC) $(UCONN_ECE_LETTER_DEP) | clean-cache $(CACHE_DIR)
	@cp -r $(LH_FONT_DIR) $(dir $(UCONN_ECE_LETTER_SRC))/.
	@cd $(dir $(UCONN_ECE_LETTER_SRC)) && $(COMPILE_LUA) $(notdir $(UCONN_ECE_LETTER_SRC))
	@cp $(CACHE_DIR)/$(notdir $(UCONN_ECE_LETTER_PDF)) $(UCONN_ECE_LETTER_PDF)

$(UCONN_ECE_RS_PDF): $(UCONN_ECE_RS_SRC) $(UCONN_ECE_RS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(UCONN_ECE_RS_SRC)) && $(COMPILE_LUA) $(notdir $(UCONN_ECE_RS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(UCONN_ECE_RS_PDF)) $(UCONN_ECE_RS_PDF)

$(UCONN_ECE_TS_PDF): $(UCONN_ECE_TS_SRC) $(UCONN_ECE_TS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(UCONN_ECE_TS_SRC)) && $(COMPILE_LUA) $(notdir $(UCONN_ECE_TS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(UCONN_ECE_TS_PDF)) $(UCONN_ECE_TS_PDF)

$(UCONN_ECE_DS_PDF): $(UCONN_ECE_DS_SRC) $(UCONN_ECE_DS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(UCONN_ECE_DS_SRC)) && $(COMPILE_LUA) $(notdir $(UCONN_ECE_DS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(UCONN_ECE_DS_PDF)) $(UCONN_ECE_DS_PDF)

$(UCONN_CSE_LETTER_PDF): $(UCONN_CSE_LETTER_SRC) $(UCONN_CSE_LETTER_DEP) | clean-cache $(CACHE_DIR)
	@cp -r $(LH_FONT_DIR) $(dir $(UCONN_CSE_LETTER_SRC))/.
	@cd $(dir $(UCONN_CSE_LETTER_SRC)) && $(COMPILE_LUA) $(notdir $(UCONN_CSE_LETTER_SRC))
	@cp $(CACHE_DIR)/$(notdir $(UCONN_CSE_LETTER_PDF)) $(UCONN_CSE_LETTER_PDF)

$(UCONN_CSE_RS_PDF): $(UCONN_CSE_RS_SRC) $(UCONN_CSE_RS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(UCONN_CSE_RS_SRC)) && $(COMPILE_LUA) $(notdir $(UCONN_CSE_RS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(UCONN_CSE_RS_PDF)) $(UCONN_CSE_RS_PDF)

$(UCONN_CSE_TS_PDF): $(UCONN_CSE_TS_SRC) $(UCONN_CSE_TS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(UCONN_CSE_TS_SRC)) && $(COMPILE_LUA) $(notdir $(UCONN_CSE_TS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(UCONN_CSE_TS_PDF)) $(UCONN_CSE_TS_PDF)

$(UCONN_CSE_DS_PDF): $(UCONN_CSE_DS_SRC) $(UCONN_CSE_DS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(UCONN_CSE_DS_SRC)) && $(COMPILE_LUA) $(notdir $(UCONN_CSE_DS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(UCONN_CSE_DS_PDF)) $(UCONN_CSE_DS_PDF)

$(SYRACUSE_LETTER_PDF): $(SYRACUSE_LETTER_SRC) $(SYRACUSE_LETTER_DEP) | clean-cache $(CACHE_DIR)
	@cp -r $(LH_FONT_DIR) $(dir $(SYRACUSE_LETTER_SRC))/.
	@cd $(dir $(SYRACUSE_LETTER_SRC)) && $(COMPILE_LUA) $(notdir $(SYRACUSE_LETTER_SRC))
	@cp $(CACHE_DIR)/$(notdir $(SYRACUSE_LETTER_PDF)) $(SYRACUSE_LETTER_PDF)

$(SYRACUSE_RS_PDF): $(SYRACUSE_RS_SRC) $(SYRACUSE_RS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(SYRACUSE_RS_SRC)) && $(COMPILE_LUA) $(notdir $(SYRACUSE_RS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(SYRACUSE_RS_PDF)) $(SYRACUSE_RS_PDF)

$(SYRACUSE_TS_PDF): $(SYRACUSE_TS_SRC) $(SYRACUSE_TS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(SYRACUSE_TS_SRC)) && $(COMPILE_LUA) $(notdir $(SYRACUSE_TS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(SYRACUSE_TS_PDF)) $(SYRACUSE_TS_PDF)

$(SYRACUSE_DS_PDF): $(SYRACUSE_DS_SRC) $(SYRACUSE_DS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(SYRACUSE_DS_SRC)) && $(COMPILE_LUA) $(notdir $(SYRACUSE_DS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(SYRACUSE_DS_PDF)) $(SYRACUSE_DS_PDF)
	
$(RIT_LETTER_PDF): $(RIT_LETTER_SRC) $(RIT_LETTER_DEP) | clean-cache $(CACHE_DIR)
	@cp -r $(LH_FONT_DIR) $(dir $(RIT_LETTER_SRC))/.
	@cd $(dir $(RIT_LETTER_SRC)) && $(COMPILE_LUA) $(notdir $(RIT_LETTER_SRC))
	@cp $(CACHE_DIR)/$(notdir $(RIT_LETTER_PDF)) $(RIT_LETTER_PDF)

$(RIT_RS_PDF): $(RIT_RS_SRC) $(RIT_RS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(RIT_RS_SRC)) && $(COMPILE_LUA) $(notdir $(RIT_RS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(RIT_RS_PDF)) $(RIT_RS_PDF)

$(RIT_TS_PDF): $(RIT_TS_SRC) $(RIT_TS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(RIT_TS_SRC)) && $(COMPILE_LUA) $(notdir $(RIT_TS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(RIT_TS_PDF)) $(RIT_TS_PDF)

$(RIT_DS_PDF): $(RIT_DS_SRC) $(RIT_DS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(RIT_DS_SRC)) && $(COMPILE_LUA) $(notdir $(RIT_DS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(RIT_DS_PDF)) $(RIT_DS_PDF)

$(GATECH_LETTER_PDF): $(GATECH_LETTER_SRC) $(GATECH_LETTER_DEP) | clean-cache $(CACHE_DIR)
	@cp -r $(LH_FONT_DIR) $(dir $(GATECH_LETTER_SRC))/.
	@cd $(dir $(GATECH_LETTER_SRC)) && $(COMPILE_LUA) $(notdir $(GATECH_LETTER_SRC))
	@cp $(CACHE_DIR)/$(notdir $(GATECH_LETTER_PDF)) $(GATECH_LETTER_PDF)

$(GATECH_RS_PDF): $(GATECH_RS_SRC) $(GATECH_RS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(GATECH_RS_SRC)) && $(COMPILE_LUA) $(notdir $(GATECH_RS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(GATECH_RS_PDF)) $(GATECH_RS_PDF)

$(GATECH_TS_PDF): $(GATECH_TS_SRC) $(GATECH_TS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(GATECH_TS_SRC)) && $(COMPILE_LUA) $(notdir $(GATECH_TS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(GATECH_TS_PDF)) $(GATECH_TS_PDF)

$(GATECH_DS_PDF): $(GATECH_DS_SRC) $(GATECH_DS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(GATECH_DS_SRC)) && $(COMPILE_LUA) $(notdir $(GATECH_DS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(GATECH_DS_PDF)) $(GATECH_DS_PDF)

$(CALTECH_LETTER_PDF): $(CALTECH_LETTER_SRC) $(CALTECH_LETTER_DEP) | clean-cache $(CACHE_DIR)
	@cp -r $(LH_FONT_DIR) $(dir $(CALTECH_LETTER_SRC))/.
	@cd $(dir $(CALTECH_LETTER_SRC)) && $(COMPILE_LUA) $(notdir $(CALTECH_LETTER_SRC))
	@cp $(CACHE_DIR)/$(notdir $(CALTECH_LETTER_PDF)) $(CALTECH_LETTER_PDF)

$(CALTECH_RS_PDF): $(CALTECH_RS_SRC) $(CALTECH_RS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(CALTECH_RS_SRC)) && $(COMPILE_LUA) $(notdir $(CALTECH_RS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(CALTECH_RS_PDF)) $(CALTECH_RS_PDF)

$(CALTECH_TS_PDF): $(CALTECH_TS_SRC) $(CALTECH_TS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(CALTECH_TS_SRC)) && $(COMPILE_LUA) $(notdir $(CALTECH_TS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(CALTECH_TS_PDF)) $(CALTECH_TS_PDF)

$(CALTECH_DS_PDF): $(CALTECH_DS_SRC) $(CALTECH_DS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(CALTECH_DS_SRC)) && $(COMPILE_LUA) $(notdir $(CALTECH_DS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(CALTECH_DS_PDF)) $(CALTECH_DS_PDF)

$(CORNELL_LETTER_PDF): $(CORNELL_LETTER_SRC) $(CORNELL_LETTER_DEP) | clean-cache $(CACHE_DIR)
	@cp -r $(LH_FONT_DIR) $(dir $(CORNELL_LETTER_SRC))/.
	@cd $(dir $(CORNELL_LETTER_SRC)) && $(COMPILE_LUA) $(notdir $(CORNELL_LETTER_SRC))
	@cp $(CACHE_DIR)/$(notdir $(CORNELL_LETTER_PDF)) $(CORNELL_LETTER_PDF)

$(CORNELL_RS_PDF): $(CORNELL_RS_SRC) $(CORNELL_RS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(CORNELL_RS_SRC)) && $(COMPILE_LUA) $(notdir $(CORNELL_RS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(CORNELL_RS_PDF)) $(CORNELL_RS_PDF)

$(CORNELL_TS_PDF): $(CORNELL_TS_SRC) $(CORNELL_TS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(CORNELL_TS_SRC)) && $(COMPILE_LUA) $(notdir $(CORNELL_TS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(CORNELL_TS_PDF)) $(CORNELL_TS_PDF)

$(CORNELL_DS_PDF): $(CORNELL_DS_SRC) $(CORNELL_DS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(CORNELL_DS_SRC)) && $(COMPILE_LUA) $(notdir $(CORNELL_DS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(CORNELL_DS_PDF)) $(CORNELL_DS_PDF)

$(CORNELL_TECH_LETTER_PDF): $(CORNELL_TECH_LETTER_SRC) $(CORNELL_TECH_LETTER_DEP) | clean-cache $(CACHE_DIR)
	@cp -r $(LH_FONT_DIR) $(dir $(CORNELL_TECH_LETTER_SRC))/.
	@cd $(dir $(CORNELL_TECH_LETTER_SRC)) && $(COMPILE_LUA) $(notdir $(CORNELL_TECH_LETTER_SRC))
	@cp $(CACHE_DIR)/$(notdir $(CORNELL_TECH_LETTER_PDF)) $(CORNELL_TECH_LETTER_PDF)

$(CORNELL_TECH_RS_PDF): $(CORNELL_TECH_RS_SRC) $(CORNELL_TECH_RS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(CORNELL_TECH_RS_SRC)) && $(COMPILE_LUA) $(notdir $(CORNELL_TECH_RS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(CORNELL_TECH_RS_PDF)) $(CORNELL_TECH_RS_PDF)

$(CORNELL_TECH_TS_PDF): $(CORNELL_TECH_TS_SRC) $(CORNELL_TECH_TS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(CORNELL_TECH_TS_SRC)) && $(COMPILE_LUA) $(notdir $(CORNELL_TECH_TS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(CORNELL_TECH_TS_PDF)) $(CORNELL_TECH_TS_PDF)

$(CORNELL_TECH_DS_PDF): $(CORNELL_TECH_DS_SRC) $(CORNELL_TECH_DS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(CORNELL_TECH_DS_SRC)) && $(COMPILE_LUA) $(notdir $(CORNELL_TECH_DS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(CORNELL_TECH_DS_PDF)) $(CORNELL_TECH_DS_PDF)

$(CORNELL_TECH_ES_PDF): $(CORNELL_TECH_ES_SRC) $(CORNELL_TECH_ES_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(CORNELL_TECH_ES_SRC)) && $(COMPILE_LUA) $(notdir $(CORNELL_TECH_ES_SRC))
	@cp $(CACHE_DIR)/$(notdir $(CORNELL_TECH_ES_PDF)) $(CORNELL_TECH_ES_PDF)

$(NWU_LETTER_PDF): $(NWU_LETTER_SRC) $(NWU_LETTER_DEP) | clean-cache $(CACHE_DIR)
	@cp -r $(LH_FONT_DIR) $(dir $(NWU_LETTER_SRC))/.
	@cd $(dir $(NWU_LETTER_SRC)) && $(COMPILE_LUA) $(notdir $(NWU_LETTER_SRC))
	@cp $(CACHE_DIR)/$(notdir $(NWU_LETTER_PDF)) $(NWU_LETTER_PDF)

$(NWU_RS_PDF): $(NWU_RS_SRC) $(NWU_RS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(NWU_RS_SRC)) && $(COMPILE_LUA) $(notdir $(NWU_RS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(NWU_RS_PDF)) $(NWU_RS_PDF)

$(NWU_TS_PDF): $(NWU_TS_SRC) $(NWU_TS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(NWU_TS_SRC)) && $(COMPILE_LUA) $(notdir $(NWU_TS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(NWU_TS_PDF)) $(NWU_TS_PDF)

$(NWU_DS_PDF): $(NWU_DS_SRC) $(NWU_DS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(NWU_DS_SRC)) && $(COMPILE_LUA) $(notdir $(NWU_DS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(NWU_DS_PDF)) $(NWU_DS_PDF)

$(UCLA_LETTER_PDF): $(UCLA_LETTER_SRC) $(UCLA_LETTER_DEP) | clean-cache $(CACHE_DIR)
	@cp -r $(LH_FONT_DIR) $(dir $(UCLA_LETTER_SRC))/.
	@cd $(dir $(UCLA_LETTER_SRC)) && $(COMPILE_LUA) $(notdir $(UCLA_LETTER_SRC))
	@cp $(CACHE_DIR)/$(notdir $(UCLA_LETTER_PDF)) $(UCLA_LETTER_PDF)

$(UCLA_RS_PDF): $(UCLA_RS_SRC) $(UCLA_RS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(UCLA_RS_SRC)) && $(COMPILE_LUA) $(notdir $(UCLA_RS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(UCLA_RS_PDF)) $(UCLA_RS_PDF)

$(UCLA_TS_PDF): $(UCLA_TS_SRC) $(UCLA_TS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(UCLA_TS_SRC)) && $(COMPILE_LUA) $(notdir $(UCLA_TS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(UCLA_TS_PDF)) $(UCLA_TS_PDF)

$(UCLA_DS_PDF): $(UCLA_DS_SRC) $(UCLA_DS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(UCLA_DS_SRC)) && $(COMPILE_LUA) $(notdir $(UCLA_DS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(UCLA_DS_PDF)) $(UCLA_DS_PDF)

$(WU_ST_LOUIS_LETTER_PDF): $(WU_ST_LOUIS_LETTER_SRC) $(WU_ST_LOUIS_LETTER_DEP) | clean-cache $(CACHE_DIR)
	@cp -r $(LH_FONT_DIR) $(dir $(WU_ST_LOUIS_LETTER_SRC))/.
	@cd $(dir $(WU_ST_LOUIS_LETTER_SRC)) && $(COMPILE_LUA) $(notdir $(WU_ST_LOUIS_LETTER_SRC))
	@cp $(CACHE_DIR)/$(notdir $(WU_ST_LOUIS_LETTER_PDF)) $(WU_ST_LOUIS_LETTER_PDF)

$(WU_ST_LOUIS_RS_PDF): $(WU_ST_LOUIS_RS_SRC) $(WU_ST_LOUIS_RS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(WU_ST_LOUIS_RS_SRC)) && $(COMPILE_LUA) $(notdir $(WU_ST_LOUIS_RS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(WU_ST_LOUIS_RS_PDF)) $(WU_ST_LOUIS_RS_PDF)

$(WU_ST_LOUIS_TS_PDF): $(WU_ST_LOUIS_TS_SRC) $(WU_ST_LOUIS_TS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(WU_ST_LOUIS_TS_SRC)) && $(COMPILE_LUA) $(notdir $(WU_ST_LOUIS_TS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(WU_ST_LOUIS_TS_PDF)) $(WU_ST_LOUIS_TS_PDF)

$(WU_ST_LOUIS_DS_PDF): $(WU_ST_LOUIS_DS_SRC) $(WU_ST_LOUIS_DS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(WU_ST_LOUIS_DS_SRC)) && $(COMPILE_LUA) $(notdir $(WU_ST_LOUIS_DS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(WU_ST_LOUIS_DS_PDF)) $(WU_ST_LOUIS_DS_PDF)

$(NOTRE_DAME_LETTER_PDF): $(NOTRE_DAME_LETTER_SRC) $(NOTRE_DAME_LETTER_DEP) | clean-cache $(CACHE_DIR)
	@cp -r $(LH_FONT_DIR) $(dir $(NOTRE_DAME_LETTER_SRC))/.
	@cd $(dir $(NOTRE_DAME_LETTER_SRC)) && $(COMPILE_LUA) $(notdir $(NOTRE_DAME_LETTER_SRC))
	@cp $(CACHE_DIR)/$(notdir $(NOTRE_DAME_LETTER_PDF)) $(NOTRE_DAME_LETTER_PDF)

$(NOTRE_DAME_RS_PDF): $(NOTRE_DAME_RS_SRC) $(NOTRE_DAME_RS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(NOTRE_DAME_RS_SRC)) && $(COMPILE_LUA) $(notdir $(NOTRE_DAME_RS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(NOTRE_DAME_RS_PDF)) $(NOTRE_DAME_RS_PDF)

$(NOTRE_DAME_TS_PDF): $(NOTRE_DAME_TS_SRC) $(NOTRE_DAME_TS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(NOTRE_DAME_TS_SRC)) && $(COMPILE_LUA) $(notdir $(NOTRE_DAME_TS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(NOTRE_DAME_TS_PDF)) $(NOTRE_DAME_TS_PDF)

$(NOTRE_DAME_DS_PDF): $(NOTRE_DAME_DS_SRC) $(NOTRE_DAME_DS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(NOTRE_DAME_DS_SRC)) && $(COMPILE_LUA) $(notdir $(NOTRE_DAME_DS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(NOTRE_DAME_DS_PDF)) $(NOTRE_DAME_DS_PDF)

$(STANFORD_ECE_LETTER_PDF): $(STANFORD_ECE_LETTER_SRC) $(STANFORD_ECE_LETTER_DEP) | clean-cache $(CACHE_DIR)
	@cp -r $(LH_FONT_DIR) $(dir $(STANFORD_ECE_LETTER_SRC))/.
	@cd $(dir $(STANFORD_ECE_LETTER_SRC)) && $(COMPILE_LUA) $(notdir $(STANFORD_ECE_LETTER_SRC))
	@cp $(CACHE_DIR)/$(notdir $(STANFORD_ECE_LETTER_PDF)) $(STANFORD_ECE_LETTER_PDF)

$(STANFORD_ECE_RS_PDF): $(STANFORD_ECE_RS_SRC) $(STANFORD_ECE_RS_DEP) $(STANFORD_ECE_TS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(STANFORD_ECE_RS_SRC)) && $(COMPILE_LUA) $(notdir $(STANFORD_ECE_RS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(STANFORD_ECE_RS_PDF)) $(STANFORD_ECE_RS_PDF)

$(STANFORD_ECE_DS_PDF): $(STANFORD_ECE_DS_SRC) $(STANFORD_ECE_DS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(STANFORD_ECE_DS_SRC)) && $(COMPILE_LUA) $(notdir $(STANFORD_ECE_DS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(STANFORD_ECE_DS_PDF)) $(STANFORD_ECE_DS_PDF)

$(STANFORD_CS_LETTER_PDF): $(STANFORD_CS_LETTER_SRC) $(STANFORD_CS_LETTER_DEP) | clean-cache $(CACHE_DIR)
	@cp -r $(LH_FONT_DIR) $(dir $(STANFORD_CS_LETTER_SRC))/.
	@cd $(dir $(STANFORD_CS_LETTER_SRC)) && $(COMPILE_LUA) $(notdir $(STANFORD_CS_LETTER_SRC))
	@cp $(CACHE_DIR)/$(notdir $(STANFORD_CS_LETTER_PDF)) $(STANFORD_CS_LETTER_PDF)

$(STANFORD_CS_RS_PDF): $(STANFORD_CS_RS_SRC) $(STANFORD_CS_RS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(STANFORD_CS_RS_SRC)) && $(COMPILE_LUA) $(notdir $(STANFORD_CS_RS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(STANFORD_CS_RS_PDF)) $(STANFORD_CS_RS_PDF)

$(STANFORD_CS_DS_PDF): $(STANFORD_CS_DS_SRC) $(STANFORD_CS_DS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(STANFORD_CS_DS_SRC)) && $(COMPILE_LUA) $(notdir $(STANFORD_CS_DS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(STANFORD_CS_DS_PDF)) $(STANFORD_CS_DS_PDF)

$(UCSD_ECE_LETTER_PDF): $(UCSD_ECE_LETTER_SRC) $(UCSD_ECE_LETTER_DEP) | clean-cache $(CACHE_DIR)
	@cp -r $(LH_FONT_DIR) $(dir $(UCSD_ECE_LETTER_SRC))/.
	@cd $(dir $(UCSD_ECE_LETTER_SRC)) && $(COMPILE_LUA) $(notdir $(UCSD_ECE_LETTER_SRC))
	@cp $(CACHE_DIR)/$(notdir $(UCSD_ECE_LETTER_PDF)) $(UCSD_ECE_LETTER_PDF)

$(UCSD_ECE_RS_PDF): $(UCSD_ECE_RS_SRC) $(UCSD_ECE_RS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(UCSD_ECE_RS_SRC)) && $(COMPILE_LUA) $(notdir $(UCSD_ECE_RS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(UCSD_ECE_RS_PDF)) $(UCSD_ECE_RS_PDF)

$(UCSD_ECE_TS_PDF): $(UCSD_ECE_TS_SRC) $(UCSD_ECE_TS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(UCSD_ECE_TS_SRC)) && $(COMPILE_LUA) $(notdir $(UCSD_ECE_TS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(UCSD_ECE_TS_PDF)) $(UCSD_ECE_TS_PDF)

$(UCSD_ECE_DS_PDF): $(UCSD_ECE_DS_SRC) $(UCSD_ECE_DS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(UCSD_ECE_DS_SRC)) && $(COMPILE_LUA) $(notdir $(UCSD_ECE_DS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(UCSD_ECE_DS_PDF)) $(UCSD_ECE_DS_PDF)

$(UCSD_CSE_LETTER_PDF): $(UCSD_CSE_LETTER_SRC) $(UCSD_CSE_LETTER_DEP) | clean-cache $(CACHE_DIR)
	@cp -r $(LH_FONT_DIR) $(dir $(UCSD_CSE_LETTER_SRC))/.
	@cd $(dir $(UCSD_CSE_LETTER_SRC)) && $(COMPILE_LUA) $(notdir $(UCSD_CSE_LETTER_SRC))
	@cp $(CACHE_DIR)/$(notdir $(UCSD_CSE_LETTER_PDF)) $(UCSD_CSE_LETTER_PDF)

$(UCSD_CSE_RS_PDF): $(UCSD_CSE_RS_SRC) $(UCSD_CSE_RS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(UCSD_CSE_RS_SRC)) && $(COMPILE_LUA) $(notdir $(UCSD_CSE_RS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(UCSD_CSE_RS_PDF)) $(UCSD_CSE_RS_PDF)

$(UCSD_CSE_TS_PDF): $(UCSD_CSE_TS_SRC) $(UCSD_CSE_TS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(UCSD_CSE_TS_SRC)) && $(COMPILE_LUA) $(notdir $(UCSD_CSE_TS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(UCSD_CSE_TS_PDF)) $(UCSD_CSE_TS_PDF)

$(UCSD_CSE_DS_PDF): $(UCSD_CSE_DS_SRC) $(UCSD_CSE_DS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(UCSD_CSE_DS_SRC)) && $(COMPILE_LUA) $(notdir $(UCSD_CSE_DS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(UCSD_CSE_DS_PDF)) $(UCSD_CSE_DS_PDF)

$(USC_LETTER_PDF): $(USC_LETTER_SRC) $(USC_LETTER_DEP) | clean-cache $(CACHE_DIR)
	@cp -r $(LH_FONT_DIR) $(dir $(USC_LETTER_SRC))/.
	@cd $(dir $(USC_LETTER_SRC)) && $(COMPILE_LUA) $(notdir $(USC_LETTER_SRC))
	@cp $(CACHE_DIR)/$(notdir $(USC_LETTER_PDF)) $(USC_LETTER_PDF)

$(USC_RS_PDF): $(USC_RS_SRC) $(USC_RS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(USC_RS_SRC)) && $(COMPILE_LUA) $(notdir $(USC_RS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(USC_RS_PDF)) $(USC_RS_PDF)

$(USC_TS_PDF): $(USC_TS_SRC) $(USC_TS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(USC_TS_SRC)) && $(COMPILE_LUA) $(notdir $(USC_TS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(USC_TS_PDF)) $(USC_TS_PDF)

$(USC_DS_PDF): $(USC_DS_SRC) $(USC_DS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(USC_DS_SRC)) && $(COMPILE_LUA) $(notdir $(USC_DS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(USC_DS_PDF)) $(USC_DS_PDF)

$(UCI_AI_LETTER_PDF): $(UCI_AI_LETTER_SRC) $(UCI_AI_LETTER_DEP) | clean-cache $(CACHE_DIR)
	@cp -r $(LH_FONT_DIR) $(dir $(UCI_AI_LETTER_SRC))/.
	@cd $(dir $(UCI_AI_LETTER_SRC)) && $(COMPILE_LUA) $(notdir $(UCI_AI_LETTER_SRC))
	@cp $(CACHE_DIR)/$(notdir $(UCI_AI_LETTER_PDF)) $(UCI_AI_LETTER_PDF)

$(UCI_AI_RS_PDF): $(UCI_AI_RS_SRC) $(UCI_AI_RS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(UCI_AI_RS_SRC)) && $(COMPILE_LUA) $(notdir $(UCI_AI_RS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(UCI_AI_RS_PDF)) $(UCI_AI_RS_PDF)

$(UCI_AI_TS_PDF): $(UCI_AI_TS_SRC) $(UCI_AI_TS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(UCI_AI_TS_SRC)) && $(COMPILE_LUA) $(notdir $(UCI_AI_TS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(UCI_AI_TS_PDF)) $(UCI_AI_TS_PDF)

$(UCI_AI_DS_PDF): $(UCI_AI_DS_SRC) $(UCI_AI_DS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(UCI_AI_DS_SRC)) && $(COMPILE_LUA) $(notdir $(UCI_AI_DS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(UCI_AI_DS_PDF)) $(UCI_AI_DS_PDF)

$(UCI_SYSTEM_LETTER_PDF): $(UCI_SYSTEM_LETTER_SRC) $(UCI_SYSTEM_LETTER_DEP) | clean-cache $(CACHE_DIR)
	@cp -r $(LH_FONT_DIR) $(dir $(UCI_SYSTEM_LETTER_SRC))/.
	@cd $(dir $(UCI_SYSTEM_LETTER_SRC)) && $(COMPILE_LUA) $(notdir $(UCI_SYSTEM_LETTER_SRC))
	@cp $(CACHE_DIR)/$(notdir $(UCI_SYSTEM_LETTER_PDF)) $(UCI_SYSTEM_LETTER_PDF)

$(UCI_SYSTEM_RS_PDF): $(UCI_SYSTEM_RS_SRC) $(UCI_SYSTEM_RS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(UCI_SYSTEM_RS_SRC)) && $(COMPILE_LUA) $(notdir $(UCI_SYSTEM_RS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(UCI_SYSTEM_RS_PDF)) $(UCI_SYSTEM_RS_PDF)

$(UCI_SYSTEM_TS_PDF): $(UCI_SYSTEM_TS_SRC) $(UCI_SYSTEM_TS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(UCI_SYSTEM_TS_SRC)) && $(COMPILE_LUA) $(notdir $(UCI_SYSTEM_TS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(UCI_SYSTEM_TS_PDF)) $(UCI_SYSTEM_TS_PDF)

$(UCI_SYSTEM_DS_PDF): $(UCI_SYSTEM_DS_SRC) $(UCI_SYSTEM_DS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(UCI_SYSTEM_DS_SRC)) && $(COMPILE_LUA) $(notdir $(UCI_SYSTEM_DS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(UCI_SYSTEM_DS_PDF)) $(UCI_SYSTEM_DS_PDF)

$(UCI_EECS_LETTER_PDF): $(UCI_EECS_LETTER_SRC) $(UCI_EECS_LETTER_DEP) | clean-cache $(CACHE_DIR)
	@cp -r $(LH_FONT_DIR) $(dir $(UCI_EECS_LETTER_SRC))/.
	@cd $(dir $(UCI_EECS_LETTER_SRC)) && $(COMPILE_LUA) $(notdir $(UCI_EECS_LETTER_SRC))
	@cp $(CACHE_DIR)/$(notdir $(UCI_EECS_LETTER_PDF)) $(UCI_EECS_LETTER_PDF)

$(UCI_EECS_RS_PDF): $(UCI_EECS_RS_SRC) $(UCI_EECS_RS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(UCI_EECS_RS_SRC)) && $(COMPILE_LUA) $(notdir $(UCI_EECS_RS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(UCI_EECS_RS_PDF)) $(UCI_EECS_RS_PDF)

$(UCI_EECS_TS_PDF): $(UCI_EECS_TS_SRC) $(UCI_EECS_TS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(UCI_EECS_TS_SRC)) && $(COMPILE_LUA) $(notdir $(UCI_EECS_TS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(UCI_EECS_TS_PDF)) $(UCI_EECS_TS_PDF)

$(UCI_EECS_DS_PDF): $(UCI_EECS_DS_SRC) $(UCI_EECS_DS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(UCI_EECS_DS_SRC)) && $(COMPILE_LUA) $(notdir $(UCI_EECS_DS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(UCI_EECS_DS_PDF)) $(UCI_EECS_DS_PDF)

$(LEHIGH_ECE_LETTER_PDF): $(LEHIGH_ECE_LETTER_SRC) $(LEHIGH_ECE_LETTER_DEP) | clean-cache $(CACHE_DIR)
	@cp -r $(LH_FONT_DIR) $(dir $(LEHIGH_ECE_LETTER_SRC))/.
	@cd $(dir $(LEHIGH_ECE_LETTER_SRC)) && $(COMPILE_LUA) $(notdir $(LEHIGH_ECE_LETTER_SRC))
	@cp $(CACHE_DIR)/$(notdir $(LEHIGH_ECE_LETTER_PDF)) $(LEHIGH_ECE_LETTER_PDF)

$(LEHIGH_ECE_RS_PDF): $(LEHIGH_ECE_RS_SRC) $(LEHIGH_ECE_RS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(LEHIGH_ECE_RS_SRC)) && $(COMPILE_LUA) $(notdir $(LEHIGH_ECE_RS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(LEHIGH_ECE_RS_PDF)) $(LEHIGH_ECE_RS_PDF)

$(LEHIGH_ECE_TS_PDF): $(LEHIGH_ECE_TS_SRC) $(LEHIGH_ECE_TS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(LEHIGH_ECE_TS_SRC)) && $(COMPILE_LUA) $(notdir $(LEHIGH_ECE_TS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(LEHIGH_ECE_TS_PDF)) $(LEHIGH_ECE_TS_PDF)

$(LEHIGH_ECE_DS_PDF): $(LEHIGH_ECE_DS_SRC) $(LEHIGH_ECE_DS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(LEHIGH_ECE_DS_SRC)) && $(COMPILE_LUA) $(notdir $(LEHIGH_ECE_DS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(LEHIGH_ECE_DS_PDF)) $(LEHIGH_ECE_DS_PDF)

$(LEHIGH_CSE_LETTER_PDF): $(LEHIGH_CSE_LETTER_SRC) $(LEHIGH_CSE_LETTER_DEP) | clean-cache $(CACHE_DIR)
	@cp -r $(LH_FONT_DIR) $(dir $(LEHIGH_CSE_LETTER_SRC))/.
	@cd $(dir $(LEHIGH_CSE_LETTER_SRC)) && $(COMPILE_LUA) $(notdir $(LEHIGH_CSE_LETTER_SRC))
	@cp $(CACHE_DIR)/$(notdir $(LEHIGH_CSE_LETTER_PDF)) $(LEHIGH_CSE_LETTER_PDF)

$(LEHIGH_CSE_RS_PDF): $(LEHIGH_CSE_RS_SRC) $(LEHIGH_CSE_RS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(LEHIGH_CSE_RS_SRC)) && $(COMPILE_LUA) $(notdir $(LEHIGH_CSE_RS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(LEHIGH_CSE_RS_PDF)) $(LEHIGH_CSE_RS_PDF)

$(LEHIGH_CSE_TS_PDF): $(LEHIGH_CSE_TS_SRC) $(LEHIGH_CSE_TS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(LEHIGH_CSE_TS_SRC)) && $(COMPILE_LUA) $(notdir $(LEHIGH_CSE_TS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(LEHIGH_CSE_TS_PDF)) $(LEHIGH_CSE_TS_PDF)

$(LEHIGH_CSE_DS_PDF): $(LEHIGH_CSE_DS_SRC) $(LEHIGH_CSE_DS_DEP) | clean-cache $(CACHE_DIR)	
	@cd $(dir $(LEHIGH_CSE_DS_SRC)) && $(COMPILE_LUA) $(notdir $(LEHIGH_CSE_DS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(LEHIGH_CSE_DS_PDF)) $(LEHIGH_CSE_DS_PDF)

$(PRINCETON_ECE_LETTER_PDF): $(PRINCETON_ECE_LETTER_SRC) $(PRINCETON_ECE_LETTER_DEP) | clean-cache $(CACHE_DIR)
	@cp -r $(LH_FONT_DIR) $(dir $(PRINCETON_ECE_LETTER_SRC))/.
	@cd $(dir $(PRINCETON_ECE_LETTER_SRC)) && $(COMPILE_LUA) $(notdir $(PRINCETON_ECE_LETTER_SRC))
	@cp $(CACHE_DIR)/$(notdir $(PRINCETON_ECE_LETTER_PDF)) $(PRINCETON_ECE_LETTER_PDF)

$(PRINCETON_ECE_RS_PDF): $(PRINCETON_ECE_RS_SRC) $(PRINCETON_ECE_RS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(PRINCETON_ECE_RS_SRC)) && $(COMPILE_LUA) $(notdir $(PRINCETON_ECE_RS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(PRINCETON_ECE_RS_PDF)) $(PRINCETON_ECE_RS_PDF)

$(PRINCETON_ECE_TS_PDF): $(PRINCETON_ECE_TS_SRC) $(PRINCETON_ECE_TS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(PRINCETON_ECE_TS_SRC)) && $(COMPILE_LUA) $(notdir $(PRINCETON_ECE_TS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(PRINCETON_ECE_TS_PDF)) $(PRINCETON_ECE_TS_PDF)

$(PRINCETON_ECE_DS_PDF): $(PRINCETON_ECE_DS_SRC) $(PRINCETON_ECE_DS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(PRINCETON_ECE_DS_SRC)) && $(COMPILE_LUA) $(notdir $(PRINCETON_ECE_DS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(PRINCETON_ECE_DS_PDF)) $(PRINCETON_ECE_DS_PDF)

$(PRINCETON_CS_LETTER_PDF): $(PRINCETON_CS_LETTER_SRC) $(PRINCETON_CS_LETTER_DEP) | clean-cache $(CACHE_DIR)
	@cp -r $(LH_FONT_DIR) $(dir $(PRINCETON_CS_LETTER_SRC))/.
	@cd $(dir $(PRINCETON_CS_LETTER_SRC)) && $(COMPILE_LUA) $(notdir $(PRINCETON_CS_LETTER_SRC))
	@cp $(CACHE_DIR)/$(notdir $(PRINCETON_CS_LETTER_PDF)) $(PRINCETON_CS_LETTER_PDF)

$(PRINCETON_CS_RS_PDF): $(PRINCETON_CS_RS_SRC) $(PRINCETON_CS_RS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(PRINCETON_CS_RS_SRC)) && $(COMPILE_LUA) $(notdir $(PRINCETON_CS_RS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(PRINCETON_CS_RS_PDF)) $(PRINCETON_CS_RS_PDF)

$(PRINCETON_CS_TS_PDF): $(PRINCETON_CS_TS_SRC) $(PRINCETON_CS_TS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(PRINCETON_CS_TS_SRC)) && $(COMPILE_LUA) $(notdir $(PRINCETON_CS_TS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(PRINCETON_CS_TS_PDF)) $(PRINCETON_CS_TS_PDF)

$(PRINCETON_CS_DS_PDF): $(PRINCETON_CS_DS_SRC) $(PRINCETON_CS_DS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(PRINCETON_CS_DS_SRC)) && $(COMPILE_LUA) $(notdir $(PRINCETON_CS_DS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(PRINCETON_CS_DS_PDF)) $(PRINCETON_CS_DS_PDF)

$(CMU_LETTER_PDF): $(CMU_LETTER_SRC) $(CMU_LETTER_DEP) | clean-cache $(CACHE_DIR)
	@cp -r $(LH_FONT_DIR) $(dir $(CMU_LETTER_SRC))/.
	@cd $(dir $(CMU_LETTER_SRC)) && $(COMPILE_LUA) $(notdir $(CMU_LETTER_SRC))
	@cp $(CACHE_DIR)/$(notdir $(CMU_LETTER_PDF)) $(CMU_LETTER_PDF)

$(CMU_RS_PDF): $(CMU_RS_SRC) $(CMU_RS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(CMU_RS_SRC)) && $(COMPILE_LUA) $(notdir $(CMU_RS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(CMU_RS_PDF)) $(CMU_RS_PDF)

$(CMU_TS_PDF): $(CMU_TS_SRC) $(CMU_TS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(CMU_TS_SRC)) && $(COMPILE_LUA) $(notdir $(CMU_TS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(CMU_TS_PDF)) $(CMU_TS_PDF)

$(CMU_DS_PDF): $(CMU_DS_SRC) $(CMU_DS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(CMU_DS_SRC)) && $(COMPILE_LUA) $(notdir $(CMU_DS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(CMU_DS_PDF)) $(CMU_DS_PDF)

$(UCR_LETTER_PDF): $(UCR_LETTER_SRC) $(UCR_LETTER_DEP) | clean-cache $(CACHE_DIR)
	@cp -r $(LH_FONT_DIR) $(dir $(UCR_LETTER_SRC))/.
	@cd $(dir $(UCR_LETTER_SRC)) && $(COMPILE_LUA) $(notdir $(UCR_LETTER_SRC))
	@cp $(CACHE_DIR)/$(notdir $(UCR_LETTER_PDF)) $(UCR_LETTER_PDF)

$(UCR_RS_PDF): $(UCR_RS_SRC) $(UCR_RS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(UCR_RS_SRC)) && $(COMPILE_LUA) $(notdir $(UCR_RS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(UCR_RS_PDF)) $(UCR_RS_PDF)

$(UCR_TS_PDF): $(UCR_TS_SRC) $(UCR_TS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(UCR_TS_SRC)) && $(COMPILE_LUA) $(notdir $(UCR_TS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(UCR_TS_PDF)) $(UCR_TS_PDF)

$(UCR_DS_PDF): $(UCR_DS_SRC) $(UCR_DS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(UCR_DS_SRC)) && $(COMPILE_LUA) $(notdir $(UCR_DS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(UCR_DS_PDF)) $(UCR_DS_PDF)

$(YALE_EE_LETTER_PDF): $(YALE_EE_LETTER_SRC) $(YALE_EE_LETTER_DEP) | clean-cache $(CACHE_DIR)
	@cp -r $(LH_FONT_DIR) $(dir $(YALE_EE_LETTER_SRC))/.
	@cd $(dir $(YALE_EE_LETTER_SRC)) && $(COMPILE_LUA) $(notdir $(YALE_EE_LETTER_SRC))
	@cp $(CACHE_DIR)/$(notdir $(YALE_EE_LETTER_PDF)) $(YALE_EE_LETTER_PDF)

$(YALE_EE_RS_PDF): $(YALE_EE_RS_SRC) $(YALE_EE_RS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(YALE_EE_RS_SRC)) && $(COMPILE_LUA) $(notdir $(YALE_EE_RS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(YALE_EE_RS_PDF)) $(YALE_EE_RS_PDF)

$(YALE_EE_TS_PDF): $(YALE_EE_TS_SRC) $(YALE_EE_TS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(YALE_EE_TS_SRC)) && $(COMPILE_LUA) $(notdir $(YALE_EE_TS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(YALE_EE_TS_PDF)) $(YALE_EE_TS_PDF)

$(YALE_EE_DS_PDF): $(YALE_EE_DS_SRC) $(YALE_EE_DS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(YALE_EE_DS_SRC)) && $(COMPILE_LUA) $(notdir $(YALE_EE_DS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(YALE_EE_DS_PDF)) $(YALE_EE_DS_PDF)

$(YALE_CS_LETTER_PDF): $(YALE_CS_LETTER_SRC) $(YALE_CS_LETTER_DEP) | clean-cache $(CACHE_DIR)
	@cp -r $(LH_FONT_DIR) $(dir $(YALE_CS_LETTER_SRC))/.
	@cd $(dir $(YALE_CS_LETTER_SRC)) && $(COMPILE_LUA) $(notdir $(YALE_CS_LETTER_SRC))
	@cp $(CACHE_DIR)/$(notdir $(YALE_CS_LETTER_PDF)) $(YALE_CS_LETTER_PDF)

$(YALE_CS_RS_PDF): $(YALE_CS_RS_SRC) $(YALE_CS_RS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(YALE_CS_RS_SRC)) && $(COMPILE_LUA) $(notdir $(YALE_CS_RS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(YALE_CS_RS_PDF)) $(YALE_CS_RS_PDF)

$(YALE_CS_TS_PDF): $(YALE_CS_TS_SRC) $(YALE_CS_TS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(YALE_CS_TS_SRC)) && $(COMPILE_LUA) $(notdir $(YALE_CS_TS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(YALE_CS_TS_PDF)) $(YALE_CS_TS_PDF)

$(YALE_CS_DS_PDF): $(YALE_CS_DS_SRC) $(YALE_CS_DS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(YALE_CS_DS_SRC)) && $(COMPILE_LUA) $(notdir $(YALE_CS_DS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(YALE_CS_DS_PDF)) $(YALE_CS_DS_PDF)

$(UMD_CS_LETTER_PDF): $(UMD_CS_LETTER_SRC) $(UMD_CS_LETTER_DEP) | clean-cache $(CACHE_DIR)
	@cp -r $(LH_FONT_DIR) $(dir $(UMD_CS_LETTER_SRC))/.
	@cd $(dir $(UMD_CS_LETTER_SRC)) && $(COMPILE_LUA) $(notdir $(UMD_CS_LETTER_SRC))
	@cp $(CACHE_DIR)/$(notdir $(UMD_CS_LETTER_PDF)) $(UMD_CS_LETTER_PDF)

$(UMD_CS_RS_PDF): $(UMD_CS_RS_SRC) $(UMD_CS_RS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(UMD_CS_RS_SRC)) && $(COMPILE_LUA) $(notdir $(UMD_CS_RS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(UMD_CS_RS_PDF)) $(UMD_CS_RS_PDF)

$(UMD_CS_TS_PDF): $(UMD_CS_TS_SRC) $(UMD_CS_TS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(UMD_CS_TS_SRC)) && $(COMPILE_LUA) $(notdir $(UMD_CS_TS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(UMD_CS_TS_PDF)) $(UMD_CS_TS_PDF)

$(UMD_CS_DS_PDF): $(UMD_CS_DS_SRC) $(UMD_CS_DS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(UMD_CS_DS_SRC)) && $(COMPILE_LUA) $(notdir $(UMD_CS_DS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(UMD_CS_DS_PDF)) $(UMD_CS_DS_PDF)

$(UMD_ECE_LETTER_PDF): $(UMD_ECE_LETTER_SRC) $(UMD_ECE_LETTER_DEP) | clean-cache $(CACHE_DIR)
	@cp -r $(LH_FONT_DIR) $(dir $(UMD_ECE_LETTER_SRC))/.
	@cd $(dir $(UMD_ECE_LETTER_SRC)) && $(COMPILE_LUA) $(notdir $(UMD_ECE_LETTER_SRC))
	@cp $(CACHE_DIR)/$(notdir $(UMD_ECE_LETTER_PDF)) $(UMD_ECE_LETTER_PDF)

$(UMD_ECE_RS_PDF): $(UMD_ECE_RS_SRC) $(UMD_ECE_RS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(UMD_ECE_RS_SRC)) && $(COMPILE_LUA) $(notdir $(UMD_ECE_RS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(UMD_ECE_RS_PDF)) $(UMD_ECE_RS_PDF)

$(UMD_ECE_TS_PDF): $(UMD_ECE_TS_SRC) $(UMD_ECE_TS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(UMD_ECE_TS_SRC)) && $(COMPILE_LUA) $(notdir $(UMD_ECE_TS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(UMD_ECE_TS_PDF)) $(UMD_ECE_TS_PDF)

$(UMD_ECE_DS_PDF): $(UMD_ECE_DS_SRC) $(UMD_ECE_DS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(UMD_ECE_DS_SRC)) && $(COMPILE_LUA) $(notdir $(UMD_ECE_DS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(UMD_ECE_DS_PDF)) $(UMD_ECE_DS_PDF)

$(WISC_LETTER_PDF): $(WISC_LETTER_SRC) $(WISC_LETTER_DEP) | clean-cache $(CACHE_DIR)
	@cp -r $(LH_FONT_DIR) $(dir $(WISC_LETTER_SRC))/.
	@cd $(dir $(WISC_LETTER_SRC)) && $(COMPILE_LUA) $(notdir $(WISC_LETTER_SRC))
	@cp $(CACHE_DIR)/$(notdir $(WISC_LETTER_PDF)) $(WISC_LETTER_PDF)

$(WISC_RS_PDF): $(WISC_RS_SRC) $(WISC_RS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(WISC_RS_SRC)) && $(COMPILE_LUA) $(notdir $(WISC_RS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(WISC_RS_PDF)) $(WISC_RS_PDF)

$(WISC_TS_PDF): $(WISC_TS_SRC) $(WISC_TS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(WISC_TS_SRC)) && $(COMPILE_LUA) $(notdir $(WISC_TS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(WISC_TS_PDF)) $(WISC_TS_PDF)

$(WISC_DS_PDF): $(WISC_DS_SRC) $(WISC_DS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(WISC_DS_SRC)) && $(COMPILE_LUA) $(notdir $(WISC_DS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(WISC_DS_PDF)) $(WISC_DS_PDF)

$(WISC_CS_LETTER_PDF): $(WISC_CS_LETTER_SRC) $(WISC_CS_LETTER_DEP) | clean-cache $(CACHE_DIR)
	@cp -r $(LH_FONT_DIR) $(dir $(WISC_CS_LETTER_SRC))/.
	@cd $(dir $(WISC_CS_LETTER_SRC)) && $(COMPILE_LUA) $(notdir $(WISC_CS_LETTER_SRC))
	@cp $(CACHE_DIR)/$(notdir $(WISC_CS_LETTER_PDF)) $(WISC_CS_LETTER_PDF)

$(WISC_CS_RS_PDF): $(WISC_CS_RS_SRC) $(WISC_CS_RS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(WISC_CS_RS_SRC)) && $(COMPILE_LUA) $(notdir $(WISC_CS_RS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(WISC_CS_RS_PDF)) $(WISC_CS_RS_PDF)

$(WISC_CS_TS_PDF): $(WISC_CS_TS_SRC) $(WISC_CS_TS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(WISC_CS_TS_SRC)) && $(COMPILE_LUA) $(notdir $(WISC_CS_TS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(WISC_CS_TS_PDF)) $(WISC_CS_TS_PDF)

$(WISC_CS_DS_PDF): $(WISC_CS_DS_SRC) $(WISC_CS_DS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(WISC_CS_DS_SRC)) && $(COMPILE_LUA) $(notdir $(WISC_CS_DS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(WISC_CS_DS_PDF)) $(WISC_CS_DS_PDF)

$(RUTGERS_CS_LETTER_PDF): $(RUTGERS_CS_LETTER_SRC) $(RUTGERS_CS_LETTER_DEP) | clean-cache $(CACHE_DIR)
	@cp -r $(LH_FONT_DIR) $(dir $(RUTGERS_CS_LETTER_SRC))/.
	@cd $(dir $(RUTGERS_CS_LETTER_SRC)) && $(COMPILE_LUA) $(notdir $(RUTGERS_CS_LETTER_SRC))
	@cp $(CACHE_DIR)/$(notdir $(RUTGERS_CS_LETTER_PDF)) $(RUTGERS_CS_LETTER_PDF)

$(RUTGERS_CS_RS_PDF): $(RUTGERS_CS_RS_SRC) $(RUTGERS_CS_RS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(RUTGERS_CS_RS_SRC)) && $(COMPILE_LUA) $(notdir $(RUTGERS_CS_RS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(RUTGERS_CS_RS_PDF)) $(RUTGERS_CS_RS_PDF)

$(RUTGERS_CS_TS_PDF): $(RUTGERS_CS_TS_SRC) $(RUTGERS_CS_TS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(RUTGERS_CS_TS_SRC)) && $(COMPILE_LUA) $(notdir $(RUTGERS_CS_TS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(RUTGERS_CS_TS_PDF)) $(RUTGERS_CS_TS_PDF)

$(RUTGERS_CS_DS_PDF): $(RUTGERS_CS_DS_SRC) $(RUTGERS_CS_DS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(RUTGERS_CS_DS_SRC)) && $(COMPILE_LUA) $(notdir $(RUTGERS_CS_DS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(RUTGERS_CS_DS_PDF)) $(RUTGERS_CS_DS_PDF)

$(RICE_LETTER_PDF): $(RICE_LETTER_SRC) $(RICE_LETTER_DEP) | clean-cache $(CACHE_DIR)
	@cp -r $(LH_FONT_DIR) $(dir $(RICE_LETTER_SRC))/.
	@cd $(dir $(RICE_LETTER_SRC)) && $(COMPILE_LUA) $(notdir $(RICE_LETTER_SRC))
	@cp $(CACHE_DIR)/$(notdir $(RICE_LETTER_PDF)) $(RICE_LETTER_PDF)

$(RICE_RS_PDF): $(RICE_RS_SRC) $(RICE_RS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(RICE_RS_SRC)) && $(COMPILE_LUA) $(notdir $(RICE_RS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(RICE_RS_PDF)) $(RICE_RS_PDF)

$(RICE_TS_PDF): $(RICE_TS_SRC) $(RICE_TS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(RICE_TS_SRC)) && $(COMPILE_LUA) $(notdir $(RICE_TS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(RICE_TS_PDF)) $(RICE_TS_PDF)

$(RICE_DS_PDF): $(RICE_DS_SRC) $(RICE_DS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(RICE_DS_SRC)) && $(COMPILE_LUA) $(notdir $(RICE_DS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(RICE_DS_PDF)) $(RICE_DS_PDF)

$(PSU_EE_LETTER_PDF): $(PSU_EE_LETTER_SRC) $(PSU_EE_LETTER_DEP) | clean-cache $(CACHE_DIR)
	@cp -r $(LH_FONT_DIR) $(dir $(PSU_EE_LETTER_SRC))/.
	@cd $(dir $(PSU_EE_LETTER_SRC)) && $(COMPILE_LUA) $(notdir $(PSU_EE_LETTER_SRC))
	@cp $(CACHE_DIR)/$(notdir $(PSU_EE_LETTER_PDF)) $(PSU_EE_LETTER_PDF)

$(PSU_EE_RS_PDF): $(PSU_EE_RS_SRC) $(PSU_EE_RS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(PSU_EE_RS_SRC)) && $(COMPILE_LUA) $(notdir $(PSU_EE_RS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(PSU_EE_RS_PDF)) $(PSU_EE_RS_PDF)

$(PSU_EE_TS_PDF): $(PSU_EE_TS_SRC) $(PSU_EE_TS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(PSU_EE_TS_SRC)) && $(COMPILE_LUA) $(notdir $(PSU_EE_TS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(PSU_EE_TS_PDF)) $(PSU_EE_TS_PDF)

$(PSU_EE_DS_PDF): $(PSU_EE_DS_SRC) $(PSU_EE_DS_DEP) | clean-cache $(CACHE_DIR)
	@cd $(dir $(PSU_EE_DS_SRC)) && $(COMPILE_LUA) $(notdir $(PSU_EE_DS_SRC))
	@cp $(CACHE_DIR)/$(notdir $(PSU_EE_DS_PDF)) $(PSU_EE_DS_PDF)
