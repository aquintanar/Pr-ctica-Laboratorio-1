;Segundo ejercicio

;EJECUCION
;1.Para ensamblar ejecutar en la linea de comando:
;nasm -f elf32 Ejercicio2en32.asm -o Ejercicio2en32.o
;2.Para enlazar ejecutar:
;Ld Ejercicio2en32.o -o Ejercicio1en32
;3.Para correr ejecutable:
;./ Ejercicio2en32


section .data
    ;El 0 se emplea como fin de cadena
    message db "HelloWordl!",10,0

section .text
    global _start

_start:
    ;eax apunta al principio del mensaje
    mov eax, message
    ;ebx sera usado como contador
    mov ebx,0


_countLoop:
    inc eax
    inc ebx 
    

















