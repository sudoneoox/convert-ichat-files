CC=gcc
CFLAGS=-I.

# Define the source files
SRC=Source/main.c Source/FileIO.c Source/bplistReader.c Source/ichatReader.c -lm

# Define the executable output
OUT=Build/convert_ichat

# Default target
all: $(OUT)

$(OUT): $(SRC)
	$(CC) -o $@ $^ $(CFLAGS)

clean:
	rm -f $(OUT)
