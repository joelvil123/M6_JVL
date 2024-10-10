#!/bin/bash

# Funció per llegir un número
read_number() {
    local prompt=$1
    read -p "$prompt" num
    echo $num
}

# Llegim els números
numero1=$(read_number "Introdueix un número: ")
numero2=$(read_number "Introdueix un altre número: ")

# Llegim l'operació
read -p "Quina operació vols realitzar (+, -, *, /, %, **): " operant

# Fem el càlcul segons l'operació
case $operant in
    "+")
        resultat=$(($numero1 + $numero2))
        ;;
    "-")
        resultat=$(($numero1 - $numero2))
        ;;
    "*")
        resultat=$(($numero1 * $numero2))
        ;;
    "/")
        resultat=$(($numero1 / $numero2))
        ;;
    "%")
        resultat=$(($numero1 % $numero2))
        ;;
    "**")
        resultat=$(($numero1 ** $numero2))
        ;;
    *)
        echo "Operació no vàlida."
        exit 1
        ;;
esac

# Mostrem el resultat
echo "$numero1 $operant $numero2 = $resultat"
