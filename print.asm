section .text
    global print_str

print_str:
    ; rsi = str size
    ; rdi = str ptr
    enter 0,0
    mov rax, 1; syscall = write
    mov rdx, rsi; rdx = size_t count
    mov rsi, rdi; rsi = const char *buf
    mov rdi, 1; output file = stdout
    
    syscall
    leave

    ret