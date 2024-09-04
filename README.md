# Hello World in ARM Assembly for macOS

This is a simple "Hello, World!" program written in ARM assembly for macOS, targeting ARM64 architecture (like Apple Silicon M1).

## How the Code Works

This program uses the C runtime and calls functions from the standard library (`puts` and `exit`) rather than using direct system calls, which makes it easier and more portable.

### Assembly Code Breakdown

1. **Global Declaration:**
   - The program starts by declaring `_main` as the global entry point using `.globl _main`.

2. **Aligning Code:**
   - The `.p2align 2` ensures that the code is properly aligned in memory.

3. **Main Function (`_main`):**
   - **`ADR X0, helloworld`:** This instruction loads the address of the `helloworld` string into register `X0`, which will be passed to the `puts` function.
   - **`bl _puts`:** The `bl` instruction (branch with link) calls the `puts` function from the C library, which prints the string.
   - **`mov X0, #0`:** After the string is printed, this instruction sets the value `0` in `X0`, which will be the return value of the program. An exit code of 0 is used to indicate success.
   - **`b _exit`:** This branches to the `_exit` function from the C library to terminate the program.

4. **Data Section:**
   - **`helloworld` label:** This label marks the location of the string in memory.
   - **`.asciz "Hello, World!"`:** This directive defines a null-terminated string to be printed.
