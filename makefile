# List sources and derive objects
SRC := $(wildcard src/*.c)
OBJ := $(SRC:src/%.c=obj/%.o)

# Name of exe
EXE := foobar

# Build configuration
# Compiler
CC := gcc
# Compile flags
CFLAGS := -g
# Linking flags
LDFLAGS := -g

# When run without a target, clean and build
all: clean $(EXE)

# How to make object directory
obj:
	mkdir obj

# How to compile a unit
obj/%.o: src/%.c obj
	$(CC) $(CFLAGS) -c -o $@ $<

# How to link together the executable
$(EXE): $(OBJ)
	gcc $(LDFLAGS) -o $@ $^

# How to clean the workspace
clean:
	rm -rf $(OBJ) $(EXE) *.dSYM