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
Un procesador que tenga por ejemplo 5 bits de código de instrucción, y 20 bits de oper

> Written with [StackEdit](https://stackedit.io/).
<!--stackedit_data:
eyJoaXN0b3J5IjpbLTE3MzA3MDM1NjIsMTcwMzIxMTMzOCwtNT
c5NzQ2Mjc2LC0yNzk3OTc2NjksLTM5OTgyMTIwLDEwODcwNjE5
OTMsMTUwNzc1OTE5NV19
-->