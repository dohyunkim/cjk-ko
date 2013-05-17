
NAME = cjk-ko-doc

PDF = $(NAME).pdf
DVI = $(NAME).dvi
TEX = $(NAME).tex
AUX = $(NAME).aux
LOG = $(NAME).log

all: $(PDF)

$(PDF): $(DVI)
	dvipdfmx $(DVI)

$(DVI): $(TEX)
	latex $(TEX)
	@if(grep "Rerun" $(LOG) > /dev/null); then latex $(TEX); fi 

clean:
	rm -f $(DVI) $(AUX) $(LOG)

dist-clean: clean
	rm -f $(PDF)

