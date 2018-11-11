#!/bin/bash

ayuda="""USO:
./ejercicio5.1.sh directorio entero: anota en un archivo denominado archivosSizN.txt aquellos archivos del directorio dado como argumento y que cumplan la condición de tener un tamaño menor al valor aportado en el segundo argumento.
"""

es_un_entero=$(echo $2 | grep -q -w "[0-9]\+" && echo true || echo false)

if [ $# = 2 ] && [ -d $1 ] && [ $es_un_entero = "true" ]
then
    find $1 -size -$2c > archivoSizN.txt
    echo "Fichero archivosSizN.txt creado con éxito."
else
    echo $ayuda
fi
