CC           ?= gcc
LD           ?= ld
PREFIX       ?= /usr/local
INSTALL      ?= install

INCLUDES     = $(SYSROOT)/include
LDLIBS       = -lexample

TARGET       = appexample
SOURCES      = main.c
HEADERS      =
OBJECTS      = $(SOURCES:.c=.o)

all: $(TARGET)

$(TARGET): $(OBJECTS)
	$(CC) $(LDFLAGS) $^ $(LDLIBS) -o $@

%.o: %.c
	$(CC) -c $(CFLAGS) $< -o $@

clean:
	-rm -f $(TARGET)
	-rm -f $(OBJECTS)

install:
	$(INSTALL) -d $(PREFIX)/bin
	$(INSTALL) $(TARGET) $(PREFIX)/bin

test:
	LD_LIBRARY_PATH=$(SYSROOT)/lib ./$(TARGET)


