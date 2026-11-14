;01. PRÁCTICA DE PROCEDIMIENTOS — UNIDAD 3
; Materia: Lenguajes de Interfaz
; Alumno: LEON FERNANDEZ ALEXIS JAVIER
; Horario: 8-9
; Docente: DR. José Luis Medina Jiménez
; Práctica: 1 

; Descripción:Aquí este programa lo que hara sera manejos de llamado y llamador osea interaciones con calll ..que dentro delprocedimiento 
;se vera como responde un retorno ret osea que pasara con lla instruccion en el contexto ..
;Imprime "Inicio de programa".
;Llama dos veces a mostrarAviso, que imprime "Estoy dentro del procedimiento" y regresa con ret.
;Entre los llamados hace mov eax, 10 y mov eax, 20. No sirven para el resultado ya que  solo marcan que el programa siguió después de cada ret
;Al final imprime la "Fin del programa".

;sintaxis :
;mov destino, origen: copia un valor. Por ejemplo, mov eax, 10 pone 10 en EAX.
;OFFSET variable: da la dirección de memoria de la variable, no su contenido.
;mov edx, OFFSET mensajeInicio: deja en EDX la dirección del mensaje, que es donde WriteString la busca.
;call WriteString: imprime la cadena cuya dirección está en EDX.
;call Crlf: hace un salto de línea.
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
