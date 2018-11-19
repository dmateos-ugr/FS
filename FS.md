# FS

## Bytes
Un byte está formado por ocho bits debido a que ocho bits (dos dígitos hexadecimales) es suficiente para enumerar todas las letras, mayúsculas y minúsculas, números, símbolos, etc.

## Tipos de datos
Los tipos de datos son (G, O, P), haciendo referencia al género del dato (ej: numeros enteros hasta 2¹⁶), las operaciones (ej: suma, resta), y las propiedades. Cuando un dato demasiado grande se intenta almacenar, ocurre un desbordamiento de memoria (*overflow*). También puede ocurrir lo contrario: que el número sea demasiado chico y no se pueda almacenar (*underflow*). Ej: 2 · 10⁻¹²³⁴⁵.
Estas excepciones se deben a que el tamaño del exponente es demasiado grande, ya sea positivo o negativo.

### Enteros
Los números enteros suelen ocupar una palabra, 4 bytes en ordenadores de 32 bits. El primer bit indica el signo del número (positivo o negativo), y los demás indican la cantidad. Además, los número negativos se almacenan complementados, de manera que no haya falta definir la resta: 4 - 2 = 4 + complementado(2) en binario..
### Palabras
Una palabra es la unidad minima de informacion que un determinado procesador puede leer o escribir.
### Niveles de lenguaje
- **El lenguaje máquina** es el lenguaje que entiende el ordenador, ya que fue diseñado para eso. El repertorio máquina es el conjunto de órdenes que entiende un ordenador. Cada orden que le llega al procesador tiene una 'llave', llamada código de operación, que identifica el tipo de orden, de manera que el procesador haga una cosa u otra dependiendo de esta llave. Este código de operación viene acompañado con uno o varios operandos, que suelen ser las direcciones en memoria de los datos que se van a usar en la orden. El lenguaje máquina es en binario. 
- **El ensamblador** es algo así como la traducción del lenguaje máquina. Cada código de operación tiene un nombre de instrucción (por ejemplo 11000 = ADD), y las variables tienen guardadas su dirección de memoria en una tabla de símbolos, de manera que se pueda acceder a ellas mediante su nombre y no mediante su dirección de memoria.
- **El macroensamblador** no es más que un ensamblador enriquecido, donde se puede dar un nombre a un conjunto de órdenes de manera que no haya que repetirlas todas cada vez que se quieran ejecutar.
- **Los lenguajes de alto nivel**, que intentan parecerse al lenguaje humano eliminando toda ambigüedad. Algunas de las cosas que se incorporan en el salto de ensamblador a estos lenguajes son estructuras de datos, el soporte a más de un operando, estructuras de control, etc.

### Discos duros
Los discos duros están divididos en secciones. Si el disco fuera un círculo, las secciones son cada una de las circunferencias más pequeñas que hay dentro de él. Además están divididos en sectores, que es cada una de las partes, como si fuera una pizza. Para leer y escribir datos, el disco necesito una sección y un sector.

### Memoria
La memoria es como una gran matriz, cuyas celdas están numeradas. Cada una de esas celdas es una palabra.

### Procesador
Un procesador que tenga por ejemplo 5 bits de código de instrucción, y 20 bits de operando, puede almacenar un total de 2⁵ instrucciones diferentes, y puede almacenar un total de 2²⁰ operandos.

### Caché
La memoria de caché es una memoria especial que está construida de forma diferente y que está pegada al procesador. Es más rápida que la memoria principal, y es donde se guardan los datos a los que más se acceden. Si el procesador quiere acceder a algo, primero comprueba si está en la caché, y si no, comprueba en la memoria principal.

### Lectura de datos
Cada vez que la CPU tiene que leer un dato del disco duro, se lo dice al módulo DMA (Direct Memory Acess), que coge los datos del disco y los guarda en memoria. Ya que los dispositivos de entrada y salida son más lentos que la CPU, mientras se recogen datos del disco, el programa que se estaba ejecutando se guarda, y se comienza a ejecutar otro programa para que la CPU no esté parada. Cuando lleguen los datos, se vuelve con la ejecución del programa que está en pausa.
Sin embargo, cuando se leen datos del disco duro, en vez de leer un solo dato, se suele traer el sector entero por si se usa en un futuro. De esa manera se minimizan los usos de E/S, cuya velocidad es bastante inferior a la de la CPU.
Lo que aloja la información respectiva a las interrupciones son **creo** los vectores de interrupciones o algo asi

# Ejercicios PreguntasTema2
*15*- 
Memoria = 16MB
Direccion = 32 bits --> 22 nº pagina, 10 desplazamiento
Pongamos que cada palabra es de 2 bytes.
a) ¿Tamaño de la página? 2¹⁰ palabras , ya que 10 son los bits que indican el offset dentro de la pagina, asi que como mucho cada pagina puede ser de 2¹⁰. 2¹⁰* 2 = 2¹¹ bytes.
b) ¿Nº Marcos de la memoria? Tamaño marco: 2¹¹ B. Nº marcos: (16 * 2²⁰) / 2¹¹ = (2⁴ * 2²⁰)/2¹¹ = 2²⁴ / 2¹¹ = 2¹³
c) ¿Tamaño nº marco de la tabla? 13
d) +1 bit de protección, ¿tamaño tabla Páginas de proceso que ocupa 103KB?: 
13 + 1 = 14. Suponemos que esto cabe en dos bytes. Numero de paginas = (103 * 2¹⁰) / 2¹¹ = 103/2 = 51.5 = 52 páginas.

