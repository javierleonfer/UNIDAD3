; Materia: Lenguajes de Interfaz - Unidad 3
; Alumno: LEON FERNANDEZ ALEXIS JAVIER
; Horario:8-9hrs
; Docente: DR. José Luis Medina Jiménez
; Práctica 05: Agregar una macro con IMUL
; Descripción: Completa el ejemplo de mensajes con una multiplicación.
INCLUDE Irvine32.inc
; Entrada: nombre de una cadena. Salida: texto y salto de línea.
; Modifica EDX; el código se expande durante el ensamblado.
MostrarMensaje MACRO texto
    mov edx, OFFSET texto
    call WriteString
    call Crlf
ENDM

; Entrada: dos valores. Salida: producto en EAX.
; Modifica EAX y las banderas. La impresión se hace desde main.
MultiplicarValores MACRO valor1, valor2
    mov eax, valor1
    imul eax, valor2
ENDM

.data
    mensajeBienvenida BYTE "Bienvenido al sistema", 0
    mensajeResultado BYTE "Resultado de 6 por 7:", 0
    mensajeFin BYTE "Hasta luego, vuelva pronto", 0
    valorA DWORD 6
    valorB DWORD 7

.code
main PROC
    MostrarMensaje mensajeBienvenida
    MostrarMensaje mensajeResultado

    ; Asignamos dos valores y usamos la macro solicitada: 6 * 7 = 42.
    MultiplicarValores valorA, valorB

    ; EAX ya contiene el producto. WriteDec lo muestra como entero sin signo.
    call WriteDec
    call Crlf

    MostrarMensaje mensajeFin
    exit
main ENDP

END main
