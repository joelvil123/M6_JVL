#!/bin/bash

# Funció per llegir un número
read_number() {
    read -p "$1" num
    echo $num
}

# Llegim els dos números
numero1=$(read_number "Introdueix el primer número: ")
numero2=$(read_number "Introdueix el segon número: ")

# Mostrem les opcions d'operació
echo "Selecciona una operació:"
echo "1. Sumar (+)"
echo "2. Resta (-)"
echo "3. Multiplicar (*)"
echo "4. Dividir (/)"

# Llegim lelecció de l'usuari
read -p "Introdueix el número de l'operació (1-4): " operacio

# Fem el càlcul segons l'operació seleccionada
case $operacio in
    1)
        resultat=$(($numero1 + $numero2))
        echo "Resultat: $numero1 + $numero2 = $resultat"
        ;;
    2)
        resultat=$(($numero1 - $numero2))
        echo "Resultat: $numero1 - $numero2 = $resultat"
        ;;
    3)
        resultat=$(($numero1 * $numero2))
        echo "Resultat: $numero1 * $numero2 = $resultat"
        ;;
    4)
        if (( numero2 != 0 )); then
            resultat=$(($numero1 / $numero2))
            echo "Resultat: $numero1 / $numero2 = $resultat"
        else
            echo "Error: No es pot dividir per zero."
        fi
        ;;
    *)
        echo "Operació no vàlida."
        ;;
esac
