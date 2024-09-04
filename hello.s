// Hello, World! program in ARM Assembly for macOS
.globl _main
.p2align 2

_main:
	ADR X0, helloworld
        bl _puts
        mov x0, #0
        b _exit

helloworld:
        .asciz  "Hello, World!"
