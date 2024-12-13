#!/bin/bash

# Solicitar el número de segundos
read -p "Introduce el número de segundos para el conteo: " segundos

# Validar que el número de segundos sea un número entero positivo
if [[ ! "$segundos" =~ ^[0-9]+$ ]]; then
  echo "Por favor, introduce un número entero positivo."
  exit 1
fi

# Bucle while para el conteo regresivo
while [ $segundos -gt 0 ]; do
  echo "$segundos"
  sleep 1
  segundos=$((segundos - 1))
done

echo "Tiempo acabado!"
