SOURCE ?= src
DIST ?= dist
BOOK_NAME ?= $(shell basename `pwd`)

# Generate PDF file
pdf:
	pandoc -d config.yml \
	`find $(SOURCE) -name '*.md' | sort` \
	-o $(DIST)/$(BOOK_NAME).pdf \
	-M date="`date "+%d %B %Y"`"

# Generate EPUB file
epub:
	pandoc -d config.yml \
	`find $(SOURCE) -name '*.md' | sort` \
	-o $(DIST)/$(BOOK_NAME).epub
