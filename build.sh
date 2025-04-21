nasm -f elf64 thread_sleep.asm -o thread_sleep.o
gcc -no-pie main.c thread_sleep.o -o main