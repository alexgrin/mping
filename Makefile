CC=gcc
WFLAGS=-Wall -Werror -Wno-unused
LOCAL_CFLAGS=-O2 -Iinclude -fno-strict-aliasing
LINKFLAGS=-Wl,--no-undefined
PRGNAME=mping

all: $(PRGNAME)

%.o: %.c
	$(CC) $(WFLAGS) -c -o $@ $(LOCAL_CFLAGS) $(CPPFLAGS) $(CFLAGS) $<

OBJ=src/mping.o

$(PRGNAME): $(OBJ)
	$(CC) $(LDFLAGS) $(LINKFLAGS) -o $@ $^
