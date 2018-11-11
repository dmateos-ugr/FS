#!/bin/bash

echo "Introduzca el número de un mes o sus tres primeras letras: "
read entrada

case $entrada in
    "ene" | 1) echo "enero";;
    "feb" | 2) echo "febrero";;
    "mar" | 3) echo "marzo";;
    "abr" | 4) echo "abril";;
    "may" | 5) echo "mayo";;
    "jun" | 6) echo "junio";;
    "jul" | 7) echo "julio";;
    "ago" | 8) echo "agosto";;
    "sep" | 9) echo "septiembre";;
    "oct" | 10) echo "octubre";;
    "nov" | 11) echo "noviembre";;
    "dic" | 12) echo "diciembre";;
    *) echo "La entrada no es correcta.";;
esac
