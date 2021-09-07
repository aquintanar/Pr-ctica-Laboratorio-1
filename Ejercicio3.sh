nasm -f elf32 -o Ejercicio3asm.o Ejercicio3asm.asm
gcc -m32 -march=i686 Ejercicio3.c Ejercicio3asm.o -o EJERCICIO3