LATEX=xelatex
CHECKER=evince
EDITOR=vim
INSTLL_DIR=/home/bearchen/Desktop/VBS/

SRC=$(wildcard *.tex)
OBJ=$(patsubst %.tex,%.pdf,$(wildcard *.tex))

all:$(SRC)
	$(LATEX) $^ 

clean:
	@rm *.aux *.log *.pdf

twice:
	$(LATEX) $(SRC) && $(LATEX) $(SRC)

check:
	$(CHECKER) $(OBJ)

edit:
	$(EDITOR) $(SRC)

install:
	cp -r $(OBJ) $(INSTLL_DIR)

.PHONY:clean twice check edit install

