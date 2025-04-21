section .text
    global thread_sleep

thread_sleep:
    ; thread_sleep(int sec)
    ; rdi <= tempo em segundos

    enter 0,0
    ; Alocar espaço na pilha para a struct timespec
    sub rsp, 16
    mov [rsp], rdi; t_sec = rdi
    mov qword[rsp+8], 0; t_nanosec = rsi 

    ; syscall 35: nanosleep(timespec*, NULL)
    mov rax, 35; syscall 35 = sys_nanosleep
    mov rdi, rsp; precisa passar o endereço (ponteiro) da struct pro rdi
    mov rsi, 0; rsi = NULL
    syscall

    add rsp, 16; limpa a stack
    
    leave
    ret