COMPILE.txt       = ./generate -O text
COMPILE.html      = ./generate -O html

textsheets := $(patsubst data/%.yml, %.txt, $(wildcard data/*.yml))
htmlsheets := $(patsubst data/%.yml, %.html, $(wildcard data/*.yml))

%.txt: data/%.yml
	$(COMPILE.txt) $< -o $@

%.html: data/%.yml
	$(COMPILE.html) $< -o $@

all: $(textsheets) $(htmlsheets)

.PHONY: all clean
clean:
	-rm $(textsheets)
	-rm $(htmlsheets)
