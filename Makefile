CFLAGS   = -O3 -g -Wall
SRC      = elfreader.c
OBJECTS  = $(SRC:.c=.o)
TARGET   = elfreader

.SUFFIXS: .c .o

.PHONY: clean

%.o: %.c elf.h
	$(CC) -c -o $@ $< $(CFLAGS)

$(TARGET): $(OBJECTS)
	$(CC) -o $(TARGET) $(OBJECTS)

clean:
	@$(RM) $(OBJECTS) $(TARGET)

distclean: clean

