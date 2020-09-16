CFLAGS   = -O3 -g -Wall
SRC      = elfread.c
OBJECTS  = $(SRC:.c=.o)
TARGET   = elfread

.SUFFIXS: .c .o

.PHONY: clean

%.o: %.c elf.h
	$(CC) -c -o $@ $< $(CFLAGS)

$(TARGET): $(OBJECTS)
	$(CC) -o $(TARGET) $(OBJECTS)

clean:
	@$(RM) $(OBJECTS) $(TARGET)

distclean: clean

