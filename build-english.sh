###########
# ENGLISH #
###########

pandoc \
--read=markdown+footnotes+grid_tables+multiline_tables+fancy_lists+startnum+definition_lists \
--table-of-contents \
--toc-depth=2 \
--preserve-tabs \
--top-level-division=chapter \
--standalone \
--template=template-book-en.latex \
--latex-engine=xelatex \
deutsch-uebungen-en.md \
-o deutsch-uebungen-en.pdf

if [ $? -eq 0 ]; then
        echo -e "${SUCCESS_COLOR}Successfully${NO_COLOR} compiled ${HIGHLIGHT_COLOR}deutsch-uebungen-en.pdf${NO_COLOR}"
else
        echo -e "${ERROR_COLOR}Failed${NO_COLOR} to create ${HIGHLIGHT_COLOR}deutsch-uebungen-en.pdf${NO_COLOR}"
        exit 1
fi
