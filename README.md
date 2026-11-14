--UNIDAD 3

**Alumno:** LEÓN FERNÁNDEZ ALEXIS JAVIER  
**Horario:** 8-9 HRS  
**Trabajos proporcionados por el Dr. Medina**

## Índice de prácticas

### Práctica 1: Llamado y retorno de procedimientos (CALL / RET)
**Descripción:** El programa imprime un msj de inicio, llama dos veces al procedimiento mostrarAviso con LLAMADOS CALL y al final imprime un mensaje de fin. Entre las llamadas se cargan los valores 10 y 20 en EAX;solo como marca de que la ejecución continúa después de cada retorno RET.

**Qué se comprueba al ejecutarlo:** CALL tiene que guardar en la jerarquía pila la dirección de la instrucción siguiente y salta al procedimiento. RET la recupera y regresa justo después del llamado. Osea  que el aviso aparece dos veces, cada vez en su lugar, y que el programa sigue su orden hasta terminar.

**Salida esperada:**
Inicio de programa
Estoy dentro del procedimiento
Estoy dentro del procedimiento
Fin del programa

**Archivo:** [01.asm](https://github.com/javierleonfer/UNIDAD3/blob/main/01.asm)

---

### 02. PROC QUE MODIFICA  EBX
**Descripción:** Pone EBX = 10, llama a Procedimiento1, que le suma 5, e imprime el resultado. El valor se copia a EAX porque WriteDec solo imprime registro EAX.

**Qué se comprueba:** Un procedimiento puede devolver su resultado en un registro. EBX regresa modificado después del cada RET.

**Salida esperada:** Valor de EBX: 15


**Archivo:** [02.asm](https://github.com/javierleonfer/UNIDAD3/blob/fd0b3e2d72e508ac69507394e8150c1c6711e627/02.asm)

---

### Práctica 3: Verificar que una cadena no esté vacía
**Descripción:** main pone en ESI la dirección de Cadena1 y llama a Validacion. El procedimiento revisa el primer carácter y regresa ECX = 0 osea que es el terminador (cadena vacía) o ECX = 1 si tiene algo (texto=. De vuelta en main, TEST ECX, ECX y salto JZ deciden qué mensaje imprimir.

**Qué se comprueba:** El uso de un procedimiento como validación (como un "if") que devuelve su resultado en un registro, y el salto condicional con JZ ya sea ese resultado.

**Salida esperada:** Hola
Utiliza las macros MostrarMensaje, que imprime textos, y Multiplicar, que multiplica 8 × 5 e imprime 40.

**Archivo:** [03.asm]https://github.com/javierleonfer/UNIDAD3/blob/d22dccd3fc1cf83f4bddb0adbfb7f517e454cb73/03.asm

---

### Práctica 4: Macros (MACRO / ENDM)
**Descripción:** Define dos macros. (ejemplo explicito de a donde se van los registro cuando se trabaja con dos MACRO)MostrarMensaje imprime una cadena con WriteString, y Multiplicar multiplica dos número  con IMUL e imprime el resultado. En mainv se muestra la bienvenida, se multiplica 8 × 5 y se muestra la despedida.

**Qué se comprueba:** Una macro se expande en el lugar donde se usa (no hay CALL ni RET) y acepta parámetros, así que el mismo código sirve para distintos datos.

**Salida esperada:**
Bienvenido al sistema
40
Hasta luego, vuelva pronto
**Archivo:** [04.asm]https://github.com/javierleonfer/UNIDAD3/blob/62ea6e40895db87e48b5e7572c8c405cb93d03c9/04.asm

---

### 
### Práctica 5: Macro con IMUL https://github.com/javierleonfer/UNIDAD3/blob/main/05.asm
**Descripción:** Completa el ejemplo de mensajes con una multiplicación. La macro se va a MultiplicarValores calcula 6 × 7 con IMUL y deja el producto en EAX. Osease que La impresión se hace desde main con WriteDec.

**Qué se comprueba:** Una macro puede devolver su resultado en un registro, igual que un procedimiento, y separar el cálculo de la impresión.

**Salida esperada:**
Bienvenido al sistema
Resultado de 6 por 7:
42
Hasta luego, vuelva pronto


