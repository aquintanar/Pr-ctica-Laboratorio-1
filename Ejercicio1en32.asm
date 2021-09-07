;Programa helloworld.asm como ejercicio 1 en32

;EJECUCION
;1.Para ensamblar ejecutar en la linea de comando:
;nasm -f elf32 Ejercicio1en32.asm -o Ejercicio1en32.o
;2.Para enlazar ejecutar:
;Ld Ejercicio1en32.o -o Ejercicio1en32
;3.Para correr ejecutable:
;./ Ejercicio1en32



;SEGMENTO DE DATOS
section .data
    message db "Hello world!",10                          ;Lo que hacemos aca es declarar una variable llamada mensaje                               
                                                          ;luego decimos su longitud (db) y su valor (hello wordl!)
                                                          ;El 10 es el caracter de salto de  linea
    
    len equ $ - message                                   ;Lo que hacemos es declarar la variable len que es igual a
                                                          ;la longitud de la variable message ($ - (variable))                                 




;SEGMENTO DE TEXTO
section .text
    global _start

_start:

;Primero vamos a querer hacer un llamado al sistema , vamos a poner los parametros  e ID.

;Recuerda que el registro rax tiene el ID, el que usaremos es el 1 --------  Significa SYS_WRITE
;Luego el primer parametro se encentra en rdi , usaremos el 1       ------- Significa output
;Luego el segundo parametro que se encuentra en esi, pondremos message ------ Direcion del mensaje
;Luego el tercer parametro se encuentra en rdx , pondremos la longitud -------- Longitud del mensaje

mov rax , 1 
mov rdi , 1
mov rsi , message   
mov rdx , len
syscall

;PREGUNTA : ES NECESARIO HACER EL LLAMADO AL SISTEMA CON RAX .... SIEMPRE?



;Segundo vamos a querer hacer un llamado al sistema para ver si esta todo correcto

mov rax, 60
mov rdi , 0
syscall
