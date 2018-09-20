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
- **El lenguaje máquina** es el lenguaje que entiende el ordenador, ya que fue diseñado para eso. El repertorio máquina es el conjunto de órdenes que entiende un ordenador. Cada orden que le llega al procesador tiene una 'llave', llamada código de operación, que identifica el tipo de orden, de manera que el procesador haga una cosa u otra dependiendo de esta llave. Este código de operación viene acompañado con uno o varios operandos, que suelen ser las direcciones en memoria de los datos que se van a usar en la orden. 
- 


> Written with [StackEdit](https://stackedit.io/).
<!--stackedit_data:
eyJoaXN0b3J5IjpbMTU2MDM3OTI2NSwxMDg3MDYxOTkzLDE1MD
c3NTkxOTVdfQ==
-->