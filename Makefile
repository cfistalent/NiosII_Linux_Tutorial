LATEX=xelatex
CHECKER=evince
EDITOR=vim

SRC=$(wildcard *.tex)
OBJ=$(patsubst %.tex,%.pdf,$(wildcard *.tex))

all:$(SRC)
	$(LATEX) $^ 

clean:
	@rm *.aux *.log *.pdf

twice:
	$(LATEX) $(SRC)

check:
	$(CHECKER) $(OBJ)

edit:
	$(EDITOR) $(SRC)

.PHONY:clean twice check edit


	
	
	
