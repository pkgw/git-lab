default: all

toplevels += handout.pdf
deps += setup.tex
cleans += gitversion.tex handout.pdf .latexwork/*

handout.pdf: handout.tex $(deps)
	git update-index -q --refresh && \
	vers=$$(git show-ref -h --hash=6 |head -n1) && \
	[ -z "$$(git diff-index --name-only HEAD --)" ] || vers="$${vers}(dirty)" ; \
	echo "\newcommand\gitversion{$$vers}" >gitversion.tex
	./latexdriver -x $< $@

# Misc

all: $(toplevels)

clean:
	-rm -f $(cleans)

.PHONY: all clean default

.SECONDARY: # no deleting intermediate targets

.SUFFIXES: # no implicit rules
