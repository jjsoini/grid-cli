PREFIX ?= /usr/local

install:
	install -d $(PREFIX)/bin
	install -m 755 grid $(PREFIX)/bin/grid
	install -m 755 hex $(PREFIX)/bin/hex

uninstall:
	rm -f $(PREFIX)/bin/grid
	rm -f $(PREFIX)/bin/hex

.PHONY: install uninstall
