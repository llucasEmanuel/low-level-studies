all: main

main: main.c print.o
	@gcc -no-pie main.c print.o -o main

print.o: print.asm
	@nasm -f elf64 print.asm -o print.o

run: main
	@./main
	
clean:
	@rm -f main print.o