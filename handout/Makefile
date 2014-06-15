default: all

toplevels += handout.pdf
deps += setup.tex
cleans += handout.pdf .latexwork/*

handout.pdf: handout.tex $(deps)
	./latexdriver -x $< $@

# Misc

all: $(toplevels)

clean:
	-rm -f $(cleans)

.PHONY: all clean default

.SECONDARY: # no deleting intermediate targets

.SUFFIXES: # no implicit rules
