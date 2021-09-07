global Ejercicio3asm
section .text

   

Ejercicio3asm:

    ;Prologo para calling conventions en 32 bits
    push ebp
    mov ebp, esp
    push esi 
    push edi 
    push ebx

    ;Limpiamos los registros
    xor eax,eax
    xor ebx,ebx
    xor ecx,ecx
    xor edx,edx

    ;Utilizamos los punteros
    mov edi,[ebp+12]  ; edi <-- *arr
    mov ecx,[ebp+8]   ; ecx <--N

    ;Algoritmo

    mov eax , [edi]
    mov ebx , ecx 
    dec ecx 
    jz exit

    suma:
        add edi,4
        add eax ,[edi]
        loop suma


    exit:

    ;Epilogo
    pop ebx
    pop edi
    pop esi
    mov esp,ebp
    pop ebp

    ret