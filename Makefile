CFLAGS=$(shell  pkg-config --cflags freetype2) -fPIC

targets=ftwrapper.so.1.0

all: $(targets)

install: $(addprefix /usr/local/lib/,$(targets))

%.so.1.0: %.o
	ld -shared -soname $(patsubst %.0,%,$@) -o $@ $<

/usr/local/lib/%: %
	install -o 0 -g 0 -m 644 $< $@

.PHONEY: all install
.DELETE_ON_ERROR:
