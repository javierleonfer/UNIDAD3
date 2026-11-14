UNIDAD 3
PRACTICAS DE LENGUAJE ENSAMBLADOR (MASM) CON LA LIBRERIA IRVINE32

Alumno: LEON FERNANDEZ ALEXIS JAVIER
Horario: 8-9 HRS
Trabajos proporcionados por el Dr. Medina


INDICE DE PRACTICAS
===================

PRACTICA 01
Descripcion: Procedimientos.
Funcionamiento: Llama dos veces a un procedimiento con CALL y regresa con RET a la instruccion siguiente.
Archivo: 01_Procedimientos.asm

PRACTICA 02
Descripcion: Modificacion del registro EBX.
Funcionamiento: Un procedimiento suma 5 a EBX (10 -> 15) y MAIN imprime el resultado con WriteDec.
Archivo: 02_Valor_EBX.asm

PRACTICA 03
Descripcion: Macros.
Funcionamiento: Utiliza las macros MostrarMensaje, que imprime textos, y Multiplicar, que multiplica 8 x 5 e imprime 40.
Archivo: 03_Macros.asm

PRACTICA 04
Descripcion: Verificar cadena no vacia.
Funcionamiento: Un procedimiento revisa si el primer caracter es 0; con TEST y JZ decide si imprime la cadena o un aviso de cadena vacia.
Archivo: 04_Verificar_Cadena.asm


COMO ORGANIZAR LOS ARCHIVOS EN GITHUB
=====================================

OPCION RECOMENDADA: crear una carpeta para cada practica.

UNIDAD3/
|
|-- README.md
|-- 01/
|   |-- 01_Procedimientos.asm
|-- 02/
|   |-- 02_Valor_EBX.asm
|-- 03/
|   |-- 03_Macros.asm
|-- 04/
    |-- 04_Verificar_Cadena.asm
