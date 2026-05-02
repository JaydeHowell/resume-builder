ENGINE := -pdflua -interaction=nonstopmode

IMAGE_NAME := resume-builder

DOCUMENT := resume

.PHONY: all build pdf clean

all: build pdf

build:
	docker build -t $(IMAGE_NAME) .

pdf:
	docker run --rm -v $(CURDIR):/workdir -w /workdir $(IMAGE_NAME) latexmk $(ENGINE) $(DOCUMENT).tex

clean:
	rm -f *.aux *.fdb_latexmk *.fls *.log *.out *.synctex.gz