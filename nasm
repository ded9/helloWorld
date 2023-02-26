section .text

global _start
                                                        ; /usr/include/x86_64-linux-gnu/asm/unistd_32.h
_start:
        mov eax, 0x4                    ; write syscall
        mov ebx, 1                              ; print-stdout
        mov ecx, message                ; use the message as the buffer
        mov edx, message_length ; supplay the length
        int 0x80                                ; interrupt


        mov eax, 0x1            ; system exit 
        mov ebx, 0                              ; exit code 0
        int 0x80                                ;invoke syscall


section .data

message: db "Hello World in assembly NASM, let it be known", 0xA  ; 0xA = '\n'
message_length equ $-message ; string length
