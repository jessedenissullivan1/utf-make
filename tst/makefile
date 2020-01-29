#### Source Under Test Configuration ####
# List out source files under test
SUT := $(filter-out ../src/main.c, $(wildcard ../src/*.c))
OUT := $(SUT:../src/%.c=../obj/%.o)

# Add flags here for instrumentation
SUT_FLAGS := -fprofile-arcs


#### Unit Test Source Configuration ####
# List out unit test source files
UT_SRC := $(wildcard t_*.c) driver.c
UT_OBJ := $(UT_SRC:.c=.o)

# Flags for building unit tests
UT_FLAGS := -g
# Add flags here for building against source under test
UT_INCS  := -I ../src -I .
# Name of unit test executable
UT_EXE := t_foobar


#### Build configuration ####
# Compiler
CC := gcc
# Build flags
CFLAGS := $(UT_FLAGS) $(UT_INCS)


#### Rules and recipes ####
# When invoked with no arguments, clean and build unit tests
all: clean $(UT_EXE)
	$(CC) $(CFLAGS) $(UT_FLAGS) $(UT_INCS) -o $@ $^

# How to build source files under test
../obj/%.o: ../src/%.c
	$(CC) $(SUT_FLAGS) -c -o $@ $^

# How to link the unit test executable
$(UT_EXE): $(OUT) $(UT_OBJ)
	$(CC) $(SUT_FLAGS) -o $@ $^

clean:
	rm -rf $(UT_OBJ) ../obj/*