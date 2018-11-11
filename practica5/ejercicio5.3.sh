#!/bin/bash

echo "Presione una tecla: "
read tecla
printf "La tecla se encuentra en la fila del teclado número "
case $tecla in
    [º0-9\'¡]) printf "1\n";;
    [qwertyuiop\`+]) printf "2\n";;
    [asdfghjkl\´ç]) printf "3\n";;
    [\<zxcvbnm,\.-]) printf "4\n";;
esac

