;04 PRÁCTICA DE PROCEDIMIENTOS — UNIDAD 3
; Materia: Lenguajes de Interfaz
; Alumno: LEON FERNANDEZ ALEXIS JAVIER
; Horario: 8-9
; Docente: DR. José Luis Medina Jiménez
; Práctica:4
; Descripción: Define una macro MostrarMensaje. Carga en EDX la dirección de un texto, se va trabajar con cadena osea va imprimir con writeString 
;la llave de data se van a declarar dos msj obviamente su terminacion en 0, dos numeros 8 y 5 que concatenaran dentro del main mostrara,despedida,bienvenida 
;sera un imul osea operacion de multiplicar los dos registros previos.
;modificacion del alumno :
;falto defininir Multiplicar quedaria  la tabulación así:
;Multiplicar MACRO n1, n2
;    mov eax, n1        ; EAX = primer número
;    mul n2             ; EDX:EAX = EAX * n2
;    call WriteDec      ; imprime el resultado (40)
;    call Crlf
;ENDM

;trannscribción tal cual la clase del 10/11/26 
INCLUDE Irvine32.inc

MostrarMensaje MACRO texto  ;inicializacion de un macro. 
    mov edx, OFFSET texto
    call WriteString
    call Crlf              ;salto de lineas así le gusta trabajar al DR.Medina .
ENDM

Multiplicar MACRO num1, num2
    mov eax, num1
    imul eax, num2
    call WriteDec
    call Crlf
ENDM

.data
    mensajeBienvenida BYTE "Bienvenido al sistema", 0
    mensajeFin BYTE "Hasta luego, vuelva pronto", 0

    Num1 DWORD 8
    Num2 DWORD 5

.code
main PROC

    MostrarMensaje mensajeBienvenida

    Multiplicar Num1, Num2

    MostrarMensaje mensajeFin

    exit
main ENDP

END main
