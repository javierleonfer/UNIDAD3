;contextualizacion de la unidad 
;descripcion:Pone EBX = 999. Ese valor sirve para comprobar que el procedimiento no lo cambia.
contesxto del orden LIFO que sigue la pila 
[ebp+12] -- primer push 
[ebp+8]  -- ultimpo pusj
[ebp+4]  --dirreccion que guarda call
[ebp]    --el ultimo EBP
[ebp-4]  --se guarda en EBX

INCLUDE Irvine32.inc

.data
    mensaje BYTE "Resultado de la multiplicacion: ", 0

.code
main PROC

    ; Valor de prueba en EBX
    mov ebx, 999

    ; Enviar argumentos a la pila
    push 3
    push 25

    ; Llamar al procedimiento
    call MultiplicarPila

    ; Mostrar resultado
    mov edx, OFFSET mensaje
    call WriteString

    call WriteDec
    call Crlf

    exit
main ENDP


; Procedimiento con parametros mediante la pila
MultiplicarPila PROC

    ; Guardar el marco de pila
    push ebp
    mov ebp, esp

    ; Guardar registro EBX
    push ebx

    ; Recuperar primer y segundo argumento
    mov eax, [ebp+8]
    mov ebx, [ebp+12]

    ; Multiplicar los valores
    imul eax, ebx

    ; Recuperar registros
    pop ebx
    pop ebp

    ; Regresar y liberar los argumentos
    ret 8

MultiplicarPila ENDP

END main
