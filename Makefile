CC=gcc
WFLAGS=-Wall -Werror -Wno-unused
LOCAL_CFLAGS=-O2 -Iinclude -fno-strict-aliasing
PRGNAME=mping

UNAME_S := $(shell uname -s)
ifeq ($(UNAME_S),Linux)
	CCFLAGS += -D LINUX
	LINKFLAGS=-Wl,--no-undefined
else ifeq ($(UNAME_S),Darwin)
	CCFLAGS += -D OSX
	LINKFLAGS=-Wl,-undefined,error
endif

all: $(PRGNAME)

clean:
	rm -f $(PRGNAME) $(OBJ)
%.o: %.c
	$(CC) $(WFLAGS) -c -o $@ $(LOCAL_CFLAGS) $(CPPFLAGS) $(CFLAGS) $<

OBJ=src/mping.o

$(PRGNAME): $(OBJ)
	$(CC) $(LDFLAGS) $(LINKFLAGS) -o $@ $^
