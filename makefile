FILES = paper.md \
		metadata.yaml

OUTPUT = ..

FLAGS = --citeproc \
		--bibliography=bibliography.bib \
		--csl=bibliography.csl \
		-s \
		-f markdown

FLAGS_PDF = --template=template.latex

all: pdf

pdf:
	pandoc -o $(OUTPUT)/paper.pdf $(FLAGS) $(FLAGS_PDF) $(FILES)

clean:
	rm build/*

