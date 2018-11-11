#!/bin/bash

ayuda="""USO:
./ejercicio5.2.sh directorio: lista el nombre de todos y cada uno de los archivos del directorio y una leyenda que dice 'Directorio', 'Enlace' o 'Archivo regular' según corresponda.
"""

if [ $# = 1 ] && [ -d $1 ]
then
    for archivo in $(ls -a $1)
    do
        if [ -d $1/$archivo ]
        then
            echo "Directorio" $archivo
        elif [ -f $1/$archivo ]
        then
            echo "Archivo regular" $archivo
        elif [ -L $1/$archivo ]
        then
            echo "Enlace" $archivo
        else
            echo "Tipo de archivo desconocido" $archivo
        fi
    done
else
    echo $ayuda
fi
