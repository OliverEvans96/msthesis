# Based on https://tex.stackexchange.com/questions/40738/how-to-properly-make-a-latex-project

.PHONY: all clean thesis papers/asymptotics.pdf main.pdf

thesis: main.pdf

all: papers/asymptotics.pdf main.pdf

clean:
	latexmk -CA

papers/asymptotics.pdf: papers/asymptotics.tex
	cd papers && latexmk -pdf -pdflatex="pdflatex -interaction=nonstopmode" -use-make asymptotics.tex

main.pdf:
	latexmk -pdf -pdflatex="pdflatex -interaction=nonstopmode" -use-make main.tex



