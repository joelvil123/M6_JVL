#!/bin/bash

# Preguntem per un número
read -p "Introdueix un número: " numero

# Comprovem si el número és parell
if (( numero % 2 == 0 )); then
    echo "El número és parell."
else
    echo "El número és senar."
fi

