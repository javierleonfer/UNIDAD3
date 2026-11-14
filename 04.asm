INCLUDE Irvine32.inc

MostrarMensaje MACRO texto
    mov edx, OFFSET texto
    call WriteString
    call Crlf
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
