.model small
.data
;declaramos valirables 
nombre db 10,13, 'Carlos Andres Granados Luis',0
identificacion db 10,13, '1056573840',0


.code
main proc
    mov ax, @data
    mov ds, ax

    ;Imprimir el nombre en la pantalla
    mov ah, 09
    lea dx, nombre
    int 21h

    ; Imprimir el numero de identificacion
    mov ah, 09
    lea dx, identificacion
    int 21h

    ;salir del programa
    mov ah, 4ch
    .exit
main endp

end main

