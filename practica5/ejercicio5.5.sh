#!/bin/bash

n=0
while [ $n -lt 1 -o $n -gt 10 ]
do
    read -p "Introduzca un número: " n
done
echo "Has introducido un número entre 1 y 10."

