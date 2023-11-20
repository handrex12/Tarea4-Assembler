.model small
.stack 64
.data

;Declaramos variables

num1 db 0
num2 db 0 

resta db 0 
resultado db 0 

msj1 db 10,13,' Ingrese el primer numero = ','$' ; solicita que se ingrese el primer numero
msj2 db 10,13, ' Ingrese el segundo numero = ', '$'; solicita que se ingrese el segundo numero
msj3 db 10,13, ' El resultado de la resta es = ', '$'; Muestra el resultado

.code

main proc
    ;llamamos las variable
    mov ax, @data
    mov ds, ax

    ;se solicita digitar el primer numero

    mov ah, 09
    lea dx, msj1
    int 21h

    mov ah, 01
    int 21h
    sub al, 30h
    mov num1,al

    ;se solicita digitar el sugundo numero
    
    mov ah, 09
    lea dx, msj2
    int 21h
    mov ah, 01
    int 21h
    sub al, 30h
    mov num2,al

    ;se realiza la operacion 

    ;Resta
    mov al,num1
    sub al,num2
    mov resta,al

    ;se muestra el mensaje del resultado de la resta
    mov ah,09
    lea dx,msj3
    int 21h
    mov dl,resta
    add dl,30h 
    mov ah,02
    int 21h

    ;Finalizacion del programa
    mov ah,4ch
    int 21h
   .exit 
    main endp
end main
    
