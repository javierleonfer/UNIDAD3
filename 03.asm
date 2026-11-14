;03 VERIFICAR_CADENA_NO_VACIA — UNIDAD 3
; Materia: Lenguajes de Interfaz
; Alumno: LEON FERNANDEZ ALEXIS JAVIER
; Horario: 8-9
; Docente: DR. José Luis Medina Jiménez
; Práctica:3
; Descripción: AQUI ES UN PROCESO DE VALIDACION PARA QUE UNA CADENA NO ESTE VACIA En main pone en ESI QUE VIENE SIENDO  la dirección de Cadena1 y llama a Validacion.
;Validacion VA PASASR ECX = 0 y revisa el primer carácter ([esi+ecx]): es como si fuera un IF osea Sí es 0 (cadena vacía), sale con ECX = 0.
;Si no se guarda como ECX=1 y hace lo otro...
;De vuelta en main, test ecx, ecx revisa ECX. Si vale 0,el salto  JZ salta a NoValida e imprime Cadena2. Si no pasa a  imprime Cadena1 y saltos  en fin..
; Verificar_Cadena no Vacia
; JZ
;Forma en la que el alumno terminó el proc de vadilacion :...
;Validacion PROC
;  mov ecx, 0
;   cmp BYTE PTR [esi], 0   ; ¿el primer carácter es 0?
;    je Salir                ; sí: cadena vacía, ECX = 0
;    mov ecx, 1              ; no: cadena válida, ECX = 1
;Salir:
;    ret
;Validacion ENDP 


;transcripcion tal cual al proyectado la clase  :
INCLUDE Irvine32.inc

.data
    Cadena1 BYTE "Hola", 0
    Cadena2 BYTE "Hola", 0

.code
main PROC

    mov esi, OFFSET Cadena1
    call Validacion

    test ecx, ecx
    JZ NoValida

    mov edx, OFFSET Cadena1
    call WriteString
    call Crlf

    Jmp Fin

NoValida:

    mov edx, OFFSET Cadena2
    call WriteString
    call Crlf

Fin:
    Exit

main ENDP

Validacion PROC

    mov ecx, 0
    mov eax, 0

Buscar:

    cmp BYTE PTR [esi+ecx], 0
    je Salir

    mov ecx, 1

Salir:
    ret

Validacion ENDP

END main
