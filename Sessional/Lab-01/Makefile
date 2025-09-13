
all:
# Step 1: Preprocessing (C → preprocessed C)
gcc -E HelloWorld.c -o HelloWorld.i

# Step 2: Compilation (Preprocessed C → Assembly)
gcc -S -masm=intel HelloWorld.i -o HelloWorld.s

# Step 3: Assembly (Assembly → Object file)
as -o HelloWorld.o HelloWorld.s

# Step 4: Linking (Object file → Executable)
gcc -o HelloWorld HelloWorld.o

# Step 5 (Optional): Disassemble object file
objdump -M intel -d HelloWorld.o > HelloWorld.dump

# Step 6 (Alternative compilation to object directly)
gcc -c HelloWorld.c -o HelloWorld.o
objdump -M intel -d HelloWorld.o > HelloWorld2.dump



.PHONY: clean

