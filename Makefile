# Copyright (c) 2026 Rodrigo Monteiro Junior. All Rights Reserved.
scripts=ds es ns sl common
outputs=$(addprefix ${HOME}/.local/bin/,$(scripts))

.PHONY: all test test_parse install uninstall

all:

test: test_parse

test_parse: Test/parse common
	./Test/parse

install: $(outputs)
$(outputs): ${HOME}/.local/bin/%: %
	cp $< $@

uninstall:
	rm -I $(outputs)
