#!/bin/bash

# Comprovació que s'han passat exactament 2 arguments
if [ "$#" -ne 2 ]; then
    echo "Error: Cal indicar exactament 2 fitxers."
    echo "Ús: $0 fitxer1 fitxer2"
    exit 1
fi

# Variables per als noms dels fitxers
fitxer1="$1"
fitxer2="$2"

# Comprovació que els fitxers existeixen
if [ ! -e "$fitxer1" ]; then
    echo "Error: El fitxer '$fitxer1' no existeix."
    exit 1
fi

if [ ! -e "$fitxer2" ]; then
    echo "Error: El fitxer '$fitxer2' no existeix."
    exit 1
fi

# Obtenir la mida dels fitxers en bytes
mida1=$(ls -l "$fitxer1" | tr -s ' ' | cut -d ' ' -f 5)
mida2=$(ls -l "$fitxer2" | tr -s ' ' | cut -d ' ' -f 5)

# Comparació de les mides dels fitxers
if [ "$mida1" -eq "$mida2" ]; then
    echo "Els arxius $fitxer1 i $fitxer2 tenen la mateixa mida."
elif [ "$mida1" -gt "$mida2" ]; then
    echo "L'arxiu $fitxer1 és el de major mida: $mida1 bytes"
else
    echo "L'arxiu $fitxer2 és el de major mida: $mida2 bytes"
fi