*16*- c)
Que sea una dirección lógica significa que empieza por 0. Veamos en qué página se localiza la dirección lógica 5400.
5400/1024 = 5.27 Esto quiere decir que se encuentra en la sexta página, que es realmente la página 5. El marco es el 0.
El resto de esta división 280, por lo que la dirección física = número de marco * tamaño página + desplazamiento = 0 * 1024 + 280 = 280

# Tema 3
 
## Programas que intervienen en la creación de un programa.
*Editor*: programa para leer la entrada desde el teclado y escribir en un fichero. Hace diferentes análisis. Primero, análisis léxico, para ver si las palabras son correctas. Después, realiza un análisis sintáctico para ver si la estructura formada por las palabras es correcta. De esto se obtiene una estructura sintáctica. Finalmente, realiza un análisis semántico para ver si tiene sentido esta estructura sintáctica. Devuelve el texto introducido.

*Traductor*: traduce el texto introducido por nosotros en lenguaje fuente en el editor a lenguaje objeto para que lo entienda el ordenador. Devuelve el texto en lenguaje objeto que suele ser lenguaje máquina. Hay dos formas de hacer esto:
    - Compilación: coge todo el texto, lo traduce, y nos devuelve todo el texto traducido. Es cuando se genera un ejecutable. Cuando tiene todo el texto traducido, el compilador puede hacer ciertas mejoras de rendimiento ya que tiene una visión general del código.
    - Interpretación: coge el texto frase a frase, traduce esa frase y la ejecuta. Un ejemplo es todo lo realizado con el sistema operativo (bash). No es lo mismo una frase que una línea, ya que una frase puede tener varias líneas. El intérprete puede ser más rápido.

*Encuadernador*: es el programa que se encarga de realizar el ejecutable. Trae todas las librerías y todo lo necesario para generar el ejecutable.

*Cargador*: es lo que se encarga de ir leyendo el programa desde el disco para ir moviéndolo a la memoria, resolviendo todos los problemas relacionados con las direcciones de memorias estudiados en temas anteriores.

## Lenguajes
### Lenguaje máquina
Es el que está formado por 0 y 1. El lenguaje máquina está formado por:
- **Repertorio máquina**: es el repertorio de instrucciones codificadas en ceros y unos. Suele depender del hardware.
- **Estructura**: el lenguaje máquina tiene una estructura para las instrucciones. Suele ser el código de instrucción y uno o varios operandos.

### Ensamblador
Es el lenguaje máquina traducido de manera que sea más entendible para los humanos. Se cogen las instrucciones máquina y a cada una se le asigna una o varias palabras con las que se identifica. Estas pueden ser add, store, etc. Es necesaria una tabla que indique estas asignaciones, teniendo en una columna los códigos que hemos asignado, y en otra columna el conjunto de ceros y unos a los que representa ese código. Con los operandos se aplica una idea similar: se le da a cada operando (que no es más que una dirección física) un nombre descriptivo que nos ayude a recordarlo. Sin embargo, mientras la tabla de los códigos de instrucción se construye antes, ya que hay un número de instrucciones que no varía, la tabla de los operandos, llamada tabla de símbolos, la tiene que construir el traductor cuando esté compilando o interpretando. Por tanto, en la primera columna está el nombre que le hemos dado a la variable, y en la segunda columna está la dirección de memoria lógica en la que está alojada.

### Macroensamblador
Lenguaje en el cual se cogen grupos de instrucciones, o bien en ensamblador o bien en lenguaje máquina, y se crean estructuras de instrucciones con ellas, llamadas macros. Tiene un nombre asignado de forma que cada vez que aparece el nombre, es sustituido por el conjunto de instrucciones correspondiente.

### Alto nivel
Todos los lenguajes anteriores pertenecían al bajo nivel. En el paso de bajo nivel a alto nivel se crean estructuras más complejas de instrucciones y de datos. Esto lleva a que una sola línea en alto nivel dan lugar a varias órdenes en el bajo nivel. Este salto se realizó hace ya muchos años, y no ha habido cambios significativos en el paradigma y en la filosofía de este nivel. En lo más alto se encuentran los lenguajes de especificación, que generarían programas a partir de los enunciados que le proporcionemos. Sin embargo, no han demostrado tener una gran utilidad, ya que los programas que salen de estos lenguajes suelen ser calificados de truños.
Cuantas más complejas sean las estructuras del lenguaje, más simples son para el usuario y más alto es el niel. 

Una especificación está formado por gramáticas de la forma (T, N, P, S):
- T = {Terminales}
- N = {No terminales}
- P = reglas de producción o derivación
- S = símbolo inicial (axioma)

Se comienza en el símbolo inicial, se continúa con símbolos no terminales y derivados de estos, y se termina con un símbolo terminal. Estos símbolos forman estructuras de árboles, que comienzan en los símbolos iniciales, y cuyas ramas terminan en los símbolos terminales. En medias hay grupos de símbolos no terminales. Para pasar de un nivel a otro dentro del árbol se deben tener en cuenta las reglas del lenguaje.

> Written with [StackEdit](https://stackedit.io/).
<!--stackedit_data:
eyJoaXN0b3J5IjpbMTkxODk2Njc2MSwtMTA0Mjc1MTg5NCwxNz
AzMjExMzM4LC01Nzk3NDYyNzYsLTI3OTc5NzY2OSwtMzk5ODIx
MjAsMTA4NzA2MTk5MywxNTA3NzU5MTk1XX0=
-->