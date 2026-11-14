;03— UNIDAD 3
; Materia: Lenguajes de Interfaz
; Alumno: LEON FERNANDEZ ALEXIS JAVIER
; Horario: 8-9
; Docente: DR. José Luis Medina Jiménez
; Práctica: 3
; Descripción:
;pondremos el registro EBX = 10.
;Llama a Procedimiento1, que le suma 5, así que EBX queda en 15, y regresa.
;Imprime el texto "Valor de EBX".
;Copia EBX a EAX y lo imprime con WriteDec, porque WriteDec solo imprime lo que está en EAX.
;Salida esperada Valor de EBX15 El número sale pegado al texto porque la cadena no termina en espacio.

;codigo de clase :
INCLUDE Irvine32.inc

.data
    mensajeInicio BYTE "Inicio de programa", 0
    mensajeProcedimiento BYTE "Estoy dentro del procedimiento", 0
    mensajeFin BYTE "Fin del programa", 0

.code
main PROC

    mov edx, OFFSET mensajeInicio
    call WriteString
    call Crlf

    ; primera llamada
    call mostrarAviso

    mov eax, 10

    ; segunda llamada
    call mostrarAviso

    mov eax, 20

    mov edx, OFFSET mensajeFin
    call WriteString
    call Crlf

main ENDP

; mostrar un mensaje y regresar al punto despues del llamado.
mostrarAviso PROC

    mov edx, OFFSET mensajeProcedimiento
    call WriteString
    call Crlf

    ret

mostrarAviso ENDP

END main
